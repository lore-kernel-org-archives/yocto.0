Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
 by mx.groups.io with SMTP id smtpd.web08.10854.1616081506726802654
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Mar 2021 08:31:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ajfGMrJ2;
 spf=pass (domain: gmail.com, ip: 209.85.167.180, mailfrom: akuster808@gmail.com)
Received: by mail-oi1-f180.google.com with SMTP id x2so1399597oiv.2
        for <yocto@lists.yoctoproject.org>; Thu, 18 Mar 2021 08:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=wBy6jMbFf90+9o0tgEkH87n7qP6L3bIcsDaG+FiYj+U=;
        b=ajfGMrJ2h0pk6JXTpDmKgPZH2UuunbHcH0r3yUJQXpvULNbb8tusz21bhFLNwBkf1R
         1BFHL7tD2dY5LdfJB2JJgBuFPwfylEQM3gPQTP5tILg+oslJIXWmxIh3h99+oKgFyiiG
         teOQJJgafS2BoZl5BwB2nIT9WC79xitzoORoIdBgKQwEE/3SnHAIaE//Dq6e3G0L9jM9
         ie1QGyLVPeBaYWoXTgVeT2fsvPbf1F3Rl+/pCU0groAFA/PmUJ/mtDJzk24Is/Mn2+6D
         G8kpYevGdXLCCnjrg61yAgehE4Gto25PCG/MCi87qrexMTvOZYpGyp4BJSov5+R4FuFK
         kshQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=wBy6jMbFf90+9o0tgEkH87n7qP6L3bIcsDaG+FiYj+U=;
        b=kuRbX77Gxdel4EwSnrf2kH9gM70ng94YxLm1ZyrOO2NOWHNqifzhcd8+p+6YSgd/Gx
         2MK9FO3QWZCFtattDMFABfSuXDi9UvBkrJrYhWP6GCBB02TMqd+XVm/u0F2vsvvZt8y/
         VsKbE9PZVu4mJUUoGrwvPGKTRgnHa3F2cQc6VasLUSqUib4psUOTwjk/BZqA6CCMjvJz
         qXnkvA4bF7q85NLzwQeXvPKJKqbn0zAyeA1huGeWnXmPu2UVew/MbNxMbQ3xNWTX4/T3
         n6r8bFWnZJtIoTTieL75839PoulUl8vIWqMHmJNxfTqO1Tu4Exslm7h/LsJUIv8ub9+x
         sc5Q==
X-Gm-Message-State: AOAM531hPiRlICUjY3wTTwiFBunHKfZ9uC4bIgbOotPLNQJIj3AlmoqP
	fNsuh/5VKvTo6OVy3exSto1vI0/mcRg=
X-Google-Smtp-Source: ABdhPJwMIIwth4Hu35PvEKJv//xia/5hLXAdfl1CyAi4Owx+Vas8ZnIBK8Spv66q7avNYfR9OgPxTg==
X-Received: by 2002:a05:6808:f12:: with SMTP id m18mr3265441oiw.62.1616081505798;
        Thu, 18 Mar 2021 08:31:45 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:3162:4312:5c6d:827f? ([2601:202:4180:a5c0:3162:4312:5c6d:827f])
        by smtp.gmail.com with ESMTPSA id y200sm572164oia.49.2021.03.18.08.31.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Mar 2021 08:31:45 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] fscryptctl: Fix installation path
To: lukasz.plachno@assaabloy.com, yocto@lists.yoctoproject.org
References: <20210310165241.23796-1-lukasz.plachno@assaabloy.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <6d5444d8-1a61-9e07-31a7-cf6cbdf2c94f@gmail.com>
Date: Thu, 18 Mar 2021 08:31:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210310165241.23796-1-lukasz.plachno@assaabloy.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

merged.

thanks

On 3/10/21 8:52 AM, Łukasz Płachno via lists.yoctoproject.org wrote:
>  - Without the patch fscryptctl is installed in
>    /usr/bin/usr/local/bin instead of /usr/bin.
> ---
>  recipes-security/fscryptctl/fscryptctl_1.0.0.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-security/fscryptctl/fscryptctl_1.0.0.bb b/recipes-security/fscryptctl/fscryptctl_1.0.0.bb
> index 440b4e3..df76a3d 100644
> --- a/recipes-security/fscryptctl/fscryptctl_1.0.0.bb
> +++ b/recipes-security/fscryptctl/fscryptctl_1.0.0.bb
> @@ -15,7 +15,7 @@ SRC_URI = "git://github.com/google/fscryptctl.git"
>  S = "${WORKDIR}/git"
>  
>  do_install() {
> -    oe_runmake DESTDIR=${D}${bindir} install
> +    oe_runmake DESTDIR=${D} PREFIX=/usr install
>  }
>  
>  RRECOMMENDS_${PN} += "\
>
> 
>

