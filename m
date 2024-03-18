Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBBAC54E5D
	for <webhook@archiver.kernel.org>; Mon, 18 Mar 2024 09:28:33 +0000 (UTC)
Subject: Transaction test error in RaspberryPI4 build with picamera and libGL
To: yocto@lists.yoctoproject.org
From: fixed-term.tudor-cristian.morosanu@ro.bosch.com
X-Originating-Location: =?UTF-8?B?U3R1dHRnYXJ0LCBCYWRlbi1Xw7xydHRlbWJlcmcsIERF?= (194.39.218.17)
X-Originating-Platform: Windows Chrome 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 18 Mar 2024 01:06:51 -0700
Message-ID: <KNnN.1710749211997533482.EHFD@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="iKhIYNajgtbO4Nd5xQHi"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 09:28:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62781

--iKhIYNajgtbO4Nd5xQHi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I want to include the python3-picamera library provided by meta-raspberrypi=
, and I do in my local.conf IMAGE_INSTALL:append =3D " python3-picamera", H=
owever, when I do my bitbake core-image-base, when building do_rootfs, I ge=
t an error saying:
Total size: 147 M
Installed size: 432 M
Downloading Packages:
Running transaction check
Transaction check succeeded.
Running transaction test
Error: Transaction test error:
file /usr/lib/libGLESv2.so conflicts between attempted installs of libgles2=
-mesa-dev-2:22.0.3-r0.cortexa7t2hf_neon_vfpv4 and picamera-libs-20220830-r0=
.cortexa7t2hf_neon_vfpv4
file /usr/lib/libEGL.so conflicts between attempted installs of libegl-mesa=
-dev-2:22.0.3-r0.cortexa7t2hf_neon_vfpv4 and picamera-libs-20220830-r0.cort=
exa7t2hf_neon_vfpv4

I have tried removing the conflicting files adding in do_install() some rm =
-rf as I have found on the internet, however this solution generates other =
problems and I do not think it is a reliable fix. Can someone please help m=
e solve this problem?

--iKhIYNajgtbO4Nd5xQHi
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I want to include the python3-picamera library provided by meta-raspberrypi=
, and I do in my local.conf IMAGE_INSTALL:append =3D " python3-picamera", H=
owever, when I do my bitbake core-image-base, when building do_rootfs, I ge=
t an error saying:<br />
<div>Total size: 147 M</div>
<div>Installed size: 432 M</div>
<div>Downloading Packages:</div>
<div>Running transaction check</div>
<div>Transaction check succeeded.</div>
<div>Running transaction test</div>
<div>Error: Transaction test error:</div>
<div>&nbsp; file /usr/lib/libGLESv2.so conflicts between attempted installs=
 of libgles2-mesa-dev-2:22.0.3-r0.cortexa7t2hf_neon_vfpv4 and picamera-libs=
-20220830-r0.cortexa7t2hf_neon_vfpv4</div>
<div>&nbsp; file /usr/lib/libEGL.so conflicts between attempted installs of=
 libegl-mesa-dev-2:22.0.3-r0.cortexa7t2hf_neon_vfpv4 and picamera-libs-2022=
0830-r0.cortexa7t2hf_neon_vfpv4<br /><br />I have tried removing the confli=
cting files adding in do_install() some rm -rf as I have found on the inter=
net, however this solution generates other problems and I do not think it i=
s a reliable fix. Can someone please help me solve this problem?</div>

--iKhIYNajgtbO4Nd5xQHi--

