Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF40C433F5
	for <webhook@archiver.kernel.org>; Sun, 13 Mar 2022 18:42:28 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web09.17960.1647196947410542384
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Mar 2022 11:42:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LsWhWT6u;
 spf=pass (domain: gmail.com, ip: 209.85.214.180,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id n18so9116615plg.5
        for <yocto@lists.yoctoproject.org>;
 Sun, 13 Mar 2022 11:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=vVioUDvxtAcXv+AuB1HwIcFmKvMQ0d+3uZ1VxcpTnzE=;
        b=LsWhWT6uSi9jJkaefwjyvMctM18ShF58TsFkumtKyrlLtq/zCcd7DSmu+g18CFSmzA
         0psRf47BhAMfZ0UTCWvXDuSIPM2HUv0E3S8k9ShZv6d2J6SPmQKtfagzP+QZXGT/Mogq
         gluhalIv/ibu3EGE8ToaZKESCh//CTJZ0YUqvTBlIJwLYaHroSJuSePnPBC/Rh0h7ZX0
         l9F+9c56Z5usHwzMZ6U97Xvj3vO4s0C9YhepXi15XF7A5AeYn2hqODdCnpfNMyF7XmX+
         AaMvNrr1ckYpKtAmc/wTmsfoGisEzghEsXDzCkVHxUKtzDaUkjIUdJ9Fm5dU8kK4VScu
         U9iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vVioUDvxtAcXv+AuB1HwIcFmKvMQ0d+3uZ1VxcpTnzE=;
        b=KZi0XWtCXbbW5wGmArqSzDT2FQTIP9Ux76RlfQPR04S8Zdddf2r4ViU0MZpeGAeGsS
         Dj6F5UH7+1WxaS//HRP6XlHp9uzTxZR34chp4iQvNYTAINl4Gt2bvt6YWBkOrpEfhekn
         cuspO8mLEKuVKwepbRXrCexClNcEz35sDiRFXrTQVSwuFhdInYjNhLzsz03CMt5AD5ni
         DcF3E4oTsWag9+fVlkXqQOEO5dYosp1YwpGaqgEVPf4o466Mo/trIJG8wDuOLRfiCaeT
         XhJ4vOD47qmyZcJTpksf9YN/0c8DGW39Hj5ljQvYECFiVGOS4m9w7aGH1/vvEcTNR3hz
         h6iw==
X-Gm-Message-State: AOAM532D/Cd9tWMDbTGxJN75XNIIpSqAUfd2wrNlWf72DR9l6Vv0P/Ud
	pEOKpg6nE4rAI2Ec0yFiyZk=
X-Google-Smtp-Source: 
 ABdhPJwqalrp2PM2RX/XHtCepDv02tjBe1SdnCsNknUW2Pf+3xazAFVwlE88/5zW+uBsJ2AP64zE1A==
X-Received: by 2002:a17:902:e806:b0:151:ca94:740b with SMTP id
 u6-20020a170902e80600b00151ca94740bmr19626356plg.102.1647196946911;
        Sun, 13 Mar 2022 11:42:26 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:a5c0:feea:a2bc:fc4:e2a?
 ([2601:202:4180:a5c0:feea:a2bc:fc4:e2a])
        by smtp.gmail.com with ESMTPSA id
 t8-20020a6549c8000000b00372eb3a7fb3sm13926470pgs.92.2022.03.13.11.42.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Mar 2022 11:42:26 -0700 (PDT)
Message-ID: <6f35512b-5b84-b655-40df-ff1a2852ecbd@gmail.com>
Date: Sun, 13 Mar 2022 11:42:25 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [yocto] [meta-security][PATCH] Subject: [PATCH] Subject:
 python3-fail2ban: switch to legacy setuptools3
Content-Language: en-US
To: Ashish Sharma <asharma@mvista.com>, yocto@lists.yoctoproject.org
References: <20220310075833.31784-1-asharma@mvista.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220310075833.31784-1-asharma@mvista.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 13 Mar 2022 18:42:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56426



On 3/9/22 23:58, Ashish Sharma wrote:
> raise InvalidWheelFilename(f"{filename} is not a valid wheel filename.")
> pip._internal.exceptions.InvalidWheelFilename: fail2ban-*-*.whl is not a valid wheel filename.
> Removed build tracker: '/tmp/pip-req-tracker-qnepnk46'
>
> ERROR: Failed to pip install wheel. Check the logs.

Thanks. I took this over the two odd ones I had in master-next.

merged.

-armin


>
> Signed-off-by: Ashish Sharma <asharma@mvista.com>
> ---
>   recipes-security/fail2ban/python3-fail2ban_0.11.2.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
> index f6394cc..29a4ad2 100644
> --- a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
> +++ b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
> @@ -15,7 +15,7 @@ SRC_URI = " git://github.com/fail2ban/fail2ban.git;branch=0.11;protocol=https \
>           file://run-ptest \
>   "
>   
> -inherit update-rc.d ptest setuptools3
> +inherit update-rc.d ptest setuptools3_legacy
>   
>   S = "${WORKDIR}/git"
>   
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56414): https://lists.yoctoproject.org/g/yocto/message/56414
> Mute This Topic: https://lists.yoctoproject.org/mt/89682014/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


