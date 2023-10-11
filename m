Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC362CD68E9
	for <webhook@archiver.kernel.org>; Wed, 11 Oct 2023 08:38:19 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web10.12093.1697013496412092622
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Oct 2023 01:38:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=W7n+u0JA;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2c135cf2459so76915251fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 01:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697013494; x=1697618294; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Qbho5hip/sycKXQ6WK9zpMTNaLqaAp1DTVLdDYyxOko=;
        b=W7n+u0JATqXbh3xz90e6o2ZIoBJrEtNfyzW36Ve5sy6CwYNemDIlZO2wXwDtcOH+cl
         GTaYHuGo7vgllloGl2pIbRWSpm4CuAop3QeU1/kXGvtOkZ/KS3Cs5yCFDTbUeaYNCLKq
         0j5z1sec1gixL2a1tFKY5vZh+RcssicLg6En9TX5gbIabiifrt/t+2/vVgoIIeHVPKV1
         dw1+KI3urRqsKO98rXo9/EYILMABvImcPh8CP9Iy3NtYSByiqD7m32jFD7vVaQn851XE
         eQPwIUD+4XyzzundY9BIIpFQ/0M1eylyWeDYtsNGMZ+lfopmhcmMkGADg8etc5u81/7v
         8H6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697013494; x=1697618294;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qbho5hip/sycKXQ6WK9zpMTNaLqaAp1DTVLdDYyxOko=;
        b=s8J8Y95tBC5p9GyIyuO8YCxykGGUQLnUE3m10MQ4ew5ND9CDCXttXvv6BX5YXMz1X5
         SwDDsu/rLXv1isCaRVZbDaiW7k9JrLG0wkgEtKaho53LPTwvLnR54LRXXCNnlD6nrzXk
         LKShq9m41Ftyjas8wf4vOshC2Lh9l8gaOO2wryIeGnmNTEyqHoYnjSPcx4HKngIxfheC
         q4JCXvShkBsyHyzzDNjfIAkSJR7lwUM4RwK90cs2KIif18G9B9kUBiYL3ydcU2Q1jH2Q
         CkNbEnSghff5hkkl41KHqmmXjydhlPg4xPUnv9WTvfR2ihNnfM4Wsufc+y3EzJ/Fimgw
         ofYQ==
X-Gm-Message-State: AOJu0Yzf3jUmjsjJyWZGj+Ksf3pCtHUiTlV3Z2yGr3tj1T+fmueyz8Uu
	KUDPvtzok5a1OnbznQsmxih2ahrHBzxHoQEv0sg=
X-Google-Smtp-Source: AGHT+IHSfDXQSeIBD21Ws4fPTw8oU5yylMnp8sTrhrN7twOsXh/qJLwna0uXWcwy6ukD7iBPvi44AGFc3nlF1YTOmnc=
X-Received: by 2002:a2e:9ad5:0:b0:2bf:f84e:c1ec with SMTP id
 p21-20020a2e9ad5000000b002bff84ec1ecmr18510128ljj.13.1697013494260; Wed, 11
 Oct 2023 01:38:14 -0700 (PDT)
MIME-Version: 1.0
References: <20231002145446.3166108-1-fabien.thomas@smile.fr>
 <178B43BD6DF66AF4.3256@lists.yoctoproject.org> <178B4DC19A31CF35.3256@lists.yoctoproject.org>
 <a1f9a4b2816d9f048d9ef04d20a6a21b5663ecd7.camel@linuxfoundation.org> <CAFS+G_tey5-KWRgOSsTTUcBpSWXmbzYkX_BaF=gp_iUJ3Ag9cg@mail.gmail.com>
In-Reply-To: <CAFS+G_tey5-KWRgOSsTTUcBpSWXmbzYkX_BaF=gp_iUJ3Ag9cg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 11 Oct 2023 10:38:02 +0200
Message-ID: <CANNYZj-Y2sXGN1vKswDn_QNd5ucCQaTHN8rovN_BbvhBuge=oA@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v2] config.json: add
 reproducible-openembedded build
To: Fabien Thomas <fabien.thomas@smile.fr>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, yocto@lists.yoctoproject.org, 
	Yoann Congal <yoann.congal@smile.fr>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 08:38:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61316

On Fri, 6 Oct 2023 at 16:27, Fabien Thomas <fabien.thomas@smile.fr> wrote:
> -> On the build step "Run cmds" for meta-oe, I see following error :
> ERROR - Build directory
> /home/pokybuild/yocto-worker/reproducible-meta-oe/build/build-st
> already exists, aborting
> Probably due to previous step failed. Do you think it is necessary to
> add an rm -rf [...]/build-st in each step, before actually running
> selftest ?

No, because this complicates investigating failures after they
happened. The correct thing to do is to stop the whole job when a
specific step fails. Letting subsequent steps fail due to the already
existing failed directory is ok too.

Alex

