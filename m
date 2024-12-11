Return-Path: <pelle.windestam@skf.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F404E77180
	for <webhook@archiver.kernel.org>; Wed, 11 Dec 2024 08:33:53 +0000 (UTC)
Subject: Re: [yocto] UBOOT_ENV causes dependency loop
To: "Adrian Freihofer" <adrian.freihofer@gmail.com>, yocto@lists.yoctoproject.org
From: "Pelle Windestam" <pelle.windestam@skf.com>
X-Originating-Location: Vallentuna, Stockholm County, SE (213.80.102.187)
X-Originating-Platform: Linux Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 11 Dec 2024 00:33:51 -0800
References: <CAB3asfie1fB0bZQPoPgvCahNgTYnWXer2GBTj+36iA4fJeBVFg@mail.gmail.com>
In-Reply-To: <CAB3asfie1fB0bZQPoPgvCahNgTYnWXer2GBTj+36iA4fJeBVFg@mail.gmail.com>
Message-ID: <23139.1733906031351852763@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WOcVvyuuo8zGvKRw083W"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Dec 2024 08:33:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64429

--WOcVvyuuo8zGvKRw083W
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the tips Adrian, I will look into that fitimage.bbclass. I was a=
lso thinking about the dependency between u-boot and linux kernel. It seems=
 to be required since uboot-sign.bbclass "re-signs" the fitImage (and puts =
the public key in the u-boot dtb with the same command) and then does a ver=
ification to check that the key works. But is the re-signing really require=
d? As far as I could tell trying to navigate the uboot-sign.bbclass the re-=
signed image is never used except for doing the verification. If one would =
skip the verification step, I think it would suffice to to put the public k=
ey into the u-boot dtb and thus be able drop the dependency on the kernel r=
ecipe? Doing the verification is of course a good idea to make sure you do =
not end up with a non-bootable fitImage, but it could work as a temporary w=
ork-around.

--WOcVvyuuo8zGvKRw083W
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Thanks for the tips Adrian, I will look into that fitimage.bbclass. I =
was also thinking about the dependency between u-boot and linux kernel. It =
seems to be required since uboot-sign.bbclass "re-signs" the fitImage (and =
puts the public key in the u-boot dtb with the same command) and then does =
a verification to check that the key works. But is the re-signing really re=
quired? As far as I could tell trying to navigate the uboot-sign.bbclass th=
e re-signed image is never used except for doing the verification. If one w=
ould skip the verification step, I think it would suffice to to put the pub=
lic key into the u-boot dtb and thus be able drop the dependency on the ker=
nel recipe? Doing the verification is of course a good idea to make sure yo=
u do not end up with a non-bootable fitImage, but it could work as a tempor=
ary work-around.</div>

--WOcVvyuuo8zGvKRw083W--

