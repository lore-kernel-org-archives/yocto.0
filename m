Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 852BAC46CD2
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 05:47:46 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web11.16410.1706075257172343227
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jan 2024 21:47:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=evM6WqBj;
 spf=pass (domain: mvista.com, ip: 209.85.214.172, mailfrom: jpuhlman@mvista.com)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1d50d0c98c3so49025025ad.1
        for <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 21:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1706075256; x=1706680056; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qCVGoxl2pLSX4mNQSOBOri2NYMVXoD91jN8gBJ72JFc=;
        b=evM6WqBjQfoBth79OgnIzFvPvEwMAyhCJhVLMRxumlHgpE2HwdcYLXAiJwO2Iu1j1C
         8+tbYWk50grFhWW8XW6+wWInVI90db1e3Rv2TiRTdWcs4VEj2FT0Fw/4OR8FtP3yLr7j
         ZG4H7c0YA0GR3dDgS1+44OgpqiYw8DVUk8AQ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706075256; x=1706680056;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qCVGoxl2pLSX4mNQSOBOri2NYMVXoD91jN8gBJ72JFc=;
        b=RfPxhMqyjPCvxLWcdq+jgYl15qOe3zFB1AJfSIrWwt+iTxOFw1wYl/ZwduWXeAgLWy
         Vr8QQkb+5GfJ6o7cUflXAY/Plu95m8Pc8OQ+hj2peGB9iJCV5DKQMfrdUgkKv39N/a/I
         07KFAjo33NrOLfIyVgN3xBs5PuPxyxRYVr/qkdMx6JvmdHeY4s8Fn10OwniFfmkxbY9n
         QH3PJEKhJ+qzTslvBG9gagXTc86IM1lG3DJrj4GqPtSbPQIU3Qr8NX3gMcjbRAYhqHHk
         K81XcR9b0AkTlB44vKsVcIkvUcXlx44E2aCSOAC0Goq4DurDOvomKuVGrrs8HQNxJ+uf
         EeRA==
X-Gm-Message-State: AOJu0YyqcCeX88pJ195Xxxze4chFiuqEVzu920MQRmpQDvwPDdkF2f/s
	0v+RRHATGydqAfsNk5lml47aB9I8td0eo1HTBKvWmQS8gCwYcpiItL68pFduH8o=
X-Google-Smtp-Source: AGHT+IH1ksRVbNeK0vSDuQ9zxZtaCCmWGMLK6yAKalTi7ZvAlcFXlOsvjz5Zb7c5Nj+P5wluHU3ZUw==
X-Received: by 2002:a17:90b:e88:b0:290:6152:3ac4 with SMTP id fv8-20020a17090b0e8800b0029061523ac4mr928836pjb.44.1706075256456;
        Tue, 23 Jan 2024 21:47:36 -0800 (PST)
Received: from [10.5.0.2] ([185.211.32.56])
        by smtp.gmail.com with ESMTPSA id nb13-20020a17090b35cd00b002903652cb74sm11615690pjb.40.2024.01.23.21.47.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 21:47:35 -0800 (PST)
Message-ID: <e2269699-d98d-4d60-a507-596d10b60b9d@mvista.com>
Date: Tue, 23 Jan 2024 21:47:34 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-cgl] [PATCH] resource-agents: Fix buildpaths
 warning.
Content-Language: en-US
To: wangmy@fujitsu.com, yocto@lists.yoctoproject.org
References: <1706067121-3182-1-git-send-email-wangmy@fujitsu.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <1706067121-3182-1-git-send-email-wangmy@fujitsu.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 05:47:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62255

Merged. Thanks!

On 1/23/2024 7:32 PM, wangmy@fujitsu.com wrote:
> From: Wang Mingyu <wangmy@fujitsu.com>
>
> WARNING: resource-agents-4.5.0-r0 do_package_qa: QA Issue: File /usr/lib/ocf/lib/heartbeat/ocf-binaries in package resource-agents contains reference to TMPDIR [buildpaths]
>
> Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
> ---
>   .../recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
> index 357669a..a1b6624 100644
> --- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
> +++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
> @@ -63,6 +63,7 @@ EXTRA_OECONF += "--disable-fatal-warnings \
>   do_install:append() {
>       rm -rf ${D}${localstatedir}/run
>       rm -rf ${D}${localstatedir}
> +    sed -i 's,${TMPDIR},${bindir},g' ${D}${libdir}/ocf/lib/heartbeat/ocf-binaries
>   }
>   
>   # tickle_tcp is published under GPLv3, we just split it into ${PN}-extra,

-- 
Jeremy Puhlman
jpuhlman@mvista.com


