Return-Path: <hchanuy@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A59ED10F23
	for <webhook@archiver.kernel.org>; Sun, 17 Nov 2024 16:49:01 +0000 (UTC)
Subject: Sanity check on a flashing process design
To: yocto@lists.yoctoproject.org
From: "Uy Ha" <hchanuy@gmail.com>
X-Originating-Location: Helsinki, Uusimaa, FI (87.92.135.50)
X-Originating-Platform: Linux Firefox 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 17 Nov 2024 08:48:51 -0800
Message-ID: <txnM.1731862131559699819.0LTy@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dOcjgsZCjqStOxYvyMzm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Nov 2024 16:49:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64282

--dOcjgsZCjqStOxYvyMzm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Currently, I have=C2=A0 a functional Yocto image in `.wic.gz` format, and I=
 have a ~7GB eMMC storage. I then set the size for the partition in my `.wk=
s` to ~7GB also, but this makes the flashing process painfully long (by doi=
ng `gzwrite mmc`). Hence, I thought of having a minimal Linux image (since,=
 AFAIK, U-boot does not the tools to manipulate partitions and filesystem) =
with tools to do storage partition and filesystem creation. I then can flas=
h this image (in `.wic.gz` format) onto my eMMC, and use that image to part=
ition, create the filesystem, and extract my featureful image (in `tar.gz`)=
 onto the newly created filesystem. I have a working POC but I have a few q=
uestions:

* Is there anything wrong with this approach? Is there some simpler approac=
h that can achieve what I need? (Improving the flashing time)
* Since I only need a small Linux image, I found that I can use the `poky-t=
iny` distro to make the image as small as conveniently possible. However, t=
his means that my featureful image and my minimal image will use different =
distros. Is this a problem? If it is, how can I set different distro option=
s for different images?
* Let's say I start with a system having only U-boot, can I automate the wh=
ole process from plugging in a USB (with the appropriate images on there) t=
o having the featureful image flashed?

--dOcjgsZCjqStOxYvyMzm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Currently, I have&nbsp; a functional Yocto image in `.wic.gz` format, =
and I have a ~7GB eMMC storage. I then set the size for the partition in my=
 `.wks` to ~7GB also, but this makes the flashing process painfully long (b=
y doing `gzwrite mmc`). Hence, I thought of having a minimal Linux image (s=
ince, AFAIK, U-boot does not the tools to manipulate partitions and filesys=
tem) with tools to do storage partition and filesystem creation. I then can=
 flash this image (in `.wic.gz` format) onto my eMMC, and use that image to=
 partition, create the filesystem, and extract my featureful image (in `tar=
.gz`) onto the newly created filesystem. I have a working POC but I have a =
few questions:</div>
<div>&nbsp;</div>
<ol>
<li>Is there anything wrong with this approach? Is there some simpler appro=
ach that can achieve what I need? (Improving the flashing time)</li>
<li>Since I only need a small Linux image, I found that I can use the `poky=
-tiny` distro to make the image as small as conveniently possible. However,=
 this means that my featureful image and my minimal image will use differen=
t distros. Is this a problem? If it is, how can I set different distro opti=
ons for different images?</li>
<li>Let's say I start with a system having only U-boot, can I automate the =
whole process from plugging in a USB (with the appropriate images on there)=
 to having the featureful image flashed?</li>
</ol>

--dOcjgsZCjqStOxYvyMzm--

