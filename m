Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D168C47258
	for <webhook@archiver.kernel.org>; Thu, 25 Jan 2024 12:03:44 +0000 (UTC)
Subject: Re: [yocto] etherlab
To: Ross Burton <ross.burton@arm.com>,yocto@lists.yoctoproject.org
From: "Daniele Lugli" <daniele.lugli@gmail.com>
X-Originating-Location: Reggio Calabria, Calabria, IT (176.246.57.111)
X-Originating-Platform: Windows Opera 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 25 Jan 2024 04:03:36 -0800
References: <8427A41F-3094-415A-AFAA-461D1C660184@arm.com>
In-Reply-To: <8427A41F-3094-415A-AFAA-461D1C660184@arm.com>
Message-ID: <27265.1706184216103968266@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="hOhbAMHHuIWazzF8sYl2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 12:03:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62289

--hOhbAMHHuIWazzF8sYl2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I would like to have autotools available but to decide myself how to use th=
em.

Here is mytest-image.bb:

# Adapted from the meta-intel layer

require recipes-core/images/core-image-minimal.bb

# Skip processing of this recipe if linux-intel-rt is not explicitly specif=
ied as the
# PREFERRED_PROVIDER for virtual/kernel. This avoids errors when trying
# to build multiple virtual/kernel providers.
python () {
if d.getVar("PREFERRED_PROVIDER_virtual/kernel") !=3D "linux-intel-rt":
raise bb.parse.SkipPackage("Set PREFERRED_PROVIDER_virtual/kernel to linux-=
intel-rt to enable it")
}

DESCRIPTION =3D "Small image capable of booting a device with a test suite =
and \
tools for real-time use. It includes the full meta-toolchain, development \
headers and libraries to form a standalone SDK."

DEPENDS +=3D " linux-intel-rt linux-libc-headers"

IMAGE_FEATURES +=3D "dev-pkgs tools-sdk tools-debug eclipse-debug tools-pro=
file tools-testapps debug-tweaks"

#IMAGE_FEATURES +=3D "keyboard" non disponibile
#IMAGE_FEATURES +=3D "ldconfig" non disponibile
#IMAGE_FEATURES +=3D "x11-sato"

IMAGE_INSTALL +=3D "rt-tests hwlatdetect kernel-dev kernel-devsrc"
IMAGE_INSTALL +=3D "keymaps"
IMAGE_INSTALL +=3D "vim"
IMAGE_INSTALL +=3D "emacs"
IMAGE_INSTALL +=3D "nano"
IMAGE_INSTALL +=3D "cmake"

# 240118
IMAGE_INSTALL:append =3D " kernel-dev"
IMAGE_INSTALL:append =3D " kernel-devsrc"
IMAGE_INSTALL:append =3D " kernel-modules"

IMAGE_INSTALL +=3D "simple-rt"
IMAGE_INSTALL +=3D "italian"
IMAGE_INSTALL +=3D "ethercat-userspace"
IMAGE_INSTALL +=3D "ethercat-kernel"

LICENSE =3D "MIT"

Here is ethercat-kernel.bb:

LICENSE =3D "GPL-2.0-only & LGPL-2.1-only"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D59530bdf33659b29e73d4adb9f9f6552=
 \
file://COPYING.LESSER;md5=3D4fbd65380cdd255951079008b364516c \
file://devices/e1000/LICENSE;md5=3De2643b73e47fa4b29cdfad24ee42bed6"

DEPENDS +=3D "pkgconfig-native"
RDEPENDS:${PN} +=3D "bash"

SRC_URI =3D "git://gitlab.com/etherlab.org/ethercat.git;protocol=3Dhttps;br=
anch=3Dmaster"

# Modify these as desired
PV =3D "1.6.0-rc1+git${SRCPV}"
SRCREV =3D "420e6150f55b71b97a84c64831f4928e0859a0e9"

S =3D "${WORKDIR}/git"

inherit autotools
inherit module

EXTRA_OECONF =3D "--sysconfdir=3D/etc --enable-generic --disable-igb --disa=
ble-8139too --with-linux-dir=3D${STAGING_KERNEL_BUILDDIR}"
EXTRA_OEMAKE +=3D "-f Makefile"

#do_configure() {
# sh ./bootstrap
# sh ./configure --sysconfdir=3D/etc --disable-8139too --disable-igb --with=
-linux-dir=3D${STAGING_KERNEL_BUILDDIR}
#}

#do_compile() {
# make all
# make modules
#}

#do_install() {
# make modules_install
# make install
# depmod
#}

FILES:${PN} +=3D "${datadir}/*"

Here is my local.conf (#comments removed):

MACHINE ?=3D "intel-corei7-64"

DISTRO ?=3D "poky"

EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"

USER_CLASSES ?=3D "buildstats"

PATCHRESOLVE =3D "noop"

BB_DISKMON_DIRS ??=3D "\
STOPTASKS,${TMPDIR},1G,100K \
STOPTASKS,${DL_DIR},1G,100K \
STOPTASKS,${SSTATE_DIR},1G,100K \
STOPTASKS,/tmp,100M,100K \
HALT,${TMPDIR},100M,1K \
HALT,${DL_DIR},100M,1K \
HALT,${SSTATE_DIR},100M,1K \
HALT,/tmp,10M,1K"

CONF_VERSION =3D "2"

PREFERRED_PROVIDER_virtual/kernel =3D "linux-intel-rt"

EXTRA_IMAGE_FEATURES:append =3D " tools-sdk dev-pkgs "

WKS_FILE =3D "image-installer.wks.in"
IMAGE_FSTYPES:append =3D " ext4"
IMAGE_TYPEDEP:wic =3D "ext4"
INITRD_IMAGE_LIVE=3D"core-image-minimal-initramfs"
do_image_wic[depends] +=3D "${INITRD_IMAGE_LIVE}:do_image_complete"
do_rootfs[depends] +=3D "virtual/kernel:do_deploy"
IMAGE_BOOT_FILES:append =3D "\
${KERNEL_IMAGETYPE} \
microcode.cpio \
${IMGDEPLOYDIR}/${IMAGE_BASENAME}-${MACHINE}.rootfs.ext4;rootfs.img \
${@bb.utils.contains('EFI_PROVIDER', 'grub-efi', 'grub-efi-bootx64.efi;EFI/=
BOOT/bootx64.efi', '', d)} \
${@bb.utils.contains('EFI_PROVIDER', 'grub-efi', '${IMAGE_ROOTFS}/boot/EFI/=
BOOT/grub.cfg;EFI/BOOT/grub.cfg', '', d)} \
${@bb.utils.contains('EFI_PROVIDER', 'systemd-boot', 'systemd-bootx64.efi;E=
FI/BOOT/bootx64.efi', '', d)} \
${@bb.utils.contains('EFI_PROVIDER', 'systemd-boot', '${IMAGE_ROOTFS}/boot/=
loader/loader.conf;loader/loader.conf ', '', d)} \
${@bb.utils.contains('EFI_PROVIDER', 'systemd-boot', '${IMAGE_ROOTFS}/boot/=
loader/entries/boot.conf;loader/entries/boot.conf', '', d)} "

Thank you

--
Daniele Lugli
General Logic srl
Viale Curreno, 41
10133 Torino
Italy
tel +39 329 3933041
www.general-logic.com ( http://www.general-logic.com/ )
www.linkedin.com/in/daniele- lugli ( http://www.linkedin.com/in/daniele-lug=
li )

--hOhbAMHHuIWazzF8sYl2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I would like to have autotools available but to decide myself how to use th=
em.<br /><br />Here is mytest-image.bb:<br /><br />
<div><span style=3D"color: #0000ff;"># Adapted from the meta-intel layer</s=
pan></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">require recipes-core/images/core-image=
-minimal.bb</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;"># Skip processing of this recipe if li=
nux-intel-rt is not explicitly specified as the</span></div>
<div><span style=3D"color: #0000ff;"># PREFERRED_PROVIDER for virtual/kerne=
l. This avoids errors when trying</span></div>
<div><span style=3D"color: #0000ff;"># to build multiple virtual/kernel pro=
viders.</span></div>
<div><span style=3D"color: #0000ff;">python () {</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; if d.getVar("PREFERRED_P=
ROVIDER_virtual/kernel") !=3D "linux-intel-rt":</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; raise bb.p=
arse.SkipPackage("Set PREFERRED_PROVIDER_virtual/kernel to linux-intel-rt t=
o enable it")</span></div>
<div><span style=3D"color: #0000ff;">}</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">DESCRIPTION =3D "Small image capable o=
f booting a device with a test suite and \</span></div>
<div><span style=3D"color: #0000ff;">tools for real-time use. It includes t=
he full meta-toolchain, development \</span></div>
<div><span style=3D"color: #0000ff;">headers and libraries to form a standa=
lone SDK."</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">DEPENDS +=3D " linux-intel-rt linux-li=
bc-headers"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">IMAGE_FEATURES +=3D "dev-pkgs tools-sd=
k tools-debug eclipse-debug tools-profile tools-testapps debug-tweaks"</spa=
n></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">#IMAGE_FEATURES +=3D "keyboard" non di=
sponibile</span></div>
<div><span style=3D"color: #0000ff;">#IMAGE_FEATURES +=3D "ldconfig" non di=
sponibile</span></div>
<div><span style=3D"color: #0000ff;">#IMAGE_FEATURES +=3D "x11-sato"</span>=
</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">IMAGE_INSTALL +=3D "rt-tests hwlatdete=
ct kernel-dev kernel-devsrc"</span></div>
<div><span style=3D"color: #0000ff;">IMAGE_INSTALL +=3D "keymaps"</span></d=
iv>
<div><span style=3D"color: #0000ff;">IMAGE_INSTALL +=3D "vim"</span></div>
<div><span style=3D"color: #0000ff;">IMAGE_INSTALL +=3D "emacs"</span></div=
>
<div><span style=3D"color: #0000ff;">IMAGE_INSTALL +=3D "nano"</span></div>
<div><span style=3D"color: #0000ff;">IMAGE_INSTALL +=3D "cmake"</span></div=
>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;"># 240118</span></div>
<div><span style=3D"color: #0000ff;">IMAGE_INSTALL:append =3D " kernel-dev"=
</span></div>
<div><span style=3D"color: #0000ff;">IMAGE_INSTALL:append =3D " kernel-devs=
rc"</span></div>
<div><span style=3D"color: #0000ff;">IMAGE_INSTALL:append =3D " kernel-modu=
les"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">IMAGE_INSTALL +=3D "simple-rt"</span><=
/div>
<div><span style=3D"color: #0000ff;">IMAGE_INSTALL +=3D "italian"</span></d=
iv>
<div><span style=3D"color: #0000ff;">IMAGE_INSTALL +=3D "ethercat-userspace=
"</span></div>
<div><span style=3D"color: #0000ff;">IMAGE_INSTALL +=3D "ethercat-kernel"</=
span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">LICENSE =3D "MIT"</span><br /><br />He=
re is ethercat-kernel.bb:<br /><br />
<div><span style=3D"color: #0000ff;">LICENSE =3D "GPL-2.0-only &amp; LGPL-2=
.1-only"</span></div>
<div><span style=3D"color: #0000ff;">LIC_FILES_CHKSUM =3D "file://COPYING;m=
d5=3D59530bdf33659b29e73d4adb9f9f6552 \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; file://COPYING.LESSER;md5=3D4fbd65380cdd255=
951079008b364516c \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; file://devices/e1000/LICENSE;md5=3De2643b73=
e47fa4b29cdfad24ee42bed6"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">DEPENDS +=3D "pkgconfig-native"</span>=
</div>
<div><span style=3D"color: #0000ff;">RDEPENDS:${PN} +=3D "bash"</span></div=
>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">SRC_URI =3D "git://gitlab.com/etherlab=
.org/ethercat.git;protocol=3Dhttps;branch=3Dmaster"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;"># Modify these as desired</span></div>
<div><span style=3D"color: #0000ff;">PV =3D "1.6.0-rc1+git${SRCPV}"</span><=
/div>
<div><span style=3D"color: #0000ff;">SRCREV =3D "420e6150f55b71b97a84c64831=
f4928e0859a0e9"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">S =3D "${WORKDIR}/git"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">inherit autotools</span></div>
<div><span style=3D"color: #0000ff;">inherit module</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">EXTRA_OECONF =3D "--sysconfdir=3D/etc =
--enable-generic --disable-igb --disable-8139too --with-linux-dir=3D${STAGI=
NG_KERNEL_BUILDDIR}"</span></div>
<div><span style=3D"color: #0000ff;">EXTRA_OEMAKE +=3D "-f Makefile"</span>=
</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">#do_configure() {</span></div>
<div><span style=3D"color: #0000ff;">#<span style=3D"white-space: pre;"> </=
span>sh ./bootstrap</span></div>
<div><span style=3D"color: #0000ff;">#<span style=3D"white-space: pre;"> </=
span>sh ./configure --sysconfdir=3D/etc --disable-8139too --disable-igb --w=
ith-linux-dir=3D${STAGING_KERNEL_BUILDDIR}</span></div>
<div><span style=3D"color: #0000ff;">#}</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">#do_compile() {</span></div>
<div><span style=3D"color: #0000ff;">#<span style=3D"white-space: pre;"> </=
span>make all</span></div>
<div><span style=3D"color: #0000ff;">#<span style=3D"white-space: pre;"> </=
span>make modules</span></div>
<div><span style=3D"color: #0000ff;">#}</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">#do_install() {</span></div>
<div><span style=3D"color: #0000ff;">#<span style=3D"white-space: pre;"> </=
span>make modules_install</span></div>
<div><span style=3D"color: #0000ff;">#<span style=3D"white-space: pre;"> </=
span>make install</span></div>
<div><span style=3D"color: #0000ff;">#<span style=3D"white-space: pre;"> </=
span>depmod</span></div>
<div><span style=3D"color: #0000ff;">#}</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">FILES:${PN} +=3D "${datadir}/*"</span>=
</div>
</div>
<br />Here is my local.conf (#comments removed):<br /><br />
<div>
<div><span style=3D"color: #0000ff;">MACHINE ?=3D "intel-corei7-64"</span><=
/div>
<div><br />
<div><span style=3D"color: #0000ff;">DISTRO ?=3D "poky"</span></div>
<div><br />
<div><span style=3D"color: #0000ff;">EXTRA_IMAGE_FEATURES ?=3D "debug-tweak=
s"</span></div>
<div><br />
<div><span style=3D"color: #0000ff;">USER_CLASSES ?=3D "buildstats"</span><=
/div>
<div><br />
<div><span style=3D"color: #0000ff;">PATCHRESOLVE =3D "noop"</span></div>
<div>&nbsp;</div>
</div>
</div>
</div>
</div>
</div>
<div><span style=3D"color: #0000ff;">BB_DISKMON_DIRS ??=3D "\</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; STOPTASKS,${TMPDIR},1G,1=
00K \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; STOPTASKS,${DL_DIR},1G,1=
00K \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; STOPTASKS,${SSTATE_DIR},=
1G,100K \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; STOPTASKS,/tmp,100M,100K=
 \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; HALT,${TMPDIR},100M,1K \=
</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; HALT,${DL_DIR},100M,1K \=
</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; HALT,${SSTATE_DIR},100M,=
1K \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; HALT,/tmp,10M,1K"</span>=
</div>
<div>&nbsp;</div>
<div>
<div><span style=3D"color: #0000ff;">CONF_VERSION =3D "2"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">PREFERRED_PROVIDER_virtual/kernel =3D =
"linux-intel-rt"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">EXTRA_IMAGE_FEATURES:append =3D " tool=
s-sdk dev-pkgs "</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">WKS_FILE =3D "image-installer.wks.in"<=
/span></div>
<div><span style=3D"color: #0000ff;">IMAGE_FSTYPES:append =3D " ext4"</span=
></div>
<div><span style=3D"color: #0000ff;">IMAGE_TYPEDEP:wic =3D "ext4"</span></d=
iv>
<div><span style=3D"color: #0000ff;">INITRD_IMAGE_LIVE=3D"core-image-minima=
l-initramfs"</span></div>
<div><span style=3D"color: #0000ff;">do_image_wic[depends] +=3D "${INITRD_I=
MAGE_LIVE}:do_image_complete"</span></div>
<div><span style=3D"color: #0000ff;">do_rootfs[depends] +=3D "virtual/kerne=
l:do_deploy"</span></div>
<div><span style=3D"color: #0000ff;">IMAGE_BOOT_FILES:append =3D "\</span><=
/div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; ${KERNEL_IMAGETYP=
E} \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; microcode.cpio \<=
/span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; ${IMGDEPLOYDIR}/$=
{IMAGE_BASENAME}-${MACHINE}.rootfs.ext4;rootfs.img \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; ${@bb.utils.conta=
ins('EFI_PROVIDER', 'grub-efi', 'grub-efi-bootx64.efi;EFI/BOOT/bootx64.efi'=
, '', d)} \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; ${@bb.utils.conta=
ins('EFI_PROVIDER', 'grub-efi', '${IMAGE_ROOTFS}/boot/EFI/BOOT/grub.cfg;EFI=
/BOOT/grub.cfg', '', d)} \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; ${@bb.utils.conta=
ins('EFI_PROVIDER', 'systemd-boot', 'systemd-bootx64.efi;EFI/BOOT/bootx64.e=
fi', '', d)} \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; ${@bb.utils.conta=
ins('EFI_PROVIDER', 'systemd-boot', '${IMAGE_ROOTFS}/boot/loader/loader.con=
f;loader/loader.conf ', '', d)} \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; ${@bb.utils.conta=
ins('EFI_PROVIDER', 'systemd-boot', '${IMAGE_ROOTFS}/boot/loader/entries/bo=
ot.conf;loader/entries/boot.conf', '', d)} "</span></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Thank you</div>
</div>
<div>&nbsp;</div>
-- <br />
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">
<div dir=3D"ltr">
<div>Daniele Lugli</div>
General Logic srl</div>
<div>Viale Curreno, 41</div>
<div>10133 Torino<br />Italy</div>
<div>tel +39 329 3933041</div>
</div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.general-lo=
gic.com/" target=3D"_blank" rel=3D"noopener" data-saferedirecturl=3D"https:=
//www.google.com/url?q=3Dhttp://www.general-logic.com&amp;source=3Dgmail&am=
p;ust=3D1702484712598000&amp;usg=3DAOvVaw3caieBojp7RHbXjtN3Avtg">www.genera=
l-logic.com</a></div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.linkedin.c=
om/in/daniele-lugli" target=3D"_blank" rel=3D"noopener" data-saferedirectur=
l=3D"https://www.google.com/url?q=3Dhttp://www.linkedin.com/in/daniele-lugl=
i&amp;source=3Dgmail&amp;ust=3D1702484712598000&amp;usg=3DAOvVaw2CJ1YOxQZd7=
TCndA_wq8ak">www.linkedin.com/in/daniele-<wbr />lugli</a></div>

--hOhbAMHHuIWazzF8sYl2--

