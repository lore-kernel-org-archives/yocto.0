Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF691C433EF
	for <webhook@archiver.kernel.org>; Thu, 14 Apr 2022 20:37:09 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web11.470.1649966600749137136
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Apr 2022 13:03:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NFm29Kka;
 spf=pass (domain: gmail.com, ip: 209.85.216.45,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id
 md20-20020a17090b23d400b001cb70ef790dso10179943pjb.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Apr 2022 13:03:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=GNpwLCghntrYlebnmmyRxk+vql2rf2VJdySyM9lCXYA=;
        b=NFm29KkaSCIfc/4xUNeeaWANPUtahC2web+LthpaYjIp8rjVOsKHfKNq61MjFNsqTr
         BCXqbmm+ajsaxWe8PKCZuiDvns9tfdeo/2v21HpeDcBh+dwpiU+Fms1c+Fh7IP2e86a6
         PuDVd9PiqTn3qob3JyPHytUfxmo4HX7Fdc/wzKPcp1FC9pEe2FpXkz7e5ArYWXFyiV8L
         dBF1p/ouAdHNkMm5NC1fiMs/jXAdXN0ZiWBcjD2MDGoLLpEJhk627B/uBmDBeQRH9ZbB
         Xo15NcdP11dQnEeJzQByfkB2EXJXTXXF6i5+Wz14Wl87zGRPgcIPFNRFZ2NCDnj4DRve
         AGdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GNpwLCghntrYlebnmmyRxk+vql2rf2VJdySyM9lCXYA=;
        b=p3D+7Z66T3JD5HOVvEDylKEq2is5TsRnJrtW6Y8EcqBl7twl6FMZXUnk4K/2HZE5h0
         4b4ZKF2dWqjUUEkn6Kq4eGusQgLL+OHlVBV/SG4jTx1qxhp6VhcaDH7KKKyyMF60h0B9
         bm9e4M5w8NdO7OnDRm56vBResFPiaZJaK8eXcwlrnv13q9kkhDG70/wDbaZQAVmlpZq3
         T3euS7Ajm9HaMOUStQf3UcHtg7n0A4dNzLSKQWKNp6Iw7uiv3a3Pccg5/PT+Z0us4TbG
         ek18j5UI0cYGkwgPNXiFUbSHtwt+54M2U/qk9rsLg6AClEZZZJ/Zbl8lAULi/ywREhdO
         lhfQ==
X-Gm-Message-State: AOAM533JWEFAek18FT6zofn94qoD4EbEERlsFlIf2+HhpnB/haIMuKMG
	kqlU/uzN/HVvSjQwlMnT36M=
X-Google-Smtp-Source: 
 ABdhPJzQVhIP5UBUjcvMd2OQYbFW35CMlts4gujt1RALmBP0BuboFf22jU2dhtpRuus/f11rcJoPpg==
X-Received: by 2002:a17:90a:7145:b0:1ca:97b5:96ae with SMTP id
 g5-20020a17090a714500b001ca97b596aemr279037pjs.64.1649966600158;
        Thu, 14 Apr 2022 13:03:20 -0700 (PDT)
Received: from ?IPV6:2601:202:4180:a5c0:8ba4:faed:21bc:f7bd?
 ([2601:202:4180:a5c0:8ba4:faed:21bc:f7bd])
        by smtp.gmail.com with ESMTPSA id
 j10-20020a17090a31ca00b001cb87502e32sm2682525pjf.23.2022.04.14.13.03.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Apr 2022 13:03:19 -0700 (PDT)
Message-ID: <e6a63dfd-3ac8-8dfa-122d-b78d14c703ee@gmail.com>
Date: Thu, 14 Apr 2022 13:03:18 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [yocto] [meta-security][PATCH 0/6] upgrade and cleanup
 tpm2-software
Content-Language: en-US
To: Petr Gotthard <petr.gotthard@advantech.cz>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: 
 <TY2PR02MB367888A21F975AC1E450CEAE81EB9@TY2PR02MB3678.apcprd02.prod.outlook.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: 
 <TY2PR02MB367888A21F975AC1E450CEAE81EB9@TY2PR02MB3678.apcprd02.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Apr 2022 20:37:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56772

series merged.

thanks

On 4/10/22 08:29, Petr Gotthard wrote:
> Hello. I'd suggest some "house cleaning" of the tpm2-software. (I am
> a member of the tpm2-software community and an upstream developer of
> the tpm2-openssl provider.)
>
> In general:
>
> Some tpm2-software is not having the latest versions. For the Kirkstone
> I suggest upgrading to the latest, which has the best openssl 3.0 support.
>
> Many tpm2-software have null version strings. I suggest fixing the build
> procedure so that the tools are aware of the correct version. It is
> crucial e.g. for library dependency checking.
>
> There were some unused patches, some very, very old. Few other patches
> have been accepted to the upstream or the upstream changed in a way the
> patches are no longer needed (e.g. there is a switch to do the same thing).
>
> Petr Gotthard (6):
>    tpm2-tools: fix missing version number
>    tpm2-openssl: update to 1.1.0
>    tpm2-tss: update to 3.2.0
>    tpm2-abrmd: update to 2.4.1
>    tpm2-tss-engine: fix version string and build with openssl 3.0
>    tpm2-pkcs11: update to 1.8.0
>
>   ...pm2-abrmd_2.4.0.bb => tpm2-abrmd_2.4.1.bb} |    6 +-
>   .../tpm2-openssl/tpm2-openssl_1.0.bb          |   11 -
>   .../tpm2-openssl/tpm2-openssl_1.1.0.bb        |   19 +
>   .../0001-remove-local-binary-checkes.patch    |   77 -
>   .../0001-ssl-compile-against-OSSL-3.0.patch   | 1305 -----------------
>   ...ssl-require-version-1.1.0-or-greater.patch |   93 --
>   .../tpm2-pkcs11/files/bootstrap_fixup.patch   |   12 -
>   ...2-pkcs11_1.7.0.bb => tpm2-pkcs11_1.8.0.bb} |   18 +-
>   .../recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb |    5 +
>   .../tpm2-tss-engine/tpm2-tss-engine_1.1.0.bb  |   19 +-
>   .../tpm2-tss/tpm2-tss/ax_pthread.m4           |  332 -----
>   .../tpm2-tss/fix_musl_select_include.patch    |   31 -
>   .../tpm2-tss/tpm2-tss/fixup_hosttools.patch   |   29 +-
>   .../{tpm2-tss_3.1.0.bb => tpm2-tss_3.2.0.bb}  |    7 +-
>   14 files changed, 68 insertions(+), 1896 deletions(-)
>   rename meta-tpm/recipes-tpm2/tpm2-abrmd/{tpm2-abrmd_2.4.0.bb => tpm2-abrmd_2.4.1.bb} (90%)
>   delete mode 100644 meta-tpm/recipes-tpm2/tpm2-openssl/tpm2-openssl_1.0.bb
>   create mode 100644 meta-tpm/recipes-tpm2/tpm2-openssl/tpm2-openssl_1.1.0.bb
>   delete mode 100644 meta-tpm/recipes-tpm2/tpm2-pkcs11/files/0001-remove-local-binary-checkes.patch
>   delete mode 100644 meta-tpm/recipes-tpm2/tpm2-pkcs11/files/0001-ssl-compile-against-OSSL-3.0.patch
>   delete mode 100644 meta-tpm/recipes-tpm2/tpm2-pkcs11/files/0002-ossl-require-version-1.1.0-or-greater.patch
>   delete mode 100644 meta-tpm/recipes-tpm2/tpm2-pkcs11/files/bootstrap_fixup.patch
>   rename meta-tpm/recipes-tpm2/tpm2-pkcs11/{tpm2-pkcs11_1.7.0.bb => tpm2-pkcs11_1.8.0.bb} (76%)
>   delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/ax_pthread.m4
>   delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/fix_musl_select_include.patch
>   rename meta-tpm/recipes-tpm2/tpm2-tss/{tpm2-tss_3.1.0.bb => tpm2-tss_3.2.0.bb} (91%)
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56703): https://lists.yoctoproject.org/g/yocto/message/56703
> Mute This Topic: https://lists.yoctoproject.org/mt/90375985/3616698
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


