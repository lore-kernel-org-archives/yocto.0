Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4934CCCD193
	for <webhook@archiver.kernel.org>; Sat, 18 Oct 2025 06:04:25 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web10.1050.1760767463636987883
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Oct 2025 23:04:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=G2Prfd93;
 spf=pass (domain: gmail.com, ip: 209.85.128.49, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-46e6ba26c50so19046445e9.2
        for <yocto@lists.yoctoproject.org>; Fri, 17 Oct 2025 23:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760767462; x=1761372262; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mvoSnYnkCdcZ02OQJP+XdtnmMVo9NRe/1bczu223GcY=;
        b=G2Prfd93BG7QpfHLgzCinUxRyac2jMYhwlSsEO+2sAncJwIXyorckduP+8d2O4Tlkg
         0gUkEBFKWeL9+Uac45Bgib7SolK+BgTykap7tOSiL7i0+4Jkqfu4vGZDCPpFFXfh8TDD
         ulvXo1INk7UwDbycFZC19rzV52zL3mmktdUHrabSu6WLd1xEEaqyrQ1ZBMdDanOin/tO
         4565wu/X3g8zYzyfNtnuNHyDRldTNSaEQOijwO/SLwKN/0BDli/tK01F9q+zdGBPLI3E
         8B8x4ypAdee6SMgF/3EDpT3OD+sDxY6pJOVgrQawG9+/FNJ6THXLB7SB7ZZg0BHxMi1o
         UucA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760767462; x=1761372262;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mvoSnYnkCdcZ02OQJP+XdtnmMVo9NRe/1bczu223GcY=;
        b=tK++JNQJwd/tt1t1VU6nTANHYLAKzaXyZiwwxrBOn9UnVSA9QgDYjeHBTyuTZVzS2c
         a6K+YiaCOVORwEarB+uGgp2/8+pTXOXhY1X1DIR9F/e+s4TUW9bQYnzm4F00nONP7qx9
         mqN8xgCGwyr+RMp4UKPwn0TCXxSluS7pbdc3nXPWhYgIF3GgWCQaZ6KMU6L5aiqyJUgJ
         N6QTwmSaYWEJxxUG1rMJBZPTz6G+PKGVScgBilDwzIvynvZGsZhB0abSzR8MsKjqI8hU
         x7YArcAKRtE8yoHW2n8nktstwrDkUAFZslWRvTPZNiB01cS3r2t/Xot6D5S61cfXQVLP
         SWLw==
X-Gm-Message-State: AOJu0YzW+F9P3vWOs5mHRX4nVLWTN63738lHyJ0kou/zpvILgS5mXWMG
	pauyaMbZzW9yaxBpUbVLtBKSqI9PveQfu7BdDSNRSarBjOD/2oA4jmdocAFgog==
X-Gm-Gg: ASbGncvZ20icVoGNeqRp0nw2tjimaOyGoE/JRWBTeORU3EfFZt/BHCl04FA6qcgyIhk
	9HLJ1odD+2TNf1t8c6qdjB/1HRWQeQnpjsRlk78oeLt20PXRxAO7PYo2zp7nnGKnBHpzq/novdf
	ejot6l5q2LAT+UESm998lpDdNEjTim7tveyPnS7osjXF/zIK3aVuwV0SKO3ZAndH4cHVFT25l+x
	cus7T2b6XOQQoU9vYYZVEMfua+p3gUMArfQgIylLktPKiNSYZfh+5cfADiAT3hAS5jarmyYRKtB
	NSw0VghPZ+7VdnMVQ9epDLorF/1K+fQpU7UnYWJX5gULP+a8JadHU+xY/zt7w1VR4PCU1yb7SLR
	ZxNpbcXL/SQmOfM6QTmccbzoP/s0WKAVeDxhGhKi2iNQ7t2cawZoKJDNDIXO+7aJth1PoZAx9au
	b9sL36SVGa
X-Google-Smtp-Source: AGHT+IFNSy9fPlYEM1lBcARMpv6k+EE/4j99JpuQIk3lipzHSlED4lQmSZmJ3E4kilv+Y/LcxaFMtw==
X-Received: by 2002:a05:600c:8b03:b0:46e:41b0:f0cb with SMTP id 5b1f17b1804b1-4711790c57amr48134185e9.25.1760767461782;
        Fri, 17 Oct 2025 23:04:21 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-471143663afsm116326655e9.0.2025.10.17.23.04.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 23:04:21 -0700 (PDT)
Message-ID: <9b9559fb-f55f-4847-9f10-b5352230500e@gmail.com>
Date: Sat, 18 Oct 2025 08:04:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Find the cause of a hash mismatch
To: yocto@lists.yoctoproject.org, joerg.sommer@navimatix.de
References: <7utrehskj27ezeuntfbceonitdthhgpcefbavn5djcq26axbtu@d4t2npburtu7>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <7utrehskj27ezeuntfbceonitdthhgpcefbavn5djcq26axbtu@d4t2npburtu7>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Oct 2025 06:04:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65953

On 10/17/25 22:19, Jörg Sommer via lists.yoctoproject.org wrote:
> Hello,
>
> I have the problem that Bitbake tells me

<snip>

> They all end with
>
>     Hash for task dependency pseudo/pseudo_git.bb:do_populate_sysroot:virtual:native changed from f6aab8910c7c8c0ab7b4e3ce8cd37280e2ba17bb43899cba137d0d82a16b8dd1 to 9e3aa528d1736c6f23ce8ceb6cf181af447cec7da91859f15e216517516c5271
>     Unable to find matching sigdata for pseudo/pseudo_git.bb:do_populate_sysroot:virtual:native with hashes f6aab8910c7c8c0ab7b4e3ce8cd37280e2ba17bb43899cba137d0d82a16b8dd1 or 9e3aa528d1736c6f23ce8ceb6cf181af447cec7da91859f15e216517516c5271
>
> When I run bitbake-diffsigs I get the same:
>
> + bitbake-diffsigs -t hcpu-image do_rootfs

<snip>

> <>
> How can I track down the cause of the hash mismatch? Any help is
> appreciated, because this problem persists and it drives my crazy.
>
>

If it changes every run, you could try diffing it manually:

bitbake -e pseudo-native > run1
bitbake -e pseudo-native > run2
diff -Naur ./run1 ./run2

Does it give anything that makes sense?

