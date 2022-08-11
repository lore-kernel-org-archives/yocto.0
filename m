Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37FCBC25B0C
	for <webhook@archiver.kernel.org>; Thu, 11 Aug 2022 16:42:50 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com
 [209.85.128.178])
 by mx.groups.io with SMTP id smtpd.web08.75.1660236165370867700
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Aug 2022 09:42:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=foMEVb3G;
 spf=pass (domain: gmail.com, ip: 209.85.128.178,
 mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f178.google.com with SMTP id
 00721157ae682-324ec5a9e97so178238257b3.7;
        Thu, 11 Aug 2022 09:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=j1kUz7lugxaJxVUs1APR0fl+Kg7MRDQenEQbN3ia9Hw=;
        b=foMEVb3G+T3kyb6QWrTG/7IfhNSxP50aR/WbqPq3cIoUCX9EprjPtlZJ8jkwOLo51c
         Sw8+QuHk2kiZ1KxlzsS4uN6wFZJELqfn79OhXnrGpRz8U4Ou4Br0R3OzviwjPBjY/cIq
         +tyDeE31RnfwnbxZiGsF3Uyx1uKYGbIUgwl8tv2NEcozNgwKug6E+g//AWzrzOct2hzg
         ifSSFqtKmBT8x2Dkfn+EIb9ZSmZAxMVDPjx/EPHy8jQWbsSWQrYUWG2+6Jy0p1RyYGJo
         gI7wRB+pJRkrzaLJPuxf/z28RE2vuGkNJ7OE8OVy4qJ2N707NGkthV68DhpAJq7V74wl
         aP1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=j1kUz7lugxaJxVUs1APR0fl+Kg7MRDQenEQbN3ia9Hw=;
        b=ERu2jk6z+lk8dzUEoQMsuSPMzsYki/O2t6Yd82uxzQ+XAsbeTuAyo022hT/2e8IyTP
         7TlHAKBhA+0dQUo1bzgHAynIckGN0cquCP/6yTo90LrmPWGKIM5M3rmVx783VZ+44XE1
         WpQVnLrUgzIQ3PS1Aknqxyama3lwMx4GwHbkOY4rtRBZrq1zPTG0ctV/CkQosP4vppxV
         N+ZtBL/5P6Rex9uMGkaH2oSKbgTIXdGT77n+TPf/le+R6LVz8o+Z/j0xX+nDVPNK/gBD
         XnzzuPvqH2y27NX+pwS1XTuJew33P6SSNySUcLsrXOF7LU7O45O7CLlTFi2cXBK80EdF
         biNQ==
X-Gm-Message-State: ACgBeo1PwfLif0Qh8124pyLKQfBl2J+acOsG6Xs04kV9GKeNbw2wMa1Q
	L//bMiKDXpsTbsisX/2sBjzQ0Kee4WCb+ocIOmI=
X-Google-Smtp-Source: 
 AA6agR7+QyGu7Prne7eS3hVgiyMjwLEOy+6nEHF7OK1R3TrVDHvlWMkmP+xE9oYpn/ZPCpFZa1d+PzMJBkkZ45pRKpg=
X-Received: by 2002:a81:490d:0:b0:324:5fe9:d637 with SMTP id
 w13-20020a81490d000000b003245fe9d637mr85587ywa.162.1660236164341; Thu, 11 Aug
 2022 09:42:44 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAC5ruLOyi7p6xAEUxhJNZR8mAhGFvcnnyf5tuXgu992inh=7dA@mail.gmail.com>
In-Reply-To: 
 <CAC5ruLOyi7p6xAEUxhJNZR8mAhGFvcnnyf5tuXgu992inh=7dA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 11 Aug 2022 09:42:17 -0700
Message-ID: 
 <CAMKF1sq7u5m2S8SUdXcSgdJFyiCpFgfZT+7bVDZDqesTq6S+Pw@mail.gmail.com>
Subject: Re: Remvove unwanted Udev rules
To: Nikhil Patil <nvpatil2736@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 yocto+help@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Aug 2022 16:42:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57827

it is part of systemd recipe if your distro is based on systemd. In
that case, you can write a bbappend where you define
do_install:append() and delete it from staging area before it gets
packaged

On Wed, Aug 10, 2022 at 10:59 PM Nikhil Patil <nvpatil2736@gmail.com> wrote:
>
> Hi team ,
>         Greetings for the day .
>         We want to remove unwanted udev rules inside yocto , so how we can do ?
>         eg. like to remove 70-joystick.rules  (/lib/udev/rules.d/70-joystick.rules)  or eliminate these permanently in which file we need to change ? and what flags we need to use to remove these ?
>        We stuck at these point can you please help on these .
>        Thanks in advance

