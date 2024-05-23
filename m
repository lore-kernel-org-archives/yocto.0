Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D34A2C25B75
	for <webhook@archiver.kernel.org>; Thu, 23 May 2024 11:51:40 +0000 (UTC)
Received: from smtp-1908.mail.infomaniak.ch (smtp-1908.mail.infomaniak.ch [185.125.25.8])
 by mx.groups.io with SMTP id smtpd.web10.13463.1716465092071641140
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 May 2024 04:51:32 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: 0leil.net, ip: 185.125.25.8, mailfrom: foss+yocto@0leil.net)
Received: from smtp-4-0001.mail.infomaniak.ch (smtp-4-0001.mail.infomaniak.ch [10.7.10.108])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4VlRN153XCzSMT;
	Thu, 23 May 2024 13:51:29 +0200 (CEST)
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4VlRN11hCKzq5H;
	Thu, 23 May 2024 13:51:28 +0200 (CEST)
Date: Thu, 23 May 2024 13:51:27 +0200
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org, zoran.stojsavljevic@gmail.com
Subject: =?US-ASCII?Q?Re=3A_=5Byocto=5D_Still_problems_with_my_experi?=
 =?US-ASCII?Q?mental_bbb-yocto_repo_on_branch_scarthgap?=
In-Reply-To: <CAGAf8LyERGTEWr-3wUX1wH-=1Shri=uq1Y+MrM8Jz0aWrxv8Og@mail.gmail.com>
References: <CAGAf8LyERGTEWr-3wUX1wH-=1Shri=uq1Y+MrM8Jz0aWrxv8Og@mail.gmail.com>
Message-ID: <ECEF5EF0-20F0-4C4B-A5C0-CCC7C1844DD3@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Infomaniak-Routing: alpha
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 11:51:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63182

Hi Zoran,

On May 23, 2024 10:21:27 AM GMT+02:00, Zoran <zoran=2Estojsavljevic@gmail=
=2Ecom> wrote:
>Hello Yocto Folks=2E
>
>Still interesting problems with my experimental bbb-yocto repo on
>branch  scarthgap=2E
>
>Let me remind you all what the issues were:
>https://lists=2Eyoctoproject=2Eorg/g/yocto/message/63118
>
>Everything works after some temp fixes I made (with sticks and ropes),
>but with the latest kernel 6=2E1=2E45 I used, as a scarthgap Stage 1=2E
>
>Now, I replaced kernel 6=2E1=2E45 with kernel 6=2E9=2E0 (Stage 2),
>
>I needed to rebase some patches, since they do NOT work for kernel 6=2E9=
=2E0 =2E
>
>And here very interesting things started to happen=2E Namely, kernel
>6=2E9=2E0 failed compiling in the last phase=2E
>
>The bbb-yocto_kernel-6=2E9=2E0=2Elog file is attached=2E
>
>Here is the issue (from bbb-yocto_kernel-6=2E9=2E0=2E=2Elog file):
>
>|   SYNC    include/config/auto=2Econf
>|   GEN     Makefile
>| make[2]: *** No rule to make target
>'arch/arm/boot/dts/am335x-boneblack=2Edtb'=2E  Stop=2E
>
>The file am335x-boneblack=2Edtb for kernel 6=2E9=2E0 is rebased in
>arch/arm/boot/dts/ti/omap/am335x-boneblack=2Edtb from
>arch/arm/boot/dts/am335x-boneblack=2Edtb =2E
>
>And this net pointer reflects the correct position of it (rebased 0002-pa=
tch):
>https://github=2Ecom/ZoranStojsavljevic/meta-bbb/blob/scarthgap/recipes-k=
ernel/linux/linux-stable-6=2E9/0002-dts-Remove-bbb-cape-i2c-definitions=2Ep=
atch
>
>And this is the kernel recipe:
>https://github=2Ecom/ZoranStojsavljevic/meta-bbb/blob/scarthgap/recipes-k=
ernel/linux/linux-stable_6=2E9=2Ebb
>
>from:
>https://git=2Ekernel=2Eorg/pub/scm/linux/kernel/git/torvalds/linux=2Egit/=
commit/?id=3Da38297e3fb012ddfa7ce0321a7e5a8daeb1872b6
>
>I recompiled the whole thing from scratch=2E Introducing again
>=2E=2E=2E/poky/build and rebuilding from beginning with bitbake -k
>core-image-minimal
>
>Still: | make[2]: *** No rule to make target
>'arch/arm/boot/dts/am335x-boneblack=2Edtb'=2E  Stop=2E
>
>Where does this path come from? No idea!
>
>Should be: arch/arm/boot/dts/ti/omap/am335x-boneblack=2Edtb (as in 6=2E9=
=2E0) !?
>

KERNEL_DEVICETREE needs the vendor prefix with newer kernels for Aarch32 m=
achines (it's always been the case for Aarch64), so it should be ti/am335x-=
boneblack=2Edtb I believe=2E

Let us know how this works,
Cheers,
Quentin

>Thank you,
>Zee
>_______

