# Acer Iconia B1-A71 (MT8317 / MT6577)

Use this repository to compile TWRP from source.

* Used TWPR branch: twrp-4.4
* Resulting TWRP version: 3.1.1

## Compatibility

This device tree should also work for Acer Iconia B1-710 and Lenovo IdeaTab A1000 with either minor or no changes at all.

## Building

Tools needed: `repo` and some cross-compiling toolchain. Linaro v7.5.0 works great.

**1. Get the TWRP source code**

`repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni -b twrp-4.4 --depth 1`

If this command fails due to some unspecified credentials error, you can bypass it by executing:

`cd .repo/manifests && git config user.name 'test' && git config user.email 'test@ema.il' && cd ../..`

and then running `repo init` thing from above again.

**2. Get the device tree**

```
mkdir -p device/acer/giordano
git clone https://github.com/arzam16/android_device_acer_giordano device/acer/giordano
```

**3. Build it!**

```
. build/envsetup.sh
lunch omni_giordano-userdebug
make recoveryimage
```

Feel free to specify `-jTHREADS` option in `make` command to speed up compilation. `lunch` command yields some dependency warning, but it still builds fine. The recovery image for flashing will be located at `out/target/product/giordano/recovery.img`

## Notes on kernel

This device tree uses prebuilt kernel which could be easily reproduced:

* Source code: https://github.com/arzam16/mt6577_kernel_Acer_B1_A71
* Commit: `67a47ce448ed2dad6004f1d5244d5fc26a0907ef`
* Config: `prebuilt/kernel.config`
