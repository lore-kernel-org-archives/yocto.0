Return-Path: <ppanaccio78@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49F6FC3DA49
	for <webhook@archiver.kernel.org>; Sun, 21 Jul 2024 01:39:48 +0000 (UTC)
Subject: NAND together with SD CARD images
To: yocto@lists.yoctoproject.org
From: ppanaccio78@gmail.com
X-Originating-Location: Bologna, Emilia-Romagna, IT (93.34.80.103)
X-Originating-Platform: Android Phone Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 20 Jul 2024 18:39:40 -0700
Message-ID: <U46J.1721525980821149221.YLk8@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ropwlBtn69hv2Bvi015h"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 21 Jul 2024 01:39:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63540

--ropwlBtn69hv2Bvi015h
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello community,
I have a project where I work with two different image recipes. One is mean=
t for production=C2=A0 and targets NAND, another one for SD CARD. The secon=
d one is basically a tiny image that contains scripts to flash the NAND wit=
h the production image.

My question is: what's the recommended way to manage these two images in te=
rms of MACHINE and UBOOT_CONFIG?

How I did till now: just changed the weak default for UBOOT_CONFIG found in=
 the machine.conf depending on the image I was baking. This does not look g=
ood to me because it clutters the deploy dir for the given machine with unr=
elated build artifacts.

A better alternative comes to my mind: the physical board is just one, so i=
t makes sense that both images should refer to the same MACHINE variable. T=
he machine.conf provides a weak assignment for UBOOT_CONFIG and image recip=
es should=C2=A0 change its value depending on their needs.
But I suspect that since the data store for each recipe (comprised image re=
cipes) is a local coly, such assignment does not work.

Then only two bins are left: mess up the deploy dir as I did till now OR us=
e two different machines with different weak defaults, which I think is som=
ewhat wrong as the hardware is one.

Can you help me sort this out?
Thanks

--ropwlBtn69hv2Bvi015h
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello community,</div>
<div>I have a project where I work with two different image recipes. One is=
 meant for production&nbsp; and targets NAND, another one for SD CARD. The =
second one is basically a tiny image that contains scripts to flash the NAN=
D with the production image.</div>
<div>&nbsp;</div>
<div>My question is: what's the recommended way to manage these two images =
in terms of MACHINE and UBOOT_CONFIG?</div>
<div>&nbsp;</div>
<div>How I did till now: just changed the weak default for UBOOT_CONFIG fou=
nd in the machine.conf depending on the image I was baking. This does not l=
ook good to me because it clutters the deploy dir for the given machine wit=
h unrelated build artifacts.</div>
<div>&nbsp;</div>
<div>A better alternative comes to my mind: the physical board is just one,=
 so it makes sense that both images should refer to the same MACHINE variab=
le. The machine.conf provides a weak assignment for UBOOT_CONFIG and image =
recipes should&nbsp; change its value depending on their needs.</div>
<div>But I suspect that since the data store for each recipe (comprised ima=
ge recipes) is a local coly, such assignment does not work.&nbsp;</div>
<div>&nbsp;</div>
<div>Then only two bins are left: mess up the deploy dir as I did till now =
OR use two different machines with different weak defaults, which I think i=
s somewhat wrong as the hardware is one.</div>
<div>&nbsp;</div>
<div>Can you help me sort this out?</div>
<div>Thanks</div>
<div>&nbsp;</div>

--ropwlBtn69hv2Bvi015h--

