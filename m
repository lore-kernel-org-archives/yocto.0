Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DD39C79FB9
	for <webhook@archiver.kernel.org>; Thu, 10 Sep 2026 14:05:55 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.14882.1789048750498742412
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2026 06:59:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre.com header.s=google header.b=f+VLCYrZ;
 spf=pass (domain: baylibre.com, ip: 209.85.218.50, mailfrom: tgamblin@baylibre.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-c25b661d37dso1058582566b.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2026 06:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1789048749; x=1789653549; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=s/Szlk9Bd2tMamWoeLTdnulSgjubobP1YU+r7jfcuuY=;
        b=f+VLCYrZYacUX4/zh1RGOyHs5Wkx05CwsCiMgjciGB4cfB11pWwUoxjJmnLqHxm6ez
         CErXC4VnhvFu+EicIaQOuJNTWovPYRk1woPZZj5Anb1I15A3SRd+3zmUz1IqugZza+hE
         nfioaXAq5HSdgvC4nizLAs7Avvk/CuFjzXo4AGvN86x0ZhL07J8mFokKSmaMSvOOrLTZ
         1NPo6rsNMdX/Hbg9jmhS5ctwyY4xwDrd99FfiS1CPqHwhGyxgn6+oaxubJpQzufkifFK
         ZBX/KeKA/HAhE1KmhQY71LBwud3oEieZ1mUYc+MjxDrpOdcaSaDo7rMoS8YfyI5BcQfF
         nBxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789048749; x=1789653549;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=s/Szlk9Bd2tMamWoeLTdnulSgjubobP1YU+r7jfcuuY=;
        b=QV8RQ2JMw4uV4SIeQcw+2Po/x3XexEsYV6Qngb3T9vUgvKXNOsrEAHOlIcXB/ly7C9
         6E/OG9flqmKySadzBSWpd/Xg0d5+kHp/j5pkTMGjljaID+uFeFmvzExM1lXG4TSLTsHy
         6W9Ey7DhNgB86kV0yv9Qm6Z7GRQ/VcRigh45XjhyVl7u3zDq1u9+EMIbRblZlorT/XJj
         Wo7oY+ux9DO6/sPTBpX+2EH4RpcafhkP8g4dK/90KXh89DJlzGfxrKrvMIhlsAXdV9vw
         2pCTM95TUmjGZoCuujUZbKlsnIerQy4tqU+Dmda7wiRHzTVu2UHpucP2zU2fOZBZAR8/
         ll1Q==
X-Forwarded-Encrypted: i=1; AKwUvBzL5Do86hUHHOc0BMKc5780BgIM262Pb/1uM/qfJs1Ns2dW8nYvMazhzilbiIXZo5jHZvoiSQ==@lists.yoctoproject.org
X-Gm-Message-State: AFuF++mdhQFCSOgt6kh8nr4om3gGklUViVRrBVggPMqS5SVz41mJuVaO
	BFoGkGZdOnOMwrB8MnXiR4lW4hXA4xhkl4o84Rw4Es50xARAFahIQoh7hC8sf5k+MVo=
X-Gm-Gg: AYBFou0RmcelswybEaAIU5nS05Oj9dWTX8K+wMnR/rTp62t+YKPIZ6Y0MhiKd4n3ruz
	1BFWhRS2uOylDN2w9sR6G+WmCUUQvfSlBP7JZDMthhOfPsDpdmGi5/RFIHE5R3ppjcMA3FfnExL
	/Gi6T8qB/M4PDUodqd22AcSlpYjqMsGPxNBUJXZBDRcMRIRCf3Y9XPUb/RKoLk2FXTdEMHjZ/Zd
	5QWtnq4Es+vu2tcXqsUUNIw9ars75k/leHiCuUxRJorOkyDqhMebtlWVf8u1lyRAfNat+Wd+Fs+
	F1fcTnzDj55mP4zZ1eetwWWc+D00zAEPeshhOT+SkMMqsysARjom4q0kanxplNx6++KcrJA+sMG
	ueeMZHIIj9ptjQDR8QFwR5MXUFRR0RS1IQuzowzOCE1iGyoE2cCXeuHo+RiqAl5vlJZ5rezVNRr
	Jp7XF4v6kVPs96VeE5xcrraQ/beBk1BfePU1FWjyDVgHELVac4pygIWxcUH3pPejwrUEBHTdirc
	8lg2g/0HeNX36WTOylUXv+Z/ra7nQh/KtBOI1Jr/8P8KxZF4SVnzvcGx95R5M/EcrffYNH76ulC
	75dg++0=
X-Received: by 2002:a17:907:6d22:b0:c29:45ad:7afa with SMTP id a640c23a62f3a-c2945ad837cmr279319666b.0.1789048748594;
        Thu, 10 Sep 2026 06:59:08 -0700 (PDT)
Received: from ?IPV6:2001:1970:3847:e000:1977:be2f:4a71:2892? ([2001:1970:3847:e000:1977:be2f:4a71:2892])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c260d5bd618sm970249866b.56.2026.09.10.06.59.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2026 06:59:07 -0700 (PDT)
Message-ID: <85f448e1-0581-46aa-a8c5-57271c42c48e@baylibre.com>
Date: Thu, 10 Sep 2026 09:59:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [meta-patchtest][PATCH] linux-yocto: Update version to 7.x
To: =?UTF-8?Q?David_Nystr=C3=B6m?= <david.nystrom@est.tech>,
 yocto@lists.yoctoproject.org
References: <20260906053830.1976312-1-david.nystrom@est.tech>
From: "Trevor Gamblin" <tgamblin@baylibre.com>
In-Reply-To: <20260906053830.1976312-1-david.nystrom@est.tech>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2026 14:05:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66714

Thanks for this! Applied: 
https://git.yoctoproject.org/meta-patchtest/commit/?id=bdc295c221db187e3c03ca01420360375870d7c0

On 2026-09-06 01:38, David Nyström wrote:
> Signed-off-by: David Nyström <david.nystrom@est.tech>
> ---
>   .../linux/{linux-yocto_6.%.bbappend => linux-yocto_7.%.bbappend}  | 0
>   1 file changed, 0 insertions(+), 0 deletions(-)
>   rename recipes-kernel/linux/{linux-yocto_6.%.bbappend => linux-yocto_7.%.bbappend} (100%)
>
> diff --git a/recipes-kernel/linux/linux-yocto_6.%.bbappend b/recipes-kernel/linux/linux-yocto_7.%.bbappend
> similarity index 100%
> rename from recipes-kernel/linux/linux-yocto_6.%.bbappend
> rename to recipes-kernel/linux/linux-yocto_7.%.bbappend

