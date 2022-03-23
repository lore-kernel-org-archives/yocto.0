Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A60DBC433F5
	for <webhook@archiver.kernel.org>; Wed, 23 Mar 2022 21:34:41 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web12.3010.1648071280876241853
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 14:34:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RVigOopo;
 spf=pass (domain: gmail.com, ip: 209.85.216.53,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id
 bx24-20020a17090af49800b001c6872a9e4eso3144830pjb.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 14:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=aomo4xAPmysHPuSFwIjVXwZh8sfjQsSRUAGxYvOg4ug=;
        b=RVigOopo2wbpF5pu56rrnCAPoFM2oBTjFGCfq0UDEINAQTMZzIb3NekqpXfAwJj546
         1CXYxBfdME8MaVhDmKZFMUNTbsGTEwhSddVr60YCFrJi7xfO+HIri+0lyzJXiSYMQ2zy
         +Bf4sEjfHrXxdnmsM1MF7IbEgsxtXSFn72MQE5D6jxwNlOwFh7HkOD5p0t/9k0vipntC
         fxRHvXhVRJJ9HEZ/kdcfR1b9bX6Tch1h0Y8SWLVHRDV5l/+8ElAqVR/M7pV/zhQcoS6/
         wPT7Wp9yBs5LLHjXwfpeHW1GFvju/+vZRj7hpz995tmTxZVTN6M3XCHDp/6xx8Ya2pAy
         BisA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=aomo4xAPmysHPuSFwIjVXwZh8sfjQsSRUAGxYvOg4ug=;
        b=0a5Q4B2XuyjTxvppzdd4L37UaX7M+r65fAqothFgHtGZd+pKu+d/dsgrVJvFyMhGfv
         XCLfKm8q76Tpf5mIs63TmC58G7ckzRAmhbi6nkBBtmy7x+eaho/K7xzjX6WPCDVr21a8
         5pvHcEEmLeKCEpUJ6dphCpP9oi93Lm0U5s2umXdTOlEVu2rZPdbtnq0L08v/PnJKeHjP
         mgPqB3aRIisKuFjSk8KVRZj65CB3Vsg8s/V8DXjpShoqBOxxjyQ/BvLc6G4KvKxPUe2J
         X8ozfKF/b5tB2sLDY10EVCPKlZ9ypg8+XQd9meO6UlKii7OYZInv1E8XzfRWcG7mJaFh
         lZ7w==
X-Gm-Message-State: AOAM532W9C+N8Ln+izB7cGLWuTPQ1hA0+aAcFGNVu4F0N9vvBongL+vg
	OEnZ+aJ6PQ/e0810u2YtYyM=
X-Google-Smtp-Source: 
 ABdhPJwjCSIcd9gBU/s01s008bDjABWqqPdBIIYSdblYetfde09FCfMiVcpIqT81A21tAzY0OeQl7g==
X-Received: by 2002:a17:902:ce8f:b0:154:6031:b53e with SMTP id
 f15-20020a170902ce8f00b001546031b53emr2032470plg.159.1648071280089;
        Wed, 23 Mar 2022 14:34:40 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:a5c0:7082:9761:945:366f?
 ([2601:202:4180:a5c0:7082:9761:945:366f])
        by smtp.gmail.com with ESMTPSA id
 j14-20020a056a00174e00b004f776098715sm777613pfc.68.2022.03.23.14.34.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Mar 2022 14:34:39 -0700 (PDT)
Message-ID: <b9119d62-208b-3f00-e81a-76aefa3e5512@gmail.com>
Date: Wed, 23 Mar 2022 14:34:38 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [yocto] [meta-selinux][PATCH v2] Use SPDX style licensing format
Content-Language: en-US
To: Ashish Sharma <asharma@mvista.com>, yocto@lists.yoctoproject.org
References: <20220323203013.13914-1-asharma@mvista.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20220323203013.13914-1-asharma@mvista.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Mar 2022 21:34:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56540



On 3/23/22 13:30, Ashish Sharma wrote:
> WARNING: setools-4.4.0-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2 LGPLv2.1 [obsolete-license] \
> WARNING: policycoreutils-3.3-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2+ [obsolete-license] \
> WARNING: refpolicy-standard-2.20210908+gitAUTOINC+23a8d103f3-r0.2 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2 [obsolete-license] \
> WARNING: selinux-python-3.3-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2+ [obsolete-license] \
> WARNING: ecryptfs-utils-111-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPL-2.0 [obsolete-license] \
> WARNING: nikto-2.1.6-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2 [obsolete-license] \
> WARNING: bastille-3.2.1-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2 [obsolete-license] \
> WARNING: suricata-6.0.4-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2 [obsolete-license] \
> WARNING: samhain-server-4.4.6-r0.7 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2 [obsolete-license] \

Many of these recipes do not reside in meta-selinux.

WARNING: ecryptfs-utils-111-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPL-2.0 [obsolete-license] \
WARNING: nikto-2.1.6-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2 [obsolete-license] \
WARNING: bastille-3.2.1-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2 [obsolete-license] \
WARNING: suricata-6.0.4-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2 [obsolete-license] \
WARNING: samhain-server-4.4.6-r0.7 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2 [obsolete-license] \

live in meta-security.

-armin

> ...
>
> Signed-off-by: Ashish Sharma <asharma@mvista.com>
> ---
>   recipes-security/refpolicy/refpolicy_common.inc | 2 +-
>   recipes-security/selinux/checkpolicy_3.3.bb     | 2 +-
>   recipes-security/selinux/policycoreutils_3.3.bb | 2 +-
>   recipes-security/selinux/selinux-python_3.3.bb  | 2 +-
>   recipes-security/selinux/selinux-sandbox_3.3.bb | 2 +-
>   recipes-security/selinux/semodule-utils_3.3.bb  | 2 +-
>   recipes-security/setools/setools_4.4.0.bb       | 2 +-
>   7 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
> index dffc34a..96d0da1 100644
> --- a/recipes-security/refpolicy/refpolicy_common.inc
> +++ b/recipes-security/refpolicy/refpolicy_common.inc
> @@ -1,5 +1,5 @@
>   SECTION = "admin"
> -LICENSE = "GPLv2"
> +LICENSE = "GPL-2.0-only"
>   
>   LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
>   
> diff --git a/recipes-security/selinux/checkpolicy_3.3.bb b/recipes-security/selinux/checkpolicy_3.3.bb
> index 99ac470..ad90cc2 100644
> --- a/recipes-security/selinux/checkpolicy_3.3.bb
> +++ b/recipes-security/selinux/checkpolicy_3.3.bb
> @@ -6,7 +6,7 @@ binary policy. checkpolicy uses the static libsepol since it deals \
>   with low level details of the policy that have not been \
>   encapsulated/abstracted by a proper shared library interface."
>   SECTION = "base"
> -LICENSE = "GPLv2+"
> +LICENSE = "GPL-2.0-or-later"
>   LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
>   
>   require selinux_common.inc
> diff --git a/recipes-security/selinux/policycoreutils_3.3.bb b/recipes-security/selinux/policycoreutils_3.3.bb
> index 04f8ef7..552d354 100644
> --- a/recipes-security/selinux/policycoreutils_3.3.bb
> +++ b/recipes-security/selinux/policycoreutils_3.3.bb
> @@ -5,7 +5,7 @@ load_policy to load policies, setfiles to label filesystems, newrole \
>   to switch roles, and run_init to run /etc/init.d scripts in the proper \
>   context."
>   SECTION = "base"
> -LICENSE = "GPLv2+"
> +LICENSE = "GPL-2.0-or-later"
>   LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
>   
>   require selinux_common.inc
> diff --git a/recipes-security/selinux/selinux-python_3.3.bb b/recipes-security/selinux/selinux-python_3.3.bb
> index d130900..1bf1f63 100644
> --- a/recipes-security/selinux/selinux-python_3.3.bb
> +++ b/recipes-security/selinux/selinux-python_3.3.bb
> @@ -3,7 +3,7 @@ DESCRIPTION = "\
>   This package contains Python modules sepolgen, sepolicy; And the \
>   SELinux utilities audit2allow, chcat, semanage ..."
>   SECTION = "base"
> -LICENSE = "GPLv2+"
> +LICENSE = "GPL-2.0-or-later"
>   LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
>   
>   require selinux_common.inc
> diff --git a/recipes-security/selinux/selinux-sandbox_3.3.bb b/recipes-security/selinux/selinux-sandbox_3.3.bb
> index a20982c..cc9baad 100644
> --- a/recipes-security/selinux/selinux-sandbox_3.3.bb
> +++ b/recipes-security/selinux/selinux-sandbox_3.3.bb
> @@ -4,7 +4,7 @@ Run application within a tightly confined SELinux domain. The default \
>   sandbox domain only allows applications the ability to read and write \
>   stdin, stdout and any other file descriptors handed to it."
>   SECTION = "base"
> -LICENSE = "GPLv2+"
> +LICENSE = "GPL-2.0-or-later"
>   LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
>   
>   require selinux_common.inc
> diff --git a/recipes-security/selinux/semodule-utils_3.3.bb b/recipes-security/selinux/semodule-utils_3.3.bb
> index a8bca0e..06e28f4 100644
> --- a/recipes-security/selinux/semodule-utils_3.3.bb
> +++ b/recipes-security/selinux/semodule-utils_3.3.bb
> @@ -3,7 +3,7 @@ DESCRIPTION = "\
>   The utilities to create, expand, link and show the dependencies between \
>   the SELinux policy module packages."
>   SECTION = "base"
> -LICENSE = "GPLv2+"
> +LICENSE = "GPL-2.0-or-later"
>   LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
>   
>   require selinux_common.inc
> diff --git a/recipes-security/setools/setools_4.4.0.bb b/recipes-security/setools/setools_4.4.0.bb
> index b78af36..f1557b1 100644
> --- a/recipes-security/setools/setools_4.4.0.bb
> +++ b/recipes-security/setools/setools_4.4.0.bb
> @@ -6,7 +6,7 @@ libraries designed to facilitate SELinux policy analysis. \
>   This meta-package depends upon the main packages necessary to run \
>   SETools."
>   SECTION = "base"
> -LICENSE = "GPLv2 & LGPLv2.1"
> +LICENSE = "GPL-2.0-only & LGPL-2.1-only"
>   
>   S = "${WORKDIR}/git"
>   SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.4;protocol=https \
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56539): https://lists.yoctoproject.org/g/yocto/message/56539
> Mute This Topic: https://lists.yoctoproject.org/mt/89984977/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


