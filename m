Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B9AECCFA13
	for <webhook@archiver.kernel.org>; Thu, 26 Sep 2024 09:50:15 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.38717.1727344200434505164
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Sep 2024 02:50:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kQig9uLx;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2f7502f09fdso7075001fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 26 Sep 2024 02:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727344198; x=1727948998; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zYROsAln9BotrvVTv3j+rJYiDuttgaAgBEqiQbghEI4=;
        b=kQig9uLxL2BMOJ0rnZw4OfJfg3O0MJhhuM5ytRUjZ2OSnSEFlkGW10nmlPRJh7zsEf
         Iw4u/2vXUzhiKZJAovQ3o0z7hrsIZZl2++Hlsq3Q5nL5ilBcyLN6+gGIgkjGzPOeG1X/
         zvgkZj+mPoLuas0/h2onT8myk3hXN4BNCESkBLOypmV3vhAARXlko3X4Qq20AaI0q4Ya
         pUDsCHJ8So0VO7BcyF/otBEYjaqFCN+vg3dQHrNPpNOM/S17xu5rkP5mP1LqrE97qkHl
         rL8xraUdMjUOVLP/RTE2KCc0LdIQDYQHGisQVR7QUUrcTbOBFHcRavVWt8Vv6qP7eC8o
         ySdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727344198; x=1727948998;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zYROsAln9BotrvVTv3j+rJYiDuttgaAgBEqiQbghEI4=;
        b=OHxT3M3d66vRp4Eb2f3go79dPLkHAnfiNpNvsfPORl1d/7zIg1LBFqSjnexoJS62HP
         hShDiSz6yXSBSyzlxFvTEFaPXPdawZvxLSZw5aFMfRU+qCSPEOQi1AwLL0omyqj1zP0R
         MbqTd3Hb/sS0mxZClfFsR8GoGuzS40WhCvh0aQ6iFqJuwXAfffUjP5mV1KdL0RoTeuzV
         Erd0Lx3UbJJw9NATNjg+tXTl6AY0u9shqKl9s8bs3R8SRNfYQqETMcXUHKJhNt5ekyNV
         ldLtoU6fbwlcWbc1N+zYJtoaqAupt7zcBdnyTWAapAG4h3Ef3W2B4/fqJnjbQX2LZkfX
         7bDw==
X-Gm-Message-State: AOJu0Yxm0ekAEbQVzXowI3efKcJM3jwHuiFWZegm3ZkoeAXV5alf22DY
	JhLkHr3rnRRCG+/PUEL986E4HGF8iCp8pOi4aB+NYkyABccAtiZPkhP6ODkkuGMBLpL5Eyt83lE
	1w3bjDJtE4+qoGytftWyZ9sovBRSPww==
X-Google-Smtp-Source: AGHT+IHBFoHWfciT2rzJWEEJ4juYZNezy+ao544eaOm6cj3m7jNMMwxWHwuvWK8FcSnhUtbJcqacIxy5Jpt2GMRUee8=
X-Received: by 2002:a05:651c:19a9:b0:2ef:1c05:6907 with SMTP id
 38308e7fff4ca-2f9c6c37fd5mr10987621fa.5.1727344198336; Thu, 26 Sep 2024
 02:49:58 -0700 (PDT)
MIME-Version: 1.0
References: <jSFp.1727320167454925028.4fOt@lists.yoctoproject.org>
In-Reply-To: <jSFp.1727320167454925028.4fOt@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 26 Sep 2024 11:49:47 +0200
Message-ID: <CANNYZj_nfD=n7MfF_QJLTJZ7abwu1MF66jedoKhBf4tdO=v-Vw@mail.gmail.com>
Subject: Re: [yocto] Question on the sequence conf file parsing. #yocto
To: yocto@lists.yoctoproject.org, yanmei.guo@boeing.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Sep 2024 09:50:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63893

On Thu, 26 Sept 2024 at 05:09, Guo, Yanmei via lists.yoctoproject.org
<yanmei.guo=boeing.com@lists.yoctoproject.org> wrote:
> Trying to understand the sequence of conf file parsing when bitbake is running a build.
> As a typical yocto project, we generally have local.conf, bblayers.conf, multiconfig/xxx.conf and distro.conf etc,
> serving for different purposes. Is there a defined sequence in terms of which conf file is parsed first, which is last?
> Especally, I am interested to know if `BBLAYERS` can be appended conditionally depending on a variable defined in a multiconfig file.

It cannot. Perhaps it would help if you explain the use case. Why do
you need to include a layer (or not) depending on some variable? What
would happen if you simply always include it? Can you create two
separate build configurations, one with the layer, and another
without?

Generally it's a sign of badly written layer if merely including it
causes unwanted side effects, and that's the problem that should be
addressed.

Alex

