Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9239C2BA18
	for <webhook@archiver.kernel.org>; Thu, 20 Jun 2024 06:41:58 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web10.41539.1718865712702594315
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jun 2024 23:41:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=BVyOWDlE;
 spf=pass (domain: mvista.com, ip: 209.85.214.180, mailfrom: jpuhlman@mvista.com)
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1f992388bbbso4670715ad.3
        for <yocto@lists.yoctoproject.org>; Wed, 19 Jun 2024 23:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1718865710; x=1719470510; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=t0CGacBrE+HtQK1qCpvzsFVZNTRh6bTcD+AhqXRX4rE=;
        b=BVyOWDlEo5GokFbvR3SUteh+g5l9fm4lhA+yVHe3AbXp7+NHCvhndDz3pvQmZSo7Q4
         C6Yq9TS/yGdYauG9FRgH93zP1gZiLXX+sDvgy07ZCWLMhaHBhVDrnKt46PNbLEWK4Bap
         pZpJMjPXZh/o+JHwjFBpvFxD6QXWx03zVk3DM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718865710; x=1719470510;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t0CGacBrE+HtQK1qCpvzsFVZNTRh6bTcD+AhqXRX4rE=;
        b=Gite9m9aNAkFRYFF5bANY6as8UULxIqpbhQegupnoU7uMkVTL7BfyuR84WBi2XPVDV
         cb0TKM5RMv57PdL2hVd4e0yxs1eKF3NWF37EzOJUS7sRH8MBbuihnHkOsP4Vo8veRcDV
         CNUoURFyxZXLg0mK2V9YE908WWPf61+NMkz6bK69J+pxVBGvTOYh92iQAn9uDlKftKO3
         PPYGAHyJyP41ZpcCLtmaF2wS1T11wpuSadRjnW1UTN7clPevuiOH4bH3FQ6Tn0FBFKhb
         r78ihd5UTk6t7NjlSBj+Z5EKzUlI9vIS3GcckYy5fDdQxp5cL21IKmJKE6NnZWGbGMam
         n83Q==
X-Gm-Message-State: AOJu0YxN82IRxnNFbacicxoy74myVSFSHE8Nonc/cxTi8ZAGU3XDHYC6
	TiTXVlE4L5jSo5cJVWKrkcdyKFAL5h6mJ6A4orlRicJOIc3oySO/vuuClwbqiG9TUYcebtrQyVQ
	Y
X-Google-Smtp-Source: AGHT+IGNmg7Vnsprxo2RzSv+kU/hWQY3lThr9f+0Hl0r+iF8hB4s0TVc4N7gSLoM37kf9KTSa9IzXQ==
X-Received: by 2002:a17:903:2288:b0:1f9:d551:c848 with SMTP id d9443c01a7336-1f9d551caf2mr2957465ad.53.1718865710252;
        Wed, 19 Jun 2024 23:41:50 -0700 (PDT)
Received: from [192.168.1.9] (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855f1a1ebsm129185395ad.238.2024.06.19.23.41.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jun 2024 23:41:49 -0700 (PDT)
Message-ID: <1e0f76e9-eec4-4dbd-a32e-8cf33aac0690@mvista.com>
Date: Wed, 19 Jun 2024 23:41:48 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-cgl] [PATCH] cluster-glue: Start WORKDIR ->
 UNPACKDIR transition
To: yocto@lists.yoctoproject.org, wangmy@fujitsu.com
References: <1718611961-8782-1-git-send-email-wangmy@fujitsu.com>
Content-Language: en-US
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <1718611961-8782-1-git-send-email-wangmy@fujitsu.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jun 2024 06:41:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63369

merged.

On 6/17/2024 1:12 AM, wangmy via lists.yoctoproject.org wrote:
> From: Wang Mingyu <wangmy@fujitsu.com>
>
> Replace references of WORKDIR with UNPACKDIR where it makes sense to do so in preparation for changing the default value of UNPACKDIR.
>
> Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
> ---
>   .../recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb           | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
> index e3aac57..aed8be6 100644
> --- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
> +++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
> @@ -62,9 +62,9 @@ do_configure:prepend() {
>   
>   do_install:append() {
>   	install -d ${D}${sysconfdir}/default/volatiles
> -	install -m 0644 ${WORKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/04_cluster-glue
> +	install -m 0644 ${UNPACKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/04_cluster-glue
>   	install -d ${D}${sysconfdir}/tmpfiles.d
> -	install -m 0644 ${WORKDIR}/tmpfiles ${D}${sysconfdir}/tmpfiles.d/${PN}.conf
> +	install -m 0644 ${UNPACKDIR}/tmpfiles ${D}${sysconfdir}/tmpfiles.d/${PN}.conf
>   
>       oe_multilib_header heartbeat/glue_config.h
>   }
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63349): https://lists.yoctoproject.org/g/yocto/message/63349
> Mute This Topic: https://lists.yoctoproject.org/mt/106717032/2167262
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jpuhlman@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
Jeremy Puhlman
jpuhlman@mvista.com


