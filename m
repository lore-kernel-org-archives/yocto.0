Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31F73CD6E42
	for <webhook@archiver.kernel.org>; Wed, 11 Oct 2023 08:47:40 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web10.12190.1697014052426630104
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Oct 2023 01:47:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=C5EMj+U4;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2c296e6543fso81463941fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 01:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697014050; x=1697618850; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WTeZxKet2SRS8gWpdWCjBS5eMolTF8mA6M+q//4aZnA=;
        b=C5EMj+U4Qy7l94vCKLbds518fTyhNA9gP4IzschKQEoecIfCkwn8euX7xT1ntxBL+Y
         NJ15Ycx5xijv9MydjrQtLKEj6un90QYwW2kvSofcD6ki95rb6SgSTxVZ/yNdlss4BFg0
         /PINcaTvOGYZuOA+8sqYHkq1ivsLil6wkEVJQidaQpkNWqly0aLw/q+dKILEUvzybTuJ
         bvo1yUB9jkS1X7RjeGgF7l6sPCjvF3TJvL5XW/X6ImzSsi8kIZdTCU7geX7gp3mDry2a
         wf26TnHBSIf0ZpK/36Ojp/Ls7/OJ+M3y/AgyXiSC6dnf2C7Wcn+ngUwI6zItZ93I8eEI
         Zuew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697014050; x=1697618850;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WTeZxKet2SRS8gWpdWCjBS5eMolTF8mA6M+q//4aZnA=;
        b=iGLy/6Gb5KxgP1ARPh990Sg2iRdUOArT+vsZchoN0A/E8mmZuYxpAdQTaBCb77yM2C
         Hmi+WJO3abm8pPcicKg7zQYDSIxJH2dfBGTOHJerbnyvOfOpi+nmthCANpfQDanytkz5
         6+z/kRYon9Ep02QRdCKdPwVJA8LYVnVXbBHH49kPEqTS1TeV12XAlLFJD9SGrDFgfcB2
         yLbYARLtf08Ngx3nQbR+bQXI6SWhQaXenp4ylv/4HkdCjN/ECxexNsSjRFaJ1PAHKvRE
         o8JeLLGN780wMzPX0x5CyjNoUW8HqYZCxF6YdmGyw0ZHxEJCn+t9mlvcKAI/oxjeAUnn
         1bOA==
X-Gm-Message-State: AOJu0YzsKO8sHX9gM5ntZHz1LOPgQWZZAXvNI1MQ6C/Sj9Dj5UD4ty1/
	S9BDqTZGbIdn24FkYT3RMshucozz/n1XQf0l/Mg=
X-Google-Smtp-Source: AGHT+IFhcdzavYAaFDTsE3C0kBcvyut0yGgoX3M8Z/nyiRcCeCHTTkvH8sxQcmqtG34dz21fyosM4GRDjVG4Zz6r3n0=
X-Received: by 2002:a2e:b60d:0:b0:2c0:e7c:bf74 with SMTP id
 r13-20020a2eb60d000000b002c00e7cbf74mr18989710ljn.12.1697014050281; Wed, 11
 Oct 2023 01:47:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnirnU03K9oc6ubx9WKojbJ=U8tkk985X0LDkq5v8XNHSQ@mail.gmail.com>
In-Reply-To: <CAPJWBnirnU03K9oc6ubx9WKojbJ=U8tkk985X0LDkq5v8XNHSQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 11 Oct 2023 10:47:19 +0200
Message-ID: <CANNYZj9Tf7SFf62dZ+Jy-xcZOkMh_mF7g7tg-2OU_BqLXYt-fg@mail.gmail.com>
Subject: Re: [yocto] What laptops do you use for faster builds
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 08:47:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61317

There's a whole presentation on the subject:

https://www.youtube.com/watch?v=SvxZ3MtraSA

Alex

On Wed, 11 Oct 2023 at 08:55, MOHAMMED HASSAN <hassanchattarki@gmail.com> wrote:
>
> Hi guys,
> I was curious to know the laptops/desktop/workstations you guys use for quick and faster builds. Can you list out the specs as well and maybe some tips and tricks for reducing build time.
>
>
> Thanks and regards,
> Hassan
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61314): https://lists.yoctoproject.org/g/yocto/message/61314
> Mute This Topic: https://lists.yoctoproject.org/mt/101891951/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

