Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 862E8C77B73
	for <webhook@archiver.kernel.org>; Wed, 24 May 2023 20:38:54 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web10.5063.1684960728923349471
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 May 2023 13:38:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=lWiwihXZ;
 spf=pass (domain: gmail.com, ip: 209.85.128.182, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-563b1e5f701so14090157b3.3
        for <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 13:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684960728; x=1687552728;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O5VwySykacD0vBc3HNkMeN2zEI/SDe12TVwbqxEd+CA=;
        b=lWiwihXZmSW0UnedF3NQjNvRvFOXRPEVIrFVKEGoy2xZDCV4M7mUeGXiY+FsNSalJH
         VuoFN2rNE6fxojNfkq062IsTtrynSQtocEnMqTBTmet7P3bu5hdlMaIf7fXr6GLxsXge
         PXM42zt3ddyqmeXr742EEYeKrh8hrpIchTg1xdKS+ryYErX+0foyX8MQgtsV7Kem3ZNg
         Aveuq1g8rYUO7UM3puQGe4Ixb/968qKNFE2uDuEzevKdcnJRXYExyQgZtC14V5WXwNHM
         y2HkEU2fr+4xMB4/yi4lEy37HsThmfz8uJRfSQCuMfKcxHSKRRvjlQVAz+1xP3zXDyDG
         mICA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684960728; x=1687552728;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O5VwySykacD0vBc3HNkMeN2zEI/SDe12TVwbqxEd+CA=;
        b=EU5xDFgMR07iwz8/XXUDHYJgATeKKinypWrg8s0y8uAwWp6WrmG51o7oNG2JRd11uy
         xPZnv184IDA9udsA3N7bQ5hjcET8iMZWYPzZU07ru8QtbhpKRgc4UNuyFdH3ac0MFHEu
         o5Qn7IUDgPFoH5SRSOwQooOfYGaLsFHCq2j+Nj1OHDVhzOo1xN7ycL8IYz0e+tT5kIob
         0e/SIhjmtzzjGTNDFJ0I8i4PkSarVh+xxfJ9mhiSDr7eid3fBz+Th5hK1UJ+BAGuhnr6
         2fvvOQM86J88e+WFjj3AXd3llPnDmRXceue1lmtKMu8AT4pecWo94b08mNhZ7CcV8Pg0
         GlmQ==
X-Gm-Message-State: AC+VfDw2Dq8/H5UG2Bb4VKJYOHuh1gXCxIr7VEnMZsXO/m0cNPqqVip7
	x9c4sHiZOfGFAHeBgBN+HSs=
X-Google-Smtp-Source: ACHHUZ4KgmFTWiMhdmUzXH1UzrKJOBGodL0OngXyHIQsp6Z8YeJqB4mv7/zRCE310gVUJwDuV7DFlw==
X-Received: by 2002:a0d:ea82:0:b0:55a:dd:9d2a with SMTP id t124-20020a0dea82000000b0055a00dd9d2amr17660556ywe.52.1684960728035;
        Wed, 24 May 2023 13:38:48 -0700 (PDT)
Received: from [192.168.20.65] ([12.220.158.163])
        by smtp.gmail.com with ESMTPSA id j68-20020a0dc747000000b0055ddea0db57sm3930241ywd.146.2023.05.24.13.38.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 May 2023 13:38:47 -0700 (PDT)
Message-ID: <341b950c-b039-6a25-e49f-8c3b77ef507a@gmail.com>
Date: Wed, 24 May 2023 16:38:46 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] [meta-security][PATCH] ibmswtpm2: update to
 164-2020-192.1
Content-Language: en-US
To: Andrew Geissler <geissonator@gmail.com>, yocto@lists.yoctoproject.org
Cc: Andrew Geissler <geissonator@yahoo.com>
References: <20230524200307.37451-1-geissonator@yahoo.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <20230524200307.37451-1-geissonator@yahoo.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 20:38:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60118



On 5/24/23 4:03 PM, Andrew Geissler wrote:
> This version supports openssl 3.1
>
> The maintainer changed his tag versions hence the different looking
> version.
>
> The maintainer also has stopped releasing tar files and asked we
> directly grab from git.

Why did the License file change?

-armin
> Signed-off-by: Andrew Geissler <geissonator@yahoo.com>
> ---
>   ...ibmswtpm2_1682.bb => ibmswtpm2_164-2020-192.1.bb} | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
>   rename meta-tpm/recipes-tpm2/ibmswtpm2/{ibmswtpm2_1682.bb => ibmswtpm2_164-2020-192.1.bb} (73%)
>
> diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
> similarity index 73%
> rename from meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb
> rename to meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
> index 85fc7e0..fbeb872 100644
> --- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb
> +++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
> @@ -11,18 +11,18 @@ Advantages of this approach: \
>   HOMEPAGE = "http://ibmswtpm.sourceforge.net/ibmswtpm2.html"
>   LICENSE = "BSD-2-Clause"
>   SECTION = "securty/tpm"
> -LIC_FILES_CHKSUM = "file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=c75e465155c42c14154bf6a2acb7347b"
>   
>   DEPENDS = "openssl"
>   
> -SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
> +SRC_URI = "git://git.code.sf.net/p/ibmswtpm2/tpm2;protocol=https;branch=master \
>              file://tune-makefile.patch \
> -           "
> -SRC_URI[sha256sum] = "3cb642f871a17b23d50b046e5f95f449c2287415fc1e7aeb4bdbb8920dbcb38f"
> +           ""
> +SRCREV = "5452af422edeff70fcae8ea99dd28a0922051d7b"
>   
> -UPSTREAM_CHECK_URI = "https://sourceforge.net/projects/ibmswtpm2/files/"
> +UPSTREAM_CHECK_URI = "https://git.code.sf.net/p/ibmswtpm2/tpm2"
>   
> -S = "${WORKDIR}/src"
> +S = "${WORKDIR}/git/src"
>   
>   CFLAGS += "-Wno-error=maybe-uninitialized -DALG_CAMELLIA=ALG_NO"
>   
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60115): https://lists.yoctoproject.org/g/yocto/message/60115
> Mute This Topic: https://lists.yoctoproject.org/mt/99116759/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


