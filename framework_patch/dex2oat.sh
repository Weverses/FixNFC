mkdir -p /sdcard/framework/oat/arm64/
mkdir -p /sdcard/framework/oat/arm/
dex2oat --dex-file=/sdcard/framework/framework.jar --compiler-filter=everything --instruction-set=arm64 --oat-file=/sdcard/framework/oat/arm64/framework.odex
dex2oat --dex-file=/sdcard/framework/framework.jar --compiler-filter=everything --instruction-set=arm --oat-file=/sdcard/framework/oat/arm/framework.odex