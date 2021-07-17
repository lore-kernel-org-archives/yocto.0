Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web12.8775.1626558124535199246
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Jul 2021 14:42:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aec/p+NR;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id x16so7463871plg.3
        for <yocto@lists.yoctoproject.org>; Sat, 17 Jul 2021 14:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=gEAjIg4g9cLDTYyhDWAbUUdF2Pcvd7as8fVSr8si7M8=;
        b=aec/p+NRnx0A1Rg6bqO4MGIowf+1aX8+nOReWnewIG+GaWzgj8LXxaK/nOoEYF67K4
         uIKCx2JAoFI/dyYkFTxbLz2oyAXHLeZqH96/w3x0lfCY3lZnEPsZoNoLuY0Ot9aTgSHJ
         gU3UBhi9dGu0Z2hla02THmNjdDu3Wqb6p2lkI7/ueZpaXzg0GbubH52zJ3nnc5ZQRA0h
         nQe2/TYQ+LjORWZPDfkeENYDBa6pYWEgNCgJRK/uTrkspgT6vlolrLO/Pr2U6FD9musC
         FScyZqjOTgtbm45ioywhazwDljT8UcjATJK92GWIvc4a+Z7AwI0kRz/kcN5780puIcl9
         0klg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=gEAjIg4g9cLDTYyhDWAbUUdF2Pcvd7as8fVSr8si7M8=;
        b=pvWpJcsPS5Spq67LNsy42iKX8VlPcLTVVBPJlGuWrpzXQTZ7wf7IIWUDJ4zMLv506H
         PtJ19GXJBCXJySBOisADrLWDkLCKk/EnePYm0ucpyZ9hH9zCSEtn4ajPipel7H7rCXPN
         vTaT+MZBkfWmrzP1x7Df0UMppShkpu83YwcSPzZIbOdxeY6WDAD2D47HCWNXzihlOO9K
         a9BVPrr012sHh9cojr0+BlZiAtev8hwQtLr1MymxOPTtUqFkGYegrdYsxP2eLKbWZUG/
         glhndbdiCTOgZ6X3ejnK9yMH5tx7p9Lg+6fspvWYBgdoNr8gSn/k4XL6C43IdxIUdP/e
         gmwg==
X-Gm-Message-State: AOAM530RhQ4pcK/FY7HUFgxFApn+x6VkaQJ83U6vxVI+uJSBs46eZitV
	bFjv5SpkCw3HnyNpLtAA2lJxMTgAZJI=
X-Google-Smtp-Source: ABdhPJwAT0T18yvVIgjjX1hRQnLyaZ32ye0LQHm30svOO6/1glLhsDxbXyfEVKp98TFu9J6OPuIVhg==
X-Received: by 2002:a17:90a:7345:: with SMTP id j5mr22123666pjs.64.1626558123607;
        Sat, 17 Jul 2021 14:42:03 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:5b11:9c4:d91e:7217? ([2601:202:4180:a5c0:5b11:9c4:d91e:7217])
        by smtp.gmail.com with ESMTPSA id j10sm3576992pfe.215.2021.07.17.14.42.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jul 2021 14:42:03 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] Do not use clang toolchain in Parsec recipes
To: Anton Antonov <anton.antonov@arm.com>, yocto@lists.yoctoproject.org
References: <20210715114205.1801367-1-Anton.Antonov@arm.com>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <40840bbf-7708-a041-7619-4659ad37e43f@gmail.com>
Date: Sat, 17 Jul 2021 14:42:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210715114205.1801367-1-Anton.Antonov@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 7/15/21 4:42 AM, Anton Antonov wrote:
> Signed-off-by: Anton Antonov <Anton.Antonov@arm.com>

Merged.

thanks
Armin
> ---
>  .../recipes-parsec/parsec-service/parsec-service_0.7.0.bb      | 3 +--
>  meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb    | 2 --
>  2 files changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
> index 0e14955..d57a43a 100644
> --- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
> +++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
> @@ -10,8 +10,7 @@ SRC_URI += "crate://crates.io/parsec-service/${PV} \
>              file://parsec-tmpfiles.conf \
>  "
>  
> -DEPENDS = "tpm2-tss"
> -TOOLCHAIN = "clang"
> +DEPENDS = "tpm2-tss clang-native"
>  
>  CARGO_BUILD_FLAGS += " --features all-providers,cryptoki/generate-bindings,tss-esapi/generate-bindings"
>  
> diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb
> index 35c65c0..881f8d8 100644
> --- a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb
> +++ b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.3.0.bb
> @@ -7,8 +7,6 @@ inherit cargo
>  SRC_URI += "crate://crates.io/parsec-tool/${PV} \
>  "
>  
> -TOOLCHAIN = "clang"
> -
>  do_install() {
>    install -d ${D}/${bindir}
>    install -m 755 "${B}/target/${TARGET_SYS}/release/parsec-tool" "${D}${bindir}/parsec-tool"
>
> 
>

