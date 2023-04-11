Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33142C76196
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 06:32:00 +0000 (UTC)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
 by mx.groups.io with SMTP id smtpd.web11.7519.1681194716976224985
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Apr 2023 23:31:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ioCmCks1;
 spf=pass (domain: gmail.com, ip: 209.85.210.42, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f42.google.com with SMTP id g74-20020a9d12d0000000b006a131458abfso1887731otg.2
        for <yocto@lists.yoctoproject.org>; Mon, 10 Apr 2023 23:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681194716;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lw3beYQbw/hrzHGdW7wdfbGfS4wCUu/Z4soyr+VkoQc=;
        b=ioCmCks1gnZLbd6i9sBqs/4qcXkZ6Y0h+nJ2cxj1uEridMO8nCOIfTAZtjmKI9dplu
         k6JH4b4Qz3kDmAPfOBjkGjwey5xtEsSePUsyMDsooQm8g7lqCuIlnCMf8jdqedBWguH3
         VCyc8QI+XV19fnfiXwvwD2pidxAdu97q0lYwq7UYFZ/7dwhK241HRckfTwhh2PVFjfvR
         oHh5/YFEG8KLne2gEhYBoBxfNxw4FFbn2x2JymdzmPM5ENU8Acp1776f5r8Z0Ed4msAg
         mIRBzrJdCeVIEiX2/uvGkcMxfpiAfIoT0s0XNs9jUvhleH1E5/Yu4K7t94JILK1LUbcL
         IHIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681194716;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lw3beYQbw/hrzHGdW7wdfbGfS4wCUu/Z4soyr+VkoQc=;
        b=SW/VCGRYO1DkDf5qIs7yTvYzFPl58JhgTdOtfyJyDKOvANDX1dWJnWieUCyBm67dZA
         9srcPatDEaeT08vM2WAg1c8Ys+EgLjtPNRnEE8fRCnPCWWK0DtVzaMkh7s71k0TeNtA+
         BVUr8w+5I32dPr0F+d4VIHFSfmzyHaGAK9ZspIHqxXfRf88EQ5gbndM/eQcq4FB/fMfg
         D9kqAefm9f3JYX5xYTFmzs8utXXQLXF0HD4emid3w1+ibK5hA7b/p+U+ca0gc5/NrQ4y
         Xu+sgzEuUHtLK0GEbQmAblo/E00X+wRb2wA5YwkyjX3gvPjxsIk24P8kPkEo0iNNHadd
         4K8Q==
X-Gm-Message-State: AAQBX9fufXLlq0B9Wjm71ObruWO7qxlYBKsI/rEjBD6iuye1mBYK5fuM
	J1IPxPWYJ3kVDi8BxIG1cREBlOK6eS87fFm/zSU=
X-Google-Smtp-Source: AKy350bnFwfiKzjCdDVfT2CnX+J2I6tSjmWOScttDmc96ICqKAsuQb8iWuLAljgsi0qySMa1p+ZFOqll3gPsi1hhRw4=
X-Received: by 2002:a9d:7e83:0:b0:6a1:cbc6:f1b3 with SMTP id
 m3-20020a9d7e83000000b006a1cbc6f1b3mr3488929otp.2.1681194715958; Mon, 10 Apr
 2023 23:31:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sr=+-0UOVSm+xgXKEbJgUS6HGF-yTB0YbExjThQ0nNAKg@mail.gmail.com>
 <28742.1681194402633433253@lists.yoctoproject.org>
In-Reply-To: <28742.1681194402633433253@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 10 Apr 2023 23:31:30 -0700
Message-ID: <CAMKF1srFjLA0S+TOprWbfOV4er40E2KQ7GOkW7S=2_JgeKy0yw@mail.gmail.com>
Subject: Re: [yocto] Missing .o files.
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 06:32:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59671

On Mon, Apr 10, 2023 at 11:26=E2=80=AFPM MOHAMMED HASSAN
<hassanchattarki@gmail.com> wrote:
>
> On Mon, Apr 10, 2023 at 10:45 PM, Khem Raj wrote:
>
> you need to add
>
> DEPENDS +=3D "readline ncurses"
>
> to your recipe.
>
> Hi Khem,
> Thanks for your reply. I didnt get any more errors and bitbake zigbee was=
 a success.
> The issue is in my executable is saved in /amlogic/meta-c/recipes-example=
/zigbee/files/gecko_sdk_suite/v3.2/build/Z3GatewayHostm/build/exe folder an=
d not in the  /amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0 fold=
er. I thought of making changes in the makefile but not sure with the comma=
nds I need to write. Can you please help.
>

you can write a install target in makefile or write do_install()
function in recipe where you copy the needed binaries into
${D}${bindir}

> Thanks and Reagrds,
> Hassan
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59670): https://lists.yoctoproject.org/g/yocto/messag=
e/59670
> Unfollow This Topic: https://lists.yoctoproject.org/unft/98191767/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

