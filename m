Return-Path: <aladyshev22@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34C46C54E49
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 10:35:46 +0000 (UTC)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
 by mx.groups.io with SMTP id smtpd.web11.7892.1708684537504323750
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 02:35:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YhDutdrw;
 spf=pass (domain: gmail.com, ip: 209.85.221.175, mailfrom: aladyshev22@gmail.com)
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-4d051349124so179155e0c.2;
        Fri, 23 Feb 2024 02:35:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708684536; x=1709289336; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=loAZ3JDSEXHMxXlZL2N39UGr6Li/iEyyCoflPPCPSKo=;
        b=YhDutdrwmkJsrNyOJtpK3F4RPj6PLCBAOeymEeRSayU+k/DIq2HIkno3SFnEGdvz1F
         juhXccyKQl6XQm/KkkqdKXiPuPk0J57dloVsf38zWKvmK+dsIMhilOZ2tyq566LHVHR5
         4eMKFNu8M0/XbKNYNyhyh58ZEPHg55japlay8+v6jRUlql8/FN92A25xZlOxXyPPldSr
         1mQ5s352ruinajAib7DFg3Qf30XIiLiQrGmdjnAZviW//9QDdRTPWguSIPpomSIv6b5j
         5HtcB3uu3q07+Nj4CsXSgH8ZeweP984An97v8WuE/DMyPZ1XWaHR3FzE4YX3mrqUy4+h
         yH6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708684536; x=1709289336;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=loAZ3JDSEXHMxXlZL2N39UGr6Li/iEyyCoflPPCPSKo=;
        b=I2N+7BY5mDK9UkLjIDgWJMgecYytO2E1h3P37zHqKki8CtQogYfPUKqMUwpgTr6GFf
         AFXWnkzi9egEgZedFRdAHbrYTVpbJhg+R6VkAeIXpvh5Enzbm+Lo36BfkPX9QRhi/TMA
         bjZrjKpz4FRwu1x48bmu5d58m+3XS/gZ7cG22XLEJJHI9BFNscbUmtO/3fzNW3YNv1zZ
         7U0FPj7eb5xiTXo0XwL9grwAKxAwEbsgosq6p2DLs8FAQ4Mjqh25K7GdrSLHz2FRZqOb
         icO5/AIdcrjKIr9D+dJqZ5J0bqGqXeFeWtBPt9IJTX5lB9QhDHT3k7/zgp+c/dq8Jl4+
         rNZw==
X-Forwarded-Encrypted: i=1; AJvYcCWbN+vwoPk4+1/W6JxKT9IjUqITsYtQllqi6tQjl2u4BEFTnhLeChwuUM7wmYBHsciT18ZVH1T5H+M8hpNzbLCYEFrtypCwH5deL6g=
X-Gm-Message-State: AOJu0YxtCfcarHJ5XWqgiIXFAsBW99TDZmaY3tv4oH5sn1RW2utJlD8p
	wfMm3mDg5JERa1BgxwJkZeUIqjDHJorMwBtbgPMHT7cnNOHuwGEY7dOmoETUIa3k0YdRJqRr2Pn
	nXqFeKIGsb21WEvB0lhIU9x3f3R4rsMtok2y791Lm
X-Google-Smtp-Source: AGHT+IG8fb09Th3d3D4Eus8WMlDlFD4IMdwKnPLr7NhZdr7Fk8T4svRH9aS6w3k1L1M0gWSjCYuqP+1GhvHqq1PPo5Q=
X-Received: by 2002:a1f:d7c1:0:b0:4ca:b623:7786 with SMTP id
 o184-20020a1fd7c1000000b004cab6237786mr1562313vkg.2.1708684536181; Fri, 23
 Feb 2024 02:35:36 -0800 (PST)
MIME-Version: 1.0
From: Konstantin Aladyshev <aladyshev22@gmail.com>
Date: Fri, 23 Feb 2024 13:35:23 +0300
Message-ID: <CACSj6VXiG4NdETnnWcppCAxTym+kx7c3WKpj0LFGkoPKOA+Dyw@mail.gmail.com>
Subject: 'kgit-s2q' doesn't remove 'rebase-apply' directory
To: yocto@lists.yoctoproject.org, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 10:35:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62574

Hello!

'kgit-s2q' in the linux recipe tries to use 'git apply' if 'git am' fails.
In this case 'kgit-s2q' manually creates a ".git/rebase-apply"
directory (https://git.yoctoproject.org/yocto-kernel-tools/tree/tools/kgit-s2q#n622)
But it looks like this directory is not removed after the patches are
applied. This creates a problem, since with this directory present git
thinks that rebase operation is still in progress.
Because of this bug 'devtool modify linux' can't perform its own
rebase operations in the "devtool_post_patch" tasks
https://git.yoctoproject.org/poky/tree/meta/classes/devtool-source.bbclass#n214
In the end this creates a situation when the local patches are not applied.

Best regards,
Konstantin Aladyshev

