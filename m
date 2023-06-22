Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E075EB64D8
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 17:04:48 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web11.17117.1687453486866877725
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 10:04:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=XAbtA1XQ;
 spf=pass (domain: gmail.com, ip: 209.85.128.177, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-5702116762fso78747227b3.3
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 10:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687453486; x=1690045486;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OfI2apD5Rg8l6e4u8xhYE9TMpVHJ1HzACrV3TTyn2Pg=;
        b=XAbtA1XQs12OsrfIB6mmXgfU7KunTrDvzPc/AyYSZs6sJss1t4yh0cJuNn2/ksODIC
         wTTmw+IspfqEfzRqFBYdJYSSLlonTT8ITU7StpJH6krJaicIYoBTbkAP2JqnERwYWcRD
         7Bby6OaEmk+eg7rrq7ZM+tXX71spzg3m+FYuAaytzTOz/KYlkYbCP9V6+pF6/+eHsdI7
         1IG4EQv3C/1MS0LNIlgwrOiJsnJkb5wmusAMMUrvPHaPYJA9SXf7vC9C/gHbtYTKl85f
         CDs68vAWDKtoxFwOhilBeC14jf9GyHQ2i0EgrOZZjnDJh44GEoImtaUjG/UDvUOlQd96
         MINA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687453486; x=1690045486;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OfI2apD5Rg8l6e4u8xhYE9TMpVHJ1HzACrV3TTyn2Pg=;
        b=FnK3SarPrAkvVC9OFQkdl53YALW0IrdMnnvSyKQrMSPxSEOuxJR6de/OksFw1a4F54
         vAz0QZftWe99AEkiXRAlS1V3+fB+EMHABvg7e+YlYYETKfia9vcRDf2KNCoqu+aSMUWQ
         r0pKeY2Ic6DdVbLzjt3Es3trTNTSl603odxwBWgnMoemrJfWUle7qq9YWITvPwc8m5oj
         d2MMV7yEMuwIPkOU+6Nq76imupwYh9Tul7Gtl1q3j8e1uycOa5Jju832OPkpGE5jHm60
         Nfm59ykpiuIKGIzqGKW2E2SIUh+3QiRK7qMhykBmv+2GqJd+6Yuh6e5YukEOM7nYw6HZ
         DQSw==
X-Gm-Message-State: AC+VfDwGlQP07IfMcH5DFN/lzrmj4RtBFhIg9O2Fn4sSGl/l+YdchLxD
	j2Rur8lZtosKfxVQvtYJ6dSuQLSuoAQ=
X-Google-Smtp-Source: ACHHUZ5JZGdLAcgoKEQp60LeozKkG/sLPd2Rc4tvh9PQuLfA9fPu0AxS7ZiCtgMG+BH4C90A9zZEmw==
X-Received: by 2002:a81:9282:0:b0:56d:308f:1efa with SMTP id j124-20020a819282000000b0056d308f1efamr20929940ywg.4.1687453485751;
        Thu, 22 Jun 2023 10:04:45 -0700 (PDT)
Received: from ?IPV6:2600:1700:9190:ba10:80e:b8b0:6c85:7e? ([2600:1700:9190:ba10:80e:b8b0:6c85:7e])
        by smtp.gmail.com with ESMTPSA id d133-20020a0ddb8b000000b005701eadbb5asm1919994ywe.66.2023.06.22.10.04.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jun 2023 10:04:45 -0700 (PDT)
Message-ID: <c1973ae4-174e-cf75-c41f-10ca179d8971@gmail.com>
Date: Thu, 22 Jun 2023 13:04:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] [meta-security][PATCH 2/2] scap-security-guide: add
 Upstream-Status
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <20230622151320.2921659-1-akuster808@gmail.com>
 <176B03ED4226D56F.16817@lists.yoctoproject.org>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <176B03ED4226D56F.16817@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 17:04:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60409


Ignore.


On 6/22/23 11:13 AM, Armin Kuster via lists.yoctoproject.org wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>   .../files/0001-standard.profile-expand-checks.patch             | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch b/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
> index 0621360..a272d04 100644
> --- a/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
> +++ b/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
> @@ -4,6 +4,8 @@ Date: Wed, 21 Jun 2023 07:46:38 -0400
>   Subject: [PATCH] standard.profile: expand checks
>   
>   Signed-off-by: Armin Kuster <akuster808@gmail.com>
> +
> +Upstream-status: Pending
>   ---
>    .../openembedded/profiles/standard.profile    | 206 ++++++++++++++++++
>    1 file changed, 206 insertions(+)
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60405): https://lists.yoctoproject.org/g/yocto/message/60405
> Mute This Topic: https://lists.yoctoproject.org/mt/99699550/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


