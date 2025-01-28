Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA04C0218D
	for <webhook@archiver.kernel.org>; Tue, 28 Jan 2025 08:21:26 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web11.13230.1738052477964803499
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2025 00:21:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Wf90IiAY;
 spf=pass (domain: gmail.com, ip: 209.85.128.49, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4362bae4d7dso37039375e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 00:21:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738052476; x=1738657276; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+pVXJcagjh0gZYwqF7QLEFXgiranmWASjGr6jnP48P8=;
        b=Wf90IiAYud5J4TX86opnG2rl6u3tZVfKWRYKC3hcCdVDeXNsfzn/0vS9sDKskJ4bvy
         ar+J3bLJ9v5X+IK+6DQQkWJ5SKy8oBoqscRATdc4yhT5wWR93mWS/ynTID8Mp86BFYDT
         k26qAuwlDjOnb0yYSMzPnoH+i10Qv1utAIDmsPis1KqdbBZZlcUd7DzQ3h9Sxbcwg/hN
         eF/2v0lC1uj/RaeNKkbkoiuP6ChIkGKYVergNw/tWKGpVMEXL6uAKRNwVAbdrEwlU3qw
         hOY4V5xCKskcfJHA34pytKAg5xKjnApHajg3SEfSlBzfTWc5Bk+LIqVNbLUEcv6QgWrt
         NxDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738052476; x=1738657276;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+pVXJcagjh0gZYwqF7QLEFXgiranmWASjGr6jnP48P8=;
        b=AbB36WWy9KHRbcYBTkE4JGoBEN7xv9BPC+i4njMPOy/iOS8eU5/mYx/zEgmydjyGfU
         aa7k05bqYWG7cobaTDVro8C+yK6X4xEA2ZT74rCftX8poTm8MFNuAp3D34wbytJlyZJW
         O7vOcVNbrqoDHtzw1wkKtq5MahL8CjxuBErIadAWzlqosQxcyDM0VHYlSYBMGDC7CI9H
         98ChRE3/LgPBprsXxNCCgnyXPb43ce1LXdR7Ns7cZ/swjmSXalywMLCteimf8nMlGNyk
         Ydz2RWSuVnAqcWm5NR/mIEbZEYDGwhYh5mwZ7JcYgw/1+ls6eu9fuuQHqacqe6kbQyrH
         IPLg==
X-Forwarded-Encrypted: i=1; AJvYcCUWdk40cp6fY+pNoJBPvpmlhefGUqk6n3sQ9GWMf6jy9wRrT4NZbVFGpNkKWJQtw6apWgPilw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw1HMGZnn5gO+TUuzN4c82N6+oO1bX7e2eI0Qd6EEQ9oxAo82u/
	5s4Z6/9uLhHPRUqFTcm2DYmzqfFiDqA8XZR0MxhyDPdDZyMa7Ge1
X-Gm-Gg: ASbGnctLr2PuWlIUyjLOGVsz07AFtceUNijQZD/O4fC2BMApngR1kFvS9+hNxaYR3wp
	LXLQOEjyWwqU5okoO+z8XoI1o+GCRIwGDPOVKNHKduNzUpbWDRQrHGcH3Znknoudc3s429+f5gn
	dCv4WcrVXiuPKsybcbSfm0z4pfMHGsgjjJd9UP7i8u1iB8i0JmhQDfwXsehlt1rflReR/sEnMOs
	6K3ZIgJuU9a590PIxwZiTXT0c9nIA+Oq0/JRsrfY4T8NngH+EHF95T9IFPfM479R1cUZir1b9sO
	qNeB9LaeehRm51QRHx23asA=
X-Google-Smtp-Source: AGHT+IHmvr9xaMpI9q2kG8UfWP027oLMhP6mdEyxX1fqDYmqEoxNjzEprI8X3BTtl7xAqO5LlNNP7w==
X-Received: by 2002:a05:600c:1e21:b0:434:eb86:aeca with SMTP id 5b1f17b1804b1-438913d2d6emr444488305e9.10.1738052476063;
        Tue, 28 Jan 2025 00:21:16 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd47f0fdsm163682895e9.5.2025.01.28.00.21.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 00:21:15 -0800 (PST)
Message-ID: <7f42b6dd-7524-491a-a664-f7fa816cc370@gmail.com>
Date: Tue, 28 Jan 2025 09:21:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [scarthgap]- unable to build image due to Nothing
 Provides error
To: ganesh.manoj.mahajan@signify.com, yocto@lists.yoctoproject.org
References: <aba92c6d-924a-4747-bb66-c8338b334b97@gmail.com>
 <29362.1738035941944973180@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <29362.1738035941944973180@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 08:21:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64658

I see - this will be the source of your problem, your image depends on 
this package, but it can't be built due to this license incompatibility.

Depending on your requirements, you can approach it on a few ways (this 
is not an exhaustive list, of course, I'm sure others could give other, 
even better ones):

- if you don't need systemd, remove it.

- if you need systemd, but don't need swap support, remove swap support 
from the systemd recipe

- if you need systemd and swap support, find a non-gplv3 grep 
alternative, and set it as your preferred provider. You could check for 
example if grep from busybox is enough.

On 28.01.25 04:45, Ganesh Mahajan via Lists.Yoctoproject.Org wrote:
> Hi Gyorgy,
>
> Yes i do get an error when building util-liunx, but its due to 
> incompatible license.
>
> build@ubuntu-bionic:~/project/build$ bitbake util-linux
> Loading cache: 100% 
> |######################################################################################################| 
> Time: 0:00:04
> Loaded 5080 entries from dependency cache.
> Parsing recipes: 100% 
> |####################################################################################################| 
> Time: 0:00:02
> Parsing of 3026 .bb files complete (3023 cached, 3 parsed). 5083 
> targets, 537 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> *ERROR: Nothing RPROVIDES 'grep' (but 
> /home/build/project/meta/recipes-core/util-linux/util-linux_2.39.3.bb 
> RDEPENDS on or otherwise requires it)*
> *grep was skipped: it has incompatible license(s): GPL-3.0-only*
> *NOTE: Runtime target 'grep' is unbuildable, removing...*
> *Missing or unbuildable dependency chain was: ['grep']*
> *ERROR: Required build target 'util-linux' has no buildable providers.*
> *Missing or unbuildable dependency chain was: ['util-linux', 'grep']
>
> *Ganesh

