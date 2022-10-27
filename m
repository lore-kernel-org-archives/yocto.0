Return-Path: <mpham20@gmu.edu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A2C6ECAAA1
	for <webhook@archiver.kernel.org>; Thu, 27 Oct 2022 17:51:29 +0000 (UTC)
Subject: Help with setting up a PREEMPT_RT image for BeagleBone Black #yocto
To: yocto@lists.yoctoproject.org
From: mpham20@gmu.edu
X-Originating-Location: Arlington, Virginia, US (100.36.55.62)
X-Originating-Platform: Linux Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 27 Oct 2022 10:51:28 -0700
Message-ID: <LsVs.1666893088601518070.INID@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SPtvvywfYeZKz18Xvvgj"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Oct 2022 17:51:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58426

--SPtvvywfYeZKz18Xvvgj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

I am new to Yocto and would like to seek assistance for setting up a PREEMP=
T_RT image for BeagleBone Black.

Here is what I have tried so far. First I followed the Yocto Project Quick =
Build tutorial in the documentation.

1)
sudo apt install gawk wget git diffstat unzip texinfo gcc build-essential c=
hrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils =
iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pylint x=
term python3-subunit mesa-common-dev zstd liblz4-tool

2)
git clone git://git.yoctoproject.org/poky

3)
cd poky

4)
git checkout -t origin/langdale -b my-langdale

5)
git pull

6)
source oe-init-build-env

7) Then I went to poky/build/conf and edited local.conf by uncommenting
MACHINE ?=3D "beaglebone-yocto"
and commenting out
#MACHINE ??=3D "qemux86-64"
Then I added these two lines at the bottom of the file:
PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-rt"
COMPATIBLE_MACHINE_beaglebone-yocto =3D "beaglebone-yocto"

8) Next I ran this command:
bitbake core-image-minimal

9) Then I get errors at this point.
ERROR: Nothing PROVIDES 'virtual/kernel'
linux-yocto-upstream PROVIDES virtual/kernel but was skipped: Set PREFERRED=
_PROVIDER_virtual/kernel to linux-yocto-upstream to enable it
linux-yocto PROVIDES virtual/kernel but was skipped: Set PREFERRED_PROVIDER=
_virtual/kernel to linux-yocto to enable it
linux-yocto-rt PROVIDES virtual/kernel but was skipped: incompatible with m=
achine beaglebone-yocto (not in COMPATIBLE_MACHINE)
linux-yocto-dev PROVIDES virtual/kernel but was skipped: Set PREFERRED_PROV=
IDER_virtual/kernel to linux-yocto-dev to enable it
linux-yocto-rt PROVIDES virtual/kernel but was skipped: incompatible with m=
achine beaglebone-yocto (not in COMPATIBLE_MACHINE)
linux-yocto-upstream PROVIDES virtual/kernel but was skipped: Set PREFERRED=
_PROVIDER_virtual/kernel to linux-yocto-upstream to enable it
linux-yocto PROVIDES virtual/kernel but was skipped: Set PREFERRED_PROVIDER=
_virtual/kernel to linux-yocto to enable it
linux-yocto-tiny PROVIDES virtual/kernel but was skipped: incompatible with=
 machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
linux-dummy PROVIDES virtual/kernel but was skipped: PREFERRED_PROVIDER_vir=
tual/kernel set to linux-yocto-rt, not linux-dummy
linux-yocto-tiny PROVIDES virtual/kernel but was skipped: incompatible with=
 machine beaglebone-yocto (not in COMPATIBLE_MACHINE)
ERROR: Required build target 'core-image-minimal' has no buildable provider=
s.
Missing or unbuildable dependency chain was: ['core-image-minimal', 'virtua=
l/kernel']

Summary: There was 1 WARNING message.
Summary: There were 2 ERROR messages, returning a non-zero exit code.

I've tried a variety of ways and read lots of links but still no luck. Can =
someone tell me the best way to accomplish my goal?
Thank you for any help.

Michael

--SPtvvywfYeZKz18Xvvgj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,<br /><br />I am new to Yocto and would like to seek assistance f=
or setting up a PREEMPT_RT image for BeagleBone Black.<br /><br />Here is w=
hat I have tried so far. First I followed the Yocto Project Quick Build tut=
orial in the documentation.<br /><br />1)<br />
<div>sudo apt install gawk wget git diffstat unzip texinfo gcc build-essent=
ial chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianu=
tils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pyl=
int xterm python3-subunit mesa-common-dev zstd liblz4-tool</div>
<div><br />2)<br />git clone git://git.yoctoproject.org/poky<br /><br />3)<=
br />cd poky<br /><br />4)<br />git checkout -t origin/langdale -b my-langd=
ale<br /><br />5)<br />git pull<br /><br />6)<br />source oe-init-build-env=
<br /><br />7) Then I went to poky/build/conf and edited local.conf by unco=
mmenting<br />MACHINE ?=3D "beaglebone-yocto"<br />and commenting out<br />=
#MACHINE ??=3D "qemux86-64"<br />Then I added these two lines at the bottom=
 of the file:<br />
<div>PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-rt"</div>
<div>COMPATIBLE_MACHINE_beaglebone-yocto =3D "beaglebone-yocto"<br /><br />=
8) Next I ran this command:<br />bitbake core-image-minimal<br /><br />9) T=
hen I get errors at this point.<br />
<div>ERROR: Nothing PROVIDES 'virtual/kernel'</div>
<div>linux-yocto-upstream PROVIDES virtual/kernel but was skipped: Set PREF=
ERRED_PROVIDER_virtual/kernel to linux-yocto-upstream to enable it</div>
<div>linux-yocto PROVIDES virtual/kernel but was skipped: Set PREFERRED_PRO=
VIDER_virtual/kernel to linux-yocto to enable it</div>
<div>linux-yocto-rt PROVIDES virtual/kernel but was skipped: incompatible w=
ith machine beaglebone-yocto (not in COMPATIBLE_MACHINE)</div>
<div>linux-yocto-dev PROVIDES virtual/kernel but was skipped: Set PREFERRED=
_PROVIDER_virtual/kernel to linux-yocto-dev to enable it</div>
<div>linux-yocto-rt PROVIDES virtual/kernel but was skipped: incompatible w=
ith machine beaglebone-yocto (not in COMPATIBLE_MACHINE)</div>
<div>linux-yocto-upstream PROVIDES virtual/kernel but was skipped: Set PREF=
ERRED_PROVIDER_virtual/kernel to linux-yocto-upstream to enable it</div>
<div>linux-yocto PROVIDES virtual/kernel but was skipped: Set PREFERRED_PRO=
VIDER_virtual/kernel to linux-yocto to enable it</div>
<div>linux-yocto-tiny PROVIDES virtual/kernel but was skipped: incompatible=
 with machine beaglebone-yocto (not in COMPATIBLE_MACHINE)</div>
<div>linux-dummy PROVIDES virtual/kernel but was skipped: PREFERRED_PROVIDE=
R_virtual/kernel set to linux-yocto-rt, not linux-dummy</div>
<div>linux-yocto-tiny PROVIDES virtual/kernel but was skipped: incompatible=
 with machine beaglebone-yocto (not in COMPATIBLE_MACHINE)</div>
<div>ERROR: Required build target 'core-image-minimal' has no buildable pro=
viders.</div>
<div>Missing or unbuildable dependency chain was: ['core-image-minimal', 'v=
irtual/kernel']</div>
<div>&nbsp;</div>
<div>Summary: There was 1 WARNING message.</div>
<div>Summary: There were 2 ERROR messages, returning a non-zero exit code.<=
/div>
<div><br />I've tried a variety of ways and read lots of links but still no=
 luck. Can someone tell me the best way to accomplish my goal?<br />Thank y=
ou for any help.<br /><br /></div>
<div>Michael</div>
</div>
</div>

--SPtvvywfYeZKz18Xvvgj--

