Return-Path: <dhanyalakshmi.k@priyarajaelectronics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C26C25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 10:01:16 +0000 (UTC)
Subject: Re: Unable to populate_sdk for ls1012afrwy macine
To: yocto@lists.yoctoproject.org
From: dhanyalakshmi.k@priyarajaelectronics.com
X-Originating-Location: =?UTF-8?B?UGFyaXMsIMOObGUtZGUtRnJhbmNlLCBGUg==?= (51.158.186.242)
X-Originating-Platform: Linux Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 May 2024 03:01:08 -0700
Message-ID: <wWAG.1715853668793985936.L0Ei@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MHZgrbgRokSin4mM3Vb1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 10:01:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63110

--MHZgrbgRokSin4mM3Vb1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I apologize if it seemed rude for not introducing myself earlier. I'm Dhany=
a, and currently, I'm working on building an image for my ls1012afrwy NXP b=
oard using the Yocto Project. I've successfully built the image, but I'm en=
countering an error when attempting to build a cross-compiler toolchain for=
 SDKMACHINE =3D aarch64, as mentioned earlier.

I'll outline the steps I followed to build the image:

$ sudo apt install gawk wget git diffstat unzip texinfo gcc build-essential=
 chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutil=
s iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev python=
3-subunit mesa-common-dev zstd liblz4-tool file locales

$ sudo locale-gen en_US.UTF-8

$ mkdir distro
$ cd distro
$ repo init -u https://github.com/nxp-qoriq/yocto-sdk.git -b mickledore -m =
ls-6.1.55-2.2.0_distro.xml
$ repo sync

$ source =C2=A0distro-setup-env -m ls1012afrwy

$ bitbake ls-image-main
$ bitbake -c populate_sdk ls-image-main

And the error message is as follows:

ERROR: ls-image-main-22.04.2-r0 do_populate_sdk: Could not invoke dnf. Comm=
and '/home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/work/ls1012afrwy-fsl-=
linux/ls-image-main/22.04.2-r0/recipe-sysroot-native/usr/bin/dnf -v --rpmve=
rbosity=3Dinfo -y -c /home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/work/=
ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/sdk/image/usr/local/oe-sdk-h=
ardcoded-buildpath/sysroots/aarch64-fsl-linux/etc/dnf/dnf.conf --setopt=3Dr=
eposdir=3D/home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/work/ls1012afrwy=
-fsl-linux/ls-image-main/22.04.2-r0/sdk/image/usr/local/oe-sdk-hardcoded-bu=
ildpath/sysroots/aarch64-fsl-linux/etc/yum.repos.d --installroot=3D/home/dh=
anyalakshmi/distro/build_ls1012afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-imag=
e-main/22.04.2-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysroots/a=
arch64-fsl-linux --setopt=3Dlogdir=3D/home/dhanyalakshmi/distro/build_ls101=
2afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/temp --repof=
rompath=3Doe-repo,/home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/work/ls1=
012afrwy-fsl-linux/ls-image-main/22.04.2-r0/oe-sdk-repo --nogpgcheck instal=
l blktrace can-utils cpufrequtils dpdk-examples fio i2c-tools iozone3 iperf=
2 iperf3 ipsec-demo ipsec-tools kernel-devicetree kernel-image kernel-modul=
es linuxptp lmbench lmsensors-sensors makedevs mmc-utils netperf openssl-en=
gines packagegroup-core-standalone-sdk-target packagegroup-fsl-tools-core p=
ackagegroup-fsl-tools-extended perf rt-tests sysfsutils target-sdk-provides=
-dummy ubuntu-main ubuntu-main-dbg ubuntu-main-dev ubuntu-main-doc udev-ext=
raconf udev-rules-qoriq usbutils watchdog' returned 1:
DNF version: 4.14.0
cachedir: /home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/work/ls1012afrwy=
-fsl-linux/ls-image-main/22.04.2-r0/sdk/image/usr/local/oe-sdk-hardcoded-bu=
ildpath/sysroots/aarch64-fsl-linux/var/cache/dnf
Added oe-repo repo from /home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/wo=
rk/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/oe-sdk-repo
User-Agent: falling back to 'libdnf': could not detect OS or basearch
repo: using cache for: oe-repo
oe-repo: using metadata from Thu 16 May 2024 09:31:47 AM UTC.
Last metadata expiration check: 0:00:01 ago on Thu 16 May 2024 09:32:01 AM =
UTC.
--> Starting dependency resolution
--> Finished dependency resolution
Error:
Problem 1: package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_targ=
et from oe-repo conflicts with /bin/sh provided by ubuntu-main-22.04.2-r0.a=
arch64 from oe-repo
 - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from =
oe-repo conflicts with perl provided by ubuntu-main-22.04.2-r0.aarch64 from=
 oe-repo
 - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from =
oe-repo conflicts with bash provided by ubuntu-main-22.04.2-r0.aarch64 from=
 oe-repo
 - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from =
oe-repo conflicts with coreutils provided by ubuntu-main-22.04.2-r0.aarch64=
 from oe-repo
 - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from =
oe-repo conflicts with /usr/bin/env provided by ubuntu-main-22.04.2-r0.aarc=
h64 from oe-repo
 - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from =
oe-repo conflicts with /bin/bash provided by ubuntu-main-22.04.2-r0.aarch64=
 from oe-repo
 - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from =
oe-repo conflicts with bash-dev provided by ubuntu-main-22.04.2-r0.aarch64 =
from oe-repo
 - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from =
oe-repo conflicts with pkgconfig provided by ubuntu-main-22.04.2-r0.aarch64=
 from oe-repo
 - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from =
oe-repo conflicts with perl-dev provided by ubuntu-main-22.04.2-r0.aarch64 =
from oe-repo
 - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from =
oe-repo conflicts with /usr/bin/perl provided by ubuntu-main-22.04.2-r0.aar=
ch64 from oe-repo
 - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with perl =
provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from=
 oe-repo
 - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with bash =
provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from=
 oe-repo
 - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with coreu=
tils provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target=
 from oe-repo
 - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with bash-=
dev provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target =
from oe-repo
 - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with pkgco=
nfig provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target=
 from oe-repo
 - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with perl-=
dev provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target =
from oe-repo
 - conflicting requests
Problem 2: package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts wi=
th libc6-dbg provided by libc6-dbg-2.35-r0.aarch64 from oe-repo
 - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo obsoletes libc6-dbg =
provided by libc6-dbg-2.35-r0.aarch64 from oe-repo
 - package ubuntu-main-doc-22.04.2-r0.aarch64 from oe-repo requires ubuntu-=
main, but none of the providers can be installed
 - package packagegroup-core-standalone-sdk-target-1.0-r8.aarch64 from oe-r=
epo requires glibc-dbg, but none of the providers can be installed
 - conflicting requests
(try to add '--allowerasing' to command line to replace conflicting package=
s or '--skip-broken' to skip uninstallable packages)

ERROR: Logfile of failure stored in: /home/dhanyalakshmi/distro/build_ls101=
2afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/temp/log.do_=
populate_sdk.2348536
ERROR: Task (/home/dhanyalakshmi/distro/sources/meta-nxp-desktop/recipes-fs=
l/images/ls-image-main.bb:do_populate_sdk) failed with exit code '1'

And about the question Alex asked, ubuntu-main is present in ls-image-main.=
bb file.

I have attached the "ls-image-main.bb" file as well here:

# Layerscape main image without an Desktop rootfs
#
# Note that we have a tight dependency to ubuntu-main
# and that we cannot just install arbitrary Yocto packages to avoid
# rootfs pollution or destruction.
PV =3D "${@d.getVar('PREFERRED_VERSION_ubuntu-base', True) or '1.0'}"

REQUIRED_DISTRO_FEATURES =3D ""

require ls-image-common.inc

APTGET_EXTRA_PACKAGES_MAIN =3D "1"

APTGET_EXTRA_PACKAGES +=3D "\
libvirt-daemon-system \
"

# This must be added first as it provides the foundation for
# subsequent modifications to the rootfs
IMAGE_INSTALL +=3D "\
ubuntu-main \
ubuntu-main-dev \
ubuntu-main-dbg \
ubuntu-main-doc \
"

IMAGE_INSTALL:append =3D " \
${LAYERSCAPE_NETWORK_TOOLS} \
iperf2 \
makedevs lmsensors-sensors \
${LAYERSCAPE_DEMO_SAMPLES} \
"

SOC_DEFAULT_IMAGE_FSTYPES:append =3D " wic.bmap wic.bz2 tar.gz"
SOC_DEFAULT_IMAGE_FSTYPES:remove:ls2088ardb =3D "wic.bmap wic.bz2"
SOC_DEFAULT_IMAGE_FSTYPES:remove:ls1012ardb =3D "wic.bmap wic.bz2"
SOC_DEFAULT_IMAGE_FSTYPES:remove:ls1012afrwy =3D "wic.bmap wic.bz2"
SOC_DEFAULT_IMAGE_FSTYPES:remove =3D " tar.bz2"

IMAGE_ROOTFS_SIZE ?=3D "6291456"

If there's anything required from my side to resolve this issue, please do =
ask because I'm not understanding why I'm facing this issue and how to reso=
lve it as well. Hoping for your reply.

Thank You.

--MHZgrbgRokSin4mM3Vb1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"border: 0px solid #e3e3e3; box-sizing: border-box; --tw-border-=
spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate=
-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --t=
w-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-widt=
h: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); =
--tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent=
; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; margi=
n: 0px 0px 1.25em; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, =
system-ui, -apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans=
', sans-serif, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoj=
i', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: nor=
mal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight=
: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: =
0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-strok=
e-width: 0px; white-space: pre-wrap; background-color: #ffffff; text-decora=
tion-thickness: initial; text-decoration-style: initial; text-decoration-co=
lor: initial;">Hi,</p>
<p style=3D"border: 0px solid #e3e3e3; box-sizing: border-box; --tw-border-=
spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate=
-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --t=
w-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-widt=
h: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); =
--tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent=
; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; margi=
n: 1.25em 0px; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, syst=
em-ui, -apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', s=
ans-serif, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoji', =
'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal;=
 font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 40=
0; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px;=
 text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; white-space: pre-wrap; background-color: #ffffff; text-decoration=
-thickness: initial; text-decoration-style: initial; text-decoration-color:=
 initial;">I apologize if it seemed rude for not introducing myself earlier=
. I'm Dhanya, and currently, I'm working on building an image for my ls1012=
afrwy NXP board using the Yocto Project. I've successfully built the image,=
 but I'm encountering an error when attempting to build a cross-compiler to=
olchain for SDKMACHINE =3D aarch64, as mentioned earlier.</p>
<p style=3D"border: 0px solid #e3e3e3; box-sizing: border-box; --tw-border-=
spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate=
-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --t=
w-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-widt=
h: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); =
--tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent=
; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; margi=
n: 1.25em 0px; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, syst=
em-ui, -apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', s=
ans-serif, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoji', =
'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal;=
 font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 40=
0; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px;=
 text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; white-space: pre-wrap; background-color: #ffffff; text-decoration=
-thickness: initial; text-decoration-style: initial; text-decoration-color:=
 initial;">I'll outline the steps I followed to build the image:<br /><br /=
>$ sudo apt install gawk wget git diffstat unzip texinfo gcc build-essentia=
l chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianuti=
ls iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pytho=
n3-subunit mesa-common-dev zstd liblz4-tool file locales&nbsp;<br /><br />$=
 sudo locale-gen en_US.UTF-8<br /><br />$ mkdir distro<br />$ cd distro<br =
/>$ repo init -u https://github.com/nxp-qoriq/yocto-sdk.git -b mickledore -=
m ls-6.1.55-2.2.0_distro.xml<br />$ repo sync<br /><br />$ source &nbsp;dis=
tro-setup-env -m ls1012afrwy<br /><br />$ bitbake ls-image-main<br />$ bitb=
ake -c populate_sdk ls-image-main<br /><br /></p>
<p style=3D"border: 0px solid #e3e3e3; box-sizing: border-box; --tw-border-=
spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate=
-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --t=
w-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-widt=
h: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); =
--tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent=
; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; margi=
n: 1.25em 0px; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, syst=
em-ui, -apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', s=
ans-serif, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoji', =
'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal;=
 font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 40=
0; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px;=
 text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; white-space: pre-wrap; background-color: #ffffff; text-decoration=
-thickness: initial; text-decoration-style: initial; text-decoration-color:=
 initial;">And the error message is as follows:</p>
<pre class=3D"moz-quote-pre">ERROR: ls-image-main-22.04.2-r0 do_populate_sd=
k: Could not invoke dnf. Command '/home/dhanyalakshmi/distro/build_ls1012af=
rwy/tmp/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/recipe-sysroot-=
native/usr/bin/dnf -v --rpmverbosity=3Dinfo -y -c /home/dhanyalakshmi/distr=
o/build_ls1012afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0=
/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysroots/aarch64-fsl-linux/=
etc/dnf/dnf.conf --setopt=3Dreposdir=3D/home/dhanyalakshmi/distro/build_ls1=
012afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/sdk/image/=
usr/local/oe-sdk-hardcoded-buildpath/sysroots/aarch64-fsl-linux/etc/yum.rep=
os.d --installroot=3D/home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/work/=
ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/sdk/image/usr/local/oe-sdk-h=
ardcoded-buildpath/sysroots/aarch64-fsl-linux --setopt=3Dlogdir=3D/home/dha=
nyalakshmi/distro/build_ls1012afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-image=
-main/22.04.2-r0/temp --repofrompath=3Doe-repo,/home/dhanyalakshmi/distro/b=
uild_ls1012afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/oe=
-sdk-repo --nogpgcheck install blktrace can-utils cpufrequtils dpdk-example=
s fio i2c-tools iozone3 iperf2 iperf3 ipsec-demo ipsec-tools kernel-devicet=
ree kernel-image kernel-modules linuxptp lmbench lmsensors-sensors makedevs=
 mmc-utils netperf openssl-engines packagegroup-core-standalone-sdk-target =
packagegroup-fsl-tools-core packagegroup-fsl-tools-extended perf rt-tests s=
ysfsutils target-sdk-provides-dummy ubuntu-main ubuntu-main-dbg ubuntu-main=
-dev ubuntu-main-doc udev-extraconf udev-rules-qoriq usbutils watchdog' ret=
urned 1:
DNF version: 4.14.0
cachedir: /home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/work/ls1012afrwy=
-fsl-linux/ls-image-main/22.04.2-r0/sdk/image/usr/local/oe-sdk-hardcoded-bu=
ildpath/sysroots/aarch64-fsl-linux/var/cache/dnf
Added oe-repo repo from /home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/wo=
rk/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/oe-sdk-repo
User-Agent: falling back to 'libdnf': could not detect OS or basearch
repo: using cache for: oe-repo
oe-repo: using metadata from Thu 16 May 2024 09:31:47 AM UTC.
Last metadata expiration check: 0:00:01 ago on Thu 16 May 2024 09:32:01 AM =
UTC.
--&gt; Starting dependency resolution
--&gt; Finished dependency resolution
Error:
 Problem 1: package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_tar=
get from oe-repo conflicts with /bin/sh provided by ubuntu-main-22.04.2-r0.=
aarch64 from oe-repo
  - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from=
 oe-repo conflicts with perl provided by ubuntu-main-22.04.2-r0.aarch64 fro=
m oe-repo
  - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from=
 oe-repo conflicts with bash provided by ubuntu-main-22.04.2-r0.aarch64 fro=
m oe-repo
  - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from=
 oe-repo conflicts with coreutils provided by ubuntu-main-22.04.2-r0.aarch6=
4 from oe-repo
  - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from=
 oe-repo conflicts with /usr/bin/env provided by ubuntu-main-22.04.2-r0.aar=
ch64 from oe-repo
  - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from=
 oe-repo conflicts with /bin/bash provided by ubuntu-main-22.04.2-r0.aarch6=
4 from oe-repo
  - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from=
 oe-repo conflicts with bash-dev provided by ubuntu-main-22.04.2-r0.aarch64=
 from oe-repo
  - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from=
 oe-repo conflicts with pkgconfig provided by ubuntu-main-22.04.2-r0.aarch6=
4 from oe-repo
  - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from=
 oe-repo conflicts with perl-dev provided by ubuntu-main-22.04.2-r0.aarch64=
 from oe-repo
  - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from=
 oe-repo conflicts with /usr/bin/perl provided by ubuntu-main-22.04.2-r0.aa=
rch64 from oe-repo
  - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with perl=
 provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target fro=
m oe-repo
  - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with bash=
 provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target fro=
m oe-repo
  - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with core=
utils provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_targe=
t from oe-repo
  - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with bash=
-dev provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target=
 from oe-repo
  - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with pkgc=
onfig provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_targe=
t from oe-repo
  - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with perl=
-dev provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target=
 from oe-repo
  - conflicting requests
 Problem 2: package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts w=
ith libc6-dbg provided by libc6-dbg-2.35-r0.aarch64 from oe-repo
  - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo obsoletes libc6-dbg=
 provided by libc6-dbg-2.35-r0.aarch64 from oe-repo
  - package ubuntu-main-doc-22.04.2-r0.aarch64 from oe-repo requires ubuntu=
-main, but none of the providers can be installed
  - package packagegroup-core-standalone-sdk-target-1.0-r8.aarch64 from oe-=
repo requires glibc-dbg, but none of the providers can be installed
  - conflicting requests
(try to add '--allowerasing' to command line to replace conflicting package=
s or '--skip-broken' to skip uninstallable packages)

ERROR: Logfile of failure stored in: /home/dhanyalakshmi/distro/build_ls101=
2afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/temp/log.do_=
populate_sdk.2348536
ERROR: Task (/home/dhanyalakshmi/distro/sources/meta-nxp-desktop/recipes-fs=
l/images/ls-image-main.bb:do_populate_sdk) failed with exit code '1'
</pre>
<p style=3D"border: 0px solid #e3e3e3; box-sizing: border-box; --tw-border-=
spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate=
-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --t=
w-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-widt=
h: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); =
--tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent=
; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; margi=
n: 1.25em 0px; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, syst=
em-ui, -apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', s=
ans-serif, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoji', =
'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal;=
 font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 40=
0; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px;=
 text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; white-space: pre-wrap; background-color: #ffffff; text-decoration=
-thickness: initial; text-decoration-style: initial; text-decoration-color:=
 initial;">And about the question Alex asked, ubuntu-main is present in ls-=
image-main.bb file.</p>
<p style=3D"border: 0px solid #e3e3e3; box-sizing: border-box; --tw-border-=
spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate=
-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --t=
w-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-widt=
h: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); =
--tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent=
; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; margi=
n: 1.25em 0px; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, syst=
em-ui, -apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', s=
ans-serif, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoji', =
'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal;=
 font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 40=
0; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px;=
 text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; white-space: pre-wrap; background-color: #ffffff; text-decoration=
-thickness: initial; text-decoration-style: initial; text-decoration-color:=
 initial;">I have attached the "ls-image-main.bb" file as well here:<br /><=
br /></p>
<div># Layerscape main image without an Desktop rootfs</div>
<div>#</div>
<div># Note that we have a tight dependency to ubuntu-main</div>
<div># and that we cannot just install arbitrary Yocto packages to avoid</d=
iv>
<div># rootfs pollution or destruction.</div>
<div>PV =3D "${@d.getVar('PREFERRED_VERSION_ubuntu-base', True) or '1.0'}"<=
/div>
<div>&nbsp;</div>
<div>REQUIRED_DISTRO_FEATURES =3D ""</div>
<div>&nbsp;</div>
<div>require ls-image-common.inc</div>
<div>&nbsp;</div>
<div>APTGET_EXTRA_PACKAGES_MAIN =3D "1"</div>
<div>&nbsp;</div>
<div>APTGET_EXTRA_PACKAGES +=3D "\</div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>libvirt-daemon-system \</span></div>
<div>"</div>
<div>&nbsp;</div>
<div># This must be added first as it provides the foundation for</div>
<div># subsequent modifications to the rootfs</div>
<div>IMAGE_INSTALL +=3D "\</div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>ubuntu-main \</span></div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>ubuntu-main-dev \</span></div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>ubuntu-main-dbg \</span></div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>ubuntu-main-doc \</span></div>
<div>"</div>
<div>&nbsp;</div>
<div>IMAGE_INSTALL:append =3D " \</div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>${LAYERSCAPE_NETWORK_TOOLS} \</span></div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>iperf2 \</span></div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>makedevs lmsensors-sensors \</span></div>
<div><span style=3D"white-space: normal;"><span style=3D"white-space: pre;"=
> </span>${LAYERSCAPE_DEMO_SAMPLES} \</span></div>
<div>"</div>
<div>&nbsp;</div>
<div>SOC_DEFAULT_IMAGE_FSTYPES:append =3D " wic.bmap wic.bz2 tar.gz"</div>
<div>SOC_DEFAULT_IMAGE_FSTYPES:remove:ls2088ardb =3D "wic.bmap wic.bz2"</di=
v>
<div>SOC_DEFAULT_IMAGE_FSTYPES:remove:ls1012ardb =3D "wic.bmap wic.bz2"</di=
v>
<div>SOC_DEFAULT_IMAGE_FSTYPES:remove:ls1012afrwy =3D "wic.bmap wic.bz2"</d=
iv>
<div>SOC_DEFAULT_IMAGE_FSTYPES:remove =3D " tar.bz2"</div>
<div>&nbsp;</div>
<div>IMAGE_ROOTFS_SIZE ?=3D "6291456"<br /><br /><br /><br /></div>
<p style=3D"border: 0px solid #e3e3e3; box-sizing: border-box; --tw-border-=
spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate=
-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --t=
w-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-widt=
h: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); =
--tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent=
; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; margi=
n: 1.25em 0px; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, syst=
em-ui, -apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', s=
ans-serif, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoji', =
'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal;=
 font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 40=
0; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px;=
 text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; white-space: pre-wrap; background-color: #ffffff; text-decoration=
-thickness: initial; text-decoration-style: initial; text-decoration-color:=
 initial;">If there's anything required from my side to resolve this issue,=
 please do ask because I'm not understanding why I'm facing this issue and =
how to resolve it as well. Hoping for your reply.</p>
<p style=3D"border: 0px solid #e3e3e3; box-sizing: border-box; --tw-border-=
spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate=
-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --t=
w-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-widt=
h: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); =
--tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent=
; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; margi=
n: 1.25em 0px 0px; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, =
system-ui, -apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans=
', sans-serif, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoj=
i', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: nor=
mal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight=
: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: =
0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-strok=
e-width: 0px; white-space: pre-wrap; background-color: #ffffff; text-decora=
tion-thickness: initial; text-decoration-style: initial; text-decoration-co=
lor: initial;">Thank You.</p>
<p style=3D"border: 0px solid #e3e3e3; box-sizing: border-box; --tw-border-=
spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate=
-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --t=
w-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-widt=
h: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); =
--tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent=
; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; margi=
n: 1.25em 0px; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, syst=
em-ui, -apple-system, 'Segoe UI', Roboto, Ubuntu, Cantarell, 'Noto Sans', s=
ans-serif, 'Helvetica Neue', Arial, 'Apple Color Emoji', 'Segoe UI Emoji', =
'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal;=
 font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 40=
0; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px;=
 text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; white-space: pre-wrap; background-color: #ffffff; text-decoration=
-thickness: initial; text-decoration-style: initial; text-decoration-color:=
 initial;"><br /><br /></p>

--MHZgrbgRokSin4mM3Vb1--

