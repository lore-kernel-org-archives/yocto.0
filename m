Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B220C021AB
	for <webhook@archiver.kernel.org>; Wed, 19 Feb 2025 08:19:22 +0000 (UTC)
Subject: rdepends upon non-existent task do_package_write_deb
To: yocto@lists.yoctoproject.org
From: rajesh.d@mindteck.com
X-Originating-Location: Bengaluru, Karnataka, IN (14.142.4.2)
X-Originating-Platform: Linux Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 18 Feb 2025 22:04:40 -0800
Message-ID: <twnZ.1739945080599771676.Mi1K@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1xKdyOn6ja87KIXOjsPZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Feb 2025 08:19:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64838

--1xKdyOn6ja87KIXOjsPZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi ,

I am trying to include bazel-native 5.1.1 package into my yocto (kirkstone)

when i build this bazel-native using command (bitbake basel-native) it comp=
iled successfully, but when i tried to include the same bazel-native in my =
local.conf as IMAGE_INSTALL:append =3D " bazel-native"=C2=A0 and tried to b=
uild bitbake core-image-sato it throwing an error as mentioned below.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
ERROR: Task do_populate_sdk in /home/user/Mindteck_Projects/Irilic/kirkston=
e_yocto_AIMB288E/sources/openembedded-core/meta/recipes-sato/images/core-im=
age-sato.bb rdepends upon non-existent task do_package_write_deb in /home/u=
ser/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-tensorfl=
ow/recipes-devtools/bazel/bazel-native_5.1.1.bb
ERROR: Command execution failed: 1
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Requesting you to help me out to solve this issue .

Thanks in advance .

--1xKdyOn6ja87KIXOjsPZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi ,&nbsp;<br /><br />I am trying to include bazel-native 5.1.1 packag=
e into my yocto (kirkstone)</div>
<div>&nbsp;</div>
<div>when i build this bazel-native using command (bitbake basel-native) it=
 compiled successfully, but when i tried to include the same bazel-native i=
n my local.conf as IMAGE_INSTALL:append =3D " bazel-native"&nbsp; and tried=
 to build bitbake core-image-sato it throwing an error as mentioned below.<=
/div>
<div>&nbsp;</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>ERROR: Task do_populate_sdk in /home/user/Mindteck_Projects/Irilic/kir=
kstone_yocto_AIMB288E/sources/openembedded-core/meta/recipes-sato/images/co=
re-image-sato.bb rdepends upon non-existent task do_package_write_deb in /h=
ome/user/Mindteck_Projects/Irilic/kirkstone_yocto_AIMB288E/sources/meta-ten=
sorflow/recipes-devtools/bazel/bazel-native_5.1.1.bb<br />ERROR: Command ex=
ecution failed: 1</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>&nbsp;</div>
<div><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgr=
ound-color: #ffffff; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial; display: inline !important; f=
loat: none;">Requesting you to help me out to solve this issue .</span><br =
style=3D"box-sizing: border-box; overflow-wrap: break-word !important; colo=
r: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', '=
Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Seg=
oe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-=
style: normal; font-variant-ligatures: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; tex=
t-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; white-space: normal; background-color: #ffffff; tex=
t-decoration-thickness: initial; text-decoration-style: initial; text-decor=
ation-color: initial;" /><br style=3D"box-sizing: border-box; overflow-wrap=
: break-word !important; color: #333333; font-family: system-ui, 'Segoe UI'=
, Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-ser=
if, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color E=
moji'; font-size: 16px; font-style: normal; font-variant-ligatures: normal;=
 font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orpha=
ns: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2=
; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; b=
ackground-color: #ffffff; text-decoration-thickness: initial; text-decorati=
on-style: initial; text-decoration-color: initial;" /><span style=3D"color:=
 #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'No=
to Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe=
 UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-st=
yle: normal; font-variant-ligatures: normal; font-variant-caps: normal; fon=
t-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-=
indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-=
decoration-thickness: initial; text-decoration-style: initial; text-decorat=
ion-color: initial; display: inline !important; float: none;">Thanks in adv=
ance .</span></div>

--1xKdyOn6ja87KIXOjsPZ--

