Return-Path: <chrisfriedt@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B564C352A1
	for <webhook@archiver.kernel.org>; Tue,  6 Dec 2022 18:36:44 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web11.56365.1670351799708665558
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Dec 2022 10:36:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WEbYuoOY;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: chrisfriedt@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id n20so8470323ejh.0
        for <yocto@lists.yoctoproject.org>; Tue, 06 Dec 2022 10:36:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KbREt43+Uk7YCKXl8TNGvUdRPHOh7iXnUZlvkohX1ic=;
        b=WEbYuoOY3/xW06FcfF9BCkcUvgIjmmJ3vcnN1dWBWR/sM7ykgvQ0uuXNoyLoyTnD7B
         N0UnoUrzn2NHNJ6X18BQx2SKAB94YRSrl59Y85fK1zcB6EEkkAFSZp6FWfvz+H/W6g1F
         eNQrxfmwW6XGEi27fwhVwdCd2ImNJABjEDc0waB6CDwzHIGUnJQgMuRKEFJmIvpCEoNx
         hVbSqaK7ZICk6gqFmtwUWEbc2ex7XKNy4mTkaNYDPPvk7CEi2DHvW5dYInEGwopYIz56
         XMvqwE6e5Dj/4jJIJ3Lag1kUGMcgJrnSVlXsKwZtWwETv9wyr1LUoPN3LvAZQcJJW88g
         InyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KbREt43+Uk7YCKXl8TNGvUdRPHOh7iXnUZlvkohX1ic=;
        b=QfgxOjJKIXeMySFXKdwqDRFs0tivEl2tiIi1vg1nWEpI5VsjJLr48RTZdwLfcJ9FqH
         wC1Uf3EO+Paw9hqeLXVMLb4UU29YRHCjp0f18hezwwMIISMhpcVLAFpZAlxITRwkE1+r
         WiEWbbs6aAH3jnTZTzqjeRlz9fyyGNlJjV+ajwa0zzdV+rGwqkVP09xV+sNc4bnauUAn
         DWrPGybsds0Lvh1cEbAF9z5Cvpo6tUxpGVGjTu6zRBtcNE06oVV/YCDF0ay6r6DMP/82
         6PwTQnezAYExUdlkPPO7YFFTaDJiPtykMaiomUGO49rthsG6BACAPGDC5XN1EkGUE2z4
         ZWJg==
X-Gm-Message-State: ANoB5pmWcnMPk23xU57s/W6KAx8JLXL0IqpktlhgJIPBsO+buYqBhtzq
	qE0EFxdiCao6dpDCJYlihZR9w5IvSkGQZMiI5HlHE/+UQl/u+g==
X-Google-Smtp-Source: AA0mqf560BZhEPHjxxqHGFmW546hUeR4Sv6dpxHSHNRwadO1WwSw2iObR8HoBJRy/RjC8ySdUUrqPerkl42DL/xTrAQ=
X-Received: by 2002:a17:906:c303:b0:7ad:95d2:9df2 with SMTP id
 s3-20020a170906c30300b007ad95d29df2mr27271232ejz.607.1670351797400; Tue, 06
 Dec 2022 10:36:37 -0800 (PST)
MIME-Version: 1.0
From: Christopher Friedt <chrisfriedt@gmail.com>
Date: Tue, 6 Dec 2022 13:36:25 -0500
Message-ID: <CAF4BF-QXr8QVZOF_pPonpJbPN5O5sNjDaL78q1b5qbEcobhBqg@mail.gmail.com>
Subject: do_install hangs on native tasks
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Dec 2022 18:36:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58740

Hey all,

I've done some digging with this myself, but have not found a root
cause, fix, or workaround. Google shows me that a number of other
users have encountered this problem as well with Yocto, but I have not
found a solution with those either.

Native targets are stuck in the do_install phase and can literally
hang for days.

Currently  2 running tasks (2004 of 2078)  96%
...
0: nativesdk-dtc-1.6.0-r0 do_install - 1h17m52s (pid 2572369)
1: nativesdk-kmod-27-r0 do_install - 1h16m2s (pid 2656202)

Does anyone have any debugging suggestions?

$ strace -p 2572369
strace: Process 2572369 attached
pselect6(15, [12 14], [], [], {tv_sec=0, tv_nsec=526887424}, NULL) = 0 (Timeout)
wait4(2572898, 0x7ffd153a439c, WNOHANG, NULL) = 0
pselect6(15, [12 14], [], [], {tv_sec=0, tv_nsec=526887424}, NULL) = 0 (Timeout)
wait4(2572898, 0x7ffd153a439c, WNOHANG, NULL) = 0
pselect6(15, [12 14], [], [], {tv_sec=0, tv_nsec=526887424}, NULL) = 0 (Timeout)
wait4(2572898, 0x7ffd153a439c, WNOHANG, NULL) = 0
...

$ ps -fw 2572368
... /bin/sh ... temp/run.do_install.2572369

I can send a signal to the parent process (e.g. kill -USR1 2572368)
but then the process fails. I can do a clean on the targets, but the
exact same problem repeats itself.

Manually stepping through build phases also does not work, as
do_install simply hangs again when I get there.

It seems to be a pretty serious problem and not an isolated issue.
Complete showstopper, as the Yocto build cannot proceed beyond this
point without manual hacks.

I've encountered this while building the Zephyr SDK [1] on a company
machine (where it actually matters) but am unable to reproduce the
issue inside of a
centos-stream-9 docker container [2] (where it doesn't matter).

I've tried rebooting, completely wiping all of the build directories,
standing on one foot, trying to forget about it, sleeping on it, etc.
Nothing seems to fix the issue.

So yea, the fun continues!

Any ideas?

[1] https://github.com/zephyrproject-rtos/sdk-ng
[2] https://github.com/cfriedt/zephyr-sdk-builder/tree/using-centos-stream-9

