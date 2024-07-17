Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9372C3DA5D
	for <webhook@archiver.kernel.org>; Wed, 17 Jul 2024 20:38:15 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web11.404.1721248688623382645
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jul 2024 13:38:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=PrPgBOvX;
 spf=pass (domain: mvista.com, ip: 209.85.214.169, mailfrom: jpuhlman@mvista.com)
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1fb8781ef1bso1509565ad.3
        for <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 13:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1721248686; x=1721853486; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6l41N1NhQDjW+nfH9OJPKjPpV1fPydPECey94x/4vmk=;
        b=PrPgBOvXwV4HnO8woN+p83glO2ai5f46qJLg7AwUYsZZwYzFnh9wAu/Wbsh3f0Q7Q1
         I03pCAOpIstpQL69Lamn2s2228cY9RybaQZN8bje1P4rvb5XYHWmXrwSjuFQ+lvLlvhN
         EkYPfFeK1oMOVk5bv4szTEteyoonQHZ4XNgnE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721248686; x=1721853486;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6l41N1NhQDjW+nfH9OJPKjPpV1fPydPECey94x/4vmk=;
        b=vkNaB10qE0E+0NZDnD5CSthBIfPedzst8PpDBaJQTo0ruKcM39AcZMepuNqyOaq2ep
         2MgQa31Fu8s5NhSqBKRpjO1oKAtl699fyYfvqBz0us1+WpaqxvRGNmP8FGDb0lnBwCWt
         5HMA8Uz5cgmDWvGpQK6+l8vKpdDks7rnP2F2boFIwJcxIB9MenHdn84HEh6XwOuLxLr7
         XDUL7j5G14x/8RHAD0HxUMiY7iaHFNc4ZmvyLY878TrHdVjMaQlpKECZGdzoJJnI4aDE
         R82SrXgwoI0BznhxW5jO3cp0v3S/aVrLxZtOfZmgzrbdDbx1XdI+DlghCE66Pw/CTkCQ
         WZSA==
X-Gm-Message-State: AOJu0YwoHm7r92uAhFrafQw74IwHFjwx6+m8PfE3TiVHP6UZ1JyfhrxL
	crSSSFU9djfHCPQvdZeEsPmAll6l7puGuvAXAfxkaR0C+o1q5+FORDd1L/ndLbIWSXkKWvK3uaF
	O
X-Google-Smtp-Source: AGHT+IFy5QXi8MAeFdDN3+eUFZrBxHIOB+hqfaymbi68XQBCWapMeH+7psYV4pPn1Z/PlztmGz7akg==
X-Received: by 2002:a17:903:2449:b0:1fb:9627:b353 with SMTP id d9443c01a7336-1fc4e1358ffmr23294005ad.12.1721248686621;
        Wed, 17 Jul 2024 13:38:06 -0700 (PDT)
Received: from [192.168.1.9] (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fc0eea3cfbsm77581155ad.115.2024.07.17.13.38.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jul 2024 13:38:05 -0700 (PDT)
Message-ID: <3ffa325d-b44d-4bf8-993c-91be53059da8@mvista.com>
Date: Wed, 17 Jul 2024 13:38:05 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-cgl] [PATCH] resource-agents: fix Upstream-Status
To: yocto@lists.yoctoproject.org, wangmy@fujitsu.com
References: <1721180407-14937-1-git-send-email-wangmy@fujitsu.com>
Content-Language: en-US
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <1721180407-14937-1-git-send-email-wangmy@fujitsu.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 20:38:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63529

Merged.

On 7/16/2024 6:40 PM, wangmy via lists.yoctoproject.org wrote:
> From: Wang Mingyu <wangmy@fujitsu.com>
>
> Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
> ---
>   .../resource-agents/01-disable-doc-build.patch                  | 2 ++
>   .../resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch     | 2 ++
>   .../resource-agents/03-fix-header-defs-lookup.patch             | 2 ++
>   3 files changed, 6 insertions(+)
>
> diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch
> index f136ec8..9429eb4 100644
> --- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch
> +++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch
> @@ -3,6 +3,8 @@ From: Bian Naimeng <biannm@cn.fujitsu.com>
>   Date: Tue, 30 Jun 2015 16:42:48 +0800
>   Subject: [PATCH] disable doc build
>   
> +Upstream-Status: Pending
> +
>   Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
>   ---
>    Makefile.am | 2 +-
> diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch
> index ca36bc6..75ac8e7 100644
> --- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch
> +++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch
> @@ -3,6 +3,8 @@ From: Bian Naimeng <biannm@cn.fujitsu.com>
>   Date: Tue, 30 Jun 2015 16:42:48 +0800
>   Subject: [PATCH] Set OCF_ROOT_DIR to ${libdir}/ocf
>   
> +Upstream-Status: Pending
> +
>   Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
>   
>   ---
> diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch
> index fb578cb..32454fb 100644
> --- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch
> +++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch
> @@ -3,6 +3,8 @@ From: Bian Naimeng <biannm@cn.fujitsu.com>
>   Date: Tue, 1 Apr 2014 16:20:39 +0200
>   Subject: [PATCH] fix header defs lookup
>   
> +Upstream-Status: Pending
> +
>   Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
>   
>   ---
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63518): https://lists.yoctoproject.org/g/yocto/message/63518
> Mute This Topic: https://lists.yoctoproject.org/mt/107264397/2167262
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jpuhlman@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
Jeremy Puhlman
jpuhlman@mvista.com


