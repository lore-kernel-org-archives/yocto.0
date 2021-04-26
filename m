Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.10783.1619460285756826660
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Apr 2021 11:04:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=frGlQ2+s;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 202CC38C11FD
	for <yocto@yoctoproject.org>; Mon, 26 Apr 2021 18:04:45 +0000 (UTC)
Received: by mail-io1-f43.google.com with SMTP id g125so2606465iof.3
        for <yocto@yoctoproject.org>; Mon, 26 Apr 2021 11:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=A+aOiR7c/Y+9DLPPsi4SIYzcYJkPsn5S3uSF+5wQQtA=;
        b=frGlQ2+sL+y++P2ePpof6R0MuCfreLkb+ikNQNIys0qmrkwjR65nkzYNxSV36AiuIn
         30dlVj1QQOPcIZxBP9nMzb07Xz8v5vKM5cpISTlqd03Ol/hIokQCG5VUINbSeHROuT0p
         FOuPYxGAgM2zva5GjfgS0NccacjP6M2IHWJpEQUAhKLabThdvKOFZx6aHu6Sk0/T9EI8
         4mcfxhVUnWerWJLC5C/52nlwwV7FvnmjpK2FW8RLwPs2jBAq2HZN7xpa8YNDXhT2Tppa
         pDcFoGPx2pQq553/Y83/tNdELnL9KhkKU55pvzeRQ2jpkBUZIevwlJ6sMyzNK14HAuuX
         3/aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=A+aOiR7c/Y+9DLPPsi4SIYzcYJkPsn5S3uSF+5wQQtA=;
        b=c8VW4Mhh0MWBAuWEysDR2fdZkgX63krbtHypogKXy47iBPpQDtYPzSIPFehJdB8JeS
         EvCLaN4pJzsRUl9ojkylrC52JD381XIlUYyco/ztFHyvnC75C2PsFTkOCZoL47UGcCHN
         EbdKQTlaoYEcwQ0c2209Sii0UPVFT2SVn0uqJ2tERgfZrjl3NbSVHpJPSA3WrN8FXpcp
         IY0wL6Re3BiRG2bms6SZD0MQeayV6NtGgTPeM1DuWIghZChTxV7oKoRQlyHTozPeeRQy
         ulp0I5V85s+F809aD6drXHz9GLmW8Up4ukgmkBh9UcD0ucS6rHGlPfRNBC/YlT1sbi/M
         c6ig==
X-Gm-Message-State: AOAM533/Y7fMsZ6ISEECbUyXZ70MU7uaniKElKI/WKKmFq2y1H90XL45
	EZS4QqgfLVv/b0ANPTWf6DU=
X-Google-Smtp-Source: ABdhPJxEG4QDv1xkq1Pj1IXK+TD8Ul+S1AkAes0ZBzru7+SjHYmJ91mMp3I7lTiy7AsUJ3pS2qe4wA==
X-Received: by 2002:a6b:3b07:: with SMTP id i7mr6182119ioa.184.1619460284274;
        Mon, 26 Apr 2021 11:04:44 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:1c81:c15:4155:b74d? ([2601:202:4180:a5c0:1c81:c15:4155:b74d])
        by smtp.gmail.com with ESMTPSA id z25sm8045484iob.26.2021.04.26.11.04.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Apr 2021 11:04:43 -0700 (PDT)
Subject: Re: [meta-security] [dunfell] [PATCH 0/3] Backport several IMA fixes to LTS dunfell
To: liu.ming50@gmail.com, yocto@yoctoproject.org
Cc: sergio.prado@toradex.com, Ming Liu <ming.liu@toradex.com>
References: <20210419064159.12487-1-liu.ming50@gmail.com>
From: "Armin Kuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <c4c3e476-b65d-67cc-947c-0499c58fb52b@gmail.com>
Date: Mon, 26 Apr 2021 11:04:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210419064159.12487-1-liu.ming50@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 4/18/21 11:41 PM, liu.ming50@gmail.com wrote:
> From: Ming Liu <ming.liu@toradex.com>

I have not forgotten about these. My build system is backlogged.

I hope to process these by this weekend.

-armin
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

