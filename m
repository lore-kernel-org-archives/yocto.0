Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9993C433EF
	for <webhook@archiver.kernel.org>; Fri,  5 Nov 2021 17:35:20 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web12.8939.1636133720336954351
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 10:35:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=OOE+abrZ;
 spf=pass (domain: mvista.com, ip: 209.85.222.181,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-qk1-f181.google.com with SMTP id p138so2922459qke.10
        for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 10:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=WyZxXYD4WajyE8YL2M+88rwGEBwUP+SaojukuT5eSrk=;
        b=OOE+abrZT1rdguWdqxbXZBSH3kgMU+xOtn/fvS0cKDXQOhdDedKnh+fhv8yimeeiOy
         Tq31IGMDTAZZ3Z5ZwucT0TfgG0qGYWLIihyVFR8Fv8gA8Djdjsqtu8uGOMd7K06QwbId
         YfnR/2YyJ/auEx8JAjVwJcz8UrJclmmHsKI3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WyZxXYD4WajyE8YL2M+88rwGEBwUP+SaojukuT5eSrk=;
        b=MCGruYJkkYaHqgJZaRYX44QBQjXxWAUOqwH8KQr56abGLMPFUVKxhVUwEJvz+1Qqk0
         Q+kUJVT/3ZKiVZCUDAbnUyoPVH0335RHPzV3a1C/+WgY+n7iJAnlFJJe8GRi7enn4fWT
         oKBKN9z/cgP8l8FJ6u0UQA4ruijszJACNA8ubhNzi7ZiPvhlO1QIA7ttY/PJAIYOxiwv
         y8mnXo0JbMe8xhZ/PztB4aTNvhR6YSWVA+m4g9F/yUjXSt6KmpGgPBwO4uQ0BRb143by
         44D2WB/7DdfhgyodzfLijNZz+4ZQ9CVbJKRtp7pMPL7hlqvvg5QHmPd64YVo3eXiqpmJ
         7orQ==
X-Gm-Message-State: AOAM53180ENWBtZ8C2JMX+9UxTSidXbM/R+Vx39b5v+y1CwWai+fG5Gg
	KtnvHmPEk0x2kMZ0yJwkYG//qv7iFQwDwQ==
X-Google-Smtp-Source: 
 ABdhPJyzYekgi1HvReWfJjDjql+K7as2/BvrFOAciietuYVzP08LIjTCz4f0L2M+7I5lXaRHkMJQHQ==
X-Received: by 2002:a05:620a:2548:: with SMTP id
 s8mr47698086qko.173.1636133719422;
        Fri, 05 Nov 2021 10:35:19 -0700 (PDT)
Received: from [192.168.1.23] (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 bk7sm6007852qkb.72.2021.11.05.10.35.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Nov 2021 10:35:19 -0700 (PDT)
Message-ID: <ac7fcd12-b615-1cb7-9c8d-722a4f36a0d6@mvista.com>
Date: Fri, 5 Nov 2021 10:35:12 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [meta-cgl][PATCH] recipes: update SRC_URI branch and protocols
Content-Language: en-US
To: Yi Zhao <yi.zhao@windriver.com>, yocto@lists.yoctoproject.org
References: <20211105090625.574370-1-yi.zhao@windriver.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <20211105090625.574370-1-yi.zhao@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Nov 2021 17:35:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55253

Merged.

On 11/5/2021 2:06 AM, Yi Zhao wrote:
> Update SRC_URIs using git to include branch=master if no branch is set
> and also to use protocol=https for github urls.
>
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>   meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb | 2 +-
>   .../cluster-resource-agents/resource-agents_4.5.0.bb            | 2 +-
>   meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb                | 2 +-
>   meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb    | 2 +-
>   meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb        | 2 +-
>   meta-cgl-common/recipes-cgl/racoon2/racoon2_202003018.bb        | 2 +-
>   6 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
> index 9221f06..acd3149 100644
> --- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
> +++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
> @@ -11,7 +11,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=b70d30a00a451e19d7449d7465d02601 \
>   DEPENDS = "libxml2 libtool glib-2.0 bzip2 util-linux net-snmp openhpi"
>   
>   SRC_URI = " \
> -    git://github.com/ClusterLabs/${BPN}.git \
> +    git://github.com/ClusterLabs/${BPN}.git;branch=master;protocol=https \
>       file://0001-don-t-compile-doc-and-Error-Fix.patch \
>       file://0001-ribcl.py.in-Warning-Fix.patch \
>       file://0001-Update-for-python3.patch \
> diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
> index bd906b2..261681c 100644
> --- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
> +++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
> @@ -14,7 +14,7 @@ LICENSE:${PN}-extra = "GPLv3"
>   LICENSE:${PN}-extra-dbg = "GPLv3"
>   LICENSE:ldirectord = "GPLv2+"
>   
> -SRC_URI = "git://github.com/ClusterLabs/resource-agents \
> +SRC_URI = "git://github.com/ClusterLabs/resource-agents;branch=master;protocol=https \
>              file://01-disable-doc-build.patch \
>              file://02-set-OCF_ROOT_DIR-to-libdir-ocf.patch \
>              file://03-fix-header-defs-lookup.patch \
> diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
> index 531a053..43393d8 100644
> --- a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
> +++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
> @@ -13,7 +13,7 @@ DEPENDS = "asciidoc-native \
>   RDEPENDS:${PN} = "pacemaker python3-lxml python3-parallax gawk bash python3-doctest"
>   
>   S = "${WORKDIR}/git"
> -SRC_URI = "git://github.com/ClusterLabs/${BPN}.git \
> +SRC_URI = "git://github.com/ClusterLabs/${BPN}.git;branch=master;protocol=https \
>              file://tweaks_for_build.patch \
>              file://0001-orderedset.py-fix-deprecation-on-collections.Mutable.patch \
>             "
> diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
> index fa38006..7c32c54 100644
> --- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
> +++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
> @@ -12,7 +12,7 @@ SECTION = "System Environment/Base"
>   LICENSE = "GPLv2"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=8ef380476f642c20ebf40fecb0add2ec"
>   
> -SRC_URI = "git://github.com/markfasheh/ocfs2-tools \
> +SRC_URI = "git://github.com/markfasheh/ocfs2-tools;branch=master;protocol=https \
>       file://0003-vendor-common-o2cb.ocf-add-new-conf-file.patch \
>       file://ocfs2-tools-1.8.5-format-fortify.patch \
>       file://no-redhat.patch \
> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
> index c86c282..006ed9b 100644
> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
> +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
> @@ -13,7 +13,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=000212f361a81b100d9d0f0435040663"
>   
>   DEPENDS = "corosync libxslt libxml2 gnutls resource-agents libqb python3-native"
>   
> -SRC_URI = "git://github.com/ClusterLabs/${BPN}.git \
> +SRC_URI = "git://github.com/ClusterLabs/${BPN}.git;branch=master;protocol=https \
>              file://0001-Fix-python3-usage.patch \
>              file://0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch \
>              file://volatiles \
> diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2_202003018.bb b/meta-cgl-common/recipes-cgl/racoon2/racoon2_202003018.bb
> index 4c7c080..0388afe 100644
> --- a/meta-cgl-common/recipes-cgl/racoon2/racoon2_202003018.bb
> +++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2_202003018.bb
> @@ -13,7 +13,7 @@ RDEPENDS:${PN} += "perl"
>   LICENSE = "BSD-3-Clause"
>   LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=99a60756441098855c538fe86f859afe"
>   
> -SRC_URI = "git://github.com/zoulasc/racoon2 \
> +SRC_URI = "git://github.com/zoulasc/racoon2;branch=master;protocol=https \
>              file://0001-Add-DESTDIR-to-install-commands.patch \
>              file://0002-Enable-turning-of-kinkd-and-iked.patch \
>              file://0003-Replace-perl_bindir-with-usr-bin-env-perl.patch \


