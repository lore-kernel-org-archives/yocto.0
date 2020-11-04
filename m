Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.14030.1604501809954400930
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Nov 2020 06:56:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ccUEZyv7;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com [209.85.215.193])
	by mail.yoctoproject.org (Postfix) with ESMTPS id DEE5B38C069F
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2020 06:56:48 -0800 (PST)
Received: by mail-pg1-f193.google.com with SMTP id x13so16793280pgp.7
        for <yocto@yoctoproject.org>; Wed, 04 Nov 2020 06:56:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=VfZjfdbJFF8Nt+wcj09396RqTKKhPHsDuZbR0kMgUvs=;
        b=ccUEZyv7aAUPesLYFslTc5fe1/HqVJtEqqdjDlFAROaPrTu0Eg0UmFWbuBYCi5D4Bl
         ygqvl6zHabXmRJ6wtSD/Q4nuZ53xyzUY1qTqWvCZJHLnlBK2F6rg5yibjqAu5dwtYTNY
         u5tySquRbANVblUGLuVY15u9Dpk3OahOz5+llQHAryGnFjNrNXGpDYQqpGWTEHSwWTT7
         Ls+rFeu79d1z1nvVRki71B6NyHgGYB7ppuPeAcNLWWjyLtKZJWslNn/PL1/ap7KOcX7u
         AVUlEo1bQu+mwI2ssLA5sw3EId/pNdsFETprARLM2OHFBFO/sCwttzuz/QFD/1QYcuZK
         gByg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=VfZjfdbJFF8Nt+wcj09396RqTKKhPHsDuZbR0kMgUvs=;
        b=XJVLQ/bnpPZP0JH4ZGzGo/sSo4iK8UWGXWR9Z+n3t2GhtFcFChfjNtYMIaJRrNzhgP
         z7kPP2CtZk01I+TvDykKMybzWHZZ7w3oxyCXs4O5+upnJIDP8CPc0pVCt0DWWZtmBsPe
         p8Uu//al4lODz/eTHDcrz6N/si6Z6nFimvbvRAbXh9lMpBL4BvNVw5gRLAeFt0mfY44/
         vnsQ85qy6Op5XqNOlWwXpBS9CaFRxsfo+xggzWYoNJ5ENojYtKlCqp64xe18Hbg9CuN+
         WyK6NotaJId9n1ad1k1t7DKEf8usIBSXdiWIAE0PSpmYYhGCwCVb8BS0PZAkj6KCXIET
         S3pQ==
X-Gm-Message-State: AOAM531dgCIkQ0JJtL6G/Uq3PtaCAM5qxWUZfjiLh6HqMkAb1Hj6vMJs
	5A446dWM+Vk0aWxUdZNqaAiyc16W6nw=
X-Google-Smtp-Source: ABdhPJyeIghhFSn0+i0s8lHDYd9Hzx0gY/uD9QZKlYQnsQ1qSVU8doxuD460LxdOmTD+L292BPZdXg==
X-Received: by 2002:a17:90a:a595:: with SMTP id b21mr4555089pjq.3.1604501807924;
        Wed, 04 Nov 2020 06:56:47 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:30:8e77:15b6:d55c? ([2601:202:4180:a5c0:30:8e77:15b6:d55c])
        by smtp.gmail.com with ESMTPSA id y1sm2613301pjl.12.2020.11.04.06.56.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 06:56:47 -0800 (PST)
Subject: Re: [yocto] [meta-security][PATCH 1/2] suricata: unify volatiles file name
To: Yi Zhao <yi.zhao@windriver.com>, yocto@yoctoproject.org
References: <20201102091119.15649-1-yi.zhao@windriver.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <6aa84b2c-15db-eb8c-fcc1-31c327c3d87f@gmail.com>
Date: Wed, 4 Nov 2020 06:56:45 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201102091119.15649-1-yi.zhao@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 11/2/20 1:11 AM, Yi Zhao wrote:
> Make the volatiles file name starts with digital.
merged

thanks
>
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>  recipes-ids/suricata/suricata_4.1.9.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-ids/suricata/suricata_4.1.9.bb b/recipes-ids/suricata/suricata_4.1.9.bb
> index 135871c..3f7beaa 100644
> --- a/recipes-ids/suricata/suricata_4.1.9.bb
> +++ b/recipes-ids/suricata/suricata_4.1.9.bb
> @@ -55,7 +55,7 @@ do_install_append () {
>      oe_runmake install-rules DESTDIR=${D}
>  
>      install -d ${D}${sysconfdir}/suricata ${D}${sysconfdir}/default/volatiles
> -    install -m 0644 ${WORKDIR}/volatiles.03_suricata  ${D}${sysconfdir}/default/volatiles/volatiles.03_suricata
> +    install -m 0644 ${WORKDIR}/volatiles.03_suricata  ${D}${sysconfdir}/default/volatiles/03_suricata
>  
>      install -m 0644 ${S}/threshold.config ${D}${sysconfdir}/suricata
>  
>
> 
>

