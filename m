Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E6E7CD98C5
	for <webhook@archiver.kernel.org>; Sat, 13 Jun 2026 12:05:23 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.89721.1781352315493316497
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Jun 2026 05:05:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=HkCVAauX;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-8ccdf8d4ac5so22238216d6.1
        for <yocto@lists.yoctoproject.org>; Sat, 13 Jun 2026 05:05:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781352314; cv=none;
        d=google.com; s=arc-20240605;
        b=ITjf275y+3Bz9X+/oNyPUcOm58Ett2EKrp+V7g4pvMFn51mM19j/3z+n5SRoZxruVr
         PJXPJNTbjdbj0LeQiOoz95U+hRL/c9xxsCpb0toycQvdPS1m7/NXNmb1T1qAn+XeG5QT
         QGg/PJwcbozEzJMvj3ooT+qF3wEF0ff9Xanm0KwuhdYIZDOl97FVjK5c2ja2MODNy0SC
         GfyorUx7Uk6EV7Gzillsu8OBWM3Dggbc1Tx2Or0jbUQMpg+3xRTyjRwwV1JbH1/waB8V
         AB5cCEMUWfaZf5gk/BCwRSbLDw5E9aGFjAEqVcV9aOKwo7H/6waOLwC2yT8xNiHEhH9M
         6gHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=F/AWqqUMxVJQ/Xiv3yrPeafYeOsXeLwfswVKxwYSsBs=;
        fh=LQoVKqdWuINPJOwL9L0DpzK653EJ5TSw+Y0C0FVQPks=;
        b=BBo8orq4JZ2zP0k5qFlBcUyZNvMo0pZ3AsoljITLQSnf7VOz1KIDXNxd2lt5b/rQHT
         1oWgj4QazYjV4F0WWjh/eQJKLSSUClaMmryyEE9eqbZQf0eDXSpahxbY+S2rr+/Ftjm5
         NdzFUV2w6/S3FFePeiYL2YlCihYiyefPtkOkXJX4z4ezY5rKasM83loV8/vgSj0txomW
         a6Sn6G9ZDMFVbwH1GndamI0y9QO7ZsR4NcHfB3+zkFjJXfVmG/TnW+dz3NbTDukmy/GE
         a3M15Z6nD0uq7MX4BnsZ68HjMhzyoUDYAOgyq114IVfuCC4RP9xY9C6incu1xrXPtDI7
         Vbxg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781352314; x=1781957114; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F/AWqqUMxVJQ/Xiv3yrPeafYeOsXeLwfswVKxwYSsBs=;
        b=HkCVAauXmq6X8Q2prIRUzt/uzmIpqb5Ps+seaDxTAwWJEx3V+IthgmsSP7kqD+GEsE
         SM7s42qkeOWdBIlXYSuet8kCw+MppZvnVePwN/8hT3bDVrjcb9/wkPMtw3rteKou0TSj
         tSUentxE++wG/FqtxTtyXyLQ4uTlaoB7PaQzv7IakHgfrUSArkXW1JoP1hn0e2v9y9Tm
         Exw6+PVqsHZwln2QM7Tw/UtTrL3OnEFeZjEQ2+QCu0KZsOH/+rMzb+pylaVgbnFPRVqh
         mAn4HiPP0dbfy/FPGmD94UnkK4W2+ANHDPsOj1ucuSCn+NY4v5wzobVil4s27kBtJMB9
         pGpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781352314; x=1781957114;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F/AWqqUMxVJQ/Xiv3yrPeafYeOsXeLwfswVKxwYSsBs=;
        b=rlAalpyndQmShhoofiten8Xty5TQkh19T4RmigiWISe24ZYPgMmf5cWLC+qCCBttbz
         xCqeyI7yde67YdxRIU4nU5PBJ+znsX859RofDAA0zA/pW1ohZW3jbfu/4Ap/WtZB0Vsc
         qpU2uOFEEpTaqgQgk9qVjQRaNzodNIuywZvwW8PafaJheEkblHpYjs3ofAfjESNlVUQ3
         HWAeB24IvoT0Q5GM5EI2GWc2wLk35yrvIgboc9+VZcH0pU+UuuySJxmGSvUz0+RhQbkI
         uGf0HmWMkKHFVxEi5aIIo5MjOU2VJOcJwumNU7vxi7UKscfVxhzFYUoDLH8uMuhnc02Q
         9AQg==
X-Gm-Message-State: AOJu0YzvhlC3kK5TV8URG04VfWFD/77aRj5M6r4j3d9nkA6ImstTkXS9
	lHMCno5YBC+hfch8675fapg8aNdNPqAN2BPOaDcOjUhmtRr/1wwtlLX+691ahEA2bGnfsxlE6ep
	zfP1vpsjbEmR/w1YzIUyuq1eGQOwbI+XzLg==
X-Gm-Gg: Acq92OETxbeE+/280fnElZFQy+Pzlh2KuNfGQLcCGqW6dlvwgM+eNvbm4UYk9ooCrcp
	ClYtHV1iLpUvLZE+pKv6D/snh0zPxdPyroGWdkB88he+GKNYIIPsZjD1+vrDGYIYnED0OOmoEMM
	j4hymLiNg25erTyspL5oIvs2zN8dF2AIvjc5VRG4KjHKGPE2fb37CF/s9dqsNotS4k6tHDzrFQx
	0Yr0YMm1IKljDYCeubIUxvzoO7LJLr/WG2XExpVRFrQ4T61UiPHKVfTZnCLzUpbENCiYH7x/G41
	lDeueyTjq9Q4ztQd0vGdQc78urutsbYzLoSi5E0wtg==
X-Received: by 2002:a05:6214:3bc8:b0:8cc:e965:a562 with SMTP id
 6a1803df08f44-8d32d85622cmr130748556d6.25.1781352314379; Sat, 13 Jun 2026
 05:05:14 -0700 (PDT)
MIME-Version: 1.0
References: <jddA.1781283483361370115.0k4O@lists.yoctoproject.org>
In-Reply-To: <jddA.1781283483361370115.0k4O@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 13 Jun 2026 14:05:03 +0200
X-Gm-Features: AVVi8CdA7uStV8ZqAjFl0zrJtSNZvYWV0MsfSye1TerUgtpdSGW4LkGmrTvLHh8
Message-ID: <CANNYZj_R_gHGezXigG37-+Ak+5i=WVgyJrGeWsdXd+mfWBNigA@mail.gmail.com>
Subject: Re: [yocto] Yocto Lens - Static Analysis and Style Review Tool for
 Yocto Metadata
To: yocto@lists.yoctoproject.org, diwateprashant44@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Jun 2026 12:05:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66596

On Fri, 12 Jun 2026 at 18:58, diwateprashant44 via
lists.yoctoproject.org
<diwateprashant44=gmail.com@lists.yoctoproject.org> wrote:
> I would appreciate feedback from the community, especially regarding:
>
> false positives
> missing checks
> Yocto best practices
> CI integration ideas

Hello Prashant,

I was wondering if you could use the tool with
oe-core/meta-yocto/meta-openenmbedded layers, and demonstrate what the
tool says about them? Are there lots of false positives? Maybe it
discovers real issues that could be addressed?

Alex

