Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42BCFC46CD2
	for <webhook@archiver.kernel.org>; Tue,  2 Jan 2024 20:02:24 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.507.1704225733564676641
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jan 2024 12:02:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=hJ2TydVH;
 spf=pass (domain: smile.fr, ip: 209.85.128.54, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-40d5f40ce04so52206055e9.2
        for <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 12:02:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1704225732; x=1704830532; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ee5FmEliy37XW55F8Wp7rOImxupaE2t2I6Xbfm0eIiU=;
        b=hJ2TydVHcVgsUsWeyhq1KdOW5aQBNc4RsF1dqVPNfYfW0NYHhOynOiruaewxL3NiVW
         BjC6pXMw0bIsglbyNkEzA1uKNArY/nghKWgnfn2CJ6B+7gjsALSdudvNAz6YEuvZtbjp
         8ZZ2DI1dFHK8B7jA8ly6e5PaiXft3LXn6kno9T8MRKsRjLBusNEjLHpBL333F+eISfiD
         LXzkLabKzouxITIy4hcGzqRUhMXXf9rT3nf4lTxCVEKO7QV51OvPT/E5RdioEtI0BUx1
         0qyFyGrd75j9ldUSOgNj/7QawG5HweZWKxS4RWQTSPFnK4LE+KpMXr1t4965FAMpWydb
         Vzmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704225732; x=1704830532;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ee5FmEliy37XW55F8Wp7rOImxupaE2t2I6Xbfm0eIiU=;
        b=QvsYTWr5xUC6cHftInjDsEXL3RF/oq6mwmtgNNs8/qQ6ngiQuy6ceKgYg1wX1r5hrL
         5ccMBLcfuZ3a011q+BK3hawrc6kykl0QqBqLfJuahsB5cF8RRegmpPAX55KjWXOr4i1q
         yCu5VgWi5ujv8mMbcjx0SdLjXNSRsWBWFDiw8lyZ37HvsmblgL7ZBrA/b5dseKhcXUcN
         RktpNcufdOUvEC/Z5bBawlTMD4kzHUeoRlFByy3Z0Tx9zVacVw9U++VrGsCjoFIwaAhu
         p7a64HK00rTKiuVCPXikL+O7GE4u/2yL3wjjXKQrjBKWt81CmlxIebqSKEDBMZLCTSbU
         NR0w==
X-Gm-Message-State: AOJu0Yx8xb6Vx/Y/S3I64vz2/yewGD7XGQ8tyxNTDSz3wxEP9aVD8aKY
	5vWAbvyGmp6GfV+YETLBxc5cVyay+Q1cJg==
X-Google-Smtp-Source: AGHT+IE6t6Ht7416d3OLUC3vKDZE2NayZXTGWdYz0mmRf3HT0j1zssnf8lhw8IuQBeXFoPyl7BhZUA==
X-Received: by 2002:a05:600c:5189:b0:40d:888a:afe2 with SMTP id fa9-20020a05600c518900b0040d888aafe2mr1986265wmb.102.1704225731877;
        Tue, 02 Jan 2024 12:02:11 -0800 (PST)
Received: from [192.168.0.28] ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id az41-20020a05600c602900b0040d8cd116e4sm3384984wmb.37.2024.01.02.12.02.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jan 2024 12:02:11 -0800 (PST)
Message-ID: <0b0c8852-0640-43a1-8cbe-b43e3c95e560@smile.fr>
Date: Tue, 2 Jan 2024 21:02:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [yocto-autobuilder-helper][dunfell][PATCH] config.json:
 Make meta-oe source mirror config wider coverage
To: Martin Jansa <martin.jansa@gmail.com>, yocto@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <20240102180706.41264-1-yoann.congal@smile.fr>
 <CA+chaQdbD+zjYtjh9sRmC1ukA93o9wkKN2bTjd5eAfisN8fe-w@mail.gmail.com>
Content-Language: en-US
From: Yoann Congal <yoann.congal@smile.fr>
Organization: Smile ECS
In-Reply-To: <CA+chaQdbD+zjYtjh9sRmC1ukA93o9wkKN2bTjd5eAfisN8fe-w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 20:02:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62068

Le 02/01/2024 à 19:10, Martin Jansa a écrit :
>> Backport: new->old override syntax
> 
> FWIW: dunfell is forward compatible with new syntax, so this shouldn't be needed (other than the consistency with other metadata).

I did not know that. Thanks!
Either way, I would use the old syntax in this case to match what is documented in local.conf template, recipe comments, etc. But it is nice to know :)

> On Tue, Jan 2, 2024 at 7:07 PM Yoann Congal <yoann.congal@smile.fr <mailto:yoann.congal@smile.fr>> wrote:
> 
>     Some recipes depend on DISTRO_FEATURES, commercial licensing or compiler
>     config like fortran. Set these things so that we get wider soruce mirror
>     coverage and fewer warnings.
> 
>     'commercial' license usage is ok here since we're not building and then
>     shipping any binaries or using it, only mirroring the source code.
> 
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org <mailto:richard.purdie@linuxfoundation.org>>
>     (cherry picked from commit 93d47af8abbc6558f9a098a0c7fa6c0e901424a9)
>     Signed-off-by: Yoann Congal <yoann.congal@smile.fr <mailto:yoann.congal@smile.fr>>
>     Backport: new->old override syntax
>     ---
>     This should fix the warnings of the AB meta-oe-mirror/dunfell builds
>     ---
>      config.json | 6 +++++-
>      1 file changed, 5 insertions(+), 1 deletion(-)
> 
>     diff --git a/config.json b/config.json
>     index 3520e9a..1a92c80 100644
>     --- a/config.json
>     +++ b/config.json
>     @@ -1100,7 +1100,11 @@
>                  ],
>                  "extravars" : [
>                      "PNBLACKLIST[dvb-apps] = '1'",
>     -                "PNBLACKLIST[tvheadend] = '1'"
>     +                "PNBLACKLIST[tvheadend] = '1'",
>     +                "LICENSE_FLAGS_ACCEPTED = 'commercial'",
>     +                "DISTRO_FEATURES_append = ' pam systemd usrmerge'",
>     +                "FORTRAN_forcevariable = ',fortran'",
>     +                "RUNTIMETARGET_append_pn-gcc-runtime = ' libquadmath'"
>                  ],
>                  "step1" : {
>                      "shortname" : "Sources pre-fetching",
>     -- 
>     2.39.2
> 
> 
>     -=-=-=-=-=-=-=-=-=-=-=-
>     Links: You receive all messages sent to this group.
>     View/Reply Online (#62066): https://lists.yoctoproject.org/g/yocto/message/62066 <https://lists.yoctoproject.org/g/yocto/message/62066>
>     Mute This Topic: https://lists.yoctoproject.org/mt/103486578/3617156 <https://lists.yoctoproject.org/mt/103486578/3617156>
>     Group Owner: yocto+owner@lists.yoctoproject.org <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub <https://lists.yoctoproject.org/g/yocto/unsub> [martin.jansa@gmail.com <mailto:martin.jansa@gmail.com>]
>     -=-=-=-=-=-=-=-=-=-=-=-
> 

-- 
Yoann Congal
Smile ECS - Tech Expert

