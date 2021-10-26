Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2521C433FE
	for <webhook@archiver.kernel.org>; Tue, 26 Oct 2021 17:17:18 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
 [209.85.210.47])
 by mx.groups.io with SMTP id smtpd.web10.169.1635268637733553395
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 10:17:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=FKgGH5Kg;
 spf=pass (domain: mvista.com, ip: 209.85.210.47,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-ot1-f47.google.com with SMTP id
 y15-20020a9d460f000000b0055337e17a55so20771710ote.10
        for <yocto@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 10:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=tt4+i+0mdWxZ0TSfMjbDdAhnOhnzS2R3KePtBwjWLnA=;
        b=FKgGH5KgUOlVLNQeX9WWwGXQCHRH9HDnBslcNWBJhvXU1/p+6C1p47Lwdue+X1NjCw
         qwc2pPeAtBtYL4WDibdtD1V/Nrosp8XwTRbxi4ltOGKsAMFLdq54gtmXXTsy/q5cgSZK
         Wzboz1u+ztmiNx4xOaMS9ZVgUqY0SywOgb1ls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tt4+i+0mdWxZ0TSfMjbDdAhnOhnzS2R3KePtBwjWLnA=;
        b=gHcg9ss8YH9IJiFDIWsLSwpZnCou9uezw5MMiNCf/EhKjm18s63z5GqPqanOE5nmiF
         ggsSuNRzL+nxx7lqncoPVgqoJ7L6A6NLB2t7rk3bd64OArNx4LUn14u8pCZxRs5BWg8d
         f13if1BsCiTkfrcdcx7CnHlzy4+yfKC1q89vlHLgqJy16g6zFZbGgMEPGAJ2ZEsbYRDU
         ZTYSN26OGtQOnDkojIBFriSDzmpn5aCFhxojC2NGPr4oGXLMOcsgDvPVBuq2vEuFRzYf
         0Paw66ffuwR0WHL2GkS4pUXIqr31kSqVyMDVb0U3JAmSb6rvrUD8zMFjKJJM6NLsK1/y
         w0Eg==
X-Gm-Message-State: AOAM533g6PPaZE2UdiCnSpuuLSsczuHnajHKj2Kh/d/6upC80sWMIFis
	nbmOW7YNnHXsp07/fxJaG0zTpg==
X-Google-Smtp-Source: 
 ABdhPJw6YyTN6nUQcKV80RSiN8oAWTH8ijI0yAYdaUOra/Ygl/APsu3sO5zKdrCj/t7jsatUR3hzeg==
X-Received: by 2002:a9d:6c91:: with SMTP id
 c17mr19713731otr.114.1635268636925;
        Tue, 26 Oct 2021 10:17:16 -0700 (PDT)
Received: from [192.168.1.23] (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 t9sm4697397ott.70.2021.10.26.10.17.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Oct 2021 10:17:16 -0700 (PDT)
Message-ID: <0183569f-86a4-2819-3d2f-8b49f9986d90@mvista.com>
Date: Tue, 26 Oct 2021 10:17:12 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [meta-cgl][PATCH 1/2] crmsh: fix deprecation on
 collections.MutableSet
Content-Language: en-US
To: Yi Zhao <yi.zhao@windriver.com>, yocto@lists.yoctoproject.org
References: <20211026074558.159072-1-yi.zhao@windriver.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <20211026074558.159072-1-yi.zhao@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Oct 2021 17:17:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55170

Series merged. Thanks.

On 10/26/2021 12:45 AM, Yi Zhao wrote:
> Python 3.10 removes the deprecated aliases to collections abstract base
> clases [1]. Using 'collections.abc.MutableSet' instead of
> 'collections.MutableSet'
>
> [1]: https://bugs.python.org/issue37324
>
> Fixes:
> $ crm
> Traceback (most recent call last):
>    File "/usr/bin/crm", line 29, in <module>
>      from crmsh import main
>    File "/usr/lib64/python3.10/site-packages/crmsh/main.py", line 18, in <module>
>      from . import ui_root
>    File "/usr/lib64/python3.10/site-packages/crmsh/ui_root.py", line 23, in <module>
>      from . import ui_cib
>    File "/usr/lib64/python3.10/site-packages/crmsh/ui_cib.py", line 16, in <module>
>      from .cibconfig import cib_factory
>    File "/usr/lib64/python3.10/site-packages/crmsh/cibconfig.py", line 23, in <module>
>      from . import orderedset
>    File "/usr/lib64/python3.10/site-packages/crmsh/orderedset.py", line 29, in <module>
>      class OrderedSet(collections.MutableSet):
> AttributeError: module 'collections' has no attribute 'MutableSet'
>
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>   ...x-deprecation-on-collections.Mutable.patch | 52 +++++++++++++++++++
>   .../recipes-cgl/crmsh/crmsh_4.3.1.bb          |  1 +
>   2 files changed, 53 insertions(+)
>   create mode 100644 meta-cgl-common/recipes-cgl/crmsh/crmsh/0001-orderedset.py-fix-deprecation-on-collections.Mutable.patch
>
> diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh/0001-orderedset.py-fix-deprecation-on-collections.Mutable.patch b/meta-cgl-common/recipes-cgl/crmsh/crmsh/0001-orderedset.py-fix-deprecation-on-collections.Mutable.patch
> new file mode 100644
> index 0000000..62db8e8
> --- /dev/null
> +++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh/0001-orderedset.py-fix-deprecation-on-collections.Mutable.patch
> @@ -0,0 +1,52 @@
> +From c1356d64086d2e3f9d113f346a14e6dff1c2acb0 Mon Sep 17 00:00:00 2001
> +From: Yi Zhao <yi.zhao@windriver.com>
> +Date: Tue, 26 Oct 2021 14:01:09 +0800
> +Subject: [PATCH] orderedset.py: fix deprecation on collections.MutableSet
> +
> +Python 3.10 removes the deprecated aliases to collections abstract
> +base clases [1]. Using 'collections.abc.MutableSet' instead of
> +'collections.MutableSet'
> +
> +[1]: https://bugs.python.org/issue37324
> +
> +Fixes:
> +$ crm
> +Traceback (most recent call last):
> +  File "/usr/bin/crm", line 29, in <module>
> +    from crmsh import main
> +  File "/usr/lib64/python3.10/site-packages/crmsh/main.py", line 18, in <module>
> +    from . import ui_root
> +  File "/usr/lib64/python3.10/site-packages/crmsh/ui_root.py", line 23, in <module>
> +    from . import ui_cib
> +  File "/usr/lib64/python3.10/site-packages/crmsh/ui_cib.py", line 16, in <module>
> +    from .cibconfig import cib_factory
> +  File "/usr/lib64/python3.10/site-packages/crmsh/cibconfig.py", line 23, in <module>
> +    from . import orderedset
> +  File "/usr/lib64/python3.10/site-packages/crmsh/orderedset.py", line 29, in <module>
> +    class OrderedSet(collections.MutableSet):
> +AttributeError: module 'collections' has no attribute 'MutableSet'
> +
> +Upstream-Status: Submitted
> +[https://github.com/ClusterLabs/crmsh/pull/882]
> +
> +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> +---
> + crmsh/orderedset.py | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/crmsh/orderedset.py b/crmsh/orderedset.py
> +index 21ec480c..27233289 100644
> +--- a/crmsh/orderedset.py
> ++++ b/crmsh/orderedset.py
> +@@ -26,7 +26,7 @@ import collections
> + KEY, PREV, NEXT = list(range(3))
> +
> +
> +-class OrderedSet(collections.MutableSet):
> ++class OrderedSet(collections.abc.MutableSet):
> +
> +     def __init__(self, iterable=None):
> +         self.end = end = []
> +--
> +2.25.1
> +
> diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
> index 75e720b..0b6ecd3 100644
> --- a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
> +++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
> @@ -15,6 +15,7 @@ RDEPENDS:${PN} = "pacemaker python3-lxml python3-parallax gawk bash python3-doct
>   S = "${WORKDIR}/git"
>   SRC_URI = "git://github.com/ClusterLabs/${BPN}.git \
>              file://tweaks_for_build.patch \
> +           file://0001-orderedset.py-fix-deprecation-on-collections.Mutable.patch \
>             "
>   
>   SRCREV = "00ec69054edecd068deda54c6184c0385d90ebd2"


