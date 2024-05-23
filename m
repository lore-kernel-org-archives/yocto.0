Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07C7BC25B75
	for <webhook@archiver.kernel.org>; Thu, 23 May 2024 17:08:52 +0000 (UTC)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web10.70.1716483841583378770
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 May 2024 10:04:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AwZjeRXs;
 spf=pass (domain: gmail.com, ip: 209.85.215.180, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-5ff57410ebbso3217580a12.1
        for <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 10:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716483841; x=1717088641; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3hXYe8AstOrexNgwEPolgbAjXqha1Zuzyns1EUK5c1Q=;
        b=AwZjeRXsRWWX32JytU2UAqIlG4iU7Bjz/2euDODpP9rQML76mvrqhrpji/n8GbbOq4
         428uzSC7NJMWNpTR2xy/xu/3azS1PIAVq+aVh9E+b37qiUqs4okO0H4x5xicy/NWHQCL
         Ex8J7H3qIatS5ilL7Va/AbPZ7FjfOFolB96BOhvsjebXlJUO37hSWGA76rnNqiTEjoJN
         7v9e44aeH6YRxaAbI/REn+hUKc3s3v9LzkbYRMl8wP+jPanOLDT3TprcAO5hTRybUySE
         IJIuJ0mChTopiU4qtCF8cwhvNc7d2yegnKU0qZXd7dP2bRxhkgzwtAbuYNRXpMWTaMr/
         8EDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716483841; x=1717088641;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3hXYe8AstOrexNgwEPolgbAjXqha1Zuzyns1EUK5c1Q=;
        b=hLIdHiryfPYQ7UN84tiCQwqrtYWTYpYpU1/6Az3WAROEU2Q5hyDokBsc3zVyRnE4W1
         aE8jmqb0LdHfbhFwPOq5navc6aXiAxNrgiNSuTE/z//XmUjK/y4IBu2G44R+z3zalWHO
         nuKA2jaBhnkuE67sWcyFpB7jeJiG3OYVf40p/CAjM/Uvx9VlTRBdEIgJFVMv5K1crIZQ
         iKaX9h8PrLVBLvy+hZlFFUvkRgH4AWX838fhsTLnKgy/z3GCW7HYhzPHvFAdeaTgiE2s
         3AaIQWJOoU8tvWZaPxbvhrO1KCCsVa2l443o8c31hewwp4ESoTAeejbvXZC7UZD3mJSz
         HsTw==
X-Gm-Message-State: AOJu0YyZrJsYFMh5elGQ/TY3/aSPwI976BuILVRf8u0k5+io2zpc3pzd
	r8BP7my30Jy7CczjcuOcUb+WYk2axZL0n13m1xtJswpxU9GeGee5VG5MLIbk+KIPL3hX0Ajv1ry
	e/RXwvFyq2WW51lA7T1bjRw2qGBM=
X-Google-Smtp-Source: AGHT+IEpIdC/3URzRgyX01e6fYsFqKkodHQS7BJG8QLbAGzXftMtUQgkLc4VF+DKqzONku/I7MAcmWZuk3dXlDvBjZk=
X-Received: by 2002:a17:90b:1b45:b0:2bd:7e38:798e with SMTP id
 98e67ed59e1d1-2bd9f48af9cmr5794581a91.28.1716483840686; Thu, 23 May 2024
 10:04:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LyERGTEWr-3wUX1wH-=1Shri=uq1Y+MrM8Jz0aWrxv8Og@mail.gmail.com>
 <ECEF5EF0-20F0-4C4B-A5C0-CCC7C1844DD3@0leil.net>
In-Reply-To: <ECEF5EF0-20F0-4C4B-A5C0-CCC7C1844DD3@0leil.net>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 23 May 2024 19:03:48 +0200
Message-ID: <CAGAf8LwMOo0jv5p08Wiq8=KtyQbnutjbmL8ML5zgHcPQO4JDHQ@mail.gmail.com>
Subject: Re: [yocto] Still problems with my experimental bbb-yocto repo on branch scarthgap
To: Quentin Schulz <foss+yocto@0leil.net>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 17:08:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63188

Quentin,

Thank you for the tip. YES, this was exactly the problem. Here is the
fix for kernel 6.9.1 .
https://github.com/ZoranStojsavljevic/meta-bbb/blob/scarthgap/recipes-kerne=
l/linux/linux-stable_6.9.bb

>> ...so it should be ti/am335x-boneblack.dtb I believe.

KERNEL_DEVICETREE ?=3D " \
    ti/omap/am335x-boneblack.dtb \
    ti/omap/am335x-boneblack-wireless.dtb \
    ti/omap/am335x-boneblue.dtb \
    ti/omap/am335x-bonegreen.dtb \
    ti/omap/am335x-bonegreen-wireless.dtb \
    ti/omap/am335x-pocketbeagle.dtb \
"
The explanation is this one!
[scarthgap phase 2 transition: kernel 6.1.45 -> kernel 6.9.1]
transition from nanbield kernel 6.1.% (6.1.45) to scarthgap kernel
6.9.% (6.9.1) with adding fix for the KERNEL_DEVICETREE: requires the
vendor prefix with newer kernels (using u-boot-v2024.01 changed a bit
u-boot [PATCH] Customize config and boot command)

I miss this one for the kernel improvement... Old dog am I!
_______

There will be a phase 3. But on advanced (> 6.9.1 kernel). With very
different kernel_...bb and different hierarchy patch files... But this
is The attempted Future, or what else?

Time Will Tell!
_______

Thank you, Quentin,
Zoran
_______

On Thu, May 23, 2024 at 1:51=E2=80=AFPM Quentin Schulz <foss+yocto@0leil.ne=
t> wrote:
>
> Hi Zoran,
>
> On May 23, 2024 10:21:27 AM GMT+02:00, Zoran <zoran.stojsavljevic@gmail.c=
om> wrote:
> >Hello Yocto Folks.
> >
> >Still interesting problems with my experimental bbb-yocto repo on
> >branch  scarthgap.
> >
> >Let me remind you all what the issues were:
> >https://lists.yoctoproject.org/g/yocto/message/63118
> >
> >Everything works after some temp fixes I made (with sticks and ropes),
> >but with the latest kernel 6.1.45 I used, as a scarthgap Stage 1.
> >
> >Now, I replaced kernel 6.1.45 with kernel 6.9.0 (Stage 2),
> >
> >I needed to rebase some patches, since they do NOT work for kernel 6.9.0=
 .
> >
> >And here very interesting things started to happen. Namely, kernel
> >6.9.0 failed compiling in the last phase.
> >
> >The bbb-yocto_kernel-6.9.0.log file is attached.
> >
> >Here is the issue (from bbb-yocto_kernel-6.9.0..log file):
> >
> >|   SYNC    include/config/auto.conf
> >|   GEN     Makefile
> >| make[2]: *** No rule to make target
> >'arch/arm/boot/dts/am335x-boneblack.dtb'.  Stop.
> >
> >The file am335x-boneblack.dtb for kernel 6.9.0 is rebased in
> >arch/arm/boot/dts/ti/omap/am335x-boneblack.dtb from
> >arch/arm/boot/dts/am335x-boneblack.dtb .
> >
> >And this net pointer reflects the correct position of it (rebased 0002-p=
atch):
> >https://github.com/ZoranStojsavljevic/meta-bbb/blob/scarthgap/recipes-ke=
rnel/linux/linux-stable-6.9/0002-dts-Remove-bbb-cape-i2c-definitions.patch
> >
> >And this is the kernel recipe:
> >https://github.com/ZoranStojsavljevic/meta-bbb/blob/scarthgap/recipes-ke=
rnel/linux/linux-stable_6.9.bb
> >
> >from:
> >https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3Da38297e3fb012ddfa7ce0321a7e5a8daeb1872b6
> >
> >I recompiled the whole thing from scratch. Introducing again
> >.../poky/build and rebuilding from beginning with bitbake -k
> >core-image-minimal
> >
> >Still: | make[2]: *** No rule to make target
> >'arch/arm/boot/dts/am335x-boneblack.dtb'.  Stop.
> >
> >Where does this path come from? No idea!
> >
> >Should be: arch/arm/boot/dts/ti/omap/am335x-boneblack.dtb (as in 6.9.0) =
!?
> >
>
> KERNEL_DEVICETREE needs the vendor prefix with newer kernels for Aarch32 =
machines (it's always been the case for Aarch64), so it should be ti/am335x=
-boneblack.dtb I believe.
>
> Let us know how this works,
> Cheers,
> Quentin
>
> >Thank you,
> >Zee
> >_______

