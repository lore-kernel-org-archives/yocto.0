Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web08.9206.1627837057429946138
 for <yocto@lists.yoctoproject.org>;
 Sun, 01 Aug 2021 09:57:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fm1NyGWX;
 spf=pass (domain: gmail.com, ip: 209.85.216.45, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id b6so22114458pji.4
        for <yocto@lists.yoctoproject.org>; Sun, 01 Aug 2021 09:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=4NjdusurcslehHbIWoB4PtWk+EmNR+9TNsUYDRRBKh8=;
        b=Fm1NyGWXs/X8yyYMHoaj+PcUpatRwhWG4Mgt5uDlQK+xpyGIcnTslvPVcKNezIyzGU
         pSMv7gV20V5t5r49dQwVz9DZ/ZTJBTN1DnFDpeS2L7yFB23v7dH8q0NxR+ZWAPGmg5wU
         qT9syT5HJvCBlCM4PQS2gcZVj6+FZNHD5RmgGo9uNP7+6n1+V6p6IYGxY3bQtpA5eAo6
         xfHwH4w67Kji976/ifUa8pq87n78fqjz4/xyzLkSkljReparnanDRC18fUZm2OkGSC4k
         CQiYVUEXKpLXDUnLcx3b1KhYxXTZ00e9i0Tk0s28A3e4/qdLgixoJlB1XOOPZU9DCgb2
         wehQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=4NjdusurcslehHbIWoB4PtWk+EmNR+9TNsUYDRRBKh8=;
        b=ZQHyPl4u/AD2WQswhzrN5+U1ZzuKziO7zZrGxgV4COYJGLGWFvx8dMkzh+Ilw2DV8h
         rG6Hw9Bh1tfqKQhCZGVE1BtNNkn5A0mWzNlx69cDYHI4G7luZwpvLaeG2z1HeeN65Yzb
         lnINBPFSdcqR3oXqM5uwSSPyE58CFgL+ulRcFiBuzWXGwehfRXZmXXuPatVy0d8Bzbqb
         P9N93+ujbJ8M/Wvn3R5E62rm12/H+WrpAH77+v3WGt2LqJCUHMBHP2f8Is8imSJ7VvIU
         pzv7l2uSvX2uMRG8O+LEW648z4hwHwxf48XQD9O3A+Xv4vA10omI65grAIeFd6EDMbur
         KicQ==
X-Gm-Message-State: AOAM5333oE38UPAiXeQh47Dzwppyl287yF7g3Fx54yZnedvirs2w+ZmX
	PqeRmZ7EHKo1qnuCrQClilCfVAu+kOg=
X-Google-Smtp-Source: ABdhPJywQxysZt03fyZSBe63B3HqsS09lGZ1uw2niTPjpkel2uoNx3o5JLlbSu6gOlnl4ho2N5HFWg==
X-Received: by 2002:a65:5083:: with SMTP id r3mr6508354pgp.161.1627837056806;
        Sun, 01 Aug 2021 09:57:36 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from [192.168.135.41] ([12.176.236.254])
        by smtp.gmail.com with ESMTPSA id j13sm9766077pgp.29.2021.08.01.09.57.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Aug 2021 09:57:36 -0700 (PDT)
Subject: Re: [yocto] [meta-security][WIP][PATCH 2/2] layer.conf: Update to honister
To: Martin Jansa <Martin.Jansa@gmail.com>, yocto@lists.yoctoproject.org
References: <20210730092518.14608-1-Martin.Jansa@gmail.com>
 <20210730092518.14608-2-Martin.Jansa@gmail.com>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <ae9f35ab-999c-d199-d407-26996fa1cb14@gmail.com>
Date: Sun, 1 Aug 2021 09:57:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730092518.14608-2-Martin.Jansa@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged

thanks

On 7/30/21 2:25 AM, Martin Jansa wrote:
> This marks the layers as compatible with honister now they use the new override
> syntax.
>
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  conf/layer.conf                          | 2 +-
>  meta-hardening/conf/layer.conf           | 2 +-
>  meta-integrity/conf/layer.conf           | 2 +-
>  meta-parsec/conf/layer.conf              | 2 +-
>  meta-security-compliance/conf/layer.conf | 2 +-
>  meta-security-isafw/conf/layer.conf      | 2 +-
>  meta-tpm/conf/layer.conf                 | 2 +-
>  7 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 7853d6e..cdcfaee 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "security"
>  BBFILE_PATTERN_security = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_security = "8"
>  
> -LAYERSERIES_COMPAT_security = "hardknott"
> +LAYERSERIES_COMPAT_security = "honister"
>  
>  LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
>  
> diff --git a/meta-hardening/conf/layer.conf b/meta-hardening/conf/layer.conf
> index 085ea45..1cd6f4f 100644
> --- a/meta-hardening/conf/layer.conf
> +++ b/meta-hardening/conf/layer.conf
> @@ -8,6 +8,6 @@ BBFILE_COLLECTIONS += "harden-layer"
>  BBFILE_PATTERN_harden-layer = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_harden-layer = "10"
>  
> -LAYERSERIES_COMPAT_harden-layer = "hardknott"
> +LAYERSERIES_COMPAT_harden-layer = "honister"
>  
>  LAYERDEPENDS_harden-layer = "core openembedded-layer"
> diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
> index 37776f8..e9446e6 100644
> --- a/meta-integrity/conf/layer.conf
> +++ b/meta-integrity/conf/layer.conf
> @@ -20,7 +20,7 @@ INTEGRITY_BASE := '${LAYERDIR}'
>  # interactive shell is enough.
>  OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
>  
> -LAYERSERIES_COMPAT_integrity = "hardknott"
> +LAYERSERIES_COMPAT_integrity = "honister"
>  # ima-evm-utils depends on keyutils from meta-oe
>  LAYERDEPENDS_integrity = "core openembedded-layer"
>  
> diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
> index 2d4aa12..86d41b2 100644
> --- a/meta-parsec/conf/layer.conf
> +++ b/meta-parsec/conf/layer.conf
> @@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "parsec-layer"
>  BBFILE_PATTERN_parsec-layer = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_parsec-layer = "5"
>  
> -LAYERSERIES_COMPAT_parsec-layer = "hardknott gatesgarth"
> +LAYERSERIES_COMPAT_parsec-layer = "honister"
>  
>  LAYERDEPENDS_parsec-layer = "core rust-layer clang-layer tpm-layer"
>  BBLAYERS_LAYERINDEX_NAME_parsec-layer = "meta-parsec"
> diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
> index 2024d4a..ec4fd47 100644
> --- a/meta-security-compliance/conf/layer.conf
> +++ b/meta-security-compliance/conf/layer.conf
> @@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "scanners-layer"
>  BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_scanners-layer = "10"
>  
> -LAYERSERIES_COMPAT_scanners-layer = "hardknott"
> +LAYERSERIES_COMPAT_scanners-layer = "honister"
>  
>  LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
>  
> diff --git a/meta-security-isafw/conf/layer.conf b/meta-security-isafw/conf/layer.conf
> index 1f1095f..86b0d4b 100644
> --- a/meta-security-isafw/conf/layer.conf
> +++ b/meta-security-isafw/conf/layer.conf
> @@ -14,4 +14,4 @@ LAYERVERSION_security-isafw = "1"
>  
>  LAYERDEPENDS_security-isafw = "core"
>  
> -LAYERSERIES_COMPAT_security-isafw = "hardknott"
> +LAYERSERIES_COMPAT_security-isafw = "honister"
> diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
> index 0b102c5..b00dd3c 100644
> --- a/meta-tpm/conf/layer.conf
> +++ b/meta-tpm/conf/layer.conf
> @@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
>  BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_tpm-layer = "10"
>  
> -LAYERSERIES_COMPAT_tpm-layer = "hardknott"
> +LAYERSERIES_COMPAT_tpm-layer = "honister"
>  
>  LAYERDEPENDS_tpm-layer = " \
>      core \
>
> 
>

