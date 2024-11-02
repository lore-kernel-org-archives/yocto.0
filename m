Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30497E677E9
	for <webhook@archiver.kernel.org>; Sat,  2 Nov 2024 04:46:17 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web10.11495.1730522767085174035
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Nov 2024 21:46:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YR06Yxlu;
 spf=pass (domain: gmail.com, ip: 209.85.208.42, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5ceca7df7f0so267167a12.1
        for <yocto@lists.yoctoproject.org>; Fri, 01 Nov 2024 21:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730522765; x=1731127565; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7ha9xp8alLcP2Sgp1Zg/2qPMg8A2OcHF6D+KX3UGjzk=;
        b=YR06Yxlu8IEZhadiHuWXjI4bz9zSKwCvsLa+ME52Ai/WZSmjrisITdFIxBmzqF1lN3
         oxnQUfgknUwsECjuPSFNbe1zFmwjIx3YA0x/i5vxueEKgyiAzywYU+jln3ck2Gxp3Fm9
         Wb23UYYOv167lwFEaUng7QBEngVm/QZh2NBZP9+qUFdIOj/kD9KuJszlcUtg0uWpjOhn
         DRJwu+Jgp4hfP4pLrPvpsWwnuXHw6uxPccuCKxhY3J+QBRyUG3tIow7EnDrGyndmk2Tt
         FBotHtj0gcFII8X3j9RLYp0NTN75LcCRWJtF00Mfwb22FtNogx8wZ8vryJZa8P8kyjVc
         kKYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730522765; x=1731127565;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7ha9xp8alLcP2Sgp1Zg/2qPMg8A2OcHF6D+KX3UGjzk=;
        b=n3WbIfAsK3TpDbnamg3fe5GOCvBQ9Z+GLEpo7YepKXyPuDCtMAPpyba9fYz75xPOel
         ZumeNy/5nHa0VR6I2GEDPtw0M88jpz8QfhFUcKllLB5S9mm9IVhJHCY3z8Z7nUejP6oz
         e9xCvk4iWxZh/4ekWyl7aTezbECDJrNe//hHRZbkPAjVKq04yAkPPyMh+xegnz4f+g+R
         N34rrwelKZHg1W8HsS3P97eBJUyJJfig164aNSg75d+FQgB3zc4Ck4nfDyia0VhNiNeA
         i0wxKEzHgHDSli35ljC5tjKRgQm/F+qTA/zWyGFbhyH4utZalolTvciqTeTULZsrQSbd
         omew==
X-Gm-Message-State: AOJu0YzRHnHP1xpYJRW/k/GLQ0GJDFz+IZjkPAzHhmujhlq9a1iyTsCo
	dd4HsEfH/QH2Tq9Cw63GhalfVxWrOGOrfBqGdzevd9dgMD0V/eJrvn4UDQ==
X-Google-Smtp-Source: AGHT+IEga9vvhQ4aBhENGJfS2ah9ykb2ZtUU4FVHUHyDyGjK2MYZ/fQalVpxgBJSiulfhi2pDY777w==
X-Received: by 2002:a05:6402:5210:b0:5c5:ba82:c3b1 with SMTP id 4fb4d7f45d1cf-5ceb9364641mr3504492a12.29.1730522765056;
        Fri, 01 Nov 2024 21:46:05 -0700 (PDT)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ceacf1a6fcsm2140160a12.94.2024.11.01.21.46.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2024 21:46:03 -0700 (PDT)
Message-ID: <a3709cd2-ec1d-498f-a27b-cec7c074ee8d@gmail.com>
Date: Sat, 2 Nov 2024 05:46:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Yocto Project Build Failure at do_rootfs Task
To: yocto@lists.yoctoproject.org, rania.taabouri@pixiimotors.com
References: <irzl.1730449968781024214.F2I7@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <irzl.1730449968781024214.F2I7@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 02 Nov 2024 04:46:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64202

The repeated logs about SYSLOG_SU_ENAB and SYSLOG_SG_ENAB don't fail the 
build[0]. Somewhere deep in the same logs there should be some extra 
info about the actual fatal error, that fails your build - grep the spam 
out.

[0] - these are poorly worded warnings/printouts, AFAICT mostly 
harmless(TM). In my understanding these messages are a side-effect of 
0001-Disable-use-of-syslog-for-sysroot.patch, which is applied on 
shadow-native in Kirkstone (but in later releases this patch was removed).

