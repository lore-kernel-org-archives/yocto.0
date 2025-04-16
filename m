Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43CECC369BD
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 11:34:34 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web10.16856.1744803266637549347
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 04:34:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NRHKSUS3;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-acae7e7587dso632751566b.2
        for <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 04:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744803265; x=1745408065; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pxSwsDah9d1zq0JUGSKnKToWO8aAbNz30EchzRhnEas=;
        b=NRHKSUS3T9mpITTvtcg4xEZte7pzfTUd9SbdHiM3s1eFAqIaL4XvwIu/iWFduuOoqL
         D/CpeUvbvJFNHWxBjtBqhUWSV0lPTRBB/nkrrNu705OxdSPRlPQhCbAr2DBad7SrJvGS
         E8cFOw1C3z6tjrDKiBhvzh/zMoSBgSfVUfDYo8MWnPjEHqO25GS07MGyKS4OtPbUItsa
         i7ScSoSur93W2tQQfYD/wNlixh1KE+L0DEolXAYXk8VmNlLNaM1JOLi5DHGXaAyiqRmV
         gozvL6SUmANdJRvok4f6vJw/+5Gv6DOdjybhAzb+KXbzoW9fO4r2nRGOIT3MfDJmeNy0
         h2YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744803265; x=1745408065;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pxSwsDah9d1zq0JUGSKnKToWO8aAbNz30EchzRhnEas=;
        b=GBlXOwfZzDMFxC+4TGSFdnSDnsYe0vf/iO2FEoX5czi1IMTLu06MTSDsFYrhqNOx5o
         YC6H3yFN9UjJnERXaxnDJW2JNHNMxvCTPN4ZG3EkTrfCJU+Uoxsq/Iam8DJPGzYunFhb
         Lf+TFa6PaQpnDQn95OGw4Ws3FZhkAAqrxKKc7i+LUNk7KJMwYGbMSKWbExa98K5uoGo1
         MUfyKSBfYNj4VggcDehJW8zVS7rG6ywF31/I5UO/VIhU0rIKRNrda7u7eZ2UFJ6xcIve
         97N84bVrqJar1Q+UJuxzS365faDjqPWP/wLEATYOHKou2Gx9kfPy2m9CM7w1gOqOrJtA
         Ukvw==
X-Gm-Message-State: AOJu0YyUY23rRdhCN+ZB+sQ755QaHykDXC/XM0DH/RZ01w9+zWjfZA6O
	9RrfNL8z/UInNRXm3LpPl8bDDL4+ch265UGnokWSScXm95oZIHRVzEVLRA==
X-Gm-Gg: ASbGncszbra5MnhrBW8W3eBROkSZCUNuFsetO1I5R1yyf8ozk9hiHlYvG6Uz3WaGE7L
	Q2i3ypkB5CHdgz2KE49k4kobQJ8nnyGM2amMnQQYlRuz/tKi+JRo1c17Anpz+j6zWqRaUZQFU5r
	9e3EEN3TejyuIFJg1D0U9cEjbD18yudzAuMXxSZXryQ9eSWrSi/qCnSfu1/Ww5Q9C41OM9SE692
	7wxrKJFWnigjmwFvRgbXQBDKmh1VVgfVVPoUbmcmfUqjAGG3c3f45v45kVPxCYzAIR8s2zsJrPv
	Fk6GFnY1jqcahMscmn1oUfvCo1qTPpdMbUelI8RXsgJHqPnV
X-Google-Smtp-Source: AGHT+IFeU77VwHAuc19qp2V+4p7kSa28B5Y1foEgbPWVDSjg6m1xcTcRe5UzbDRtKiPiHxmCnAmt1w==
X-Received: by 2002:a17:907:3f0a:b0:aca:d6f0:af0c with SMTP id a640c23a62f3a-acb42c5fa5bmr100343366b.59.1744803264611;
        Wed, 16 Apr 2025 04:34:24 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36ef56de1sm8601096a12.21.2025.04.16.04.34.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 04:34:24 -0700 (PDT)
Message-ID: <24c997ce-05c7-4526-8ca5-4e8682f89517@gmail.com>
Date: Wed, 16 Apr 2025 13:34:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Reseive a HTTP Error 500 when send error report
To: yocto@lists.yoctoproject.org, thomas.perrot@bootlin.com
References: <2e9cf6ffee73d3e37142c09a39b2f712bf29dc4d.camel@bootlin.com>
 <1836C8AE53127E24.22324@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <1836C8AE53127E24.22324@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 11:34:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65186

> 2. It's a guess: have you changed the "version" attribute of the
> send-error-script? The error indicates that the user agent is
> "send-error-report/0.4", which seems to trigger the outdated codepath,
> and the user-agent is composed using the version variable of this
> script, which is 0.3, in master-next too[3].
Replying to my own question: I just saw your patch, that does change
this version. Adapt the web part too, I guess :)

