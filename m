Return-Path: <dhanyalakshmi.k@priyarajaelectronics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EACAC25B79
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 09:33:46 +0000 (UTC)
Subject: Unable to populate_sdk for ls1012afrwy macine
To: yocto@lists.yoctoproject.org
From: dhanyalakshmi.k@priyarajaelectronics.com
X-Originating-Location: =?UTF-8?B?UGFyaXMsIMOObGUtZGUtRnJhbmNlLCBGUg==?= (51.158.186.242)
X-Originating-Platform: Linux Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 May 2024 02:33:37 -0700
Message-ID: <OwGd.1715852017157298760.iJN3@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lhZIqsVRLiM3mkiJQi6t"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 09:33:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63107

--lhZIqsVRLiM3mkiJQi6t
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I tried to build toolchain for aarch64 target architecture using below comm=
and:
$ bitbake -c populate_sdk ls-image-main
Errors that i'm facing is:
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
- package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from o=
e-repo conflicts with perl provided by ubuntu-main-22.04.2-r0.aarch64 from =
oe-repo
- package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from o=
e-repo conflicts with bash provided by ubuntu-main-22.04.2-r0.aarch64 from =
oe-repo
- package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from o=
e-repo conflicts with coreutils provided by ubuntu-main-22.04.2-r0.aarch64 =
from oe-repo
- package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from o=
e-repo conflicts with /usr/bin/env provided by ubuntu-main-22.04.2-r0.aarch=
64 from oe-repo
- package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from o=
e-repo conflicts with /bin/bash provided by ubuntu-main-22.04.2-r0.aarch64 =
from oe-repo
- package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from o=
e-repo conflicts with bash-dev provided by ubuntu-main-22.04.2-r0.aarch64 f=
rom oe-repo
- package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from o=
e-repo conflicts with pkgconfig provided by ubuntu-main-22.04.2-r0.aarch64 =
from oe-repo
- package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from o=
e-repo conflicts with perl-dev provided by ubuntu-main-22.04.2-r0.aarch64 f=
rom oe-repo
- package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from o=
e-repo conflicts with /usr/bin/perl provided by ubuntu-main-22.04.2-r0.aarc=
h64 from oe-repo
- package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with perl p=
rovided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from =
oe-repo
- package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with bash p=
rovided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from =
oe-repo
- package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with coreut=
ils provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target =
from oe-repo
- package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with bash-d=
ev provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target f=
rom oe-repo
- package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with pkgcon=
fig provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target =
from oe-repo
- package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with perl-d=
ev provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target f=
rom oe-repo
- conflicting requests
Problem 2: package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts wi=
th libc6-dbg provided by libc6-dbg-2.35-r0.aarch64 from oe-repo
- package ubuntu-main-22.04.2-r0.aarch64 from oe-repo obsoletes libc6-dbg p=
rovided by libc6-dbg-2.35-r0.aarch64 from oe-repo
- package ubuntu-main-doc-22.04.2-r0.aarch64 from oe-repo requires ubuntu-m=
ain, but none of the providers can be installed
- package packagegroup-core-standalone-sdk-target-1.0-r8.aarch64 from oe-re=
po requires glibc-dbg, but none of the providers can be installed
- conflicting requests
(try to add '--allowerasing' to command line to replace conflicting package=
s or '--skip-broken' to skip uninstallable packages)

ERROR: Logfile of failure stored in: /home/dhanyalakshmi/distro/build_ls101=
2afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/temp/log.do_=
populate_sdk.2348536
ERROR: Task (/home/dhanyalakshmi/distro/sources/meta-nxp-desktop/recipes-fs=
l/images/ls-image-main.bb:do_populate_sdk) failed with exit code '1'

Can anyone explain what is this error and how can i resolve it so that i ca=
n get cross compiler toolchain.

--lhZIqsVRLiM3mkiJQi6t
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br />I tried to build toolchain for aarch64 target architecture usin=
g below command:<br />$ bitbake -c populate_sdk ls-image-main<br />Errors t=
hat i'm facing is:<br />ERROR: ls-image-main-22.04.2-r0 do_populate_sdk: Co=
uld not invoke dnf. Command '/home/dhanyalakshmi/distro/build_ls1012afrwy/t=
mp/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/recipe-sysroot-nativ=
e/usr/bin/dnf -v --rpmverbosity=3Dinfo -y -c /home/dhanyalakshmi/distro/bui=
ld_ls1012afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/sdk/=
image/usr/local/oe-sdk-hardcoded-buildpath/sysroots/aarch64-fsl-linux/etc/d=
nf/dnf.conf --setopt=3Dreposdir=3D/home/dhanyalakshmi/distro/build_ls1012af=
rwy/tmp/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/sdk/image/usr/l=
ocal/oe-sdk-hardcoded-buildpath/sysroots/aarch64-fsl-linux/etc/yum.repos.d =
--installroot=3D/home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/work/ls101=
2afrwy-fsl-linux/ls-image-main/22.04.2-r0/sdk/image/usr/local/oe-sdk-hardco=
ded-buildpath/sysroots/aarch64-fsl-linux --setopt=3Dlogdir=3D/home/dhanyala=
kshmi/distro/build_ls1012afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-image-main=
/22.04.2-r0/temp --repofrompath=3Doe-repo,/home/dhanyalakshmi/distro/build_=
ls1012afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/oe-sdk-=
repo --nogpgcheck install blktrace can-utils cpufrequtils dpdk-examples fio=
 i2c-tools iozone3 iperf2 iperf3 ipsec-demo ipsec-tools kernel-devicetree k=
ernel-image kernel-modules linuxptp lmbench lmsensors-sensors makedevs mmc-=
utils netperf openssl-engines packagegroup-core-standalone-sdk-target packa=
gegroup-fsl-tools-core packagegroup-fsl-tools-extended perf rt-tests sysfsu=
tils target-sdk-provides-dummy ubuntu-main ubuntu-main-dbg ubuntu-main-dev =
ubuntu-main-doc udev-extraconf udev-rules-qoriq usbutils watchdog' returned=
 1:<br />DNF version: 4.14.0<br />cachedir: /home/dhanyalakshmi/distro/buil=
d_ls1012afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/sdk/i=
mage/usr/local/oe-sdk-hardcoded-buildpath/sysroots/aarch64-fsl-linux/var/ca=
che/dnf<br />Added oe-repo repo from /home/dhanyalakshmi/distro/build_ls101=
2afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/oe-sdk-repo<=
br />User-Agent: falling back to 'libdnf': could not detect OS or basearch<=
br />repo: using cache for: oe-repo<br />oe-repo: using metadata from Thu 1=
6 May 2024 09:31:47 AM UTC.<br />Last metadata expiration check: 0:00:01 ag=
o on Thu 16 May 2024 09:32:01 AM UTC.<br />--&gt; Starting dependency resol=
ution<br />--&gt; Finished dependency resolution<br />Error:&nbsp;<br />&nb=
sp;Problem 1: package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_t=
arget from oe-repo conflicts with /bin/sh provided by ubuntu-main-22.04.2-r=
0.aarch64 from oe-repo<br />&nbsp; - package target-sdk-provides-dummy-1.0-=
r0.sdk_provides_dummy_target from oe-repo conflicts with perl provided by u=
buntu-main-22.04.2-r0.aarch64 from oe-repo<br />&nbsp; - package target-sdk=
-provides-dummy-1.0-r0.sdk_provides_dummy_target from oe-repo conflicts wit=
h bash provided by ubuntu-main-22.04.2-r0.aarch64 from oe-repo<br />&nbsp; =
- package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from o=
e-repo conflicts with coreutils provided by ubuntu-main-22.04.2-r0.aarch64 =
from oe-repo<br />&nbsp; - package target-sdk-provides-dummy-1.0-r0.sdk_pro=
vides_dummy_target from oe-repo conflicts with /usr/bin/env provided by ubu=
ntu-main-22.04.2-r0.aarch64 from oe-repo<br />&nbsp; - package target-sdk-p=
rovides-dummy-1.0-r0.sdk_provides_dummy_target from oe-repo conflicts with =
/bin/bash provided by ubuntu-main-22.04.2-r0.aarch64 from oe-repo<br />&nbs=
p; - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target fro=
m oe-repo conflicts with bash-dev provided by ubuntu-main-22.04.2-r0.aarch6=
4 from oe-repo<br />&nbsp; - package target-sdk-provides-dummy-1.0-r0.sdk_p=
rovides_dummy_target from oe-repo conflicts with pkgconfig provided by ubun=
tu-main-22.04.2-r0.aarch64 from oe-repo<br />&nbsp; - package target-sdk-pr=
ovides-dummy-1.0-r0.sdk_provides_dummy_target from oe-repo conflicts with p=
erl-dev provided by ubuntu-main-22.04.2-r0.aarch64 from oe-repo<br />&nbsp;=
 - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from =
oe-repo conflicts with /usr/bin/perl provided by ubuntu-main-22.04.2-r0.aar=
ch64 from oe-repo<br />&nbsp; - package ubuntu-main-22.04.2-r0.aarch64 from=
 oe-repo conflicts with perl provided by target-sdk-provides-dummy-1.0-r0.s=
dk_provides_dummy_target from oe-repo<br />&nbsp; - package ubuntu-main-22.=
04.2-r0.aarch64 from oe-repo conflicts with bash provided by target-sdk-pro=
vides-dummy-1.0-r0.sdk_provides_dummy_target from oe-repo<br />&nbsp; - pac=
kage ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with coreutils p=
rovided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from =
oe-repo<br />&nbsp; - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo c=
onflicts with bash-dev provided by target-sdk-provides-dummy-1.0-r0.sdk_pro=
vides_dummy_target from oe-repo<br />&nbsp; - package ubuntu-main-22.04.2-r=
0.aarch64 from oe-repo conflicts with pkgconfig provided by target-sdk-prov=
ides-dummy-1.0-r0.sdk_provides_dummy_target from oe-repo<br />&nbsp; - pack=
age ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with perl-dev pro=
vided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target from oe=
-repo<br />&nbsp; - conflicting requests<br />&nbsp;Problem 2: package ubun=
tu-main-22.04.2-r0.aarch64 from oe-repo conflicts with libc6-dbg provided b=
y libc6-dbg-2.35-r0.aarch64 from oe-repo<br />&nbsp; - package ubuntu-main-=
22.04.2-r0.aarch64 from oe-repo obsoletes libc6-dbg provided by libc6-dbg-2=
.35-r0.aarch64 from oe-repo<br />&nbsp; - package ubuntu-main-doc-22.04.2-r=
0.aarch64 from oe-repo requires ubuntu-main, but none of the providers can =
be installed<br />&nbsp; - package packagegroup-core-standalone-sdk-target-=
1.0-r8.aarch64 from oe-repo requires glibc-dbg, but none of the providers c=
an be installed<br />&nbsp; - conflicting requests<br />(try to add '--allo=
werasing' to command line to replace conflicting packages or '--skip-broken=
' to skip uninstallable packages)<br /><br />ERROR: Logfile of failure stor=
ed in: /home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/work/ls1012afrwy-fs=
l-linux/ls-image-main/22.04.2-r0/temp/log.do_populate_sdk.2348536<br />ERRO=
R: Task (/home/dhanyalakshmi/distro/sources/meta-nxp-desktop/recipes-fsl/im=
ages/ls-image-main.bb:do_populate_sdk) failed with exit code '1'<br /><br /=
>Can anyone explain what is this error and how can i resolve it so that i c=
an get cross compiler toolchain.

--lhZIqsVRLiM3mkiJQi6t--

