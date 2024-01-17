Return-Path: <mattwood2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7981C47258
	for <webhook@archiver.kernel.org>; Wed, 17 Jan 2024 22:44:03 +0000 (UTC)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
 by mx.groups.io with SMTP id smtpd.web11.1452.1705531441196993956
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jan 2024 14:44:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KGdmqMks;
 spf=pass (domain: gmail.com, ip: 209.85.219.173, mailfrom: mattwood2000@gmail.com)
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-db4364ecd6aso8068879276.2
        for <yocto@lists.yoctoproject.org>; Wed, 17 Jan 2024 14:44:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705531440; x=1706136240; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2EHs1Uu2IeBa8oU7d9M3gnRofvqaahVHp+bOsVdqT38=;
        b=KGdmqMksJZ+763Jw1vZm1fR+gOT0YunV2PEsDo21N50OWkWW3FmUDN4V63VdQlNBYd
         YlYdzXX25/ZwvLuSHgpLXd9w4expzJpkdxuN913rwtc4plkKoIt7vN0d9QR9RncRdBzO
         BDVgS37Q3s+ycKyV7XyuqrOvIqclf+wYzHVjrfAgpYwg+Pvbp8bKmX/G3ATrXoMgkI83
         xzik4CuC+anOJByUP0EaLck9KiPQxbL0VtqMMTI/KAj+pADNlS15ZDon1yNJ2Fi6JCuF
         myiz8LBmSr5Xo0cNhU35Av86kUYiiJv4eMlmNjDO7HygoI2vzNkQQB6b9Bx9QOHyCcsR
         gzDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705531440; x=1706136240;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2EHs1Uu2IeBa8oU7d9M3gnRofvqaahVHp+bOsVdqT38=;
        b=ArSNpmwLZ73wFOXgxhBBHdHT2auUAJPj/xH0tQ3JXWER84Eg5vf+sREx+So5saZXHD
         vl3TzH5EqNz44QH/pA5FcgBcs/fWIXoubOoz7BqG8QbC7tGBVkmurl7w8X1KBgA92s0T
         UNKha0x9gj+aGDiagx7fh3H5gZNd3aEeYC5xT2/f0wgr3KEu+LikZzUa1mivWcenXuLP
         oaDH9KN0lbz04PJJAA1pOI2+5idwMpqU8igwBoLIRNlIqQmbhM7embKtKoUmBJBG4/4e
         qX9s3Tex0xa7gKq2T0Nmv/aXjBd10NRZirqJ78VjMVEZNGlCf+aaTIgE7vAY6TW23PHo
         w4Fg==
X-Gm-Message-State: AOJu0YzEzv7D8W79sptZex2C9oGiOnwSQjPt3aYRIMjEALoddhgibkv+
	RFCAz9F1VNzooDKLQNjvEsc=
X-Google-Smtp-Source: AGHT+IGYxkwQ92+UFQeZxEhI8Tm1zzqZ3KhmBntj5aBWr4l9F2RqenCoi81ijZGFQUHCfyllkP4Q2g==
X-Received: by 2002:a5b:b06:0:b0:dc2:4f64:16ad with SMTP id z6-20020a5b0b06000000b00dc24f6416admr653175ybp.117.1705531440353;
        Wed, 17 Jan 2024 14:44:00 -0800 (PST)
Received: from [192.168.1.225] (pool-71-184-93-207.bstnma.fios.verizon.net. [71.184.93.207])
        by smtp.gmail.com with ESMTPSA id jp9-20020ad45f89000000b006816ffc7113sm1653654qvb.63.2024.01.17.14.43.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jan 2024 14:43:59 -0800 (PST)
Message-ID: <ae61cfb3-ff00-4847-8fcc-5940cc31152f@gmail.com>
Date: Wed, 17 Jan 2024 17:43:59 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] append recipe to multiconfig build from top-level
 local.conf
To: Jose Quaresma <quaresma.jose@gmail.com>, yocto@lists.yoctoproject.org
References: <CADjezmYMjHMXRwA7UF+_RFQivJ84rHpm2HyfEak_Cfsv1G=ftA@mail.gmail.com>
 <CANPvuR=1KADuvR6Hym5YAW4sWOAdLzp7ww+S1d5yo0KaRsZTLQ@mail.gmail.com>
Content-Language: en-US
From: Matt Wood <mattwood2000@gmail.com>
In-Reply-To: <CANPvuR=1KADuvR6Hym5YAW4sWOAdLzp7ww+S1d5yo0KaRsZTLQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Jan 2024 22:44:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62181

Hi Jose,

On 1/16/24 04:34, Jose Quaresma wrote:
> 
> 
> Matt Wood <mattwood2000@gmail.com <mailto:mattwood2000@gmail.com>> escreveu (segunda, 15/01/2024 à(s) 19:44):
> 
>     Hi,
> 
>     I was wondering if the IMAGE_INSTALL:append syntax could work in multiconfig environment from the top-level local.conf file?
> 
>     For example, I have a meta-layer that defines the muitconfig (main.conf and initramfs.conf).  From my build directory, I was hoping to append the IMAGE_INSTALL list only for the main configuration similar to how it can be done from local.conf in a standard build.  I wanted to avoid having to modify the meta-layer files.
> 
>     I tried the following from local.conf but neither worked:
> 
>     IMAGE_INSTALL:append:mc:main = " pkg"
>     IMAGE_INSTALL:mc:main:append = " pkg"
> 
> 
> To have multiconconig you need to have more than one machine configurations so It should work with something like:
> 
> IMAGE_INSTALL:append:main = " pkg1"
> IMAGE_INSTALL:append:initramfs = " pkg2"
> 
> Jose

I have two configurations for a multiconfig in my meta-layer (conf/multiconfig/main.conf and conf/multiconfig/initramfs.conf)

Unfortunately, adding IMAGE_INSTALL:append:main = " nano" to conf/local.conf for example did not work.

But, adding IMAGE_INSTALL:append = " nano" to conf/multiconfig/main.conf does work and nano gets built.

Any other suggestions to have append a multiconfig IMAGE_INSTALL list from the top level conf/local.conf?

Thanks, Matt.

>  
> 
> 
>     Is there syntax for this or would I have to put this in an image recipe or the multiconfig .conf file?
> 
>     Thanks, Matt.
> 
>     -=-=-=-=-=-=-=-=-=-=-=-
>     Links: You receive all messages sent to this group.
>     View/Reply Online (#62161): https://lists.yoctoproject.org/g/yocto/message/62161 <https://lists.yoctoproject.org/g/yocto/message/62161>
>     Mute This Topic: https://lists.yoctoproject.org/mt/103747116/5052612 <https://lists.yoctoproject.org/mt/103747116/5052612>
>     Group Owner: yocto+owner@lists.yoctoproject.org <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub <https://lists.yoctoproject.org/g/yocto/unsub> [quaresma.jose@gmail.com <mailto:quaresma.jose@gmail.com>]
>     -=-=-=-=-=-=-=-=-=-=-=-
> 
> 
> 
> -- 
> Best regards,
> 
> José Quaresma


