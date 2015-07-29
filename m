Return-Path: <roosembert.palacios@epfl.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C236CE009EB; Wed, 29 Jul 2015 08:42:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [128.178.224.219 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Wed, 29 Jul 2015 08:42:24 PDT
Received: from smtp4.epfl.ch (smtp4.epfl.ch [128.178.224.219])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CF3AE0097F
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 08:42:23 -0700 (PDT)
Received: (qmail 23406 invoked by uid 107); 29 Jul 2015 15:35:41 -0000
X-Virus-Scanned: ClamAV
Received: from domosafety1.epfl.ch (HELO [172.21.93.129]) (128.179.67.139)
	(TLS, DHE-RSA-AES256-SHA cipher) (authenticated)
	by smtp4.epfl.ch (AngelmatoPhylax SMTP proxy) with ESMTPSA;
	Wed, 29 Jul 2015 17:35:41 +0200
Message-ID: <55B8F2CB.6020000@epfl.ch>
Date: Wed, 29 Jul 2015 17:35:39 +0200
From: Roosemberth Palacios <roosembert.palacios@epfl.ch>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Sun, 02 Aug 2015 23:22:39 -0700
Subject: Cannot build Runtime Dependency "kernel-devicetree" on custom kernel based image / OE Arago
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 29 Jul 2015 15:42:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hello, I'm working on a custom image for ti's am335x chip. Still, I
try to build my image, but at the end I get

[...]
| Collected errors:
| * satisfy_dependencies_for: Cannot satisfy the following
dependencies for domosafety-userspace-1.0:
| * kernel-devicetree * kernel-devicetree *
| * opkg_install_cmd: Cannot install package domosafety-userspace-1.0.
[...]

I'm using a custom kernel which was provided by the hardware
manufacturer. I was able to build {MACHINE="CBoxNAND.conf" bitbake
custom-base-image} (from TI's Sitiara Linux Training:
http://processors.wiki.ti.com/index.php/Sitara_Linux_Training:_Getting_Started_with_Openembedded)

Then, we just replaced the kernel source by the hw manufacturer's one
(note the .tar as the kernel source). Device tree is in the good place
in the kernel sources (arch/arm/boot/dts/cbox-NAND.dt{s,b}). But still
I can't manage to build. I had to copy paste the "linux-dtb.inc" at
the end of the recipe as it wasn't getting loaded (why?). And I
changed from do_install_append to do_compile_kernelmodules_append in
order that code to run.

build command:
MACHINE="CBoxNAND" bitbake core-image-domosafety -DDD | tee
/tmp/logCBoxNAND.core-image-domosafety

The complete log file is at: http://www.pasteall.org/59962

I'll leave down here part of important files.


Best Regards!
Roosembert Palacios

- ---------- "conf/machine/CBoxNAND.conf"

#@TYPE: Machine
#@NAME: AM335x EVM
#@DESCRIPTION: Machine configuration for Domosafety's CBox NAND Storage

require conf/machine/include/ti33x.inc

XSERVER = ""
GUI_MACHINE_CLASS = ""
MACHINE_FEATURES = "kernel26 apm usbhost vfat ext2 ethernet"
IMAGE_FEATURES += "package-management"

IMAGE_FSTYPES += "ubi tar.gz"

SERIAL_CONSOLE = "115200 ttyO0"
MKUBIFS_ARGS = "-F -m 2048 -e 131072 -c 3836"
UBINIZE_ARGS = "-m 2048 -p 128KiB -s 512 -O 2048"

PREFERRED_VERSION_linux-libc-headers_CBoxNAND = "3.2"
PREFERRED_PROVIDER_virtual/kernel_CBoxNAND = "linux-domosafety"
PREFERRED_PROVIDER_virtual/bootloader_CBoxNAND = "u-boot-domosafety"
PREFERRED_PROVIDER_virtual/uenv_CBoxNAND = "uenv-domosafety-nand"
PREFERRED_PROVIDER_kernel_CBoxNAND = "linux-domosafety"
PREFERRED_PROVIDER_u-boot_CBoxNAND = "u-boot-domosafety"

PREFERRED_PROVIDER_ltp-ddt_CBoxNAND = "ltp-ddt-legacy"
PREFERRED_PROVIDER_virtual/gettext = "gettext"

RDEPENDS_kernel-base += "kernel-devicetree"
KERNEL_IMAGETYPE = "uImage"
UBOOT_MACHINE="zigBeeBox_secured_config"


- ---------- "recipes-core/images/core-image-domosafety_1.0.bb"
DESCRIPTION = "DomoSafety Image"
export IMAGE_BASENAME = "core-image-domosafety"

# IMAGE_INSTALL += "domosafety-BareImage"
IMAGE_INSTALL = "domosafety-userspace-1.0 packagegroup-core-boot
${ROOTFS_PKGMANAGE_BOOTSTRAP} ${CORE_IMAGE_EXTRA_INSTALL}"
IMAGE_LINGUAS = " "
LICENSE = "MIT"

IMAGE_ROOTFS_SIZE = "524288"
IMAGE_FEATURES += " ssh-server-openssh package-management "

inherit core-image


- ---------- "linux-domosafety_3.13.43.bb" ----------------

LICENSE = "GPLv2"
KERNEL_IMAGETYPE = "uImage"
LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
COMPATIBLE_MACHINE = "CBoxNAND"
KERNEL_DEVICETREE = "cbox-NAND.dts"

DEFAULT_PREFERENCE = "1"

inherit kernel
# TI's
require recipes-kernel/linux/setup-defconfig.inc

# Pull in the devicetree files into the rootfs
RDEPENDS_kernel-base += "kernel-devicetree"
IMAGE_INSTALL_append = " kernel-image "
INITRAMFS_IMAGE = "initramfs-cbox-normal"

# Add a run-time dependency for the PM firmware to be installed on the
target file system.
RDEPENDS_kernel-base_append_CBoxNAND = " am33x-cm3"

# Default is to package all dtb files for ti33x devices unless
building for the specific beaglebone machine.
KERNEL_DEVICETREE_CBoxNAND = "cbox-NAND.dts "

S = "${WORKDIR}/linux-${PV}-am335x"
B = "${S}"

PR = "devel6"
MACHINE_KERNEL_PR_append = "r+${PR}"

EXTRA_OEMAKE_append += " LOADADDR=${UBOOT_ENTRYPOINT} "

SRC_URI = " \
file://${PN}_${PV}/am335x-pm-firmware.bin;name=pm-firmware \
file://${PN}_${PV}/cbox-domosafety.defconfig;name=kconfig \
file://${PN}_${PV}/linux-${PV}-am335x.tar;name=kernel \
"

SRC_URI[kernel.md5sum] = "3d5b4539183a0f4c7634ff728ec61707"
SRC_URI[pm-firmware.md5sum] = "c571cf09f994d5fd8750338618cafa0b"
SRC_URI[kconfig.md5sum] = "22be214b4fd6ffa8d2da6a4b895d722a"

do_fetch_append() {
os.system("cp ${WORKDIR}/${PN}_${PV}/am335x-pm-firmware.bin ${S}/
2>>${WORKDIR}/Failure ")
os.system("cp ${WORKDIR}/${PN}_${PV}/cbox-domosafety.defconfig
${WORKDIR}/defconfig 2>>${WORKDIR}/Failure ")
os.system("tree $(WORKDIR) -L 3 &>>${WORKDIR}/Failure")
}

do_configure_append() {
cp "${DEPLOY_DIR_IMAGE}/${INITRAMFS_IMAGE}-${MACHINE}.cpio.lzma"
${S}/initramfs.cpio.lzma
}

pkg_postinst_kernel-image() {
if [ "x$D" = "x" ]; then
/usr/sbin/flash_erase /dev/mtd2 0 0
/bin/dd if=/boot/uImage of=/dev/mtd2 bs=131072 conv=sync
fi
update-alternatives --install /${KERNEL_IMAGEDEST}/${KERNEL_IMAGETYPE}
${KERNEL_IMAGETYPE} ${KERNEL_IMAGETYPE}-${KERNEL_VERSION}
${KERNEL_PRIORITY} || true
if [ ! -e "$D/lib/modules/${KERNEL_VERSION}" ]; then
mkdir -p $D/lib/modules/${KERNEL_VERSION}
fi
if [ -n "$D" ]; then
depmodwrapper -a -b $D ${KERNEL_VERSION}
else
depmod -a ${KERNEL_VERSION}
fi
}

pkg_postrm_kernel-image () {
update-alternatives --remove ${KERNEL_IMAGETYPE}
${KERNEL_IMAGETYPE}-${KERNEL_VERSION} || true
}

pkg_postinst_kernel-devicetree() {
cd /${KERNEL_IMAGEDEST}; update-alternatives --install
/${KERNEL_IMAGEDEST}/${MACHINE}.dtb devicetree
devicetree-uImage-cbox-NAND.dtb ${KERNEL_PRIORITY} || true
if [ "x$D" = "x" ]; then
/usr/sbin/flash_erase /dev/mtd1 0 0
/bin/dd if=/boot/devicetree-uImage-cbox-NAND.dtb of=/dev/mtd1
bs=131072 conv=sync
fi
}

pkg_postrm_kernel-devicetree() {
cd /${KERNEL_IMAGEDEST}; update-alternatives --remove devicetree
devicetree-${KERNEL_VERSION} || true
}

# Support for device tree generation
FILES_kernel-devicetree = "/boot/devicetree*"
KERNEL_DEVICETREE_FLAGS = "-R 8 -p 0x3000"

PACKAGES += " kernel-devicetree "
DEPENDS_append = " dtc-native "

#python __anonymous () {
# devicetree = d.getVar("KERNEL_DEVICETREE", True) or ''
# if devicetree:
# depends = d.getVar("DEPENDS", True)
# d.setVar("DEPENDS", "%s dtc-native" % depends)
# packages = d.getVar("PACKAGES", True)
#}

#pkg_preinst_kernel-image_append() {
do_compile_kernelmodules_append(){
# echo "linux-dtb[ds-pkg_prinst_kernel-image_append]: Processing
Device Trees..." > /tmp/log
echo "linux-dtb[ds.do_compile_kernelmodules_append]: Processing Device
Trees..." > /tmp/log
if test -n "${KERNEL_DEVICETREE}"; then
for DTS_FILE in ${KERNEL_DEVICETREE}; do
echo "Processing ${DTS_FILE}" >> /tmp/log
if [ ! -f ${DTS_FILE} ]; then
echo "Warning: ${DTS_FILE} is not available!"
continue
fi
DTS_BASE_NAME=`basename ${DTS_FILE} | awk -F "." '{print $1}'`
DTB_NAME=`echo ${KERNEL_IMAGE_BASE_NAME} | sed
"s/${MACHINE}/${DTS_BASE_NAME}/g"`
DTB_SYMLINK_NAME=`echo ${KERNEL_IMAGE_SYMLINK_NAME} | sed
"s/${MACHINE}/${DTS_BASE_NAME}/g"`
dtc -I dts -O dtb ${KERNEL_DEVICETREE_FLAGS} -o ${DTS_BASE_NAME}
${DTS_FILE}
install -m 0644 ${DTS_BASE_NAME}
${D}/boot/devicetree-${DTB_SYMLINK_NAME}.dtb
done
fi
echo "linux-dtb[]: end processing Device Trees..."
}

- -------------------------------------------------------------


-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVuPLKAAoJEMqq7OXCJCu3c4sH/01OqSaNOA8vBAD6eImsiqGO
RTR2b9rpEN8h5TPn2ShCZV3D29MMZC6UZUEaUC/NVGR8Ehe4vRy4T2rlVGKNw45d
szRqy76+mLQWAkyANTkJ1rYB6Un5nBcLPGNDmFFohevKMq7INNuRVklQ5vP7S3bk
0TJL93na5SBh/5CtbOMOvrZus47jhRnlHFv/Ng1TC5DsRfhiw+TY529pb4OA1qOV
hZ4nG9nxrc6b7w/pjjvA3WhQTGp/iGF2ErMkfLa11hUpNg9wUOssgudBg9zirXbm
rj0420XWEN5vyQTzkJp41W6TQ7x//Ny6WGuiyurxYLRub6p+0qCQBkQi2axqLAA=
=v4et
-----END PGP SIGNATURE-----

