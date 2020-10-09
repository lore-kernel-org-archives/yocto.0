Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web11.15080.1602253634663864629
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Oct 2020 07:27:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=c3g9nrxu;
 spf=pass (domain: gmail.com, ip: 209.85.214.175, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id h2so4523531pll.11
        for <yocto@lists.yoctoproject.org>; Fri, 09 Oct 2020 07:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=vlK4MnZtVcFr5iHvHXVxU+sZ+bRUpY2XhYCVMHl0jYI=;
        b=c3g9nrxuxoLCY751cEfOtXyD99dCW+fRycpFmVYpJ/RScY98kgiKlHUaFP9+stoGam
         OKzz4xS+YyOcyePUiYeGOJ3aIvtR+FIfuu5Lls1C8t8uqKD7RDlzRrn8AZFNoXR8W1Cj
         GOqwGJ0HNqLgNrLIvVtuGkqs90IohEOrYyEWsmBfuq0WT7b9FnIip+0AFzZcjd0uW7dI
         V+mcG1hpDOInEU639BANTngehfAyICVp1f1kBJ2VwlczqLL7adHiu0frvvLbWMpojsbG
         d29mDOfgCp3IfugRKoW5/wUp9b2b3aF8rpu+NG7BO/1pt7TLcW3+2kqeBOLK9LRGKN97
         gduw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=vlK4MnZtVcFr5iHvHXVxU+sZ+bRUpY2XhYCVMHl0jYI=;
        b=O+IUGmLQYnk3xfRlR/fe90i5ALekjCiS7g0lW9cxlVOuGd+uVXi+epbWzjEtIlC1AZ
         wtiKCapG03DFOyIZV5n8WPAz/kjAoz/V015U3eDX618K8HR0HUHYhetqlHVd97rkPI23
         T+YBzRgYS93rzGKaNzTV0gNNYxYdNT0CuPvblIXWpc9EFvIqMnG4qGVV/pEHcRyBFSdb
         7mEKpxhte9l11yrVz5b9AbszqJdZebiRQDDc69b+3rrAhy4JfagzsBUinDBv1z8AGLJB
         9B2K5LtsfpIHdWfnrvmVlZf6EpggDnpSBwB9M1bd6OuMASspj4iGE9zhWQy1YHHGP2+B
         GoRQ==
X-Gm-Message-State: AOAM5327+kGaNkEknQ8TiKBknSMHqF4wcyBmYMfB+8+fHCxoMZjVidkA
	2gQ8BgjbYuU8spWdRf/MnOfipSwtDD8=
X-Google-Smtp-Source: ABdhPJzU3WBfr+8LVd2mS2s3MAPOeUQkyVdFngh+YYJQPQysHfQvxKSpKimWn/wIwdLabJ7sgdeV/w==
X-Received: by 2002:a17:902:8b89:b029:d2:4345:5dd with SMTP id ay9-20020a1709028b89b02900d2434505ddmr12890399plb.57.1602253633956;
        Fri, 09 Oct 2020 07:27:13 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:f1c6:e45a:6950:664b? ([2601:202:4180:a5c0:f1c6:e45a:6950:664b])
        by smtp.gmail.com with ESMTPSA id j20sm11422512pfd.40.2020.10.09.07.27.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 07:27:13 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH 5/7] sssd: update to latest ltm 1.16.5
To: yocto@lists.yoctoproject.org
References: <20201009140812.21765-1-akuster808@gmail.com>
 <163C5828A1566392.8231@lists.yoctoproject.org>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <0527960d-d743-0418-bf76-0e712ec8bdb9@gmail.com>
Date: Fri, 9 Oct 2020 07:27:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <163C5828A1566392.8231@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US


this needs "musl-nscd" which was submitted to meta-oe if you plan on
building for musl

 

On 10/9/20 7:08 AM, akuster via lists.yoctoproject.org wrote:
> fix musl support
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  ...defines-which-otherwise-are-availabl.patch | 32 +++++++++++++++++++
>  .../sssd/{sssd_1.16.4.bb => sssd_1.16.5.bb}   |  8 +++--
>  2 files changed, 37 insertions(+), 3 deletions(-)
>  create mode 100644 recipes-security/sssd/files/0002-Provide-missing-defines-which-otherwise-are-availabl.patch
>  rename recipes-security/sssd/{sssd_1.16.4.bb => sssd_1.16.5.bb} (94%)
>
> diff --git a/recipes-security/sssd/files/0002-Provide-missing-defines-which-otherwise-are-availabl.patch b/recipes-security/sssd/files/0002-Provide-missing-defines-which-otherwise-are-availabl.patch
> new file mode 100644
> index 0000000..1a22332
> --- /dev/null
> +++ b/recipes-security/sssd/files/0002-Provide-missing-defines-which-otherwise-are-availabl.patch
> @@ -0,0 +1,32 @@
> +From 37a0999e5a9f54e1c61a02a7fbab6fcd04738b3c Mon Sep 17 00:00:00 2001
> +From: Armin Kuster <akuster808@gmail.com>
> +Date: Thu, 8 Oct 2020 05:54:13 -0700
> +Subject: [PATCH] Provide missing defines which otherwise are available on
> + glibc system headers
> +
> +Signed-off-by: Armin Kuster <akuster808@gmail.com>
> +
> +Upsteam-Status: Pending
> +
> +---
> + src/util/util.h | 4 ++++
> + 1 file changed, 4 insertions(+)
> +
> +diff --git a/src/util/util.h b/src/util/util.h
> +index 8a754dbfd..6e55b4bdc 100644
> +--- a/src/util/util.h
> ++++ b/src/util/util.h
> +@@ -76,6 +76,10 @@
> + #define MAX(a, b)  (((a) > (b)) ? (a) : (b))
> + #endif
> + 
> ++#ifndef ALLPERMS
> ++# define ALLPERMS (S_ISUID|S_ISGID|S_ISVTX|S_IRWXU|S_IRWXG|S_IRWXO)/* 07777 */
> ++#endif
> ++
> + #define SSSD_MAIN_OPTS SSSD_DEBUG_OPTS
> + 
> + #define SSSD_SERVER_OPTS(uid, gid) \
> +-- 
> +2.17.1
> +
> diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.5.bb
> similarity index 94%
> rename from recipes-security/sssd/sssd_1.16.4.bb
> rename to recipes-security/sssd/sssd_1.16.5.bb
> index e54fa98..9784ec7 100644
> --- a/recipes-security/sssd/sssd_1.16.4.bb
> +++ b/recipes-security/sssd/sssd_1.16.5.bb
> @@ -6,7 +6,9 @@ LICENSE = "GPLv3+"
>  LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
>  
>  DEPENDS = "openldap cyrus-sasl libtdb ding-libs libpam c-ares krb5 autoconf-archive"
> -DEPENDS += "libldb dbus libtalloc libpcre glib-2.0 popt e2fsprogs libtevent"
> +DEPENDS_append = " libldb dbus libtalloc libpcre glib-2.0 popt e2fsprogs libtevent"
> +
> +DEPENDS_append_libc-musl = " musl-nscd"
>  
>  # If no crypto has been selected, default to DEPEND on nss, since that's what
>  # sssd will pick if no active choice is made during configure
> @@ -19,10 +21,10 @@ SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz \
>             file://fix-ldblibdir.patch \
>             file://0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch \
>             file://0001-nss-Collision-with-external-nss-symbol.patch \
> +           file://0002-Provide-missing-defines-which-otherwise-are-availabl.patch \
>             "
>  
> -SRC_URI[md5sum] = "757bbb6f15409d8d075f4f06cb678d50"
> -SRC_URI[sha256sum] = "6bb212cd6b75b918e945c24e7c3f95a486fb54d7f7d489a9334cfa1a1f3bf959"
> +SRC_URI[sha256sum] = "2e1a7bf036b583f686d35164f2d79bdf4857b98f51fe8b0d17aa0fa756e4d0c0"
>  
>  inherit autotools pkgconfig gettext python3-dir features_check systemd
>  
>
> 
>

