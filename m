Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85082ECAAD3
	for <webhook@archiver.kernel.org>; Wed, 14 Sep 2022 21:57:47 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
 [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web08.3057.1663192659391119804
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Sep 2022 14:57:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=2RNi9e6/;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.42,
 mailfrom: steve@sakoman.com)
Received: by mail-ej1-f42.google.com with SMTP id a26so9145336ejc.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 14 Sep 2022 14:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=JoQaMZ6JqKQf7eM3guFYW9xRyMQAvwwLIK+awGC5YzI=;
        b=2RNi9e6/va1Zsm47n+cpxrAzaPUD9gKgyQQgGGJ1fsh95AH1TCF6i0vAPg1zwfk/Lz
         TaT/780t3R+4G6XdGkXF0Ie4/142rqk9oaQirMwgioB4xrL/MEARjQ2tbnbnotqvDM29
         54IqN3Be3zNBegghy4D7Pt/MGML5Ls6GUE9XGm0PYFcnwvU4ATMv5Ejv78PjFHZsBt2y
         MJO0686WyN7vfk/xhLfkc3c7/zsExDZylmMr0cxegPVwG5rYaSHlqiy9y1neGv3YNdik
         5w+IEdNOP8SwHStJrAEGGCTmf1CBUsukMC4dhObTRpbd3JlUOWaa3qjjupZn/1pwqyEY
         EqmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=JoQaMZ6JqKQf7eM3guFYW9xRyMQAvwwLIK+awGC5YzI=;
        b=E9uAomGENemvjn8n/KBrQeCXJbpw5zq+naJ9qIKzU75BbhdcyUbQgV8wiaomXAVTEW
         L2M6LczyMV3cknpmvW2+hYckur5gu9T4LR9gR84dS8eQqMzdp1onAdsFHdQ74fEK20kI
         XrPXFVFUEaqY6YPl4ZzgrqWXpXHAnjA/Zk4l07STNC8ZXQPU2U4ZYWbdoWiOHcDyonmG
         +eEArg+oFilO/NAONLCK4vCKGIxcpQOThE8gSK1/cyH12v1OemSivcWrVfQJERyZ8JSA
         UdW28CndljT7Dsqll0NF9aK+ZEJHHXknsmhXmQrhHNLd9eNzfHePKANOQxXKT8BNp/J8
         o0fg==
X-Gm-Message-State: ACgBeo11fk+06/sGUVQ4EQxSUsFw4ytYKtdY/Id0ZjUP72Y7j2AtNN2f
	qIDcZRNGKKMEn6PgkQ+ysKAEcHLZeFrDpou2ZkFaTw==
X-Google-Smtp-Source: 
 AA6agR5b+hFA+tn46xq9rdD2s3mYfzs4kjn8BBMGJH2mzxLFEWjHajFlRSwjxmiH/NcdNh4o1xM6Ksi5OEohRog+PcE=
X-Received: by 2002:a17:907:628a:b0:72f:678d:6047 with SMTP id
 nd10-20020a170907628a00b0072f678d6047mr26271471ejc.456.1663192657511; Wed, 14
 Sep 2022 14:57:37 -0700 (PDT)
MIME-Version: 1.0
References: <OPcU.1663179386288137669.KD6c@lists.yoctoproject.org>
In-Reply-To: <OPcU.1663179386288137669.KD6c@lists.yoctoproject.org>
From: Steve Sakoman <steve@sakoman.com>
Date: Wed, 14 Sep 2022 11:57:26 -1000
Message-ID: 
 <CAOSpxdYCegnErSy7n8V+Ty2yzqLkNRoJrKpcDvBt=RQ0jGopJg@mail.gmail.com>
Subject: Re: [yocto] install: cannot create regular file Permission denied
 #dunfell
To: Mahendra Sondagar <mahendrasondagar08@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Sep 2022 21:57:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58045

On Wed, Sep 14, 2022 at 8:16 AM Mahendra Sondagar
<mahendrasondagar08@gmail.com> wrote:
>
> Hi.. there
>
> Hope all are doing well
>
> I'm working with the Yocto dunfell branch with the STM32MP1
> My goal is to add the test.sh script in to the rootfs of the Yocto custom=
 image (in to the bindir)
>
> That's how, i have created the recipes file called "recipes-support"
> Inside that, i have created "net-cfg" file
> the files under net-cfg file at where, i have kept test.sh file
> here is the tree structure
>
> .
> =E2=94=94=E2=94=80=E2=94=80 net-cfg
>     =E2=94=9C=E2=94=80=E2=94=80 files
>     =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 test.sh
>     =E2=94=94=E2=94=80=E2=94=80 net-cfg_1.0.bb
>
> I have installed the image with the custom-image.bb file as a
> IMAGE_INSTALL +=3D "net-cfg"
>
> The content of the net-cfg_1.0.bb are as follows
> -------------------------------------------------------------------------=
-------------
> SUMMARY=3D "Script files for the testing"
> SRC_URI =3D " file://test.sh"
>
> LICENSE =3D "CLOSED"
>
> do_install() {
>         install -d ${D}${bindir}
>         install -m 0755 ${WORKDIR}/test.sh ${D}${bindir} /
I don't think you intended to have this space here            ^

That's why it is attempting to install test.sh to /

Steve

> }
>
> FILES_${PN} +=3D "${bindir}/test.sh"
>
> -------------------------------------------------------------------------=
-------------
>
> During the baking the image, i got the error like | install: cannot creat=
e regular file '/test.sh': Permission denied
>
> I have attached the full error logs here
>
> Can any one help me here to figure out the issue ?
>
> Thanks
> Mahendra
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58042): https://lists.yoctoproject.org/g/yocto/messag=
e/58042
> Mute This Topic: https://lists.yoctoproject.org/mt/93683834/3620601
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

