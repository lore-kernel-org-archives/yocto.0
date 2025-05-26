Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7C46C5AD49
	for <webhook@archiver.kernel.org>; Mon, 26 May 2025 12:56:41 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web10.27958.1748264201335636003
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 May 2025 05:56:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OOHd5rvs;
 spf=pass (domain: gmail.com, ip: 209.85.221.47, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3a36f26584bso1304177f8f.0
        for <yocto@lists.yoctoproject.org>; Mon, 26 May 2025 05:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748264200; x=1748869000; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Xky3b0d0fSeusq024ghkz9Uao7tIbmLyBJtzbtHY0vE=;
        b=OOHd5rvsRrf5/l6Uq95d9vZJcumIZBr2FXLTm+8urSEbdTjWybzO4T/GwxfDfY8kwP
         D71GqMZxz5gIdfu+WdJgbJF9A2jlT8lzf+lF8+APC7wOA2fPwdn0RkcPPH2LKrV2GNE+
         pYVbJIER0fi3bGK2+fSFP6jY+kXmmuPccfrp0gZHJd43gG3uYP3/Pad1thq/hLtXqF5h
         Z+ZZ3FY2gfosedLNMOCrHNoJ2CtaVaUdjywpPe/n9kVR8RjGabA7bOed5onFTGeNWW8A
         /qvApKEj9Hh6sSzmVysBmQ3kLn/pV+MDyWyAYTqFquvUeWCfzV+iUjiOKRf+4sPS6+xV
         7g6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748264200; x=1748869000;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xky3b0d0fSeusq024ghkz9Uao7tIbmLyBJtzbtHY0vE=;
        b=iIlz4/Gb3XjkNFwpFxsIRmI3NhJrkR09hBVn7rHtIRJRYJDjfS8vWlnFaYtGnp0Dxp
         L5tUaFrO1lRQCG4/mPHeAiG9Ou26hXH/zbLhZPh9uPkRT8RYMQ/QnavMApB2BWMObJFF
         U2PzF7DhzAOX1vgaxfIEnsR9N4QsRRgyyXtyrSjTUsqDpdzT2UGPFGyaWTIDtYbhrn1H
         antB0X7nsedYaMyXXuVNgDSRLBEwEKKuvy2qE1UvgbhXx6Zx4y0in9wv1B7+/7JIWLzd
         26CVQcG3pJnHk4LTsuYynHvU+WsLSRhQlxDGwkvUMN7B0fFVnTHFQNtaDa4TZFkS/RMr
         IzlA==
X-Gm-Message-State: AOJu0YxvqD4lNQgFZMpPBAJsyen+4lQ3I7UApkNH5xsFp5capCJpEy1h
	LR5CsthUp1PI/WN1lGfzUAsfHgNjt6Cx/dMu9A4/hRurGEF+VupWJgWasH3Xfw==
X-Gm-Gg: ASbGnctJCRkjRFqIOeUI/0W6Mz0bLt3aHDJSS9jCdvBiz0WTHzWcT6kCyYy4yBv9lKW
	9odHT4joXRMHXADpaKdw6IotWwhoNudEkXO9ofrcrszH+qSLnput4vDFDUKsjEE02AiWttcLVp1
	i9f+hxOAx/ytEOjCalVSpY5JA4VEQC7RQ7BndKfe+jAQ9nZWYKzriYtBTMafRUsp+j0+WD/1mAX
	SrRN7/khPi8HKTV8yebXyOc/m8S/G+5pW4VfHNu0SE+fXBwWbCicftWZDg6q9jgD45R+qq9+77L
	AWbrNQhauavVugrc0hRtYEbOUuL0wdSrX+zL/z56VvH6cDRMJDXWW2V4AZI=
X-Google-Smtp-Source: AGHT+IELQYLuecjY/iaDt/XQtY8PqHUF9p82remvmnp0slqiCYzD3LveyjYEBuLEHKyLk6QIT281+w==
X-Received: by 2002:a05:6000:2209:b0:3a4:de27:fe14 with SMTP id ffacd0b85a97d-3a4de27fe8emr1198251f8f.5.1748264199239;
        Mon, 26 May 2025 05:56:39 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4d10e98f8sm5625461f8f.42.2025.05.26.05.56.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 May 2025 05:56:38 -0700 (PDT)
Message-ID: <206f4a6f-ee3a-4981-8196-cd762940cf6e@gmail.com>
Date: Mon, 26 May 2025 14:56:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Default KCONFIG_MODE for in-tree defconfig
To: yocto@lists.yoctoproject.org, csanchezdll@gmail.com
References: <CA+KcR8ARBUj8PTcvA=rx-yob=WHYcS2gUnGX2aROOjy6bZGqWw@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CA+KcR8ARBUj8PTcvA=rx-yob=WHYcS2gUnGX2aROOjy6bZGqWw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 May 2025 12:56:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65423



On 5/26/25 09:49, Carlos Sánchez de La Lama via lists.yoctoproject.org
wrote:
> Hi all,
>
> According to the documentation
> (https://docs.yoctoproject.org/ref-manual/variables.html#term-KCONFIG_MODE),
> KCONFIG_MODE defaults to "alldefconfig"  when KBUILD_DEFCONFIG is
> given, pointing to an in-tree defconfig.
>
> However, I am creating a custom recipe (inheriting
> kernel-yocto.bbclass trough linux-yocto.inc) and I was getting a build
> with an unexpected config.I have tracked it down to "allnoconfig"
> being used, and I have managed to get a correct build by adding an
> explicit "KCONFIG_MODE = alldefconfig" to my recipe.
>
> I think the problem comes from the combination of the logic in
> do_kernel_configme() (which selects the config_flags to "-n" when
> ${UNPACKDIR}/defconfig is used, theoretically meaning a custom
> defconfig coming from meta-data was placed there) with that of
> do_kernel_metadata() (which copies an in-tree defconfig given in
> KBUILD_DEFCONFIG into ${UNPACKDIR}/defconfig, so that is going to be
> present *always*, even if an in-tree defconfig is being used).
>
> Is this something I am misunderstanding? Otherwise, I think the
> documentation should be adjusted. I can send a patch, I just want to
> check I am not missing anything before doing.

I believe you are right.

Compared to the code and its comments, the sentence in the docs 'An
“in-tree” defconfig file will be handled in alldefconfig mode' sounds
incorrect.
In-tree configs seem to be handled as allnoconfig, even in Kirkstone.
I think a patch would be nice.

>
> Thanks,
>
> Carlos
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65421): https://lists.yoctoproject.org/g/yocto/message/65421
> Mute This Topic: https://lists.yoctoproject.org/mt/113305718/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


