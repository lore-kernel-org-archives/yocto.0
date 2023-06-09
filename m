Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D7E8C7EE29
	for <webhook@archiver.kernel.org>; Fri,  9 Jun 2023 16:43:11 +0000 (UTC)
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
 by mx.groups.io with SMTP id smtpd.web10.223.1686328982881029784
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Jun 2023 09:43:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=jatrOumg;
 spf=pass (domain: gmail.com, ip: 209.85.161.45, mailfrom: twoerner@gmail.com)
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-55b5472ab85so512771eaf.0
        for <yocto@lists.yoctoproject.org>; Fri, 09 Jun 2023 09:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686328982; x=1688920982;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UvkdnaGELFAFgUIuFqQKUL7va1RoGjjrBB4bD2UTXbE=;
        b=jatrOumgTRbaY4uqPN/jB2wv7aUoVn508wDNtAUANqHM8d/QHGvFbEMOFBOVo5T40l
         bC49iCzqv6F1q+UeUawGFOXjH1ktRHl5mNtlXwjBYLBiE7LUkIEfgvxjiyfV4gkagvgN
         zbV4qrT1BvEwwWlJ/CVRjYBlMihjtEROa4kJm4cmGg880VzaZqHYLimsc2fbAuBb0yHK
         /C95VEpdkVxLgWgBpjBUHIG5eqN09youw/quKiVL2SbJhG2Dnhgytl1/rHRMRjKbIt9O
         vno0C993QyHEqbXycGUOQEj4A+A34kvbfewXi2qepUa7bR/KfTSJpP+w44yOfXVoqOvu
         7Lzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686328982; x=1688920982;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UvkdnaGELFAFgUIuFqQKUL7va1RoGjjrBB4bD2UTXbE=;
        b=YmNX9JH1FfCWv5BBQsWYwDfcrnaAF/SW2AAVSKXSc9RYAKxHMsJFa1+kmyDP0Fi/x+
         tq/gMAfEVUOkj/+iBzA9yYAVUKj2Fod5LZYM0mJpsBjPv7eI2LxchFFsXj5yTARqm0Jw
         zpxplV8x+dtUZcjfuCsVr+8pi2MpTUfEUiNZpyhp0fJQ2pOO0KgQmmrYLn6jrQTSqM3I
         /5kMUJUlZSgb3sqgl+U0jDS5q0KraZVkmRbBXnmDdaEmMpBhROhl2sVHXkA1L6wGnS7u
         y5oFqTpqjlgmXcOwdFRwMUGjEh9FWmKjanukqXVcVG3tkDUgSjuhOq8A4NW6T6joU0bB
         8vZQ==
X-Gm-Message-State: AC+VfDwXYh+KU0u9tTjE2qGQwGhyHaJwXXCzP8sonzoFxOAEA3EHJR0K
	bx25NTZ9aaSuf09d17tF5o4=
X-Google-Smtp-Source: ACHHUZ6qiq0rc8CK36aXwHja+Bi6aFBTcVUS2NnDc8aCTZ8z7boUHHcONj1iTfvG4VJd0KlGRLHcmQ==
X-Received: by 2002:a05:6808:dc2:b0:398:2323:c6fa with SMTP id g2-20020a0568080dc200b003982323c6famr1911671oic.38.1686328981901;
        Fri, 09 Jun 2023 09:43:01 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id t15-20020a05620a004f00b0075b2809ee8csm1109418qkt.136.2023.06.09.09.43.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 09:43:01 -0700 (PDT)
Date: Fri, 9 Jun 2023 12:42:59 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Witold Lipieta <witold.lipieta@thaumatec.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip] [PATCH] mesa: Enable Panfrost for PX30
Message-ID: <20230609164259.GA30064@localhost>
References: <20230605103639.10555-1-witold.lipieta@thaumatec.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230605103639.10555-1-witold.lipieta@thaumatec.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 Jun 2023 16:43:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60241

On Mon 2023-06-05 @ 12:36:39 PM, Witold Lipieta wrote:
> PX30 has Mali G31 GPU and needs Mesa Panfrost for graphic acceleration.
> 
> Signed-off-by: Witold Lipieta <witold.lipieta@thaumatec.com>
> ---
>  recipes-graphics/mesa/mesa_%.bbappend | 1 +
>  1 file changed, 1 insertion(+)

Applied to meta-rockchip's master and kirkstone branches.
Thanks!

