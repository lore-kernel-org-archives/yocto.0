Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30C9C369C1
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 16:43:45 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web11.24243.1744821816167594382
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 09:43:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JaVs1hJC;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ac339f53df9so97571566b.1
        for <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 09:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744821814; x=1745426614; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dkUVzv5mmg/R63qQtVltUdkku4aWw+qBwdRQO038TNQ=;
        b=JaVs1hJCk7HudKLdELMWXPeQEPDSd3U5oiXKn99xLt2O4UPLE/EBPWoJtKM9ef6Mxb
         ZSooALw1LcFNtxpYloulSHc4s/3khC4GgvcxslfcwIf2AogtQApayyZFeqlQVy6k371I
         fn64iTQUuWQxqH9ym4duIkOFWbkK71bNSTck+ib/pKe7iW5mOpLF0uprbz99B/NtXsCw
         9KvVzxI/UpmUtq6XYOmruByiTIkwktEU+NFQ1EfwsyFuYb9FXXguzVukmic1zk6Xz01X
         MZxs+k1YumDLM+R0y/JPoXnFEY/zC9lWGMkVx9euKQ1PdUDiVBhUWgZEjGGAPYxhwtyb
         cFXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744821814; x=1745426614;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dkUVzv5mmg/R63qQtVltUdkku4aWw+qBwdRQO038TNQ=;
        b=vgkgpdZL34VqKF2TDsL7e4Wr9U/g/KM4GJq2Z84DjP8UnY9F7rA2MeZ9tHwUpgwrhP
         pU7YU9Mj3jikm8fER02t1vHT/EVLc4I6P92oCpH5vY2oMHqVx6htGeUeqRYT9vbvCOng
         e9Wq4Uql6C5x73419zZU5Jc9AJV57rtB7pEmSaN7VXLeJzwsPMxDjVENW+ppVB5UjlnN
         pwUi5te3YJqxtvx7eWKVDbnO+pIP6r37yBfATTFExpotDipGEsRjl+2soqJSKWYDgVf+
         UFwu3zJ7YnZoLPwmGgwcMSQsjvN4MxNvLZY0ccayVqZv8eP7zWY4glKw8eaomwfO3Bmr
         qWOQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3rvUq7d4HQoSLn1drhhwKBJaF2TOVJEKYKAYYvshv/R+8E9Bur6Gqqp2Q7rIxiJ9R0eKrZA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YytXN1M/By4kMslx/kwPw5Bb+P/Fn/OuNW0zTiJx3FM5s2hNjqi
	HEjEpJYqSv8N3hQtXwmrcktj3rybHn5sb1H1Lq6AzAbULbKNOmDZxoSsl0wM
X-Gm-Gg: ASbGncvfAiwj3DxeMLS4mVu51Mr/XsZXk6wfXTSJMmIvVGtdvO/T/DLnhz4OhJ/kszl
	YhGdAddkH4FYSpU4yCboNDSaj6B3Przyvi4crpMXKoPljwwdskpTU5gcVpm3phFBmofbtGyZV11
	ekF8hrtEBShtNPXa4DF91FeQAUyDJFr2aVRfBdjuljwWF0TSG6IjZ2myVTLT59mT/sKHQtjtWNh
	9zsLefDUq7TIntEX6zCZavoXlnEGOSmIPlXiPlJd9ChlrxoyNBNFco5GxIg0l+FID45KQ5umPs6
	R8Ov2sXFP2rHQbDRls7toXl2Vhg6T/eiYJdTMG4F/23HTZaW
X-Google-Smtp-Source: AGHT+IEexeDIVLCiw1wepCGCkyfVPzCErwXQ5IpgrsrV7NCL5XTty2CW6qzC75GqUQVH3Fq+Qx94+w==
X-Received: by 2002:a17:907:930c:b0:ac6:fe85:9a45 with SMTP id a640c23a62f3a-acb42c68c8bmr240884266b.51.1744821814070;
        Wed, 16 Apr 2025 09:43:34 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3d127970sm158302266b.113.2025.04.16.09.43.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 09:43:33 -0700 (PDT)
Message-ID: <9939c58e-ff63-4177-b3e9-38022ecd73a3@gmail.com>
Date: Wed, 16 Apr 2025 18:43:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] UBoot recipe not building automatically
To: Kanak Shilledar <kanakshilledar111@protonmail.com>,
 yocto@lists.yoctoproject.org
References: <15TiFE3blEYpDlN-95PaXhc_iS4UkmfSypi_lej7jVMERSuUKRsO4Uc3J5vnY0vYrmyDxozFIiK5NMI_JV8o3g12v966iF4io0XxmxiGuN8=@protonmail.com>
 <d19ccf3f-ed2f-4f6f-942a-f99afdf62f43@gmail.com>
 <T5GFYDFeXeCfprONT5vN3PkmUMzUuP2EKqZ-0huMiFiG12kwNrT_ijXv07yg8Du5RPvQIU9vfLH-MZDTP8hEAnMOSTq7rJE6IX6BuIJvUx0=@protonmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <T5GFYDFeXeCfprONT5vN3PkmUMzUuP2EKqZ-0huMiFiG12kwNrT_ijXv07yg8Du5RPvQIU9vfLH-MZDTP8hEAnMOSTq7rJE6IX6BuIJvUx0=@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 16:43:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65196

On 4/16/25 18:41, Kanak Shilledar wrote:
> Do you suggest removing that PREFFERED_PROVIDER after adding EXTRA_IMAGEDEPENDS?

No.

I suggest adding EXTRA_IMAGEDEPENDS as an addition to the existing config.


