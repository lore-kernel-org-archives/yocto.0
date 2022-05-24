Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EF04C433F5
	for <webhook@archiver.kernel.org>; Tue, 24 May 2022 08:16:35 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web08.6933.1653380186345586546
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 May 2022 01:16:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ch2BY/T/;
 spf=pass (domain: gmail.com, ip: 209.85.167.52,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id p22so29507848lfo.10
        for <yocto@lists.yoctoproject.org>;
 Tue, 24 May 2022 01:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=cTo9D3XJbDFpDqxW3tdn3CuSppN7YDmNbx1aqsRGx/Y=;
        b=Ch2BY/T/j+8bVKwCJOJ7j9Qn877ZDV/D7Sp7u+Tibgwu/vqR0zAvLwNLmCjmDKHpyx
         pUPbjSyMrhckSvMY8n7v61/h+ykydPyK03FnQB3MU3kORjsC0E6Z+aU1l4cap7DLzFV+
         E1iW5Cv8G5KeYYikIM+oX0iVNvs+zQamlTdYYJ23fmPOCbUSm1UuOooXzgZrn+3eC9Eq
         UrXooHH/jdsJNTydgrNR/gbeuV3hvwAU27YU1kiXgubQ2FYrhNAZ7lFZEGepZJsFIuk8
         8vQ6y0OVnlIW32RCrPXEKSEZMOebg6/V9tTdULsj1WPY9e0Em0G/7xy5wI69nHp1v2+p
         lP7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=cTo9D3XJbDFpDqxW3tdn3CuSppN7YDmNbx1aqsRGx/Y=;
        b=yU9Ihc/I5Yfdjj+XiFMr3gv5+TAXxxRItEq38V1wbKy/uZN9Q5GxjtCanxqisygMbB
         A4ajRoQmLXR2sue2QUzXWrhS57dimJU2Jh0aj38m6JiVKMrLpyBEzyH7KpJ7V4X/J6bU
         uGjnAckwfiYh68UInUTQrw7izwSNGMBjbnZbAb2j0npoORnlosDqc+aMdetGVJUaCUWa
         ADNxyJETYg10MlLYn6qgbfjgAnqdUmgZL1sqrlOw2Qr708kCIPJG23ixlh40zDZV6ZX7
         50HOoAFFT/9nMILrZQXVC0t+zwDRtZuIsdtRkuvQSLCFnKtN4lIWifq2zoCGGjn9dodq
         i9YA==
X-Gm-Message-State: AOAM530SizZT00nR+YCzVXN5p1nxBqSkI2lwOx7OD/ZXFFoC23a6VI9e
	WtHl40DHhIdQMUeUU8l922WywVCUYmtmbcoiltE=
X-Google-Smtp-Source: 
 ABdhPJyPjQIEELBTxdG8gkrM2vSgLWtS7OQK2DQ8WSVqZqmJc65QvuQFUd1uKYLxZbihx5e7ofqB2kDPe6hlrYBtQn8=
X-Received: by 2002:a05:6512:3e0f:b0:478:97be:bc75 with SMTP id
 i15-20020a0565123e0f00b0047897bebc75mr172961lfv.534.1653380184496; Tue, 24
 May 2022 01:16:24 -0700 (PDT)
MIME-Version: 1.0
References: <Jodg.1653379718028989640.MmuK@lists.yoctoproject.org>
In-Reply-To: <Jodg.1653379718028989640.MmuK@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 24 May 2022 10:16:12 +0200
Message-ID: 
 <CANNYZj_PBP5arVq81GfD5dO65=8L-6b9O+89Yj0rm0pYhUt0xg@mail.gmail.com>
Subject: Re: [yocto] Building rust package fails with "can't find crate for
 `std`" #bitbake #toolchain #rust #kirkstone
To: martin.stolpe@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 May 2022 08:16:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57170

It helps if you can share the recipe that you're trying to build.

Alex

On Tue, 24 May 2022 at 10:08, <martin.stolpe@gmail.com> wrote:
>
> Hello,
>
> I'm trying to build a rust package which pulls openssl-sys as a dependenc=
y. I've used cargo bitbake to create the build script.
>
> When I try to build the package using bitbake I get the following error m=
essage:
> error: failed to run custom build command for `openssl-sys v0.9.72`
>
> Caused by:
>   process didn't exit successfully: `/home/martin/yocto/build/tmp/work/co=
rtexa72-poky-linux/basestation/0.1.0-r0/build/target/release/build/openssl-=
sys-0c915fe76d324495/build-script-main` (exit status: 101)
>   --- stdout
>   cargo:rustc-cfg=3Dconst_fn
>   cargo:rerun-if-env-changed=3DAARCH64_POKY_LINUX_OPENSSL_NO_VENDOR
>   AARCH64_POKY_LINUX_OPENSSL_NO_VENDOR unset
>   cargo:rerun-if-env-changed=3DOPENSSL_NO_VENDOR
>   OPENSSL_NO_VENDOR unset
>
>   --- stderr
>   warning: target json file contains unused fields: has-elf-tls
>
>   warning: target json file contains unused fields: has-elf-tls
>
>   error[E0463]: can't find crate for `std`
>     |
>     =3D note: the `aarch64-poky-linux` target may not be installed
>     =3D help: consider downloading the target with `rustup target add aar=
ch64-poky-linux`
>
> Does anyone know if it is possible to build the std (and core) crate for =
the rust cross compile toolchain? I'm a beginner regarding Yocto/OpenEmbedd=
ed and am really struggling to understand how the rust cross compile toolch=
ain is build. Any help would be appreciated.
>
> Best regards
> Martin
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57169): https://lists.yoctoproject.org/g/yocto/messag=
e/57169
> Mute This Topic: https://lists.yoctoproject.org/mt/91306865/1686489
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #toolchain:https://lists.yoctoproject.org/g/yocto/mutehashtag/toolch=
ain
> Mute #rust:https://lists.yoctoproject.org/g/yocto/mutehashtag/rust
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkst=
one
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

