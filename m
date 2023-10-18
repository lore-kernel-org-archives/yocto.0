Return-Path: <ivastojanovic@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5873DCDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 08:38:05 +0000 (UTC)
Subject: Remove packagegroup from image recipes
To: yocto@lists.yoctoproject.org
From: "Ivan Stojanovic" <ivastojanovic@gmail.com>
X-Originating-Location: Graz, Styria, AT (192.102.17.1)
X-Originating-Platform: Windows Chrome 117
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 18 Oct 2023 01:38:00 -0700
Message-ID: <LNIq.1697618280522521063.trNE@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4um5XMnDmurrYNnxbHPd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 08:38:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61388

--4um5XMnDmurrYNnxbHPd
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to remove a package group (pacakgegroup-core-rauc) from a custo=
m image but it fails with error:
"package packagegroup-base requires packagegroup-base-rauc, but none of the=
 providers can be installed".

We use Rauc for our "standard" image, but I want to remove it from the "rec=
overy" image. "rauc" is in DISTRO_FEATURES which is fine for all images exc=
ept for "recovery" image.

The only way I managed to remove it is using post-process command, but I am=
 wondering if there is a more elegant way to remove it?

Any ideas?

Regards,
Ivan

--4um5XMnDmurrYNnxbHPd
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I am trying to remove a package group (pacakgegroup-core-rau=
c) from a custom image but it fails with error:<br />"package packagegroup-=
base requires packagegroup-base-rauc, but none of the providers can be inst=
alled".<br /><br />We use Rauc for our "standard" image, but I want to remo=
ve it from the "recovery" image. "rauc" is in DISTRO_FEATURES which is fine=
 for all images except for "recovery" image.<br /><br />The only way I mana=
ged to remove it is using post-process command, but I am wondering if there=
 is a more elegant way to remove it?<br /><br />Any ideas?<br /><br />Regar=
ds,<br />Ivan

--4um5XMnDmurrYNnxbHPd--

