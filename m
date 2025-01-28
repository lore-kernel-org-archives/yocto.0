Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8348AC0218D
	for <webhook@archiver.kernel.org>; Tue, 28 Jan 2025 08:28:06 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web10.13325.1738052883515606689
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2025 00:28:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=W98Ssgat;
 spf=pass (domain: gmail.com, ip: 209.85.128.46, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4362f61757fso56404475e9.2
        for <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 00:28:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738052882; x=1738657682; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hiTiD9EcqDifLnx5FQrQQNVqMZf69ig1UKkQHezrOlQ=;
        b=W98SsgatzXEEepnwwc0mZ00SsHipdjo6kUeQyBdJyhdk7siVYbMiKj9/j8XVGrRT9y
         5TV5FPKhg2ZCgNOtmWinZxLaUYTAyBo9ozHoFBvVImlerJQnHr6ycHkx81mNzyRZE8OB
         O83j/FG+SECCXIendJ+G6eDJ6mPZ6DD9SGHXyyesPfWMu+vb2w1sX2HjGsTPrhRDD/uz
         /JI76eiSHp52B4oRXdu+97N4jKhjMDeYIhWMHf8GUrQAurfiPHTCuX06j+qJX9e3APMY
         OszUyYYbR/Tmbf8NAqFA2twC8gMiaZvmtz6hbwn3QJjqgvXjBxJvEGqCD+U10qZRDV+u
         Kt6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738052882; x=1738657682;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hiTiD9EcqDifLnx5FQrQQNVqMZf69ig1UKkQHezrOlQ=;
        b=UJocj9zpIB/9lqOidUCDLiVayinnTrj8f4J1ZZECfTTjSCyogfn0GfTtclf+sJg4Ht
         tIemjlENctC1ZCJE9VWeFFWmnZp70/VUYeylwahofqZMiGacyGEQcDgiMTF1E/2hZgCk
         V32nzF9eS3ywZAJfa0YTHrqdHyNz/wwrbd00wtozHqrZxfyvUbZyCChC6EZx22xxlYy0
         ycM1y+Pv7Lh/bt8ztli7kOYAIFYsDY81pvOcC+EypmMsTWgtuhvZo6CdQx8KkmLBL/GA
         qD223si4/KarqIMWE1G3owCgyEEQbDueY5n0L78RC0cmiUIIdZvNeHvCEMnUALVNPBcR
         WMKQ==
X-Gm-Message-State: AOJu0YyLkzjp6WS+fyJ2godUu5dmeZZBlDNlQbojxO1r7VdfPA0Gb/t0
	h6gMHyDHm2HtMJdN37lthguQwHJ3ygiAL9opP3MEjkNtOFrC1Izf7xv4Lphv
X-Gm-Gg: ASbGncuatw/8G0H5jrDosCdufpiG/1GHp+wGeQXugwx51xf8JplRqvUOSeqGxF8f0hC
	ofXfLbpAclR42j0xaqpfMv4vfvohR9mTUXtOBHTbamBh2QUhWOOQHm8kyl+SWNLR8a65twKhzMZ
	GOMngyW3tJefZDjkW142Ch4twZikfRQoy/L2VfJ+hyxNj5f1hXT/jw8bPyBqf4qAWcHnH+PgYiV
	DCGRK9NzZRIvQ7nfdW3Sbi5SSl0kCcuS/uFnyuXCCh75HkpfE9yYY54ZqFtd3AGPO7cuNVgJ8je
	SjwvqGa92D9hoMIr0QeMvRo=
X-Google-Smtp-Source: AGHT+IHBevxIci2pKtmCMELGpwUOGF29nOFTFNFX5d7J4KaA2sZX1DCc6YKcvZ2ttQxBKjWuYuwvKw==
X-Received: by 2002:a7b:c3da:0:b0:438:a20b:6a62 with SMTP id 5b1f17b1804b1-438a20b6d62mr291596625e9.28.1738052881413;
        Tue, 28 Jan 2025 00:28:01 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd485007sm162974245e9.12.2025.01.28.00.28.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 00:28:01 -0800 (PST)
Message-ID: <832a2079-e313-4251-8db1-d12d507838d7@gmail.com>
Date: Tue, 28 Jan 2025 09:28:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] QA issue with ladspa_dsp.so
To: yocto@lists.yoctoproject.org, kontakt@daniel-kampert.de
References: <1632036912.2804242.1738050313269@webmail.strato.de>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <1632036912.2804242.1738050313269@webmail.strato.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 08:28:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64660

Assuming you are using Honister, or newer, you need to change the syntax 
from RDEPENDS_${PN} to RDEPENDS:${PN} ("_" vs ":"). Guide to syntax 
change: 
https://docs.yoctoproject.org/dev/migration-guides/migration-3.4.html#override-syntax-changes,

Also, when you use ":append", it is recommended to add spaces around the 
value, otherwise it could be mangled with other values in the same 
variable. (You can't have too many spaces, but you can have too few)

On 28.01.25 08:45, Daniel Kampert via lists.yoctoproject.org wrote:
> I try to port an echo cancellation recipe to Kirkstone and run into 
> this issue:
> /ERROR: audio-1.0-r0 do_package_qa: QA Issue: 
> /usr/lib/ladspa/ladspa_dsp.so contained in package audio requires 
> libltdl.so.7()(64bit), but no providers found in RDEPENDS:audio? 
> [file-rdeps]/
> /ERROR: audio-1.0-r0 do_package_qa: Fatal QA errors were found, 
> failing task./
> /ERROR: Logfile of failure stored in: 
> .../build/tmp/work/cortexa53-tdx-linux/audio/1.0-r0/temp/log.do_package_qa.489020/ 
>
> /ERROR: Task (.../recipes-init/audio/audio_1.0.bb:do_package_qa) 
> failed with exit code '1/
> And I already tried to fix this issue with adding
> /RDEPENDS_${PN}:append = "libltdl"/
> to the "audio" package of my recipe, but it still doesn´t work. What 
> is the correct way to fix it?
> Thanks!
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64657): https://lists.yoctoproject.org/g/yocto/message/64657
> Mute This Topic: https://lists.yoctoproject.org/mt/110855648/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

