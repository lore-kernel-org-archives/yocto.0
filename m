Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59047C02196
	for <webhook@archiver.kernel.org>; Thu,  6 Feb 2025 07:34:03 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web11.34728.1738827236821599629
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Feb 2025 23:33:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=giKSK31T;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aaf0f1adef8so124200766b.3
        for <yocto@lists.yoctoproject.org>; Wed, 05 Feb 2025 23:33:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738827235; x=1739432035; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dOPpZcTPfBp8jGYisKFR4brnhiR7ysEgCZaHGuVRqIo=;
        b=giKSK31TCygmjn/85qpaoOzNVy6dmhhFJ0vfyYt3gvS6MMLa53+9+dh/CKp3cNpR9V
         JI7e9YCi6nCle9VgkcpR8sTFiFGxRJj8/40a+wfkqi4cflgj0biMAKL6Dr/LgtANiEUo
         f/JuHIYkpIOPRsJ1wYOkHKOpB3EnR8Rwpe3zQpExhL3yHL3Jt5B4yWC29nSeH/sO3SvO
         8DhjzF619bAbhBHsEpN/TrWygRWdNcQTE0ON5NxkHK6PH81cJahVhbuLaKJw/8KPHMow
         GgLNab7bi2VzWdFys4OwFPtXhDHQ81MWRwBKAQB7QOAEegVaTR4+37rLL47PuUeNjBbU
         VPbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738827235; x=1739432035;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dOPpZcTPfBp8jGYisKFR4brnhiR7ysEgCZaHGuVRqIo=;
        b=g/CA0EgsMOwpeMYwP/e9qoWWDSHtoVv8isFrum9B69u3AXW3qbkxhh9+rvoTNli8v5
         hcbGzahIE4929uF6KQ7Z8fXxFrMNwjIlXdc6O/rj5OIR5TddP4xqGzVmBq0/J2pD2r4Z
         z/JBMTLyRhIa+B5fOKjFHg1SZ4LS9UmQnX23w5psBFy5CZcXKbhjrFHHYuQuDWH9O3q1
         7Zq0+v6M1HiPEyGm7wy86mynzmmCrtyRa1px7HK++lZR8XNhUYXnLhiVGQrHSA6OPgRt
         H0mSDL8dTvSUNRFUEFXbItU4gBCaliE50hRmkgz4h7kck+p+3vVkESbrH25nkRzjOiTa
         UpfQ==
X-Gm-Message-State: AOJu0Yx3gZQxv/GUSS5BvS37/rGs+JNgdNYO2baP/Dj/7t5GRcuS4l95
	5WAxHzGakiZN1sAsGpNPlHuBxY6W3huSj599mOYnIm8/NK8gFhFMDrR7eA==
X-Gm-Gg: ASbGnctxUDe+3Bftji+1aYlOWlqwJTo6dD/B7APlPIIE8wk++G3NWTsPLKM0btDtruT
	21RLpXIIxPYHy3UqHJ++UAb9C9ph34ljFBIipE1EE19s48KnlGFry41XySQwGQNcH6UlBaOAGDR
	uoj3SLptvfeaXktMP8x4ds1NtzUYUGaK971x/Ggzpao4ctmF4f03L8jLtmZD2xTVmOh98b2IUhD
	p16KrxgD+Kuzo8CKkHma5SXeSdpMvzungHi5CdGzq7ILEr9vMA7BYhZNAvlqBflnM/SJ6pKebTq
	/MaHSL/37l8cxJAYocpb3lI=
X-Google-Smtp-Source: AGHT+IHTIP82ymlgRHJMxf7u9yfzjMl7CTqg6Q2wwl78IHVj/v4vBF1g/7LupyIH0eUf4An/f+FJ9g==
X-Received: by 2002:a17:906:dc8f:b0:ab3:a190:6cb2 with SMTP id a640c23a62f3a-ab75e286959mr657582766b.25.1738827235020;
        Wed, 05 Feb 2025 23:33:55 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab772f491aesm55857866b.14.2025.02.05.23.33.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2025 23:33:54 -0800 (PST)
Message-ID: <9bcf5a10-c879-4b02-881e-b97f617c85d2@gmail.com>
Date: Thu, 6 Feb 2025 08:33:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] How to reduce size of libicudata74 in Yocto
To: yocto@lists.yoctoproject.org, emailaddress.ashish@gmail.com
References: <irJ5.1738826523522592322.wcvx@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <irJ5.1738826523522592322.wcvx@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 07:34:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64722

You could try setting "make-icudata" PACKAGECONFIG for the icu recipe, 
this supposed to reduce the size of this package.

See some details in 
https://git.yoctoproject.org/poky/commit/?id=72a56c2bd02d32382260d4f4fd14ab4c8d4cb8f4

On 06.02.25 08:22, emailaddress.ashish via lists.yoctoproject.org wrote:
> Hi All ,
> We are working to reduce the size of RFS .
> From installed-package-sizes.txt , i see libicudata74 of 30065   KiB
> This is coming as part of nodejs dependency .
> Is there any way we can at least reduce the size of this package
> Thanks ,
> Ashish
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64721): https://lists.yoctoproject.org/g/yocto/message/64721
> Mute This Topic: https://lists.yoctoproject.org/mt/111028398/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

