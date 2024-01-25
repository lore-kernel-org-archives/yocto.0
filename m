Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 895B6C46CD2
	for <webhook@archiver.kernel.org>; Thu, 25 Jan 2024 02:01:31 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web10.6732.1706148087383670758
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jan 2024 18:01:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=E1HYEj46;
 spf=pass (domain: gmail.com, ip: 209.85.160.178, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-42a446cb1baso16641321cf.0
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 18:01:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706148085; x=1706752885; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KuAbNriQHJA2YGHvMSUuujUNxnPrNq4XLHXzigv9aBs=;
        b=E1HYEj46TLEknxGV+qzTW1fW+1eTlQkBKMe7GXtJTLlveAFpczhQ/jaUYYZLO7nIM2
         MirxJxYgoqRdqz1v7nCo7U2lcWlHhYtcxKERmq/krOL2Az8+AZgSusuSW5nXG46Rui37
         /veJ9b+/pgPMI2WuanTE7JqbA+1SWXDqVMlvllXhMnXuR4iDc9I0I6D4f4vPfR8dmIel
         zXfkvOOVGJ38hPc5eKCb9pz2VSnnju92ywAVG91i+lX6r3bqPwlBJOoPIqKzEM9fFb7/
         YyAtxv29iX3thl6q7aUr7snSyy8TR6WcmxtvaSZk6dSBvvvc7H/0UEiuxyltxspjA4HH
         tPmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706148085; x=1706752885;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KuAbNriQHJA2YGHvMSUuujUNxnPrNq4XLHXzigv9aBs=;
        b=HJfgzC1YvfNmErVAuC/SbZGdDhmaLWVhgjc2KVuWBhKiEuuw8F3A2fhmwcMrEG84g8
         3r4oErUM38u2m9uKIm9W+dD1OCCELxH+YORuwi+Y69d1MjP4JxzThqN1DJXVr5QaVKod
         i2WP2IYvcNSBWskP7md+PTsfVrbmprVs0xv+/uTVzcfNBV2d4PAXSbXVXsEPupgl3nu9
         zkoGstFbBW0eunWylcHBi72tuPwftzAT6IuvxjgL2FGgmVo46V4JpDeQCqt1TmsTKynM
         81/7QrLA5OK//4eUEzpV9Vq77yriY1z37F7xpAloBVJPsf3g1AzcFRa4/9/CdMTQ99Q5
         z9lA==
X-Gm-Message-State: AOJu0YyWpsmwE6YbJ7hIOTXZJnyNo/hGxr17FsoXnwF4i0p05jDsxCvZ
	E5FZX732D1sCE8j8QP/Vlo3Nx61bKs/CaFh8We9dUXec7ZR3KGRC3mXTf8Bh
X-Google-Smtp-Source: AGHT+IEfUL3QuPcm/q8uLuqScs1TVmUrcXImZNCLO8i/7za1kTLDHBMe6gtDrAVwo7g18BziMWQnaA==
X-Received: by 2002:ac8:5812:0:b0:42a:61ae:e1c9 with SMTP id g18-20020ac85812000000b0042a61aee1c9mr258519qtg.7.1706148085241;
        Wed, 24 Jan 2024 18:01:25 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id fy8-20020a05622a5a0800b0042a09928c10sm4971338qtb.33.2024.01.24.18.01.24
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 18:01:24 -0800 (PST)
Date: Wed, 24 Jan 2024 21:01:22 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] u-boot: make rock-pi-e patches
 only for rock-pi-e
Message-ID: <20240125020122.GB23074@localhost>
References: <17AD59E5EC73CFB5.23445@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <17AD59E5EC73CFB5.23445@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 02:01:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62280

On Wed 2024-01-24 @ 12:51:13 PM, Trevor Woerner via lists.yoctoproject.org wrote:
> The U-Boot patches that were added recently are only for the rock-pi-e
> MACHINE, therefore only apply them when building for rock-pi-e.
> 
> Fixes: b5bba3a01197 ("rock-pi-e: apply upstream PHY fix")
Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  recipes-bsp/u-boot/u-boot%.bbappend | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to meta-rockchip, master branch.

