Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BE1FC433F5
	for <webhook@archiver.kernel.org>; Wed, 15 Dec 2021 07:39:53 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web10.37554.1639553991972592838
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Dec 2021 23:39:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MgbZVktn;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id
 o19-20020a1c7513000000b0033a93202467so15340436wmc.2
        for <yocto@lists.yoctoproject.org>;
 Tue, 14 Dec 2021 23:39:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=YK/mQKKlTOzdePuz88j2m3/eSfjMWU2h5aA6E3WQiUQ=;
        b=MgbZVktngyIS4beJR5vPlC01+mMK+hrBKPKmD1LP8YnyX3Wi3dfDzZHkp9T2uxLLN8
         sDkDDuGtQpZtS/lsiw2uvRdncAR1L3l3nq8Ylog0oGUCGdTX1BrnNuTiHDNy69Loo7gS
         ursS8QrMzTTAJVAVsFcSsPNYMhsXH76YG5JVQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=YK/mQKKlTOzdePuz88j2m3/eSfjMWU2h5aA6E3WQiUQ=;
        b=nxnNSNnA5nIKq3ecDa41Ds1lYf1x/2Cr14hoVFlCv9PTEgHHgRk4d7EBZzazBFFQ/Q
         eihAa649SXsEtFo7/755xrecrY0/7q+XgPUOZiNs9IYsT3PbeLxZNEgFAdDURLm6fiLf
         tO8M7vUm/NpTpA8MUYZiOJ5akKkH42evub4bhNGtksHHs1yK6lPUGScqxAEwMmTjPdsf
         lUvJknquwlUZQCmj75sCL/J3n8B84p2yiwLelFpFlOQoTq90kvv3WEiAf3OYNQjue5hP
         KsfHMe9dyrkth0lrupOlYyK/joAxj5Mab3g7aDN/uX4iYcK5GpcR1geHLotp7aKg1rAS
         ASdg==
X-Gm-Message-State: AOAM532HKvlL7BsSTooRnjN+1P530F597qfASQF9WY/gMnYrRuaC1Shm
	KAFlYHFds8NMM+9jxDDePVkdGYMcUS1SBQ==
X-Google-Smtp-Source: 
 ABdhPJwKGTowNe3oIFTX2fsrp7adiGrTAe372YPi+7HODmIk0Mx9EDKqWqRDiXtldl6gstpfafx9Xg==
X-Received: by 2002:a1c:f20e:: with SMTP id s14mr3325532wmc.186.1639553989849;
        Tue, 14 Dec 2021 23:39:49 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:2b14:c5c3:9b57:7e5f?
 ([2001:8b0:aba:5f3c:2b14:c5c3:9b57:7e5f])
        by smtp.gmail.com with ESMTPSA id
 m3sm1138495wrv.95.2021.12.14.23.39.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Dec 2021 23:39:49 -0800 (PST)
Message-ID: 
 <99e75b930d85e240c51074406b0cd896c93257cb.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.1.13.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Wed, 15 Dec 2021 07:39:46 +0000
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Dec 2021 07:39:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55592

A build flagged for QA (yocto-3.1.13.rc1) was completed on the autobuilder and
is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.13.rc1


Build hash information: 

bitbake: f18b65d0b9a6b983d53bde491e1bf2ca56949444
meta-agl: 6d1ab9f3bb270a773ec5d2f7c8c856796833b559
meta-arm: ce535dfb96de4d2529f091d7d85a7172c626001c
meta-aws: 9979cfa676105cb68cfadfdaeabf044d7c919319
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 87984115eb6ed1a4c17204629dcb100f6b76fe82
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: 69f94af4d91215e7d4e225bab54bf3bcfee42f1c
oecore: 90a07178ea26be453d101c2e8b33d3a0f437635d
poky: 795339092f87672e4f68e4d3bc4cfd0e252d1831



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org




