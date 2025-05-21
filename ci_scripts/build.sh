#!/usr/bin/env bash

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
ROOT_DIR=$(dirname "$SCRIPT_DIR")

VERSION_FILE="$ROOT_DIR/VERSION"
VERSION=$(head -n 1 "$VERSION_FILE" | tr -d '[:space:]')

RELEASE_ZIP_PATTERN="$ROOT_DIR/Release-$VERSION.zip"
RELEASE_DIR="$ROOT_DIR/Release-$VERSION"

if [ -f "$RELEASE_ZIP_PATTERN" ]; then
    unzip -o -q "$RELEASE_ZIP_PATTERN" -d "$RELEASE_DIR"
fi

SUM_FILE="$RELEASE_DIR/sum.txt"
if [ ! -f "$SUM_FILE" ]; then
    echo "ERROR: CI Release directory($RELEASE_DIR) and sum file(sum.txt) is not found"
    echo "ERROR: All frameworks and sum.txt file from [Elepay-iOS] Project by by Github CI Workflow Or Other Platforms"
    exit 1
fi

# ============== Update Cocoapods Podspec ==============

echo "generating podspec files from template..."

update_podspec_from_template() {
    base_name=$1
    zip_file=$2

    template_file="$ROOT_DIR/${base_name}.template"
    podspec_file="$ROOT_DIR/${base_name}"

    if [ ! -f "$template_file" ]; then
        return 1
    fi

    checksum=$(grep "$zip_file:" "$SUM_FILE" | cut -d: -f2 | tr -d ' ')

    if [ -n "$checksum" ]; then
        content=$(cat "$template_file")
        content="${content//<version>/$VERSION}"
        content="${content//<sha256>/$checksum}"
        echo "$content" >"$podspec_file"
    else
        echo "Error: Cannot find checksum for $zip_file"
    fi
}

update_podspec_from_template "ElepayChinesePaymentsPlugin.podspec" "ElepayChinesePaymentsPlugin.xcframework.zip"
update_podspec_from_template "ElepayStripePlugin.podspec" "ElepayStripePlugin-pods.xcframework.zip"
update_podspec_from_template "ElepayStripeApplePayPlugin.podspec" "ElepayStripeApplePayPlugin-pods.xcframework.zip"
update_podspec_from_template "ElepayRPayPlugin.podspec" "ElepayRPayPlugin.xcframework.zip"
update_podspec_from_template "ElepaySDK.podspec" "ElepaySDK.xcframework.zip"
update_podspec_from_template "ElepayCore.podspec" "ElepayCore.xcframework.zip"

# ============== Update Swift Package ==============

echo "generating swift package from template..."

update_swift_package() {
    template_file="$ROOT_DIR/Package.swift.template"
    package_file="$ROOT_DIR/Package.swift"

    content=$(cat "$template_file")
    content="${content//<version>/$VERSION}"

    replace_checksum() {
        local zip_file="$1"
        local placeholder="$2"
        local checksum=$(grep "$zip_file:" "$SUM_FILE" | cut -d: -f2 | tr -d ' ')

        if [ -n "$checksum" ]; then
            content="${content//$placeholder/$checksum}"
        else
            echo "Warning: Cannot find checksum for $zip_file"
        fi
    }

    # Elepay组件校验和
    replace_checksum "ElepayCore.xcframework.zip" "<ElepayCore_sha256>"
    replace_checksum "ElepaySDK.xcframework.zip" "<ElepaySDK_sha256>"
    replace_checksum "ElepayStripePlugin.xcframework.zip" "<ElepayStripePlugin_sha256>"
    replace_checksum "ElepayStripeApplePayPlugin.xcframework.zip" "<ElepayStripeApplePayPlugin_sha256>"
    replace_checksum "ElepayRPayPlugin.xcframework.zip" "<ElepayRPayPlugin_sha256>"
    replace_checksum "ElepayChinesePaymentsPlugin.xcframework.zip" "<ElepayChinesePaymentsPlugin_sha256>"

    # Stripe组件校验和
    replace_checksum "Stripe.xcframework.zip" "<Stripe_sha256>"
    replace_checksum "StripeCore.xcframework.zip" "<StripeCore_sha256>"
    replace_checksum "StripeApplePay.xcframework.zip" "<StripeApplePay_sha256>"
    replace_checksum "StripePayments.xcframework.zip" "<StripePayments_sha256>"
    replace_checksum "StripePaymentsUI.xcframework.zip" "<StripePaymentsUI_sha256>"
    replace_checksum "StripePaymentSheet.xcframework.zip" "<StripePaymentSheet_sha256>"
    replace_checksum "StripeIdentity.xcframework.zip" "<StripeIdentity_sha256>"
    replace_checksum "StripeCardScan.xcframework.zip" "<StripeCardScan_sha256>"
    replace_checksum "StripeFinancialConnections.xcframework.zip" "<StripeFinancialConnections_sha256>"
    replace_checksum "StripeConnect.xcframework.zip" "<StripeConnect_sha256>"
    replace_checksum "Stripe3DS2.xcframework.zip" "<Stripe3DS2_sha256>"
    replace_checksum "StripeUICore.xcframework.zip" "<StripeUICore_sha256>"
    replace_checksum "StripeCameraCore.xcframework.zip" "<StripeCameraCore_sha256>"

    echo "$content" >"$package_file"
}

update_swift_package

TIMESTAMP=$(date +%Y%m%d-%H%M%S)
NEW_RELEASE_DIR_PATH="$ROOT_DIR/Release-$VERSION-$TIMESTAMP"

echo "" # Add a blank line for separation

if mv "$RELEASE_DIR" "$NEW_RELEASE_DIR_PATH"; then
    echo "------------------------------------------------------------------------"
    echo "Build artifacts finalized in: $NEW_RELEASE_DIR_PATH"
    echo "------------------------------------------------------------------------"
    echo "The Release directory has been renamed with timestamp."

    echo ""
    echo "Next steps:"
    echo "  0. Git commit and push the changed file."
    echo "  1. Create a new release on GitHub."
    echo "  2. Upload all contents of '$NEW_RELEASE_DIR_PATH' to this GitHub release."
    echo "  3. (Optional) You can delete the '$NEW_RELEASE_DIR_PATH' directory and '$RELEASE_ZIP_PATTERN' zip file locally after uploading."
    echo "------------------------------------------------------------------------"
else
    echo "Error: Failed to rename the Release directory"
fi
