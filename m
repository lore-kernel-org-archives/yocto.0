Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web10.20307.1599925852240326618
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Sep 2020 08:50:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fnBMJwuD;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id e4so2362730pln.10
        for <yocto@lists.yoctoproject.org>; Sat, 12 Sep 2020 08:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=1u2qXoZ07pESRhdGJi8BBm0c1jBybHff5qdDWrlE2DA=;
        b=fnBMJwuDF2LfzykL1EQnrPbclmpgicbCxV0GhJuNwaW7zApbXbvKozQR1xN4NqY1WP
         bcjIxNuL3/0Dt7gNQKMUi1PfGKaEr7IKYgoSdYJM+0KpbEpyv/rJWmDlaka6dsm1TF4T
         QAdDVsxIe7qST5p+zu8cvWMRye82oBfXLbKHESLjokmY09D2psEmY3XNVRXYDFnDl0bK
         fzgPEiqb4DQndF9paDcb/kiB7CFkBbF50QhX5ohxMkXArC0U2/GA2aSWuLGIP0z0sx3Z
         WjwjAlDkP4K3hAKgPUGEoNpL7jmDOidNX5VPfrUmWWzQzXAiRzkTcSo7wPr50acr/M+O
         /Jzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=1u2qXoZ07pESRhdGJi8BBm0c1jBybHff5qdDWrlE2DA=;
        b=Glk2gs6X4VCyUtudE8tSdSDGSHUsf9u4z3ZJ8kFcj5pfApYsKQKRWv2xNxZXhpqhRX
         SN6ZrQIVeUctoNGuldZts7a3Ua81DxJqrq9w9L/LzC6rKFdinPOkfl18P6TVVQ45xGd4
         B4MWjGOs5+1suCW6ZxONFK258oJmh3J2MMHDU5IiLc0/PcauRf1zZTpULF5bk6mdUKWX
         4PY+JC8pPLkPp5DQcFOP82VOZJ+MDE7Zqva20bboMwWVQuLOojsk52X/eW36IyY1EV99
         OYKqcvpSvcqVSU9NhQ+mfEWS7V8SP7AqVzjuijeQ7ezs8uw1mf9FO9gy6e+bVLXV8JRU
         ZoFA==
X-Gm-Message-State: AOAM5314zgrTMlPXBNENL2jvleNg+N2N0k/fLMxJAZDeAU6G3afa4isJ
	WABVloHtKytCJbL1+tlIfbm3/t0oP/U=
X-Google-Smtp-Source: ABdhPJz8kOsy5yu/a8/Puv88N8IRwT8YUsRc1Uh0GPi6gBU2jFijKfrQkdTugVip8SEQwhe6aHpg1g==
X-Received: by 2002:a17:90a:7ac1:: with SMTP id b1mr6680968pjl.121.1599925851527;
        Sat, 12 Sep 2020 08:50:51 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:e1aa:69c3:1411:f726? ([2601:202:4180:a5c0:e1aa:69c3:1411:f726])
        by smtp.gmail.com with ESMTPSA id e125sm5571408pfe.154.2020.09.12.08.50.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 08:50:51 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] sssd: Make manpages buildable
To: =?UTF-8?Q?Jonatan_P=c3=a5lsson?= <jonatan.p@gmail.com>,
 yocto@lists.yoctoproject.org
References: <20200825120118.370966-1-jonatan.p@gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <419ba2d0-1dd2-0de3-ba71-1aa5702e50c4@gmail.com>
Date: Sat, 12 Sep 2020 08:50:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200825120118.370966-1-jonatan.p@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

merged

thanks

On 8/25/20 5:01 AM, Jonatan Pålsson wrote:
> Some XML related fixes are needed to make the sssd manpages buildable
>
> Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
> ---
>  ...AC_CHECK_FILE-when-building-manpages.patch | 34 +++++++++++++++++++
>  recipes-security/sssd/sssd_1.16.4.bb          |  4 ++-
>  2 files changed, 37 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-security/sssd/files/0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch
>
> diff --git a/recipes-security/sssd/files/0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch b/recipes-security/sssd/files/0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch
> new file mode 100644
> index 0000000..b64670c
> --- /dev/null
> +++ b/recipes-security/sssd/files/0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch
> @@ -0,0 +1,34 @@
> +From d54aa109600bcd02bf72cfe64c01935890a102a1 Mon Sep 17 00:00:00 2001
> +From: =?UTF-8?q?Jonatan=20P=C3=A5lsson?= <jonatan.p@gmail.com>
> +Date: Fri, 21 Aug 2020 14:45:10 +0200
> +Subject: [PATCH] build: Don't use AC_CHECK_FILE when building manpages
> +MIME-Version: 1.0
> +Content-Type: text/plain; charset=UTF-8
> +Content-Transfer-Encoding: 8bit
> +
> +AC_CHECK_FILE does not support cross-compilation, and will only check
> +the host rootfs. Replace AC_CHECK_FILE with a 'test -f <FILE>' instead,
> +to allow building manpages when cross-compiling.
> +
> +Upstream-status: Submitted [https://github.com/SSSD/sssd/pull/5289]
> +Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
> +---
> + src/external/docbook.m4 | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/src/external/docbook.m4 b/src/external/docbook.m4
> +index deb8632fa..acdc89a68 100644
> +--- a/src/external/docbook.m4
> ++++ b/src/external/docbook.m4
> +@@ -18,7 +18,7 @@ dnl Checks if the XML catalog given by FILE exists and
> + dnl if a particular URI appears in the XML catalog
> + AC_DEFUN([CHECK_STYLESHEET],
> + [
> +-  AC_CHECK_FILE($1, [], [AC_MSG_ERROR([could not find XML catalog])])
> ++  AS_IF([test -f "$1"], [], [AC_MSG_ERROR([could not find XML catalog])])
> + 
> +   AC_MSG_CHECKING([for ifelse([$3],,[$2],[$3]) in XML catalog])
> +   if AC_RUN_LOG([$XSLTPROC --catalogs --nonet --noout "$2" >&2]); then
> +-- 
> +2.26.1
> +
> diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
> index 2c3c803..916f1ac 100644
> --- a/recipes-security/sssd/sssd_1.16.4.bb
> +++ b/recipes-security/sssd/sssd_1.16.4.bb
> @@ -17,6 +17,7 @@ SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz \
>             file://sssd.conf \
>             file://volatiles.99_sssd \
>             file://fix-ldblibdir.patch \
> +           file://0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch \
>             "
>  
>  SRC_URI[md5sum] = "757bbb6f15409d8d075f4f06cb678d50"
> @@ -41,7 +42,7 @@ PACKAGECONFIG[autofs] = "--with-autofs, --with-autofs=no"
>  PACKAGECONFIG[crypto] = "--with-crypto=libcrypto, , libcrypto"
>  PACKAGECONFIG[curl] = "--with-kcm, --without-kcm, curl jansson"
>  PACKAGECONFIG[infopipe] = "--with-infopipe, --with-infopipe=no, "
> -PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
> +PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no, libxslt-native docbook-xml-dtd4-native docbook-xsl-stylesheets-native"
>  PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
>  PACKAGECONFIG[nscd] = "--with-nscd=${sbindir}, --with-nscd=no "
>  PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
> @@ -60,6 +61,7 @@ EXTRA_OECONF += " \
>      --enable-pammoddir=${base_libdir}/security \
>      --without-python2-bindings \
>      --without-secrets \
> +    --with-xml-catalog-path=${STAGING_ETCDIR_NATIVE}/xml/catalog \
>  "
>  
>  do_configure_prepend() {
>
> 

