Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C89CC04FDE
	for <webhook@archiver.kernel.org>; Fri,  9 Dec 2022 09:09:38 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.8984.1670576970992425067
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Dec 2022 01:09:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jQzhnkTQ;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 1so6060227lfz.4
        for <yocto@lists.yoctoproject.org>; Fri, 09 Dec 2022 01:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1i+C6u1aP2bcjCYRMYuYxbW+sEa4LNPiL6sa4M3zaEQ=;
        b=jQzhnkTQecHWUGZIOj50intLkBlKe4lDPOiGc5jrbolxyea37qqZ6nuq9nC27WkZQV
         VqhPpXVsEQyjr5t2xHSidAtOxmR6r6bP8WcLaS88B2iVjaFf1PRKWYrKVOowbRQsUXte
         0gYLE1bXZwE9AWeBU2/VziVfnySOM4MHatQ36OTGfu5b9weCuQu7lb+LVvCyVb8MWV0S
         x6++uIMvetAHCbyOQOrsUzOEnJlq9WR7RnIxCx+/k/SBIfSAEmBwpqZ+h29kcalqwz89
         OIGZ2G/OonQ/IRbto95VZ9MhY+X/bsAFAMmV9T0MX9Wy5dqWzNzbUpYJ0C6NcnKKBjTE
         VVtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1i+C6u1aP2bcjCYRMYuYxbW+sEa4LNPiL6sa4M3zaEQ=;
        b=KdEp8Dp9S1CbSmWDqF+RbIy32S7yR3u3sujm0rsFGYO8ppX4e0pR2Y2U+HVimSPkzO
         M4Kw/sxlk+gwKChvV/0jZ5Fls6Y4+pwZ67TITNCFz3bB1wUn32vv7yQGL2mkvRU0qo11
         tuhIS+biMYlMhEmElv1bUEE2mweQxaRYvsqJudsYEE2OZRP+TFOMnHHsXPU3p8+8wzZe
         OR4q5a8MghmstXy7Dm2RMT9RXgaUZNZYixKO8S0VdjnoYVK9Nx26LBiY+zzl/ELw2nl1
         cwUtpdQXsKrEjQeXbCPBNcqZJ0jYr3vW8oRyRyqn6m82wJcNUI/n+1lAyfcM3wlwgkqk
         a6KQ==
X-Gm-Message-State: ANoB5pnvvT20l968rdCRdBiPy04Yi21Bw91MuV3q1qykNPbLjPBBiplr
	GkztXyu7pTK6qPvcruqx/+cvSCdz302n3kCDXnk=
X-Google-Smtp-Source: AA0mqf6Vk1/75I5tY89gBF7EqteQPcDY23xA9Au9e3T1RZJ0gdMa5bfjQN0ODUIl7AgXXTMFDwTtwvKVVCaZSW+qViI=
X-Received: by 2002:a05:6512:746:b0:4a2:4f74:f47c with SMTP id
 c6-20020a056512074600b004a24f74f47cmr30783344lfs.367.1670576968933; Fri, 09
 Dec 2022 01:09:28 -0800 (PST)
MIME-Version: 1.0
References: <SN4PR18MB487013BE5C8C97B1175E85F99D1D9@SN4PR18MB4870.namprd18.prod.outlook.com>
In-Reply-To: <SN4PR18MB487013BE5C8C97B1175E85F99D1D9@SN4PR18MB4870.namprd18.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 9 Dec 2022 10:09:17 +0100
Message-ID: <CANNYZj-sXz993sbPS17wssqHM-PPFwBzNg+P=_r4ZEqkkQuzyQ@mail.gmail.com>
Subject: Re: [yocto] Prevent rebuilding native packages on a production build.
To: Ivan Shevtsov <ivan.shevtsov@pixelsmatter.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 Dec 2022 09:09:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58770

On Thu, 8 Dec 2022 at 15:02, Ivan Shevtsov
<ivan.shevtsov@pixelsmatter.com> wrote:
> I want to speed up my production build, by preventing from removing -native, nativesdk- and -cross- packages.
> For now, I clean all by removing tmp, sstate-cache, and some other folders (rm -rf /tmp /sstate-cache...).
> Maybe, it is possible to split TMPDIR, SSTATE_DIR, to place native packages in other folders, than nonnative packages.
> Or place all prebuild -native, nativesdk- and -cross- packages to SSTATE_MIRRORS.
>
> Any proposition on how can I make this best?

Do not remove sstate-cache. It's there specifically to make builds
faster by reusing existing build outputs, and is designed to be
reusable between any build configuration.
Removing tmp is fine.

Alex

