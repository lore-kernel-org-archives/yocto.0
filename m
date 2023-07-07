Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9EEEB64D9
	for <webhook@archiver.kernel.org>; Fri,  7 Jul 2023 00:19:56 +0000 (UTC)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
 by mx.groups.io with SMTP id smtpd.web11.2123.1688689190477628739
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jul 2023 17:19:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=obfxC9sK;
 spf=pass (domain: gmail.com, ip: 209.85.222.46, mailfrom: raj.khem@gmail.com)
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-7919342c456so430054241.2
        for <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 17:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688689189; x=1691281189;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NsCKHXI8lQ1EvzFB0VRluyiiW8hXMwXjnnokgl/u76o=;
        b=obfxC9sKkmo//KjKYwaAyhcdVHJJWjbuQOOJPvW/9kktDJ3Fm6G0fVmZ9mGmLF9eaB
         7lULbJWMf2zk+HDzo8ANH9EgejZbS76gr21WiL8zErHzcFwaZ46JDjJZ7ltCmglleV3Q
         o0k1edFD3T7LFNztN6eu45KNOURjWqR29gTNpuGt+EnLXEzpcrbWglhpGBQPS7HVQSqW
         +6m1zOcyxM7UTc4FUjtS3StKSmjYvCRappq4YwZIGpwkJEj5x1Ww970lJbaqskYVoTrn
         GLj6yFggOxIFGRrGdrlDXtX6wqjbRtgfBsrcpsibdsPdHlN92p8f4O5FboYvb2EmL6qE
         Un5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688689189; x=1691281189;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NsCKHXI8lQ1EvzFB0VRluyiiW8hXMwXjnnokgl/u76o=;
        b=gontz17Utt2ahe1TIbKm41O+DHodN7dT6r2IGbDbXM1sJ8ZAcpDS+2xOKh7Jd0Q6E3
         5OHGR3/jyxSe5EM3/Fffy4nz5zpATeeX2aqdkTW8LPwM193MbY5DlSLBfjMKyjPGjcib
         E/3A6JChfLd4gmjneWt62EjO/aD2Ztl43kZII1RgIfvSOLe86zGyILIVqEnYRYnjRMtf
         rNkp25K0PbBUl7fhhb+TLv901WIaAHX10lmL/wX6cD09doQ8DuBpZnGx28wU6xxH3D85
         Ws2IUgr4U1bN00PUypkl0XUpzlOHhFRkEd+SkEB8wiKueV0px1XMelZLHTX2iulanSey
         1ENA==
X-Gm-Message-State: ABy/qLYXuJGozoq4Ac64KrhdBWCCLZifLz8w9wC0rQxJe+s3QxrChWir
	XOdJ78YN5rFeaE6q7UarXiJ8/R7dEMBCwMTk1LI=
X-Google-Smtp-Source: APBJJlFZohFWVqc79d+Vcb0m+Kcir7Y15BsM9uIqJnCOn0faKe+LXfcSMb3OauTwyFmM7Ec4E/LDqL8h3PPhcODEWak=
X-Received: by 2002:a05:6102:34c7:b0:444:c294:afc7 with SMTP id
 a7-20020a05610234c700b00444c294afc7mr1701158vst.26.1688689189391; Thu, 06 Jul
 2023 17:19:49 -0700 (PDT)
MIME-Version: 1.0
References: <N1ke.1688680681085244156.m9yS@lists.yoctoproject.org>
In-Reply-To: <N1ke.1688680681085244156.m9yS@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 6 Jul 2023 17:19:22 -0700
Message-ID: <CAMKF1spKceXRZFVkzvgjiyTutLZCJ3PGt50mz-mHKTpDBH8WKg@mail.gmail.com>
Subject: Re: [yocto] How to exclude package from build history in Yocto?
To: Ehsan Mohandesi <mohandesi@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Jul 2023 00:19:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60537

On Thu, Jul 6, 2023 at 2:58=E2=80=AFPM Ehsan Mohandesi <mohandesi@gmail.com=
> wrote:
>
> Hi all,
> I have updated BUILDHISTORY_FEATURES=3Dimage to avoid including the packa=
ge directory in the build history. However, I am still seeing the package d=
irectory with numerous subdirectories in the build history.
> How can I completely exclude the package directory from the build history=
?
> The following is what I see in the buildhistory directory.
> ~/ws/OpenBMC/build/dc-scm-m1110$ ls buildhistory
> images  metadata-revs  packages

I assume this directory buildhistory/ was created fresh after above change


> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60536): https://lists.yoctoproject.org/g/yocto/messag=
e/60536
> Mute This Topic: https://lists.yoctoproject.org/mt/99995362/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

