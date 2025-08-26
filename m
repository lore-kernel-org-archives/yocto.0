Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9D23CA0EFA
	for <webhook@archiver.kernel.org>; Tue, 26 Aug 2025 06:17:43 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web10.58127.1756189054798950673
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Aug 2025 23:17:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VKlMkjJg;
 spf=pass (domain: gmail.com, ip: 209.85.208.52, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-61c7942597fso2649954a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 25 Aug 2025 23:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756189053; x=1756793853; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5cUKqo0oFiai7t9XoAHHGZL7R9XWPXfcNRzok2+OG2A=;
        b=VKlMkjJgnPfjXWqfgXdUFvL1OSK2tA/YY2D9vThXXxzff6dZ5JkV9/y6ec5I9ymZIi
         6IWVcXIWVMY6n+m2G/9jxB+kEKKPjX0SxfEFNt/fSzLG34o2cI3L7Y1s8mP+DmToDBvJ
         +Y08UsB2XunU57RB3qV6VJVKS2XO/0lXMDKcIKzZSLwaj5K6rA+m6/TYTlu8pZtIwYAD
         kxQADB1lS2ijBdxChamhVQ0mbBDBRjYqxcaWf8mjQs8AJg6YlVRRzItNtNlRo1Uy/rmv
         UbwComno+oVJiAto8qxnD1ynpjN3QC2le5YOhLlvqcqytOPhamyJa64cmkYsY7CbD4EJ
         vxrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756189053; x=1756793853;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5cUKqo0oFiai7t9XoAHHGZL7R9XWPXfcNRzok2+OG2A=;
        b=ZH4aXjgQRHx6OGdEXC+nf/EmI10z+KTbi9GqqkQVwfV2C47tb+e6Pcw5Qmg6WPjABt
         hGfdjmNM7IfpkGfxpGSo6gsdU3Lg4hjfTcPhL6QEgIVRkfgBjgzojTTYZK8WeH+5bXWB
         DVWJq+DYZADqmVnRShUGINGdBHEIyj/PDvZ+fuYx4OZu5nG9AhAtuJ4cCbBfVY3EVmzP
         yyp0RNFmJUtPQcEVQvXnTDWKtETNXa8vCVVHz5szfXS+0Uh0XujuJV5yYarRMOHHK8RB
         6WO3Yzmgg3zzYybybzHNNtvJUbm4cZrX9dOkGpwKlG0Lp5r0H3P4Wb3yvmplZ3+oymSj
         oB9Q==
X-Gm-Message-State: AOJu0Ywuef4XAa4f2UFkEdJz7gzeemasWtkb6MYajkLRu0outrmQK3tT
	04T5agQ3Sool3S9KZRDq9yPEGGvzX4aVMpblzLXBjRl4xTsptIkewaG/uGz5lg==
X-Gm-Gg: ASbGncttDMNlKTl1y3SsfmsDrXJsXacBxoosTeXOBI/X4tpmrEnOFmXnl1s62ta0UFQ
	MHPj9wUeeLmqJBfkh/KI88FObXDMpzXRBg2ZIp5VcgY6pg7Lj/1qzcof0BrcgMMeA3jnwd8dm2I
	0GlI/mZZhLVPo72Wb4bohshKXzTpObNwqibNvHlrkb0wsb0jraC1rq7OSj18HDOOWrRp2hOB8Dm
	lRso1ZWQk/C36bcJ1WqXzLubG94awEcK7Aavoy6KpdMeBWIgpsuki3Wm0G5byEFgItvgXcdO6VK
	+mmBYkgl0pN7xmq8B1uy7xM79PUFXRB+taDzHvV6rZBjijJmXfrk7Y8LH7a/+UpUvUkyLSzLTuL
	yLDrsa5/pE7fvBLlxzG7cRoFuQbLRVd0=
X-Google-Smtp-Source: AGHT+IHfLmgjrnSI58JCCuSGMDBmQg4Pi04TeXdyC5TE4a5PoOLuZw3JM3K0eyicgan6BgRvkNCWWA==
X-Received: by 2002:a17:907:3e02:b0:afe:86d3:129e with SMTP id a640c23a62f3a-afeafecbdcamr40588366b.1.1756189052781;
        Mon, 25 Aug 2025 23:17:32 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe8a9f0c81sm270800066b.22.2025.08.25.23.17.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Aug 2025 23:17:32 -0700 (PDT)
Message-ID: <783586b9-5aef-456e-b13e-0171ab013df7@gmail.com>
Date: Tue, 26 Aug 2025 08:17:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Circular dependency issues when building Qt with Yocto
 Scarthgap
To: yocto@lists.yoctoproject.org, shivaji.yannaboina@thermofisher.com
References: <SA1P222MB1341100CC95767E9F1491FCEE53EA@SA1P222MB1341.NAMP222.PROD.OUTLOOK.COM>
 <1989.1756187025705671685@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <1989.1756187025705671685@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Aug 2025 06:17:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65792

On 8/26/25 07:43, Yannaboina, Shivaji via lists.yoctoproject.org wrote:
> 1. I am able to build the image using bit bake successfully without
> adding QT packages.
> 2. The moment when add QT packages like this in .bb file in
> receipes-core like below
>
> IMAGE_INSTALL += "qtbase qtdeclarative qtquickcontrols2
> qtgraphicaleffects qttools" - the circular dependency issue is coming
> all the 3 scenario's
>    with meta-qt5.12, meta-qt5.15, meta-qt6.11
>

Usually these packages are not added directly to IMAGE_INSTALL, rather
the required parts are installed automatically as a dependency of your
application. Does your Qt application not work with your current recipe?
Got any error messages?


