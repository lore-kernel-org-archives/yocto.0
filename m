Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12E01C433EF
	for <webhook@archiver.kernel.org>; Tue, 29 Mar 2022 20:27:20 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web10.1796.1648585639432589316
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Mar 2022 13:27:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DRrcZKY4;
 spf=pass (domain: gmail.com, ip: 209.85.210.179,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id h19so15919624pfv.1
        for <yocto@lists.yoctoproject.org>;
 Tue, 29 Mar 2022 13:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=P/FMnX882pzocVfDVsGdmIr5fIyCcGZLRrA+ZadAPy4=;
        b=DRrcZKY4o1R2DU7PY1cWyYVqSOY+Qha64DZjQ8q2EH8wZiFo/6Z+UcHFVJ1IwkXn4W
         G7NNo8eF1g80V6A7Z+N5Esi1ikj4L6Itr54mNz+4wEebrq/j85VeBcS1zOcZAsCvidJY
         kPfmzbn33p63a5ij1ea5U2QPGXOJ7yh5BZUWj+l/y4MUShuVEnIH93BOFFN3zD62L5OA
         kepB+5aakDXsRdlEJTR4DppWUX7gCwzTTEAYwmXJL3UxKB18kOxp5rQOBeUL3CAEg1OI
         5hgJMPCNJrlBwEG97UUw2JrLumhavIwljP2wnGv54J0briVryoQoPEAjZIcAP2Crtl+U
         Cgiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=P/FMnX882pzocVfDVsGdmIr5fIyCcGZLRrA+ZadAPy4=;
        b=D9Z4CzjRlBCeoNKKK4pt+6we+sW+efVV5H3/lydKpPyjYxEuysSjTs9tj2E1f5zCIz
         ZlaijQ+Bw5a5flUUm0XMJTOHrunM3pgfFA/3lQknD0OMtm5ILXg+Ncv91W3rsq7X5eAh
         Y1syvabYr29pqwetNKi8KSW9FqqwGE0ihSy5iaFBpK8Frv4Cx54st3js6uk4oAM75sox
         wtKpMH8zBz9DiqmkLJ+IEYS/t5W4Y1M++gzij65Ey3TqKO2M3c8Aw42m1F4/U6LHFloP
         7CgAMc2gScUbt0qs4xOdchFx3NbTCKv4zRv11mtGpbL5/75ux6cb/YnQaMsfXmMtBxpk
         DBFg==
X-Gm-Message-State: AOAM533/V6XJ3TDDtHUhidgC1Z2smra3TUITTIWyl0DscqdtOl9Nswfp
	OPYuQDynunzzKHh6Om0NWO92QDwYCXY=
X-Google-Smtp-Source: 
 ABdhPJwdb1ZUTalJf3Rm15m3eHb3FXJ2FDJUZ45Zb8TaO9aYFrG4JZuSTO4hRC3huNi3IbbyHppkgQ==
X-Received: by 2002:a65:62d0:0:b0:381:d38:c7b0 with SMTP id
 m16-20020a6562d0000000b003810d38c7b0mr3243350pgv.186.1648585638935;
        Tue, 29 Mar 2022 13:27:18 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:a5c0:50bb:4b8b:e47d:9b25?
 ([2601:202:4180:a5c0:50bb:4b8b:e47d:9b25])
        by smtp.gmail.com with ESMTPSA id
 v23-20020a17090a521700b001bbfc181c93sm3587093pjh.19.2022.03.29.13.27.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Mar 2022 13:27:18 -0700 (PDT)
Message-ID: <97b1f01d-1d00-5fc8-572c-d28c88dd9536@gmail.com>
Date: Tue, 29 Mar 2022 13:27:17 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [yocto] [meta-security][PATCH 1/1] LICENSE: adopt standard SPDX
 names
Content-Language: en-US
To: Joe Slater <joe.slater@windriver.com>, yocto@lists.yoctoproject.org
Cc: randy.macleod@windriver.com
References: <20220329161826.7642-1-joe.slater@windriver.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220329161826.7642-1-joe.slater@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Mar 2022 20:27:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56583



On 3/29/22 09:18, Joe Slater wrote:
> Correct LICENSE for samhain, ecrypt-utils, ding-libs,
> libmhash, and sssd.
>
> Signed-off-by: Joe Slater <joe.slater@windriver.com>
> ---
>   recipes-ids/samhain/samhain.inc                       | 2 +-
>   recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb | 2 +-
>   recipes-security/libdhash/ding-libs_0.6.1.bb          | 2 +-
>   recipes-security/libmhash/libmhash_0.9.9.9.bb         | 2 +-
>   recipes-security/sssd/sssd_2.5.2.bb                   | 2 +-
>   5 files changed, 5 insertions(+), 5 deletions(-)

Mater-next has these.

https://git.yoctoproject.org/meta-security/commit/?h=master-next&id=ece41f7543bbd42c57f4208c7309f90cbd02e852

Looks like a few more need to be added based on these changes.

-armin
>
> diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
> index 077e118..fe0718d 100644
> --- a/recipes-ids/samhain/samhain.inc
> +++ b/recipes-ids/samhain/samhain.inc
> @@ -1,6 +1,6 @@
>   DESCRIPTION = "Provides file integrity checking and log file monitoring/analysis"
>   HOMEPAGE    = "http://www.la-samhna.de/samhain/"
> -LICENSE     = "GPLv2"
> +LICENSE     = "GPL-2.0-only"
>   LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
>   
>   PV = "4.4.6"
> diff --git a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
> index 9aefc32..5f8cf3c 100644
> --- a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
> +++ b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
> @@ -6,7 +6,7 @@ DESCRIPTION = "eCryptfs is a stacked cryptographic filesystem \
>   HOMEPAGE = "https://launchpad.net/ecryptfs"
>   SECTION = "base"
>   
> -LICENSE = "GPL-2.0"
> +LICENSE = "GPL-2.0-only"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b"
>   
>   DEPENDS = "keyutils libgcrypt intltool-native glib-2.0-native"
> diff --git a/recipes-security/libdhash/ding-libs_0.6.1.bb b/recipes-security/libdhash/ding-libs_0.6.1.bb
> index 6046fa0..843850f 100644
> --- a/recipes-security/libdhash/ding-libs_0.6.1.bb
> +++ b/recipes-security/libdhash/ding-libs_0.6.1.bb
> @@ -2,7 +2,7 @@ SUMMARY = "Dynamic hash table implementation"
>   DESCRIPTION = "Dynamic hash table implementation"
>   HOMEPAGE = "https://fedorahosted.org/released/ding-libs"
>   SECTION = "base"
> -LICENSE = "GPLv3+"
> +LICENSE = "GPL-3.0-or-later"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
>   
>   SRC_URI = "https://fedorahosted.org/released/${BPN}/${BP}.tar.gz"
> diff --git a/recipes-security/libmhash/libmhash_0.9.9.9.bb b/recipes-security/libmhash/libmhash_0.9.9.9.bb
> index 9b34cb1..35c5ff8 100644
> --- a/recipes-security/libmhash/libmhash_0.9.9.9.bb
> +++ b/recipes-security/libmhash/libmhash_0.9.9.9.bb
> @@ -7,7 +7,7 @@ DESCRIPTION = "\
>     "
>   HOMEPAGE = "http://mhash.sourceforge.net/"
>   
> -LICENSE = "LGPLv2.0"
> +LICENSE = "LGPL-2.0-only"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7"
>   
>   S = "${WORKDIR}/mhash-${PV}"
> diff --git a/recipes-security/sssd/sssd_2.5.2.bb b/recipes-security/sssd/sssd_2.5.2.bb
> index 8bc8787..9f1d627 100644
> --- a/recipes-security/sssd/sssd_2.5.2.bb
> +++ b/recipes-security/sssd/sssd_2.5.2.bb
> @@ -2,7 +2,7 @@ SUMMARY = "system security services daemon"
>   DESCRIPTION = "SSSD is a system security services daemon"
>   HOMEPAGE = "https://pagure.io/SSSD/sssd/"
>   SECTION = "base"
> -LICENSE = "GPLv3+"
> +LICENSE = "GPL-3.0-or-later"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
>   
>   DEPENDS = "acl attr openldap cyrus-sasl libtdb ding-libs libpam c-ares krb5 autoconf-archive"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56580): https://lists.yoctoproject.org/g/yocto/message/56580
> Mute This Topic: https://lists.yoctoproject.org/mt/90112036/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


