Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.4140.1619650880200690975
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Apr 2021 16:01:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TIHDkcyL;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	by mail.yoctoproject.org (Postfix) with ESMTPS id DCC9A38C06C0
	for <yocto@yoctoproject.org>; Wed, 28 Apr 2021 23:01:18 +0000 (UTC)
Received: by mail-il1-f179.google.com with SMTP id b17so53110275ilh.6
        for <yocto@yoctoproject.org>; Wed, 28 Apr 2021 16:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=LqFitINtO77RVrC8ZYkzeBtpla37yrVAWsMB3er0LyQ=;
        b=TIHDkcyLYJ+yiJYrJh5XEHFnnXR17vLrGxxCBxuIEjz5aCUbFGQvjGThYzCyLvkSTe
         rM1hwsDNJ9+iObpT7GC88IDZNfBqphz/6FoOhoZLa6ILD+fmAvdZxiR+sgq3WsM1KcBz
         P3eNedPmuen/ePYyaz4z1moYlqAr/r5slJcb6M1zAWjIguqhMsSH1niAlXg3hR0N4YP8
         7BuExVhcg1NpZQQ47pREm3rDYc1tm+8J+EPhN8dW2qrcQ3mCfLSUJgI8ek0d6NflzZVX
         32AQEb8y4pQGOdb/WDcMhsrm/xNebAiBF1Fg+K8GSkfqR+VKMG5336rZ0wE0OCYsPWHJ
         g1AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=LqFitINtO77RVrC8ZYkzeBtpla37yrVAWsMB3er0LyQ=;
        b=lhBS0Emll6V3nK7VWWh1Yk9IsFb1T5bfEheRxMv8lJVCgt88ua067RBL9KS+SfG8Cb
         xCudwB2J/ZmBmXkNQ2i24d3+nqhTrFWY+UFMo4qUK8BKuF/35w4heES1g64AEznLbPOD
         cHieOOmrJou3DchOE2nORqHCYwZGiTsodfJH/6+z1+t/TV/THGGszlftbPctwBE2SHQB
         vToKL1aeioLccVMK3aB2EQAhyGiifQRvcWkfQKkcuCKJCJcxMBQ0Kxy62JT0LlN6Rs9Y
         AbLwxtGH+CvyftaxX4GltYdTvQRXJtFKMetORuXHKDrrdFl8nv5yuoHt6uky66+dWugV
         +3hg==
X-Gm-Message-State: AOAM531eA7VEt87Sye52d4L5dpELyVCyYgkG5ZYmvK2RjtSVA4xIG+7k
	bJ9SKIEY42CNh4NMZfyrv9I=
X-Google-Smtp-Source: ABdhPJxfrW7blnU7SIRllhn+rndpL8xuspUFGaV4D3Zzr6fmhxnnkCs0tpHRP1DuLno1OrzLbRIj6g==
X-Received: by 2002:a05:6e02:1c01:: with SMTP id l1mr26096115ilh.25.1619650878132;
        Wed, 28 Apr 2021 16:01:18 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:a9ac:3dd7:2c01:881? ([2601:202:4180:a5c0:a9ac:3dd7:2c01:881])
        by smtp.gmail.com with ESMTPSA id k1sm494803ils.54.2021.04.28.16.01.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 16:01:17 -0700 (PDT)
Subject: Re: [meta-security] [dunfell] [PATCH 0/3] Backport several IMA fixes to LTS dunfell
To: liu.ming50@gmail.com, yocto@yoctoproject.org
Cc: sergio.prado@toradex.com, Ming Liu <ming.liu@toradex.com>
References: <20210419064159.12487-1-liu.ming50@gmail.com>
From: "Armin Kuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <1806e2bd-0d0c-2dbc-df88-32b57add55da@gmail.com>
Date: Wed, 28 Apr 2021 16:01:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210419064159.12487-1-liu.ming50@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged.

thanks

On 4/18/21 11:41 PM, liu.ming50@gmail.com wrote:
> From: Ming Liu <ming.liu@toradex.com>
>
> Ming Liu (3):
>   ima-evm-keys: add file-checksums to IMA_EVM_X509
>   meta: drop IMA_POLICY from policy recipes
>   initramfs-framework-ima: introduce IMA_FORCE
>
>  .../initrdscripts/initramfs-framework-ima.bb             | 5 +++++
>  .../initrdscripts/initramfs-framework-ima/ima            | 9 +++++++--
>  .../recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb    | 1 +
>  .../ima-policy-appraise-all_1.0.bb                       | 9 ++-------
>  .../ima_policy_hashed/ima-policy-hashed_1.0.bb           | 9 ++-------
>  .../ima_policy_simple/ima-policy-simple_1.0.bb           | 9 ++-------
>  6 files changed, 19 insertions(+), 23 deletions(-)
>

