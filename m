Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D656CC19F2A
	for <webhook@archiver.kernel.org>; Thu, 11 Aug 2022 21:15:51 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web12.3422.1660252544038013786
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Aug 2022 14:15:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=GeGmExGJ;
 spf=pass (domain: mvista.com, ip: 209.85.167.176,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-oi1-f176.google.com with SMTP id u14so14648400oie.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 11 Aug 2022 14:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=2/AmDcfCWjrj9QmJT7vEvIUWDdiux4xnM51MLNKhMVA=;
        b=GeGmExGJmRxhf9lnvIcAeQIM1IVeOT69eJotHuUUE2Zoj3/1KEE62LrjfsVAGEKgN9
         +GdxK6ZkCCepx92oI9RWWk483eysc4aQk5rLe1JFFVlVds5HY6R254s/Uw/uV8K/Mw9Y
         YWgjEWogBV/ZOjsWXP9oGrmC7xpxMxIvqytDs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=2/AmDcfCWjrj9QmJT7vEvIUWDdiux4xnM51MLNKhMVA=;
        b=iayB5m8MOHJzx+F1kzC0YFlEwHEVNsI3Y/xHBqdqWd3tn8zIqpfU6PD82C3iMatFvZ
         A7mN8/Msr6Bnu3WMh0aI30YSOX1NWfLQ6g3jp1J6adwci6b7oRl5rNMHscW0l7JNwBdL
         RlGv/jtkMLPBsYCt7wlMLvt2QcnM8mSjNAhRZGam2MShdG5wM685tL0n+p+oFgdVXe0o
         A/iFB90AfIoW0CHsDVPMipwa9k6S8/AYUPCanGuoJfZh+pRnCeWmg+3xDpg05fbC25LU
         XjFy6jG1OTSBw0tgb4BfNZN3We4jxKWw6KjQCnGNvo2CwzUG0LEIsOqnc39YXtWPW3Fp
         5yIQ==
X-Gm-Message-State: ACgBeo1KuOH+Xxyooa7fAmgA376MFZ3QxiyD98Gm1YCYVHLdDO/I+Tdp
	ddwaufp5UbFXJdtewgWbl5LdNQ==
X-Google-Smtp-Source: 
 AA6agR69cZL5171GR35pd9T5MPGhtytFwy0nalhbca8UB6A1XkRbvXzYdeRs81416ZH8gh6cmkIl9Q==
X-Received: by 2002:a05:6808:17a6:b0:33a:af1c:4fbe with SMTP id
 bg38-20020a05680817a600b0033aaf1c4fbemr442157oib.36.1660252543280;
        Thu, 11 Aug 2022 14:15:43 -0700 (PDT)
Received: from [192.168.1.33] (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 v26-20020a4ae6da000000b004354a4412edsm38576oot.29.2022.08.11.14.15.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Aug 2022 14:15:42 -0700 (PDT)
Message-ID: <f75d6846-b8c9-42e3-6f96-fa491c8d8e67@mvista.com>
Date: Thu, 11 Aug 2022 14:15:41 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [yocto] [meta-cgl][PATCH] resource-agents: Bug fix.
Content-Language: en-US
To: leimaohui <leimaohui@fujitsu.com>, yocto@lists.yoctoproject.org
References: <1659925360-4365-1-git-send-email-leimaohui@fujitsu.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <1659925360-4365-1-git-send-email-leimaohui@fujitsu.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Aug 2022 21:15:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57830

Merged.

On 8/7/2022 7:22 PM, leimaohui wrote:
> Fix error as the fowllowing:
>
> resource-agents-4.5.0-r0 do_package_qa: QA Issue: lib32-resource-agents installs files in /var/volatile, but it is expected to be empty [empty-dirs]
>
> Signed-off-by: Lei Maohui <leimaohui@fujitsu.com>
> ---
>   .../cluster-resource-agents/resource-agents_4.5.0.bb          | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
> index 9349ab9..1da020e 100644
> --- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
> +++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
> @@ -59,8 +59,8 @@ EXTRA_OECONF += "--disable-fatal-warnings \
>                    --with-rsctmpdir=/var/run/heartbeat/rsctmp"
>   
>   do_install:append() {
> -    rm -rf "${D}${localstatedir}/run"
> -    rmdir --ignore-fail-on-non-empty "${D}${localstatedir}"
> +    rm -rf ${D}${localstatedir}/run
> +    rm -rf ${D}${localstatedir}
>   }
>   
>   # tickle_tcp is published under GPLv3, we just split it into ${PN}-extra,
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57792): https://lists.yoctoproject.org/g/yocto/message/57792
> Mute This Topic: https://lists.yoctoproject.org/mt/92884749/2167262
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jpuhlman@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


