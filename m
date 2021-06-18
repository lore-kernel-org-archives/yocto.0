Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web12.8646.1624026303435024001
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Jun 2021 07:25:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=u+JbBXV/;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id x22so3207249pll.11
        for <yocto@lists.yoctoproject.org>; Fri, 18 Jun 2021 07:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=K34NkZxlt3ryXCwFG+O7oh80+pQn27YEeRWqdktYdfc=;
        b=u+JbBXV/UICwvztRc0JVzN0Brh+++7trznRA1xokYo+dJWPCQY7kFeZtdzK1BDCCEL
         4SqG9o/fENMd2NQdB16oq5zce/dIiAwMkP7PdyOAjzbVUCsSUK6IVCR3sZ4X7bcG2qnw
         ua2KONgPCT4RnlGUvzmyrtUCMJPFigx0iysdF2OT74fqvUfUOn05qnRzvmDzaYwsnG3a
         fF2cSkCq/9dcYsxMWxdsCNVSU48TyypTdC4ooBK8u/G/OD+iD69F7hesGg/lyXErnmEm
         zUpYx1s5qDFFinGVfUaY4zFJiDmNYm3Prz6xGka1jk9xUBPSmpYOa2bA1iqoMQ1co3rw
         4qlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=K34NkZxlt3ryXCwFG+O7oh80+pQn27YEeRWqdktYdfc=;
        b=NTfhHT7mUhVP3tXj+C3oYthQHbjyhPMFB2VVdAg5vdqKSuR22T8HwW8vm0HmzvzPRv
         9JP8J9K2ynz97mIIbj42qOj8YaQvhJydyFWGkHaSBgLPhE4IidnV5RygGn2ciXfWngUL
         4HzB9x5OiXoB0viqwYq5Te4w7QV4RhfKozM5dXhlDM9W18UQQbRiceScm5aGVxomlR8e
         uAHw3c6WOMuhm2suxVd5kJ2NqyoIF85hmnHEjU88WW2ybF0gKZ5d9mQA8R3njqndWDEh
         GrAApL6+Sxq3SkY/SSMLEb0pPrCN3aPIEU02VQAzVzFouxbrRvArvHF/sUvKC2ThDyr5
         fEQg==
X-Gm-Message-State: AOAM532/znmTh8teXF/moDNEqEHPaWqrtAfJpbgLreugZVc2eDatT/V4
	RrrMLCkGCO1B1eks5Ds3E487Q7vuwbshBw==
X-Google-Smtp-Source: ABdhPJxcNd92D9jwi4fFWYidyO9ftBQncvINVSmi6Rw8NLxNoTlbbhl8F8OzmiQH2nLRPellgFM5/Q==
X-Received: by 2002:a17:902:d909:b029:11b:870f:ddad with SMTP id c9-20020a170902d909b029011b870fddadmr4969488plz.81.1624026302693;
        Fri, 18 Jun 2021 07:25:02 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:1491:e8e7:385b:7a68? ([2601:202:4180:a5c0:1491:e8e7:385b:7a68])
        by smtp.gmail.com with ESMTPSA id v6sm8397962pfi.46.2021.06.18.07.25.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 07:25:02 -0700 (PDT)
Subject: Re: [yocto] [PATCH] smack: add 3 cves to allowlist
To: Sekine Shigeki <sekine.shigeki@fujitsu.com>, yocto@lists.yoctoproject.org
References: <20210618121650.4798-1-sekine.shigeki@fujitsu.com>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <8a74df28-51fd-da75-7cd4-94fcffd42374@gmail.com>
Date: Fri, 18 Jun 2021 07:25:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210618121650.4798-1-sekine.shigeki@fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 6/18/21 5:16 AM, Sekine Shigeki wrote:
> CVE-2014-0363, CVE-2014-0364, CVE-2016-10027 are not for smack of smack-team(https://github.com/smack-team/smack) but other project.

Thanks. So this is for meta-security layer based on version.

- armin
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

