Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DFA5C27C79
	for <webhook@archiver.kernel.org>; Thu, 20 Jun 2024 08:08:19 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.42752.1718870893434716775
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jun 2024 01:08:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fSEd03Xe;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ebdfe26217so4604171fa.2
        for <yocto@lists.yoctoproject.org>; Thu, 20 Jun 2024 01:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718870891; x=1719475691; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qv/5VgM5LIK3VLWDmhIDDSqLe8N6MBDw9RW1T3+J2Pk=;
        b=fSEd03XecYVKe2lmeU3LJGpV/NPhg9vReCrSmLf6KZqqfGMjVC++bx9fZ6AABdI7p+
         MKzr+KeqCLCIihi8wEmKbNpciTSlhdkZJKeO4h2bQfXQVSzmwh/OQc6+rJ8Vy7famQaB
         ramA9Xf6Z+8IP1RSQwfh8s+mh1uLQ474usA4idcoxvL/F+32hMoER5fJvcwSMU1tyV/y
         cf0fmtT4gq9IOJ0ZvlRrPMqb/zO7YEsU1ijas7XcxeJEnM9FWQ2eKr0LacNWO4tK3sD3
         OK95ls7+FH9iIHPCQza4+XU7YYRwV9XRWpoblhu+CA/v0AhZtmDW8B2hZzSMeXgHDuLJ
         bGnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718870891; x=1719475691;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qv/5VgM5LIK3VLWDmhIDDSqLe8N6MBDw9RW1T3+J2Pk=;
        b=vweH0HNfkbH6oOlY0adZIxEv2wvsNLyhzoTXvPgdE6BdIKNdRQaxHp5Hd/GnK40Zpj
         wkIzfUsf4x9uVKVu5lACdwL9/ODGsdArdMAsTmElpwTk7H2lhzMUOB79/os9p+chyFcE
         4BXzkSTZLmRilzimbghtzH7hNz2aaxRUkYpPgzInlAjqdiq4B4Lizf64XnqxqlYD++ZG
         vily6qTlnwC9MR4UC151j2nvrMetEG990+tDABnQjCJNZV6b79Lf2wkrOx529SNMI/2c
         buf3tUI86oLNQlxzUeK4PJxXunOpthr9zPpB6z5dVJCEx2ABSil82oOyW2DniLCbPQRN
         nsaw==
X-Gm-Message-State: AOJu0YxOxFDi7RhtsAkLr1dnkdEUR6YFHd4kXQRY2fDEO4YxmX2t2nX+
	5R8TnGVNyZEL/GMhFnAu2mgxyMtfzxO4tAhbpN49BTt0zJ+fW6vihbh0IRCnL4wngR/r48YqKRs
	1OyWmOZlV/VQuU5hrBY8KxIT7WOE=
X-Google-Smtp-Source: AGHT+IEXUCkVe7GE3c5/92l/v1e6OehxMi55PMWZMKnB5GYLvFPsgW/EngUJC1Y7O4KcMl5xo9uBzCRC91fC8xB4vDI=
X-Received: by 2002:ac2:5624:0:b0:52c:7f16:d439 with SMTP id
 2adb3069b0e04-52ccaa61287mr2285757e87.39.1718870891318; Thu, 20 Jun 2024
 01:08:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAA7J33X=Zydis3=9AMxgA4vWOKYhgySq8tPoYwPhT0vh7WMYDQ@mail.gmail.com>
 <CANNYZj9w8tQSWCLERavC2NXMdS5i=QrimoZ1vGoF=8LNP0wVdw@mail.gmail.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.9fe0f4e9-8124-48c3-a0ce-1035f32eea8b@emailsignatures365.codetwo.com>
 <000001dac26a$bbe3a070$33aae150$@gmail.com> <0b5dfc61-07f9-4d3b-8bbf-26da76f09f52@topic.nl>
In-Reply-To: <0b5dfc61-07f9-4d3b-8bbf-26da76f09f52@topic.nl>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 20 Jun 2024 10:08:00 +0200
Message-ID: <CANNYZj_Zb2me+8C+BXELw+KERFKViaDSPfd1L5hLQYscPxY+7g@mail.gmail.com>
Subject: Re: [yocto] Dropbear and deprecated ssh-rsa issue
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: yocto@lists.yoctoproject.org, mehmet.fide@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jun 2024 08:08:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63373

On Thu, 20 Jun 2024 at 08:55, Mike Looijmans <mike.looijmans@topic.nl> wrote:
> Keep in mind that there are millions of released and installed systems out
> there. Their owners will get very, very angry if a software upgrade locks them
> out.
>
> Desktop distros may be able to bluntly disable some protocols, because there's
> always a user that has access and can patch things up, but embedded systems
> often offer no access whatsoever apart from the SSH interface, so there's no
> way to go in and "fix" it if something invalidates the keys on the system.
>
> Hence my vote is for option 3 and please ignore what the big distros do.
>
> Four years may seem long to some people. For embedded systems, that's just a
> normal number that "uptime" would return.

I'm not sure I understand your point. Pushing software updates to the
field without first testing them locally is insane. If that practice
bricks the devices, I have no sympathy for the vendor.

Second, a change like this will not happen in LTS. LTS doesn't
(knowingly) break things, or add new features. In master, on the other
hand, it can and it should happen: a bit part of keeping things secure
is disabling or removing insecure crypto. Various upstreams do this
all the time, and I don't see why we can't.

Alex

