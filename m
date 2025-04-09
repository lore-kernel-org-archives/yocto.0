Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F17A8C36002
	for <webhook@archiver.kernel.org>; Wed,  9 Apr 2025 11:08:22 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web11.5748.1744196896217955562
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Apr 2025 04:08:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cLH4Jpau;
 spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e5c9662131so10321708a12.3
        for <yocto@lists.yoctoproject.org>; Wed, 09 Apr 2025 04:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744196894; x=1744801694; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OkyNZ4BrYPuD4Fsz2PhOwHqR/SEG2qLBVdur4Et54cc=;
        b=cLH4JpauEECadPq4KUTAbp2Q8Z3+a3Qw2lImzao1SOW3wtXorraSM9VurielAjMvZo
         pVG4O4Q1WmH81fZppKO3ZwoCwqEZz4F8zNAgb9kmXt7ob3Js86nWuZwOggIWTEuWwQuG
         uU6w7sShqfqEv67OYctiWGbMWhdekhjHVWRyFHeaG0HvUtwyL7mRw20nCZRbXC8rzCEn
         hUfWLCiVEO4Qk5m7zPzY+XTNu8hYBPDPkzxIJXlDZUIc5R+iwE23xsOEVzg8QgKmiwOk
         6QFkyxynp+NAtwAp5gOy9wuLXiAdQQ27zIm5TBZLlHjcS3/m4WYVct0rOStMYUm+T4kY
         1h4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744196894; x=1744801694;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OkyNZ4BrYPuD4Fsz2PhOwHqR/SEG2qLBVdur4Et54cc=;
        b=wthq3fP8HYtyymLu+XCdULhTv+v+cjQayU4HVFjvJShmRxLVHwZNQbhswkOV+cXO/R
         w1AKf+QzFF9CWiJ9ELmCyGYabRKGTBzbOAh07ZZV1IyBjxPSo7jNGVanCOxuIQHIcByu
         II7K0HdHqeGlXZNv2Ge7AKGCqwRVFWvM9jyp/VlUzQ6BV3ckmdfpsPAfKhRmSgN1vfYO
         ojoG76DxnAyazjBmfGNOvLyYlCjVIXqiERyO8jjXlkYjyMYhtBPySqUQ0Cz4isRgooRU
         60+JKcSPAjp1mtKL37sdaXYmscMU6Ja/Sq58l4FtjkRjPHFnAm1arkCo7KaPNqi0A17y
         rR3A==
X-Gm-Message-State: AOJu0YwuLotkF8Y3RBTdQjsM/mWJVLqkVPKSM9b9DOS+XxwOGfx6U7BK
	NXwHUdIsNB9LPayhAgAiUi1iIgDNrkj0yNyyw3EQ4nIvuiJaWPQvSIqPizpd
X-Gm-Gg: ASbGncufxiwDtc7usPArQ73J6NEshS0Xxe1NOWPMNDbdrFpMZa8HK3uHZZ6ovFePiTd
	M8Dhkv4tabbOxL/KTBX8wAVjTGrYG8wV5TwKrOMslWSPisXS8GFCFN8dfdsdiGArfFJTbW7pWTf
	gz2gDu7oqluZOcF5U5TCmuHith0BVJvoGxfCqepWPfL4PTnY/D4YOPRqRfTOREJGBB6j76W+GgP
	oDnMXoADaolYmCdmkZ3fNy2nKl+tHkN+2itNYlzTbAKK3m7iQQUWjeqWcJs9r9o/p3T+g1aRHGQ
	sZu9Hsm6UueB0ZuOP2XO4ns/HoBDbtKvJfi1ocZvp6Fn7S6Y
X-Google-Smtp-Source: AGHT+IEZJk6Jf1OOV1AJmthIjES99uU0T2ryp8ogvrRf4BrEJVn/cxfB3AupYuTuCnrqJYMgPcReYA==
X-Received: by 2002:a05:6402:1d4f:b0:5e5:e78a:c501 with SMTP id 4fb4d7f45d1cf-5f2f76db2d4mr2233015a12.13.1744196894062;
        Wed, 09 Apr 2025 04:08:14 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f2fbbac7efsm635482a12.4.2025.04.09.04.08.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 04:08:13 -0700 (PDT)
Message-ID: <7465124b-5ddc-47af-9f77-755ef83453a7@gmail.com>
Date: Wed, 9 Apr 2025 13:08:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] A new member
To: yocto@lists.yoctoproject.org, nguyenthaithuanalg@gmail.com
References: <a5zt.1744192714616091748.Ex7M@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <a5zt.1744192714616091748.Ex7M@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Apr 2025 11:08:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65130

On 4/9/25 11:58, Thuận Nguyễn-Thái via lists.yoctoproject.org wrote:
> Hi all,
> I am a new one, I am using CentOS 9, I have questions:
> 1. Can I build yocto in CentOS 9?

You can always check the supported systems here:
https://docs.yoctoproject.org/dev/ref-manual/system-requirements.html -
make sure to select the correct Yocto version at the top.

CentOS Stream 9 is supported and tested, for the latest Yocto release
(Walnascar and master branch). It *may* work for older versions too, but
it's not tested - it is not recommended however to use untested systems.
Strange and cryptic errors can pop up otherwise.
> 2. If yes, may you give me some hints?
Feel free to ask if you face any specific problems or have any questions
- that's why this mailing list exists.
> Best regards,
> Thuan Nguyen Thai
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65129): https://lists.yoctoproject.org/g/yocto/message/65129
> Mute This Topic: https://lists.yoctoproject.org/mt/112169356/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

