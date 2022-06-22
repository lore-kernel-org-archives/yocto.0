Return-Path: <fabiferro@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1928ECCA47E
	for <webhook@archiver.kernel.org>; Wed, 22 Jun 2022 18:17:54 +0000 (UTC)
Subject: Packages have unmet dependencies #hardknott #bitbake #kernelmodule
To: yocto@lists.yoctoproject.org
From: "fabatera" <fabiferro@hotmail.com>
X-Originating-Location: Frankfurt am Main, Hesse, DE (88.66.16.130)
X-Originating-Platform: Linux Chrome 101
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 22 Jun 2022 11:17:45 -0700
Message-ID: <I7wS.1655921865910183766.tkb8@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="tq1NU5znSoUa7x6UxG1d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Jun 2022 18:17:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57376

--tq1NU5znSoUa7x6UxG1d
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm trying to debug this issue for quite a while but couldn't get any helpf=
ul indication on how to solve it.
(In case it matters, the build runs on a docker container with shared volum=
es for SSTATE and Downloads. )

The issue: First image build works ok. But "bitbake -c clean packagegroup-m=
odules-test" and rebuild generates the error message below.
- my_dev package is inside=C2=A0packagegroup-modules-test.

ERROR: core-image-test-1.0-r0 do_rootfs: Unable to install packages. Comman=
d '/long_path/core-image-test/1.0-r0/recipe-sysroot-native/usr/bin/apt-get=
=C2=A0 install --allow-downgrades --allow-remove-essential --allow-change-h=
eld-packages --allow-unauthenticated --no-remove __many_packages_here__ pac=
kagegroup-modules-test' returned 100:
Reading package lists...
Building dependency tree...
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
kernel-module-hci-uart-my_dev-sdiouart-5.10.52-lts-5.10.y+g0e9bc956f2ca : D=
epends: kernel-5.10.52-lts-5.10.y+g0e9bc956f2ca but it is not installable
kernel-module-mlan-my_dev-sdiouart-5.10.52-lts-5.10.y+g0e9bc956f2ca : Depen=
ds: kernel-5.10.52-lts-5.10.y+g0e9bc956f2ca but it is not installable
kernel-module-sdw61x-my_dev-sdiouart-5.10.52-lts-5.10.y+g0e9bc956f2ca : Dep=
ends: kernel-5.10.52-lts-5.10.y+g0e9bc956f2ca but it is not installable
Depends: kernel-module-cfg80211-5.10.52-lts-5.10.y+g0e9bc956f2ca but it is =
not installable
E: Unable to correct problems, you have held broken packages.

Thanks for any help!

--tq1NU5znSoUa7x6UxG1d
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,<br /><br />I'm trying to debug this issue for quite a while but cou=
ldn't get any helpful indication on how to solve it.<br />(In case it matte=
rs, the build runs on a docker container with shared volumes for SSTATE and=
 Downloads. )<br /><br />The issue: First image build works ok. But "bitbak=
e -c clean packagegroup-modules-test" and rebuild generates the error messa=
ge below.<br />- my_dev package is inside&nbsp;packagegroup-modules-test.<b=
r /><br />
<div>ERROR: core-image-test-1.0-r0 do_rootfs: Unable to install packages. C=
ommand '/long_path/core-image-test/1.0-r0/recipe-sysroot-native/usr/bin/apt=
-get&nbsp; install --allow-downgrades --allow-remove-essential --allow-chan=
ge-held-packages --allow-unauthenticated --no-remove __many_packages_here__=
 packagegroup-modules-test' returned 100:</div>
<div>&nbsp;Reading package lists...</div>
<div>&nbsp;Building dependency tree...</div>
<div>&nbsp;Some packages could not be installed. This may mean that you hav=
e</div>
<div>&nbsp;requested an impossible situation or if you are using the unstab=
le</div>
<div>&nbsp;distribution that some required packages have not yet been creat=
ed</div>
<div>&nbsp;or been moved out of Incoming.</div>
<div>&nbsp;The following information may help to resolve the situation:</di=
v>
<div>&nbsp;</div>
<div>&nbsp;The following packages have unmet dependencies:</div>
<div>&nbsp; kernel-module-hci-uart-my_dev-sdiouart-5.10.52-lts-5.10.y+g0e9b=
c956f2ca : Depends: kernel-5.10.52-lts-5.10.y+g0e9bc956f2ca but it is not i=
nstallable</div>
<div>&nbsp; kernel-module-mlan-my_dev-sdiouart-5.10.52-lts-5.10.y+g0e9bc956=
f2ca : Depends: kernel-5.10.52-lts-5.10.y+g0e9bc956f2ca but it is not insta=
llable</div>
<div>&nbsp; kernel-module-sdw61x-my_dev-sdiouart-5.10.52-lts-5.10.y+g0e9bc9=
56f2ca : Depends: kernel-5.10.52-lts-5.10.y+g0e9bc956f2ca but it is not ins=
tallable</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Depends: kernel-module-cfg8021=
1-5.10.52-lts-5.10.y+g0e9bc956f2ca but it is not installable</div>
<div>&nbsp;E: Unable to correct problems, you have held broken packages.</d=
iv>
<br />Thanks for any help!<br />

--tq1NU5znSoUa7x6UxG1d--

