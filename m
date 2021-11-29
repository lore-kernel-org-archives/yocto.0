Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B969C433F5
	for <webhook@archiver.kernel.org>; Mon, 29 Nov 2021 00:17:58 +0000 (UTC)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
 [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web10.54902.1638145077205348678
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Nov 2021 16:17:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YZbjSJJk;
 spf=pass (domain: gmail.com, ip: 209.85.215.182,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f182.google.com with SMTP id c29so3128044pgl.12
        for <yocto@lists.yoctoproject.org>;
 Sun, 28 Nov 2021 16:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=UNSRIfYMhVbjMFbnOf8uLf3IebsciJ93QSJp8ffqBc4=;
        b=YZbjSJJk14qEzoVzfv5xD9817jlaEHT1/NPvd84J6si6gTiPRx7S3IngSJGqImz6nJ
         9N3hMKHf1awfAnz4WEKpHkHG0tSOETzTFH8MKp7skMgG021k5wM8dC2Tpebpd3Yv5sla
         nzMlONrVKJkmQJpdNv/TbzAAc+fqdeHenUrivGsKKb7/O+iRw7owOxqZgXObF0BElJaI
         HrjEgOv8oBF6c53Cs7RPTdu0fYjshZFMq3+J9GXFFu5mAqND2iOrwrzPTl/urrm5pSa7
         BN+t340mO7OAPma2wvUV3MSlmG78dNANWPtjzB6KcFm3lAbLkqS6AoLAzfkckvhSVLy3
         tb2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=UNSRIfYMhVbjMFbnOf8uLf3IebsciJ93QSJp8ffqBc4=;
        b=z3XDPEYaXgiwH153Q6+BxVI6uIvyww2LjKORdx+tUoechmsxr6oMJ3ALT45W0F3Myn
         i99VL79n/XV7inth8w3Y8AJ7SYu6z5juy1qcVCU3KJwaVW5a1bjidPexcV9POby06a72
         QJl7a6BnfJRU7PNR0pP5s7MfSp/AgrJaHJn+M7WbAMaegUcX4ygJBJCyoIgxvHBL7Xiv
         7EOX1w2cuvIW57/9MPzgKl40R55CV7Iw8popYULx1Yx1h8eTAvNUGNbyimlFFMAYvI/R
         M+S0+9eeurIDxtEGMIPQZR3T427izojmnmho22c+QDxALDwYnYhtCphHI+m7yyrRhOIQ
         yZ/A==
X-Gm-Message-State: AOAM5307oX97ADacuB2yEN3/iuo0Lef6JuC6PwTR3E6mvvGOhTKKX3Ls
	9Au9rIOzxo0gP1KskbJ6CjnSzHHmpPI=
X-Google-Smtp-Source: 
 ABdhPJxHQ1m6UeY1n+mid314W0NK2cZp3t58pdkxzjPT1Ja9N2f6O/WkS2pC2WFp4DWgi1q7A5D4HA==
X-Received: by 2002:a05:6a00:1744:b0:4a4:f4e6:1cc0 with SMTP id
 j4-20020a056a00174400b004a4f4e61cc0mr35305676pfc.15.1638145076604;
        Sun, 28 Nov 2021 16:17:56 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:ab2d:45ef:1126:5ad9?
 ([2601:202:4180:a5c0:ab2d:45ef:1126:5ad9])
        by smtp.gmail.com with ESMTPSA id
 d9sm19967304pjs.2.2021.11.28.16.17.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Nov 2021 16:17:56 -0800 (PST)
Subject: Re: [yocto] [meta-security][PATCH 1/2] openssl-tpm-engine: fix
 warning for append operator combined with +=
To: Yi Zhao <yi.zhao@windriver.com>, yocto@lists.yoctoproject.org
References: <20211119151825.530200-1-yi.zhao@windriver.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <78f96741-c921-2162-eb5d-0c14a8d6008e@gmail.com>
Date: Sun, 28 Nov 2021 16:17:55 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211119151825.530200-1-yi.zhao@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Nov 2021 00:17:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55437

merged.

thanks

On 11/19/21 7:18 AM, Yi Zhao wrote:
> Fixes:
> WARNING: openssl-tpm-engine_0.5.0.bb: CFLAGS:append += is not a
> recommended operator combination, please replace it.
>
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>  .../openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb            | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb b/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
> index ef663eb..2b969ed 100644
> --- a/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
> +++ b/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
> @@ -35,10 +35,10 @@ inherit autotools-brokensep pkgconfig
>  srk_dec_pw ?= "\\"\\\x1\\"\\"nc\\"\\"\\\x3\\"\\"nd\\"\\"\\\x1\\"\\"a\\""
>  srk_dec_salt ?= "\\"r\\"\\"\\\x00\\\x00\\"\\"t\\""
>  
> -CFLAGS:append += "-DSRK_DEC_PW=${srk_dec_pw} -DSRK_DEC_SALT=${srk_dec_salt}"
> +CFLAGS:append = " -DSRK_DEC_PW=${srk_dec_pw} -DSRK_DEC_SALT=${srk_dec_salt}"
>  
>  # Uncomment below line if using the plain srk password for development
> -#CFLAGS_append += "-DTPM_SRK_PLAIN_PW"
> +#CFLAGS:append = " -DTPM_SRK_PLAIN_PW"
>  
>  do_configure:prepend() {
>      cd ${B}
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55378): https://lists.yoctoproject.org/g/yocto/message/55378
> Mute This Topic: https://lists.yoctoproject.org/mt/87169937/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


