Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web09.39340.1624229485856225914
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Jun 2021 15:51:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=r2u2vKOj;
 spf=pass (domain: gmail.com, ip: 209.85.210.182, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f182.google.com with SMTP id t32so856124pfg.2
        for <yocto@lists.yoctoproject.org>; Sun, 20 Jun 2021 15:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=JN4l/VO+5MViJfCvUrRJcN5EKBNhB3wmbqOgkVsYwz0=;
        b=r2u2vKOjPugCug2QxzdQQzIqn+IyaNegyyT3uL7m3KgOnM3M/A4QFhYbOBZ3O8bpCJ
         RjvonjXUd7qNBgG/yPTSnKPkaSdHBSfNY5XJUZl0B/ittHAkBgNwJsIYQ5H2YM7fUBbm
         QTcCJd7ZFcp0CJ/+RYI/MexPS0H5IU9G8drFH+gEJV02aMOjmXatwvSXzg52BBECC7x+
         2NX8T10ezxxo/Yrq7C1AITO6JHMdv4TQsZap9gMNN7ZXQBiRhfqh0RzBIDvKKVM7ngFL
         O2PgVs6fIxNfLE9woHL1+VlUGkYia0/QKvDIwLJfwAtn/MPG30/OCZ5nQcLoJxrT2+Gx
         4xLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=JN4l/VO+5MViJfCvUrRJcN5EKBNhB3wmbqOgkVsYwz0=;
        b=dQuqipuMxBZX1VGxMBbnmHBu/YGccEm2olaey+YndqB4ycQSKnisIC4GzUxdaZaTOE
         McITXnNXKSwFUewwtKLNpZsab948u96M3wOr/QuVKftuNs5hCKmS7CJDUg81zvpxb6Hb
         doK60FWjlMQpQqcuJ0w0HM/AnKW9dZleZ/RYOyFnUCoCKouKMN2xKxixSkKNX3C2QvXj
         zFPlyhK29xdBKCwM6FqXOPzMh6OnJ4UuG54m9lLl7VZKQznaIo2F3JeB0YRQxX5qHc38
         eAjGxVxq5Xzm1JjuXKsrpMqZ0fy5+SKi3YS3yH277Bis6i6vHSS6aCRk+58U5IEzKhVh
         UVpw==
X-Gm-Message-State: AOAM530gOyXrKw/SgFn1VZAxKnERGB1LIito1bE8pMnZ6w4cHmcv5NWV
	P3X233hoffyrn2czpNNB7qLG8Wa5S8fi+w==
X-Google-Smtp-Source: ABdhPJwVENgu3HqtskXg64sl7bdc18L1/AoiHDPogKN7whBgQwoyJUNJ+QQdg2ZiA59xN8ieafeggw==
X-Received: by 2002:a05:6a00:cd0:b029:2fe:9dc6:b476 with SMTP id b16-20020a056a000cd0b02902fe9dc6b476mr16484632pfv.34.1624229484947;
        Sun, 20 Jun 2021 15:51:24 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:c7:6c10:59:efee? ([2601:202:4180:a5c0:c7:6c10:59:efee])
        by smtp.gmail.com with ESMTPSA id o16sm13288328pfk.129.2021.06.20.15.51.23
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Jun 2021 15:51:24 -0700 (PDT)
Subject: Re: [yocto] [PATCH] smack: add 3 cves to allowlist
To: yocto@lists.yoctoproject.org
References: <20210618121650.4798-1-sekine.shigeki@fujitsu.com>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <29479dd2-e4df-31db-7312-197f0abc8437@gmail.com>
Date: Sun, 20 Jun 2021 15:51:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210618121650.4798-1-sekine.shigeki@fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged.

On 6/18/21 5:16 AM, Sekine Shigeki wrote:
> CVE-2014-0363, CVE-2014-0364, CVE-2016-10027 are not for smack of smack-team(https://github.com/smack-team/smack) but other project.
>
> Signed-off-by: Sekine Shigeki <sekine.shigeki@fujitsu.com>
> ---
>  recipes-mac/smack/smack_1.3.1.bb | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/recipes-mac/smack/smack_1.3.1.bb b/recipes-mac/smack/smack_1.3.1.bb
> index b1ea4e9..6ae715e 100644
> --- a/recipes-mac/smack/smack_1.3.1.bb
> +++ b/recipes-mac/smack/smack_1.3.1.bb
> @@ -13,6 +13,11 @@ SRC_URI = " \
>  
>  PV = "1.3.1"
>  
> +# CVE-2014-0363, CVE-2014-0364, CVE-2016-10027 is valnerble for other product.
> +CVE_CHECK_WHITELIST += "CVE-2014-0363"
> +CVE_CHECK_WHITELIST += "CVE-2014-0364"
> +CVE_CHECK_WHITELIST += "CVE-2016-10027"
> +
>  inherit autotools update-rc.d pkgconfig ptest
>  inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
>  inherit features_check
>
> 
>

