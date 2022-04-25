Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11A9C63709
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:14 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web10.31744.1650903160432958748
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 09:12:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=OIC8xizN;
 spf=pass (domain: mvista.com, ip: 209.85.160.171,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-qt1-f171.google.com with SMTP id x21so1190661qtr.12
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 09:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=UAgVFXXVFtC11J1awRtrhPRAM3kD28Pv7QsTOxCJGLo=;
        b=OIC8xizNA0Ae91trgjybPla0xSAUelLdEjG44+h0IIbkxPkzQkY4zhJrybkeDTHSGT
         0tiNG8GZn+KVaPZS1eYZSRW9NVseQYdyYRg2Mkyr/p3f0OLBdbZY+XcB0p5hlQFPrwdB
         XMHDxU5ErLBBPm0j+gVQo4XCZs+6/qBdn86TY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UAgVFXXVFtC11J1awRtrhPRAM3kD28Pv7QsTOxCJGLo=;
        b=UHBnbnay4CalyOl8SYtHN6FXiPjFNZv9Nn/7JZ7qw4PoOGIqtu0+H8ffAPr7cvEYd+
         kGht5tY3DrEE/TSRzbJEOo0KAV+dy9Yxu3K8WtTYDzQd4AHZPiQNGOmeZ1dPS6aUsh8H
         t/ukc78lrtc6XyWkF0YpRn/oHM+6PCE9er0cfLJMtSUvKVdjiBBzliYExOx99+dC3aaj
         E+iNji6gOt8jEN9X93eP50BlxaxOQ7yYTja4EOi9m1yn/FpA4KuJ4Yw7+oXWkhfasa+5
         ANb/9SOsPCTp+lX4Rxn+WHd5dFleBYRpIwc0s/EDxsLH6rjfuPWP5/OlLm1xc6yzl7e6
         IzeQ==
X-Gm-Message-State: AOAM531c+uBqtQ8CoIa0aGgWyWL5gSAvekbkBG1SFDsKZ/0KW5xaDJEQ
	s9JkBx7M3YA1T8UiT250szbaozfy1KEjbw==
X-Google-Smtp-Source: 
 ABdhPJwKq4yDVOFTwmoV1DsbXYZgKGDx52h7Y2CpaxDbm0vzpHOR7sRgheeYAYBBm+vuquRUGlwfSQ==
X-Received: by 2002:a05:622a:5d1:b0:2f3:5e7f:6c6f with SMTP id
 d17-20020a05622a05d100b002f35e7f6c6fmr9458082qtb.255.1650903159565;
        Mon, 25 Apr 2022 09:12:39 -0700 (PDT)
Received: from [192.168.1.31] (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 h6-20020a05620a10a600b0069f4f2cdf2asm2284914qkk.92.2022.04.25.09.12.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 09:12:39 -0700 (PDT)
Message-ID: <6ffaae8c-ea4b-a814-65dc-2079f874ce6c@mvista.com>
Date: Mon, 25 Apr 2022 09:12:38 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [yocto] [meta-cgl][PATCH] cgl-init-build-env: Use new variable
 LICENSE_FLAGS_ACCEPTED
Content-Language: en-US
To: "Yu, Mingli" <mingli.yu@windriver.com>, yocto@lists.yoctoproject.org
References: <20220424030949.1735527-1-mingli.yu@windriver.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <20220424030949.1735527-1-mingli.yu@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56883

Merged, thanks.

On 4/23/2022 8:09 PM, Yu, Mingli wrote:
> From: Mingli Yu <mingli.yu@windriver.com>
>
> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> ---
>   cgl-init-build-env | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/cgl-init-build-env b/cgl-init-build-env
> index acf459d..1d51219 100755
> --- a/cgl-init-build-env
> +++ b/cgl-init-build-env
> @@ -200,8 +200,8 @@ else
>   #            echo "*** Info: Inheriting  distrodata."
>   #        fi
>   
> -#        echo -e '\nLICENSE_FLAGS_WHITELIST += "non-commercial"\n' >> conf/local.conf
> -#        echo "*** Info: Need to set LICENSE_FLAGS_WHITELIST for netperf"
> +#        echo -e '\nLICENSE_FLAGS_ACCEPTED += "non-commercial"\n' >> conf/local.conf
> +#        echo "*** Info: Need to set LICENSE_FLAGS_ACCEPTED for netperf"
>   
>            if [[ -n $DISTRO ]]; then
>               sed -i -e "s|^DISTRO.*|DISTRO ?= \"$DISTRO\"|" conf/local.conf
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56853): https://lists.yoctoproject.org/g/yocto/message/56853
> Mute This Topic: https://lists.yoctoproject.org/mt/90659554/2167262
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jpuhlman@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


