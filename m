Return-Path: <renato.mendes.pes@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CB10C4167B
	for <webhook@archiver.kernel.org>; Wed,  6 Dec 2023 14:10:38 +0000 (UTC)
Subject: WARNING: IMAGE_FSTYPES:remove += is not a recommended operator combination, please replace it / Fuzz detected
To: yocto@lists.yoctoproject.org
From: renato.mendes.pes@gmail.com
X-Originating-Location: Petrópolis, Rio de Janeiro, BR (170.254.80.219)
X-Originating-Platform: Mac Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 06 Dec 2023 06:10:34 -0800
Message-ID: <1w5J.1701871834409746085.0H28@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ZAC466yS3ZdJ9MQcV7oa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 14:10:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61814

--ZAC466yS3ZdJ9MQcV7oa
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm building a Yocto image to Raspi Zero W and Mender. My configuration:

MACHINE =3D "raspberrypi0-wifi"
MENDER_ARTIFACT_NAME =3D "release-1"
INHERIT +=3D "mender-full"
RPI_USE_U_BOOT =3D "1"
#MENDER_PARTITION_ALIGNMENT =3D "4096000"
MENDER_BOOT_PART_SIZE_MB =3D "40"
IMAGE_INSTALL : append =3D " kernel-image kernel-devicetree"
IMAGE_FSTYPES : remove +=3D " rpi-sdimg"
MENDER_SERVER_URL =3D "https://mender.mydomain.com"
MENDER_TENANT_TOKEN =3D "MY_TOKEN"
DISTRO_FEATURES : append =3D " systemd"
VIRTUAL - RUNTIME_init_manager =3D "systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
VIRTUAL - RUNTIME_initscripts =3D ""
IMAGE_FSTYPES =3D "ext4"

When building:
bitbake core-image-full-cmdline

I'm getting the following warning:

*WARNING: IMAGE_FSTYPES:remove +=3D is not a recommended operator combinati=
on, please replace it.*
*WARNING: IMAGE_FSTYPES:remove +=3D is not a recommended operator combinati=
on, please replace it*

Any ideas of what's going on and how to fix it?

--ZAC466yS3ZdJ9MQcV7oa
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm building a Yocto image to Raspi Zero W and Mender. My configuration:<br=
 /><br />
<div style=3D"color: #cccccc; background-color: #1f1f1f; font-family: Menlo=
, Monaco, 'Courier New', monospace; font-size: 12px; line-height: 18px; whi=
te-space: pre;">
<div><span style=3D"color: #9cdcfe;">MACHINE</span> <span style=3D"color: #=
d4d4d4;">=3D</span> <span style=3D"color: #ce9178;">"raspberrypi0-wifi"</sp=
an></div>
<div><span style=3D"color: #9cdcfe;">MENDER_ARTIFACT_NAME</span> <span styl=
e=3D"color: #d4d4d4;">=3D</span> <span style=3D"color: #ce9178;">"release-1=
"</span></div>
<div><span style=3D"color: #9cdcfe;">INHERIT</span> <span style=3D"color: #=
d4d4d4;">+=3D</span> <span style=3D"color: #ce9178;">"mender-full"</span></=
div>
<div><span style=3D"color: #9cdcfe;">RPI_USE_U_BOOT</span> <span style=3D"c=
olor: #d4d4d4;">=3D</span> <span style=3D"color: #ce9178;">"1"</span></div>
<div><span style=3D"color: #6a9955;">#MENDER_PARTITION_ALIGNMENT =3D "40960=
00"</span></div>
<div><span style=3D"color: #9cdcfe;">MENDER_BOOT_PART_SIZE_MB</span> <span =
style=3D"color: #d4d4d4;">=3D</span> <span style=3D"color: #ce9178;">"40"</=
span></div>
<div><span style=3D"color: #9cdcfe;">IMAGE_INSTALL</span><span style=3D"col=
or: #d4d4d4;">:</span><span style=3D"color: #9cdcfe;">append</span> <span s=
tyle=3D"color: #d4d4d4;">=3D</span> <span style=3D"color: #ce9178;">" kerne=
l-image kernel-devicetree"</span></div>
<div><span style=3D"color: #9cdcfe;">IMAGE_FSTYPES</span><span style=3D"col=
or: #d4d4d4;">:</span><span style=3D"color: #9cdcfe;">remove</span> <span s=
tyle=3D"color: #d4d4d4;">+=3D</span> <span style=3D"color: #ce9178;">" rpi-=
sdimg"</span></div>
<div><span style=3D"color: #9cdcfe;">MENDER_SERVER_URL</span> <span style=
=3D"color: #d4d4d4;">=3D</span> <span style=3D"color: #ce9178;">"https://me=
nder.mydomain.com"</span></div>
<div><span style=3D"color: #9cdcfe;">MENDER_TENANT_TOKEN</span> <span style=
=3D"color: #d4d4d4;">=3D</span> <span style=3D"color: #ce9178;">"MY_TOKEN"<=
/span></div>
<div><span style=3D"color: #9cdcfe;">DISTRO_FEATURES</span><span style=3D"c=
olor: #d4d4d4;">:</span><span style=3D"color: #9cdcfe;">append</span> <span=
 style=3D"color: #d4d4d4;">=3D</span> <span style=3D"color: #ce9178;">" sys=
temd"</span></div>
<div>VIRTUAL<span style=3D"color: #d4d4d4;">-</span><span style=3D"color: #=
9cdcfe;">RUNTIME_init_manager</span> <span style=3D"color: #d4d4d4;">=3D</s=
pan> <span style=3D"color: #ce9178;">"systemd"</span></div>
<div><span style=3D"color: #9cdcfe;">DISTRO_FEATURES_BACKFILL_CONSIDERED</s=
pan> <span style=3D"color: #d4d4d4;">=3D</span> <span style=3D"color: #ce91=
78;">"sysvinit"</span></div>
<div>VIRTUAL<span style=3D"color: #d4d4d4;">-</span><span style=3D"color: #=
9cdcfe;">RUNTIME_initscripts</span> <span style=3D"color: #d4d4d4;">=3D</sp=
an> <span style=3D"color: #ce9178;">""</span></div>
<div><span style=3D"color: #9cdcfe;">IMAGE_FSTYPES</span> <span style=3D"co=
lor: #d4d4d4;">=3D</span> <span style=3D"color: #ce9178;">"ext4"</span></di=
v>
</div>
<br />When building:&nbsp;<br />
<div style=3D"color: #cccccc; background-color: #1f1f1f; font-family: Menlo=
, Monaco, 'Courier New', monospace; font-size: 12px; line-height: 18px; whi=
te-space: pre;">
<div><span style=3D"color: #dcdcaa;">bitbake</span> <span style=3D"color: #=
ce9178;">core-image-full-cmdline</span></div>
</div>
<br />I'm getting the following warning:<br /><br />
<div><strong>WARNING: IMAGE_FSTYPES:remove +=3D is not a recommended operat=
or combination, please replace it.</strong></div>
<div><strong>WARNING: IMAGE_FSTYPES:remove +=3D is not a recommended operat=
or combination, please replace it</strong><br /><br />Any ideas of what's g=
oing on and how to fix it?<br /><br /></div>

--ZAC466yS3ZdJ9MQcV7oa--

