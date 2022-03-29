Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F0BDC433EF
	for <webhook@archiver.kernel.org>; Tue, 29 Mar 2022 20:25:25 +0000 (UTC)
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web09.1758.1648585524455292847
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Mar 2022 13:25:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Xw4JozOi;
 spf=pass (domain: gmail.com, ip: 209.85.210.182,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f182.google.com with SMTP id p8so16910039pfh.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 29 Mar 2022 13:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=/gEOprd+PAKZm7yNZoCWjXnoNkkcBuTDP7ZvU0QNR64=;
        b=Xw4JozOinrLbju2z9UGNmwyV0XIPdQNT0nHs/drylDoFTJL2G1OWoGEAWpl7kZraM/
         SPJTbTAKeZD5CFEGoHV7g9FMYze5RJS11DAt01IOwGvK6iryOIziWzb2pq1C531YclLH
         lV6bKhNb/mzMw6MGvvWFUleE8i0Rp8Tius5QzajplVOlNnXHje0Ss8RmzDTOb2lRiVW0
         ugcaW0W9SbuEFQBet1vvDRlmx9O54Oj7t4fG8ldN2IzweLnlWceTKm+5BZYjgmOYkIu8
         69OBgRiij0eGYU3puNWMZ+F/yTEQ5y4Kd49016sNo4CYy3OTUAdr+KjrPfqUs0eHmbDx
         s6IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/gEOprd+PAKZm7yNZoCWjXnoNkkcBuTDP7ZvU0QNR64=;
        b=2W/YxCLvflHFRMqfnL45pU8bR/A4jH8ZknA29McpbFvcvUjNZuxgcq/5TTJZysd+GE
         240UOMe+jOabaRWvhL16X0cgtWhzmmjBdWQfDw6KeskrT4TbL3G7zGqLtOi+z8hsl436
         x2CMxoGGDLw9y0wM9fwf1K0ezhXomGRUhet//Nch/Rg7LzKulWFD+xEQun2Pxwn7afle
         fYyegXSJXPtoXtG1dQmRG97YC55QzMV3g2sD6McaSvddt4FB6Ft4vV/OhoWwORXBnq32
         /vzbAJyAlY5HM2XkbCkHpyE+e5rUhEmXWOz5O1HvjMwRglV4O+KW2ruiMyNLDfeoN5YH
         Tazw==
X-Gm-Message-State: AOAM530dTziKPQJvnk8LE44t9i7WhzumqCLUGcSJnQ06SimxxJqqrT5/
	bcnnXDlBIyA65SeCXE6mhsU=
X-Google-Smtp-Source: 
 ABdhPJylZGCDTD0eMHuQ3ZKnWgt2oJmLTgs8DDf5UJnCozzQXJXC4uK1on7K2f18RIn3XGYtkHzwOQ==
X-Received: by 2002:a63:2c8e:0:b0:386:4801:ce3b with SMTP id
 s136-20020a632c8e000000b003864801ce3bmr3184908pgs.185.1648585523550;
        Tue, 29 Mar 2022 13:25:23 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:a5c0:50bb:4b8b:e47d:9b25?
 ([2601:202:4180:a5c0:50bb:4b8b:e47d:9b25])
        by smtp.gmail.com with ESMTPSA id
 gt14-20020a17090af2ce00b001c701e0a129sm3892836pjb.38.2022.03.29.13.25.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Mar 2022 13:25:22 -0700 (PDT)
Message-ID: <307372c2-75d4-840d-df84-971cae4239c6@gmail.com>
Date: Tue, 29 Mar 2022 13:25:21 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [yocto][meta-security][PATCH] openscap-daemon: inherit
 python_setuptools_build_meta
Content-Language: en-US
To: Chen Qi <Qi.Chen@windriver.com>, yocto@lists.yoctoproject.org
References: <20220328022520.52018-1-Qi.Chen@windriver.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220328022520.52018-1-Qi.Chen@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Mar 2022 20:25:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56582



On 3/27/22 19:25, Chen Qi wrote:
> setuptools_build_meta has been renamed to python_setuptools_build_meta.
>
> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> ---
>   .../recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb  | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
> index cf6d531..9659323 100644
> --- a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
> +++ b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
> @@ -13,7 +13,7 @@ SRC_URI = "git://github.com/OpenSCAP/openscap-daemon.git;branch=master;protocol=
>              file://0001-Renamed-module-and-variables-to-get-rid-of-async.patch \
>             "
>   
> -inherit setuptools_build_meta
> +inherit python_setuptools_build_meta

I believe this is sitting in master-next.
https://git.yoctoproject.org/meta-security/commit/?h=master-next&id=398047a7a6310b1ef70d22430fb6df4effd8cf92

>   
>   S = "${WORKDIR}/git"
>   
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56563): https://lists.yoctoproject.org/g/yocto/message/56563
> Mute This Topic: https://lists.yoctoproject.org/mt/90076783/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


