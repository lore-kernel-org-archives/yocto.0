Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DA6AC433F5
	for <webhook@archiver.kernel.org>; Mon,  3 Oct 2022 05:08:08 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178])
 by mx.groups.io with SMTP id smtpd.web09.15798.1664773679928545769
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Oct 2022 22:08:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=c/yWWOL1;
 spf=pass (domain: mvista.com, ip: 209.85.167.178,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-oi1-f178.google.com with SMTP id v130so10355112oie.2
        for <yocto@lists.yoctoproject.org>;
 Sun, 02 Oct 2022 22:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=6nHXezpVlyeFG1+t8vphSe5tsNWtNmWAtVia/NZVOUM=;
        b=c/yWWOL1TNtZk5YgEhK5hAuckWwfx2SoygmqmkXubVa4qNtrRzwOrMDT1xrcLM//e5
         lr4yyMxVOWklkmLCS3XVPCiaYCz4zweeGT4X28XOdfj+HSXvkgGHiU8cUpRzGkr5M+w2
         JJRXjFJLOmaQeXO8gOg2h/ag8QYvWSRK7Jrn0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=6nHXezpVlyeFG1+t8vphSe5tsNWtNmWAtVia/NZVOUM=;
        b=5aDeYlaRMrF7jgOMwQAu+oQ9SMFgVscApqqu2NqFyTL1nHOKieCaBrw7WhQ+hPuMyj
         rMDdL1PPWt5SpXf8VIA66niBMeHJI/tUmWIYGCTE1VHbwS1f1xVN9FzNetP5WJUIxXVn
         Ry80CkOr8pKp7rTqXWOTSaLuM1jrpzMMsUVqld/qLk8V62GQZFBFjJBNoJsmv4RsyUK0
         1j/0n0Mey+jL2dcZPBxyItJTw2gBOGJgSdQGn5yBDy+A35m4HdMCiGy1SL5BkzO/kq7p
         Q9rZGUmrRej+x8rszys6eZkjojg06BkP7FTkpVtYy9SamsEY+k0LwuzwU09cDCyopXJa
         82+g==
X-Gm-Message-State: ACrzQf0C8h+3dkfRvhKiUde+BHoioAC8271uA+NCAjoIs6mQtus49Ef4
	tbFeyKT+iPhTiVcEjID0uNAXNg==
X-Google-Smtp-Source: 
 AMsMyM7MgPoBkhG99kxV6TlyuD8dcfbLhR9NC5yP3c1RuzPNBlirnh+Yqp23jOeLCF2kIk50YUTTPQ==
X-Received: by 2002:a05:6808:d4f:b0:350:9eed:413b with SMTP id
 w15-20020a0568080d4f00b003509eed413bmr3614735oik.235.1664773679118;
        Sun, 02 Oct 2022 22:07:59 -0700 (PDT)
Received: from [192.168.1.33] (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 e1-20020a9d0181000000b0063b2251a78asm2185971ote.12.2022.10.02.22.07.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Oct 2022 22:07:58 -0700 (PDT)
Message-ID: <36fff3d9-d2db-bbb1-5073-585970ce34d9@mvista.com>
Date: Sun, 2 Oct 2022 22:07:58 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [meta-cgl][PATCH 1/2] layer.conf: add langdale to
 LAYERSERIES_COMPAT
Content-Language: en-US
To: Yi Zhao <yi.zhao@windriver.com>, yocto@lists.yoctoproject.org
References: <20221002135343.3039016-1-yi.zhao@windriver.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <20221002135343.3039016-1-yi.zhao@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Oct 2022 05:08:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58251

Merged.

On 10/2/2022 6:53 AM, Yi Zhao wrote:
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>   meta-cgl-common/conf/layer.conf | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
> index 2e21879..865ed9f 100644
> --- a/meta-cgl-common/conf/layer.conf
> +++ b/meta-cgl-common/conf/layer.conf
> @@ -11,6 +11,6 @@ BBFILE_PRIORITY_cgl-common = "7"
>   
>   LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux"
>   
> -LAYERSERIES_COMPAT_cgl-common = "honister kirkstone"
> +LAYERSERIES_COMPAT_cgl-common = "honister kirkstone langdale"
>   
>   require conf/distro/include/cgl_common_security_flags.inc


