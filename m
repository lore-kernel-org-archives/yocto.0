Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27C1AC54754
	for <webhook@archiver.kernel.org>; Thu, 15 May 2025 06:52:37 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web10.7115.1747291950909953164
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 May 2025 23:52:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lIeprc1g;
 spf=pass (domain: gmail.com, ip: 209.85.208.45, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5fc8c68dc9fso1168685a12.1
        for <yocto@lists.yoctoproject.org>; Wed, 14 May 2025 23:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747291949; x=1747896749; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=moD9TWsHI6YU6QhWpJp2be25iN1aPuuGKOXNs26/2c8=;
        b=lIeprc1g0orN4eD7JnBb4CUIFb9EZpY4yFSu3ykbS9kVsJypoDlI23U7RpcZTNuq22
         7lCKm+YmlrJjIH2/394OqDYRlWRWnJaaKwvS8lWvFl3LHfAAYVlcwz8/8TDD5B/geYFc
         Y6Vz5Xn2XjB7OLbvchBZCMhyJtFUInDdszB1cXkxRVn+1ceZp8r+L/YxezFLfS8idh4V
         CgrdodSZ6TBN8hr9KibsNGhgdQvGJk4jcx5XAp7lzHUx+uJRc8/c2vyrv5wyvCBNyB9b
         kksc8vuOt2EcgenM/ExweHCpfjHHl5BBpAFvSTGO/ou9VMe7OBZ2EhfZ/gJG4Mm4PNZY
         CBEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747291949; x=1747896749;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=moD9TWsHI6YU6QhWpJp2be25iN1aPuuGKOXNs26/2c8=;
        b=PAAiMJkUaMSHuUvo8Q/F5rwetp3pjzBL+JRVD3bWSkTk3b/ucKNiZN0VIfhs60B4Wu
         g1yfUSlot6NZ6ASb1o2pzJuoR1F8Vdzrf619JG1U5HLLsL8lCsD3K8PlJFXgEitem0m/
         OR1d+hD4SE2ei8IV7ycif+ZGSQQyG0TWeaGdcAA4lgciSpUZFpqt5pj3J+CaHeLEjSLJ
         pA0HCN4oxXI8ieU5d2nwBWJb7NFkh3US07vgn/X3aIEItHuxVmq7v4jg+VQ6UpR1ngcs
         Me5T9wTkRSOw7yc1ds2WeoPqOhhBdOMlzxHK2CSagzXRxt7+/pRaKmv+yOy+0QNdcYsx
         un9w==
X-Gm-Message-State: AOJu0Yxj31J2dLCikpes09fMro6IHhDDiKN47xWn6orJliHZKu7+ElGW
	FRSeubrmVdVhe/NkH0cxAwefMmwZ5wl0E8l1MX3vmbQVbctizKhoppyefQ==
X-Gm-Gg: ASbGnctX07vymhWuB+UlVIOcNcFcMJoAuqOPvY6JcNv1OHpeWGvdaznW6Owehhu9eYD
	AeYYN4pgLX05Nzcy4vP9R/3ONwwokeuWOO1XISi/dQMRIz42b0qALNnU0og/pdsjxPjR47QtnB5
	kyZ7ca4r6iCpeB9HEbH4XNAf2S3I2lB0phPy8rTEdFz153c0cKijfx3pT6wC4m8mNSHngwNWg5I
	ZSmg0ocjakcmMS/Uj753F1UUworY2I5J1qLy5sOw3sEjP7PyGNsMMVzjbG3gdkZDVEP3taHR22G
	yedIJes/5TBJQ8qUWBulbaG1Ec6xt+hFs7UiSSgqhYOxDG4GNkJH/yHiSLk=
X-Google-Smtp-Source: AGHT+IGgVBBiM5CtQ9O6Ed/lfXF4JIA59zQkLoH4pmbReSrnkk7SRDdEAm3EbEPdS9C+QguoaTCFVw==
X-Received: by 2002:a17:906:6a11:b0:ad2:2a2f:7064 with SMTP id a640c23a62f3a-ad515e4e629mr97669066b.25.1747291948662;
        Wed, 14 May 2025 23:52:28 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ff969f67c2sm2440649a12.60.2025.05.14.23.52.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 23:52:28 -0700 (PDT)
Message-ID: <42bc33b8-8b36-44a6-9cd0-0a447520876f@gmail.com>
Date: Thu, 15 May 2025 08:52:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] mozjs 60.9 CVE issues fix.
To: yocto@lists.yoctoproject.org, sateesh0457@gmail.com
References: <yoeb.1747283643576382007.FPXh@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <yoeb.1747283643576382007.FPXh@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 May 2025 06:52:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65342

On 5/15/25 06:34, sateesh m via lists.yoctoproject.org wrote:
>
> Hi Team,
>
> I am currently working on CVE-related issues in the mozjs library that
> need to be fixed for version 60.9. I am using the Dunfell branch, but
> upon comparing it to the Gatesgarth branch, I noticed an additional
> patch is available. The patch
> |file://0014-fallback-to-2011-C++-standard.patch| has been removed,
> and |0014-remove-JS_VOLATIME_ARM.patch| has been added instead.
>
> Could you confirm whether these changes need to be applied to my local
> build as well? Additionally, I would like to understand the reason for
> removing the fallback-to-2011 patch. If we retain it, could it lead to
> any issues?
>
The patch comments look fairly descriptive. These are not security
fixes, rather change gcc compatibility.

0014-fallback-to-2011-C++-standard.patch - it was introduced because
Dunfell supported building on distros that came with an old gcc that
couldn't compile without this patch. But later Yocto releases dropped
support for these old distros, so this patch wasn't necessary. If your
compiler supports c++14, then this patch is optional for you, and can be
safely dropped. But you can also keep it.

0014-remove-JS_VOLATIME_ARM.patch - This patch removes a workaround that
was added to fix an old gcc bug. If you are using old gcc, or very old
Arm HW (that doesn't support aligned access), you shouldn't use this patch.
>
> I want to incorporate upstream patch changes related to the mozjs
> library. Since version 60.9 is a tar bundle and not a Git source,
> where can I find relevant solutions and reference links?
>
Mozilla primarily does development in their Mercurial repo, where you
can also see the commit history[1]. Incidentally they have just
announced hosting their code in their official Github repo also, where
you can also browse the history[2] if you are more comfortable with that
- mostly check in the js folder history.

Of course, security-wise the best would be if you could migrate to newer
versions. All of these are pretty old, and most probably having lots of
issues that weren't found back when developers were still fixing them.
(Not only mozjs, but whole Dunfell)

[1]: https://hg-edge.mozilla.org/mozilla-central/
[2]: https://github.com/mozilla-firefox/firefox
>
> I have reviewed Bugzilla IDs, and they indicate that the issue has
> been fixed in example Firefox ESR78 and ESR128 and few mentioned <91
> (Is that mean below 91 all versions may effect changes). However,
> based on my understanding, adding those changes might result in
> dependency package version issues, such as requiring a more recent
> Python version (e.g., Python 3.10).
>
> I would appreciate any clarification on this matter.
>
> Thanks in advance.
>
> Best regards,
>
> Satish M
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65341): https://lists.yoctoproject.org/g/yocto/message/65341
> Mute This Topic: https://lists.yoctoproject.org/mt/113122170/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


