Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAF4C63706
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:14 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web11.31716.1650903135596461920
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 09:12:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=Yv0KrD/t;
 spf=pass (domain: mvista.com, ip: 209.85.222.175,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-qk1-f175.google.com with SMTP id b189so11098077qkf.11
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 09:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=BVzOHDkKlGvaQCOPFK/v3o8Hzjek6HrKV8/dW/efVpc=;
        b=Yv0KrD/tk8OIpRYRvjs052hEytV18sVFpX6ZaOi0FByLjrh6vzd9fQXs0vHSXory/p
         LZvc9oAhc+QnegEyTeYSj/S1KzFiO/75SBq4WnEr76YNj89dZ5J86PSBkmbM7NWPHSGi
         Hb6YqnaSJfgPtrxmKPOcd4tN9XqstK76XPnbc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BVzOHDkKlGvaQCOPFK/v3o8Hzjek6HrKV8/dW/efVpc=;
        b=z80lhYi3Gr4Zb5Gr4RIp3rThGc8+HZvX62rOjQbxALitRLzAZQ0n7oXES7u+CN68xW
         4J3GK4ZeRKBlntEoGYmnOq4gWyufaU7XGU67nwZIgARcbhgiS/JwYuxvunY8R6YfmTKU
         8bhzWbNGoz/SNg53G8n0TZu4ITRUZ9Trutn2Zr09xOvfkJXIVFAJnnhLu35zuUWkVrES
         zKMLvNhHcawc3W+TrYva+hafvFj2eyhcEGhGlqRgHyjdUgA/vxVO4le5j0Z6Fyf9Ip7d
         fR/Iu/agq6ZDnzAFLK1+yUxyTyswfoGhN1vRIVtLNefP9HN0o7BKMRH7xIw88xenR+93
         wpKw==
X-Gm-Message-State: AOAM533lkA5Gjid20V9tzzUnFesPvYjt+lI4RSxcwQ1YodX+O/gIloLq
	2/YsQAZTKZIQmJTfRABin/MEEscoWFshxQ==
X-Google-Smtp-Source: 
 ABdhPJzC8M7o1WxWDHqaJuD9TAY66QCxzTrVYhrPbdYE5Cq2nLLAA88RE0MsAhJWwfQ6Nmfx/LRZaA==
X-Received: by 2002:a05:620a:400f:b0:69f:4429:c5f9 with SMTP id
 h15-20020a05620a400f00b0069f4429c5f9mr4856710qko.153.1650903134563;
        Mon, 25 Apr 2022 09:12:14 -0700 (PDT)
Received: from [192.168.1.31] (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 c21-20020ac87dd5000000b002f36347ddabsm4037451qte.77.2022.04.25.09.12.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 09:12:14 -0700 (PDT)
Message-ID: <a3c36ca7-b64e-0de4-0132-69fef181b245@mvista.com>
Date: Mon, 25 Apr 2022 09:12:10 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [yocto] [meta-cgl][PATCH 1/1] LICENSE: update to standard SPDX
 names
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <20220413205920.35055-1-joe.slater@windriver.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <20220413205920.35055-1-joe.slater@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56882

Merged, thanks.

On 4/13/2022 1:59 PM, Joe Slater wrote:
> Use convert-spdx-licenses.py to change LICENSE in two recipes.
>
> Signed-off-by: Joe Slater <joe.slater@windriver.com>
> ---
>   meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb     | 2 +-
>   meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
> index edaeb8b..a6076cc 100644
> --- a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
> +++ b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
> @@ -10,7 +10,7 @@ SRC_URI = "https://releases.pagure.org/linux-cluster/cluster/${BP}.tar.xz \
>   SRC_URI[md5sum] = "300d83dbbc525c3da21c2e961271c84b"
>   SRC_URI[sha256sum] = "4d340338c2376d369cb223469fa1a3356cce9ab5b2a0a0a33256ade2dbbe02d1"
>   
> -LICENSE = "GPL-2.0 & LGPL-2.0"
> +LICENSE = "GPL-2.0-only & LGPL-2.0-only"
>   LIC_FILES_CHKSUM = "file://doc/README.licence;md5=ee8ae43af5ea09f12ca7f7a649764cb0"
>   
>   PR = "r1"
> diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
> index b5dfad0..7b9e875 100644
> --- a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
> +++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
> @@ -22,7 +22,7 @@ It implements the following kinds of heartbeats: \
>   "
>   HOMEPAGE = "http://linux-ha.org/"
>   SECTION = "System Environment/Daemons"
> -LICENSE = "GPLv2 & LGPLv2+"
> +LICENSE = "GPL-2.0-only & LGPL-2.0-or-later"
>   LIC_FILES_CHKSUM = " \
>       file://doc/COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b \
>       file://doc/COPYING.LGPL;md5=d8045f3b8f929c1cb29a1e3fd737b499 \
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56768): https://lists.yoctoproject.org/g/yocto/message/56768
> Mute This Topic: https://lists.yoctoproject.org/mt/90450845/2167262
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jpuhlman@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


