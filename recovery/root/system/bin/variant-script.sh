#!/system/bin/sh
# This script is needed to automatically set device props.

load_courbet()
{
    resetprop "ro.product.model" "M2101K9AG"
    resetprop "ro.product.vendor.model" "M2101K9AG"
    resetprop "ro.product.name" "courbet"
    resetprop "ro.build.product" "courbet"
    resetprop "ro.product.device" "courbet"
    resetprop "ro.product.system.device" "courbet"
    resetprop "ro.product.vendor.device" "courbet"
    resetprop "ro.vendor.product.device" "courbet"
}

load_courbetin()
{
    resetprop "ro.product.model" "M2101K9AI"
    resetprop "ro.product.vendor.model" "M2101K9AI"
    resetprop "ro.product.name" "courbetin"
    resetprop "ro.build.product" "courbetin"
    resetprop "ro.product.device" "courbetin"
    resetprop "ro.product.system.device" "courbetin"
    resetprop "ro.product.vendor.device" "courbetin"
    resetprop "ro.vendor.product.device" "courbetin"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "GLOBAL")
        load_courbet
        ;;
    "INDIA")
        load_courbetin
        ;;
    *)
        load_courbet
        ;;
esac

exit 0
