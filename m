Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78AE4C433EF
	for <webhook@archiver.kernel.org>; Sat,  4 Jun 2022 22:58:43 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web12.15423.1654383492563710684
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jun 2022 15:58:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=AZjYwgap;
 spf=pass (domain: gmail.com, ip: 209.85.214.170,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id t2so9414378pld.4
        for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jun 2022 15:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=saqD6lOAOY8MuPDoAndAe/BeKDsidwJZmUPoOxOKIyk=;
        b=AZjYwgapG/kmFqKRG0J9pmW9Zdiyazmzsf0nMx90oLU1nOIBYiw+j7J3Vhrq4cqYwS
         AgEWj6vtFhhbfmXfMpNVwmuo7iJZupKlhV+DuAMpnSgd+Z+hQ7+5hJ8lHlK0l5IgpKBQ
         Rjc+iq6zxfb1YtIM3PDtyL7R98r3ihpWBYtJ5Mp4LnaK+NYbdyfXcKjeY5mU2OAmeCHZ
         L3DIp5YnSXYtfG/jZAwMt2JewDznQ0qHPMXGfJPDZusGA/Ov6tZhx3qCaWmj1A4yX2hb
         XP+F+N3rX548CVq//074iDc6NeEfVyB5mWB60qJAlAc/+YaHiMbicV0ZuXRcTz9W+QLr
         /gJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=saqD6lOAOY8MuPDoAndAe/BeKDsidwJZmUPoOxOKIyk=;
        b=Ie0TGAQbvUQvTbOurSqj5Xe4TeozRgPOgbxkg+YlMrVXT3BKqqsANbg+wBoOZNzTVL
         Hxeoq+Pg6cPZNT/nXVYUQ9aNonmYvN5tmOcEfUUnDiOJoYgDmtWyixlsf39mWnt9+wp4
         820eUrEm2tCyd67NLmW/2QM/JvB69gwOsKyNkUOIz4c/MKNDk5GzJo6ptklzkxHLoVBV
         Oy1D2VRO9T8iRQFMAgKqldJjHpkO12OSoesxrYIQUcIx3fuxNiSl8paWP/bgRJlIqSHu
         ufJOoWyWLpJiS3QpUKHHIakUTDz76OCV1OvJFuKGpa2jy0nwm7vA+qZIbSet+A0nUKz5
         R5Rw==
X-Gm-Message-State: AOAM531piHVs9YFan3W6tq6XQ6EpXGNWiA9iTmH2u8qm2Yo5JGOJYk8x
	gvaO8PH3J8o84pVZqx/xHDMing/8WM4=
X-Google-Smtp-Source: 
 ABdhPJx1jxdSUR4HfoLMeG+rAXLvg4AJ/oiwQlzBuEwv3ikPQUuf4H+4ZmWShzcUYM9EDxQ7m01v/A==
X-Received: by 2002:a17:902:e88b:b0:166:3f77:eb76 with SMTP id
 w11-20020a170902e88b00b001663f77eb76mr15478819plg.11.1654383491922;
        Sat, 04 Jun 2022 15:58:11 -0700 (PDT)
Received: from [192.168.18.39] (c-67-181-203-136.hsd1.ca.comcast.net.
 [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 q10-20020a170902edca00b0015e8d4eb22csm7699953plk.118.2022.06.04.15.58.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Jun 2022 15:58:11 -0700 (PDT)
Message-ID: <82071fd5-8019-e983-6121-b3381a0c700d@gmail.com>
Date: Sat, 4 Jun 2022 15:55:59 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [meta-security][PATCH] Remove outdated meta-rust dependency text
 in README
Content-Language: en-US
To: Federico Pellegrin <fede@evolware.org>, yocto@lists.yoctoproject.org
References: <20220604063124.279064-1-fede@evolware.org>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220604063124.279064-1-fede@evolware.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 04 Jun 2022 22:58:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57266



On 6/3/22 23:31, Federico Pellegrin wrote:
> Since ~16 months the base of meta-rust was merged into meta-oe,
> down to honister as far as I can see, and therefore the indications
> to use meta-rust are really not needed and may just create extra
> work and possibly problems to users.
> ---
>   README | 12 ------------
>   1 file changed, 12 deletions(-)
>
> diff --git a/README b/README
> index 081669f..a9b3600 100644
> --- a/README
> +++ b/README
> @@ -62,18 +62,6 @@ other layers needed. e.g.:
>       /path/to/meta-openembedded/meta-networking \
>       /path/to/layer/meta-security "

thanks for the patch.

did I miss some rust changes in 
https://git.yoctoproject.org/meta-security/commit/?h=master-next&id=edf8b109e77f6d3f2740e09bdc89f0aaf2885dc4 
?

- armin
>   
> -Optional Rust dependancy
> -======================================
> -If you want to use the latest Suricata that needs rust, you will need to clone
> -
> -  URI: https://github.com/meta-rust/meta-rust.git
> -  branch: master
> -
> -  BBLAYERS += "/path/to/layer/meta-rust"
> -
> -This will activate the dynamic-layer mechanism and pull in the newer suricata
> -
> -
>   
>   Maintenance
>   ======================================


