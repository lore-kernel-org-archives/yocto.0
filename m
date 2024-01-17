Return-Path: <jguittet.opensource@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46433C47258
	for <webhook@archiver.kernel.org>; Wed, 17 Jan 2024 13:43:59 +0000 (UTC)
Subject: initramfs and system logs
To: yocto@lists.yoctoproject.org
From: jguittet.opensource@witekio.com
X-Originating-Location: =?UTF-8?B?Q2jDonRlYXVyb3V4LCBDZW50cmUtVmFsIGRlIExvaXJlLCBGUg==?= (78.114.34.160)
X-Originating-Platform: Linux Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 17 Jan 2024 05:43:50 -0800
Message-ID: <uhKG.1705499030825235144.H40Y@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9kEvdFtOaLy4LKctTC9X"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Jan 2024 13:43:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62177

--9kEvdFtOaLy4LKctTC9X
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear community,

I'm currently building a professional yocto project.
There are 2 variants of the image I'm building: the first one is using clas=
sical rootfs on SD card (dev and test purpose). The other one is building a=
n initramfs fitImage (production). I'm using INITRAMFS_IMAGE to indicate th=
e name of the recipe building the initramfs + INITRAMFS_IMAGE_BUNDLE =3D "1=
".

Problem I get is that the initramfs image produces no logs (except kernel l=
ogs) in the console while the dev with the rootfs on the SD card have logs =
printed in the console. I don't understand why and where I should patch to =
have logs. The wanted logs are logs from init.d scripts for example (creati=
ng ssh keys, setting hwclock etc) + logs from my own applications that are =
properly output on the serial console with the "classic" image.

Thanks for any feedbacks!
Joel

--9kEvdFtOaLy4LKctTC9X
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"color: #000000; font-family: 'Segoe UI', 'Segoe UI Web (West=
 European)', 'Segoe UI', -apple-system, BlinkMacSystemFont, Roboto, 'Helvet=
ica Neue', sans-serif; font-size: 14.6667px;">Dear community,</span><br sty=
le=3D"color: #000000; font-family: 'Segoe UI', 'Segoe UI Web (West European=
)', 'Segoe UI', -apple-system, BlinkMacSystemFont, Roboto, 'Helvetica Neue'=
, sans-serif; font-size: 14.6667px;" aria-hidden=3D"true" /><br style=3D"co=
lor: #000000; font-family: 'Segoe UI', 'Segoe UI Web (West European)', 'Seg=
oe UI', -apple-system, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-s=
erif; font-size: 14.6667px;" aria-hidden=3D"true" /><span style=3D"color: #=
000000; font-family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI'=
, -apple-system, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-serif; =
font-size: 14.6667px;">I'm currently building a professional yocto project.=
</span><br style=3D"color: #000000; font-family: 'Segoe UI', 'Segoe UI Web =
(West European)', 'Segoe UI', -apple-system, BlinkMacSystemFont, Roboto, 'H=
elvetica Neue', sans-serif; font-size: 14.6667px;" aria-hidden=3D"true" /><=
span style=3D"color: #000000; font-family: 'Segoe UI', 'Segoe UI Web (West =
European)', 'Segoe UI', -apple-system, BlinkMacSystemFont, Roboto, 'Helveti=
ca Neue', sans-serif; font-size: 14.6667px;">There are 2 variants of the im=
age I'm building: the first one is using classical rootfs on SD card (dev a=
nd test purpose). The other one is building an initramfs fitImage (producti=
on). I'm using INITRAMFS_IMAGE to indicate the name of the recipe building =
the initramfs + INITRAMFS_IMAGE_BUNDLE =3D "1".</span><br style=3D"color: #=
000000; font-family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI'=
, -apple-system, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-serif; =
font-size: 14.6667px;" aria-hidden=3D"true" /><br style=3D"color: #000000; =
font-family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple=
-system, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-serif; font-siz=
e: 14.6667px;" aria-hidden=3D"true" /><span style=3D"color: #000000; font-f=
amily: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syste=
m, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-serif; font-size: 14.=
6667px;">Problem I get is that the initramfs image produces no logs (except=
 kernel logs) in the console while the dev with the rootfs on the SD card h=
ave logs printed in the console. I don't understand why and where I should =
patch to have logs. The wanted logs are logs from init.d scripts for exampl=
e (creating ssh keys, setting hwclock etc) + logs from my own applications =
that are properly output on the serial console with the "classic" image.</s=
pan><br style=3D"color: #000000; font-family: 'Segoe UI', 'Segoe UI Web (We=
st European)', 'Segoe UI', -apple-system, BlinkMacSystemFont, Roboto, 'Helv=
etica Neue', sans-serif; font-size: 14.6667px;" aria-hidden=3D"true" /><br =
style=3D"color: #000000; font-family: 'Segoe UI', 'Segoe UI Web (West Europ=
ean)', 'Segoe UI', -apple-system, BlinkMacSystemFont, Roboto, 'Helvetica Ne=
ue', sans-serif; font-size: 14.6667px;" aria-hidden=3D"true" /><span style=
=3D"color: #000000; font-family: 'Segoe UI', 'Segoe UI Web (West European)'=
, 'Segoe UI', -apple-system, BlinkMacSystemFont, Roboto, 'Helvetica Neue', =
sans-serif; font-size: 14.6667px;">Thanks for any feedbacks!</span><br styl=
e=3D"color: #000000; font-family: 'Segoe UI', 'Segoe UI Web (West European)=
', 'Segoe UI', -apple-system, BlinkMacSystemFont, Roboto, 'Helvetica Neue',=
 sans-serif; font-size: 14.6667px;" aria-hidden=3D"true" /><span style=3D"c=
olor: #000000; font-family: 'Segoe UI', 'Segoe UI Web (West European)', 'Se=
goe UI', -apple-system, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-=
serif; font-size: 14.6667px;">Joel</span>

--9kEvdFtOaLy4LKctTC9X--

