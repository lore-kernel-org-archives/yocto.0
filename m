Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com [209.85.210.65])
 by mx.groups.io with SMTP id smtpd.web12.7642.1602822050342460648
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Oct 2020 21:20:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=N8cV9m2i;
 spf=pass (domain: gmail.com, ip: 209.85.210.65, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f65.google.com with SMTP id f37so1248481otf.12
        for <yocto@lists.yoctoproject.org>; Thu, 15 Oct 2020 21:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=jUkir+HkZYxk5lWkgs+VJmzcAuX+3fUq39I75y31kHw=;
        b=N8cV9m2iiZJ7APPM3I0iSBjgnB+NZ4K5Qbk1wNX8mqhv6Yr3x+t+aBepZVv2smhUQ9
         /aos/GhmfQ10+LA1HXtEt+WyAA2mqvxMR9cgh3gZB9dJUOdWMFTEEF7Lnx+Defn+Nz3y
         +Lhy1lt2vaIfCD3IrfpB3mhRdmmZoihzN8DYPRCqfx1KdiB2aVS34+nth8Q8AZRTCCQH
         ApGmG/KFjTaHIgVCjJvsqOfoDkO+Ype5atOOMeMrnM92d/8XuAfhS4UIhxxpIl/xYdHR
         lir6gyw7fDeS3NqIBOT6FxkiVrn6JlPfm5lfVaGy1E9kIiexH1jPdb14ebTbuolM1uh8
         Z7Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=jUkir+HkZYxk5lWkgs+VJmzcAuX+3fUq39I75y31kHw=;
        b=QgtWf5lv3AyBM2yOJir7hprR/vboaw38ZQ8qo1M/nl6zeQwE0nrMzeqPIPDxQlxLsl
         ANy/slzR2BX/xHm7+jfNQSyNWBPGZyrkG2rcWk+nnWWrcUyJ0PMj3fjSxRdN2dS86ebV
         BBzGKZBCzRoEMclsmcXuExqCSBtJKPdA82jVfZ8OIa3oWyFweLxqEYDfaogH/07ebKDV
         5ufGgOrNrYVLqt5TziZu1IDlWdE9zLuoWlH5aUd1GzM7w/363wl5SqXs8GL6RILcHT+Q
         RKqh7uiUvBhwbvmbocyoyCO1G6NOiWEnax3BKqMsXdyey6U1xUo1tsJAbngX2fXA18Ol
         KKhg==
X-Gm-Message-State: AOAM532b/CTx1VcO36+QDL+sKu2jOsfNnP6+zexU7ldR1PC5q5Y7Krxd
	+mYWNb8g6VCzzR4uAiH9sjN8z4fSQmg=
X-Google-Smtp-Source: ABdhPJyyQNFLIgYtfXFQBlWDbOSGVk5YI7yTzUCMitVJ+cFf7Squc7JP03PhDOBy5dPtCVb66UZEIA==
X-Received: by 2002:a9d:ac9:: with SMTP id 67mr1274491otq.321.1602822049177;
        Thu, 15 Oct 2020 21:20:49 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:65ad:e112:5db1:721c? ([2601:202:4180:a5c0:65ad:e112:5db1:721c])
        by smtp.gmail.com with ESMTPSA id a4sm614807oif.3.2020.10.15.21.20.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 21:20:48 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] scap-security-guide: add expat-native to DEPENDS
To: "Yu, Mingli" <mingli.yu@windriver.com>, yocto@lists.yoctoproject.org
References: <20201014094420.45715-1-mingli.yu@windriver.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <80f00fc7-15d3-fe87-95bc-50ab799eda58@gmail.com>
Date: Thu, 15 Oct 2020 21:20:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201014094420.45715-1-mingli.yu@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 10/14/20 2:44 AM, Yu, Mingli wrote:
> From: Mingli Yu <mingli.yu@windriver.com>
>
> Add expat-native to DEPENDS to fix the below do_configure error:
> | CMake Error at CMakeLists.txt:165 (message):
> |  xmlwf is required!
merged.

thanks
>
> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> ---
>  .../scap-security-guide/scap-security-guide.inc                 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
> index 66c2623..32fce0f 100644
> --- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
> +++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
> @@ -6,7 +6,7 @@ HOME_URL = "https://www.open-scap.org/security-policies/scap-security-guide/"
>  LIC_FILES_CHKSUM = "file://LICENSE;md5=97662e4486d9a1d09f358851d9f41a1a"
>  LICENSE = "LGPL-2.1"
>  
> -DEPENDS = "openscap-native python3 python3-pyyaml-native python3-jinja2-native libxml2-native"
> +DEPENDS = "openscap-native python3 python3-pyyaml-native python3-jinja2-native libxml2-native expat-native"
>  
>  S = "${WORKDIR}/git"
>  
>
> 
>

