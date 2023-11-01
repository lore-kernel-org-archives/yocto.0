Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EF80C4332F
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 07:59:18 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web10.1930.1698825552893415639
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 00:59:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=s7WXhM/1;
 spf=pass (domain: smile.fr, ip: 209.85.128.42, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40859dee28cso50427515e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 00:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698825550; x=1699430350; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=KOBI4oS9ASyBVthkjS+epRSv+OQjhxgVehhOJuRkPKk=;
        b=s7WXhM/1lgCfv9Pos4G6OdXV+cu3q1yZQbCqS+VOyXUMwLru8gj9A8QkZsNJOUbiS4
         1+8k/gweA/01jtqsI85sjGNiZFnCuP95k9M3QTWUzCJ7NtDwqDP/y95jln/Cmo4/icuO
         tcbMft1LWOfNoFO3yQdjGya5yOjceLegHA5Kwco1R2nEPtlZBStNLwtCcwg21R4pl5Ml
         NTqWV5UCBBcD5YyNUrk8py0xF5FoBWKfn8bGGIxWS6Z5EdDoIYSnycEnCsqNb1eMw9Yo
         wkUXWJXVRJy8FRoo5DCukkXapQmZzwjoAa5q5yzkzy9rKIoDYbXUbMV8gU1LZORWBOS7
         ejBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698825550; x=1699430350;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KOBI4oS9ASyBVthkjS+epRSv+OQjhxgVehhOJuRkPKk=;
        b=j0OjG5pG8zjt4VwDjhWnVVnb9FI447BSD6vsoRPpsJsSEXRRyDFG1K5zXv7xKMf8UR
         7pvY35Pr+vl39IT1pfTtutSrC1EnVZFH0GDSWOAlVIKzvsuOeTNjadnP6Xfpz09xhXkE
         i84ykqAmAu9TBHXaXvoAfHtIcs18qCly6C9TxaRZmii+mBJVthTvm1qOHoFAxG/NplXf
         LLvISEgMsRpRpkkY8HMfgADGBYeK5P7svEMI5M+XWrWjBc89qX8ErxQQDAsUtFMh7i1M
         o40BNnW6TWECJk4/zypYgDEADoSGroFhFg6nFDTULSVzW7nSKW1QnaUIDGxujWMs4EnS
         FO3Q==
X-Gm-Message-State: AOJu0Yya0gdIPLvr8BuNZBMq64LnUjCFZZtSyri7v7qBN0PnZ7zoRn+i
	gEdeKSkoIlxwCOPkKHHuFxlnGmtMWqrZi4ZNAzs=
X-Google-Smtp-Source: AGHT+IEemTPZC1nQYYfR7JQo5Ac6d66thRGL+/qUdwS1mOR8rdJHPVXk9OAciHFvY5S+ElsnZDET1Q==
X-Received: by 2002:a05:600c:a03:b0:409:5a1a:fe16 with SMTP id z3-20020a05600c0a0300b004095a1afe16mr1246772wmp.28.1698825550361;
        Wed, 01 Nov 2023 00:59:10 -0700 (PDT)
Received: from [192.168.0.20] ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id h7-20020a05600c314700b004078d71be9csm642257wmo.13.2023.11.01.00.59.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Nov 2023 00:59:10 -0700 (PDT)
Message-ID: <7059859c-b796-4b34-99cd-b19773cf4d9f@smile.fr>
Date: Wed, 1 Nov 2023 08:59:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [auh][PATCH 0/6] Extend AUH to meta-openembedded
Content-Language: en-US
To: yocto@lists.yoctoproject.org
Cc: Alex Kanavin <alex.kanavin@gmail.com>
References: <20231101000534.241551-1-yoann.congal@smile.fr>
From: Yoann Congal <yoann.congal@smile.fr>
Organization: Smile ECS
In-Reply-To: <20231101000534.241551-1-yoann.congal@smile.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 07:59:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61548

Le 01/11/2023 à 01:05, Yoann Congal a écrit :
> v2->v3:
> * Split single patch in a series. Previous version was:
>      [auh][PATCH v2] upgrade-helper.py: Add layer command line option

I've just noticed that the "v3" tag is missing from the mail subject. Sorry about that :(

> * Removed short options
> * Refactor code before main patch "upgrade-helper.py: Add layer command line option"
> * Folded weeklyjob-oe into weeklyjob
> 
> David Pierret (1):
>   upgrade-helper.py: Add layer command line option
> 
> Yoann Congal (5):
>   upgrade-helper.py: simplify a condition
>   upgrade-helper.py: refactor _get_packages_to_upgrade to return a dict
>   upgrade-helper.py: extract the inner function of
>     get_packages_to_upgrade
>   upgrade-helper.py: Fix indentation
>   weeklyjob.sh: Add options to handle upgrading meta-oe
> 
>  upgrade-helper.py | 109 ++++++++++++++++++++++++++++++++--------------
>  weeklyjob.sh      |  59 ++++++++++++++++++++++++-
>  2 files changed, 134 insertions(+), 34 deletions(-)
> 

-- 
Yoann Congal
Smile ECS - Tech Expert

