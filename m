Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B05C4167D
	for <webhook@archiver.kernel.org>; Tue, 31 Oct 2023 15:01:57 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web10.951.1698764511775523670
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 08:01:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=GECfPkty;
 spf=pass (domain: smile.fr, ip: 209.85.218.47, mailfrom: yoann.congal@smile.fr)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-9d34b2b51a5so384500166b.2
        for <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 08:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698764510; x=1699369310; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=mG3eQtYJiZC8Jl/1a7tZUgqrZv2/e9BL6zEMKB9Sq+s=;
        b=GECfPkty5x/Tja9MBkg/JKk/GxdnMVQc+9mxRsyU66jGkw21wDEuYjKg4Fi+qGIWlh
         8qE9HZ8hbhohDJfqICXGuYu/3V0RrBjSlLRnIBsq1sOa1FDK+3eDsD/nYtZ/SNoxsJg0
         +R6KsIuPQvovyXSBVebrE5cvhqERq2Q3+cQz1kbceqtrS1eQXV6LutkkoPi7ZFW79EeR
         eTa4O+TmA4Mhlp0jyJFw+7ys7ZAc6GMs2WCnouoYp2e7PkOdpYI28KpQbO5np4Yp6y9a
         y4GjxNhsnMs7cNpF7LdagTOqX05ttaYZv+sjAQy7k5LtNZzWKzHLOkazLGhcFaqDK5Mk
         WodA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698764510; x=1699369310;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mG3eQtYJiZC8Jl/1a7tZUgqrZv2/e9BL6zEMKB9Sq+s=;
        b=BY5WfFy9BRlkg1VXJzTElk45z+oGr/kp5FwqgBL/HQYp89dpq7K8TwzlcOGgXpHo1b
         BA9XntSPfby01n4ecBaWp1QWvgilBa2jcB6WxeJiO6IgSdI/tLM62CERc0/1EKEIHQkS
         01IVqQ25+SfON4+swgGEBZQi0jtcQSjTWc0K8PEdFQWJvzIyBz3BQk7oSdKG7BxE9qc4
         dQ4SEgVv9vJWLfgeyDm0o+zAIZmuZa1ABvAivAwcI08hRuvgLkKrXFz9IF04SrOkLF+2
         uxfM4py19oGeIHRyKNmNeX6PLheoI/BLqRIUwvyWaefVtcqbYh5RpSpJmMXDbPCRTkJ7
         mBDQ==
X-Gm-Message-State: AOJu0YyB4BGzLxo8daaAB2SEZRcgnc08kGo1mmWXVFBnB8cz3d3Pmuhw
	gIds/If8KwSZ2suMIo+xOIC9MAH5MZJZgQMsw0Th4w==
X-Google-Smtp-Source: AGHT+IGbDtwjtd3QnbrjL4cOudL++DJn45bp2GRO9x/OePzsID+ybQkl0r3ZPw5ae1ptHbIigKW3PQ==
X-Received: by 2002:a17:907:74d:b0:9c6:9342:1459 with SMTP id xc13-20020a170907074d00b009c693421459mr10060548ejb.20.1698764509861;
        Tue, 31 Oct 2023 08:01:49 -0700 (PDT)
Received: from [192.168.0.27] ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id ov8-20020a170906fc0800b009b947f81c4asm1101624ejb.155.2023.10.31.08.01.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 08:01:49 -0700 (PDT)
Message-ID: <792d70b2-1587-48e9-ada2-4c0fbb96b7db@smile.fr>
Date: Tue, 31 Oct 2023 16:01:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 2/2] config.json: add
 meta-oe to the metrics target
Content-Language: en-US
To: Ross Burton <ross.burton@arm.com>, yocto@lists.yoctoproject.org
Cc: nd@arm.com
References: <20231031144957.648173-1-ross.burton@arm.com>
 <20231031144957.648173-2-ross.burton@arm.com>
From: Yoann Congal <yoann.congal@smile.fr>
Organization: Smile ECS
In-Reply-To: <20231031144957.648173-2-ross.burton@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 15:01:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61536



Le 31/10/2023 à 15:49, Ross Burton a écrit :
> From: Ross Burton <ross.burton@arm.com>
> 
> This writes the metrics to a new yocto-metrics-meta-oe repository, and
> write the results to patchmetrics-meta-oe.
> 
> There's a great/ugly (delete to taste) hack to hide CVEs from oe-core,
> so this only lists issues in meta-oe.
> 
> Signed-off-by: Ross Burton <ross.burton@arm.com>

Thanks Ross!
Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
> ---
>  config.json | 29 ++++++++++++++++++++++++-----
>  1 file changed, 24 insertions(+), 5 deletions(-)
> 
> diff --git a/config.json b/config.json
> index f3a4ee7..1b3c2b0 100644
> --- a/config.json
> +++ b/config.json
> @@ -1198,7 +1198,7 @@
>              }
>          },
>          "metrics" : {
> -            "NEEDREPOS" : ["poky"],
> +            "NEEDREPOS" : ["poky", "meta-openembedded"],
>              "extravars" : [
>                  "INHERIT += 'cve-check'",
>                  "BB_DISKMON_DIRS = ''",
> @@ -1210,18 +1210,37 @@
>              "step1" : {
>                  "shortname" : "Fetching metrics repositories",
>                  "EXTRAPLAINCMDS" : [
> -                    "git clone ssh://git@push.yoctoproject.org/yocto-metrics"
> +                    "git clone ssh://git@push.yoctoproject.org/yocto-metrics && git clone ssh://git@push.yoctoproject.org/yocto-metrics-meta-oe"
>                  ]
>              },
>              "step2" : {
> -                "shortname" : "Generating patch metrics for Poky",
> +                "shortname" : "Patch metrics for meta",
>                  "EXTRACMDS" : ["${SCRIPTSDIR}/run-patchmetrics --poky ../ --metrics ../yocto-metrics --repo ../ --layer ../meta --branch ${HELPERBRANCHNAME} --results ${HELPERRESULTSDIR}/../../patchmetrics --push"]
>              },
>              "step3" : {
> -                "shortname" : "Running CVE checks for Poky",
> +                "shortname" : "CVE checks for meta",
>                  "EXTRACMDS" : ["${SCRIPTSDIR}/run-cvecheck --metrics ../yocto-metrics --branch ${HELPERBRANCHNAME} --results ${HELPERRESULTSDIR}/../../patchmetrics --push"]
> +            },
> +            "step4" : {
> +                "shortname" : "Patch metrics for meta-oe",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/run-patchmetrics --poky ../ --metrics ../yocto-metrics-meta-oe --repo ../meta-openembedded --layer ../meta-openembedded --branch ${HELPERBRANCHNAME} --results ${HELPERRESULTSDIR}/../../patchmetrics-meta-oe --push"]
> +            },
> +            "step5" : {
> +                "shortname" : "CVE checks for meta-oe",
> +                "ADDLAYER" : [
> +                    "${BUILDDIR}/../meta-openembedded/meta-oe",
> +                    "${BUILDDIR}/../meta-openembedded/meta-python",
> +                    "${BUILDDIR}/../meta-openembedded/meta-perl",
> +                    "${BUILDDIR}/../meta-openembedded/meta-networking",
> +                    "${BUILDDIR}/../meta-openembedded/meta-multimedia",
> +                    "${BUILDDIR}/../meta-openembedded/meta-gnome",
> +                    "${BUILDDIR}/../meta-openembedded/meta-xfce",
> +                    "${BUILDDIR}/../meta-openembedded/meta-filesystems",
> +                    "${BUILDDIR}/../meta-openembedded/meta-initramfs",
> +                    "${BUILDDIR}/../meta-openembedded/meta-webserver"
> +                    ],
> +                "EXTRACMDS" : ["echo 'do_cve_check:layer-core = \"\"' >> conf/auto.conf ; ${SCRIPTSDIR}/run-cvecheck --metrics ../yocto-metrics-meta-oe --branch ${HELPERBRANCHNAME} --results ${HELPERRESULTSDIR}/../../patchmetrics-meta-oe --push"]
>              }
> -
>          },
>          "meta-mingw" : {
>              "NEEDREPOS" : ["poky", "meta-mingw"],
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61533): https://lists.yoctoproject.org/g/yocto/message/61533
> Mute This Topic: https://lists.yoctoproject.org/mt/102298519/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/leave/7785375/4316185/289819188/xyzzy [yoann.congal@smile.fr]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

-- 
Yoann Congal
Smile ECS - Tech Expert

