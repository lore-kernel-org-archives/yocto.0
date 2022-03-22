Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FD1C433EF
	for <webhook@archiver.kernel.org>; Tue, 22 Mar 2022 09:25:51 +0000 (UTC)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com
 [209.85.217.50])
 by mx.groups.io with SMTP id smtpd.web09.7773.1647941150684246006
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 02:25:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hoBYCfll;
 spf=pass (domain: gmail.com, ip: 209.85.217.50,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f50.google.com with SMTP id l128so3195333vsc.7
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 02:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mptOC9z8eS7aq3koxnQuFeBM9BOv/PXTLBM9/sfITVE=;
        b=hoBYCflliG3YwexS8kbRAKlNyDk0cn9B2RuVmovF2xterNqaXx3rpq4bEvJjiulAR9
         SoYzcWSWVluSLqvh/A2hAcaVGJaR2lq3oRga2fkpqaeVFR+zhNCHIzGfsd0GA8eQh4Jr
         4MS9yPoPF6bbQNc0ATqHeyWNJ4z+gaMJjT5GFkImToeq0dbhw28Ii3yfQlTBr8ahBjTr
         ZF85CYi4aMxFow8tURsakBcx8rRbnBEIw+ZVip1Oz9f6lqaPGc515xZQ3unJGQp5+h4t
         6rUXRTvc330UPsiSIRn0NEjJFS8BgVixDnKwtaSc1Xv4VRVH7h6Oycdj5kzLi8bEDkWF
         OOQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mptOC9z8eS7aq3koxnQuFeBM9BOv/PXTLBM9/sfITVE=;
        b=tDBmYJ9XJMOE5RM46ZiCQDYyziYrSY4T9ebG6HKqiM62/WDeNHQyT5q7t5cEyM+I9S
         D9NuoHOlmnY8uh5iPi5HO9GEHEqPdgjqO9DQ1qFKH8s8ZZXnDUoAO1uoN7RHRqjCGQ69
         yQ4NWC8KbqkJ2//t7UtiPc81KV0URSL543nMhZYd1vRLeRYq9Z6rj/iNaRXkmssoIBzg
         C8K1Gqv5U/leF8yOkmww+zlaN/BJW4KyN0LItegFu3yDsOk4fkYbeFT4KK6jDjBWytLX
         pgt3VAY0tdYHMmzquHt+Axgf6AZ19pSrjiWu3perzrwK8PbEpc4F7cwOVQU7QmMHuKiA
         si8g==
X-Gm-Message-State: AOAM5337g4HZcQfEzVg/dpJnqlK6R3U4NO0eqLL7OK42l9ltf1ckxod6
	R7mbzEG+5Ot87bgKxhYcR6LMMI4HJKm+MNCoeMUJ5Q/0
X-Google-Smtp-Source: 
 ABdhPJy11oiLS+dXBEt1rxEd6y3IwqlnHrz1rSRmrNxqq+x61f+TVi5veEV981uXWe7pXVx3j/fR94X6R4+Ss8q5T94=
X-Received: by 2002:a05:6102:cce:b0:322:c483:76b2 with SMTP id
 g14-20020a0561020cce00b00322c48376b2mr9484421vst.45.1647941149646; Tue, 22
 Mar 2022 02:25:49 -0700 (PDT)
MIME-Version: 1.0
References: 
 <AM0PR10MB3107136C7FF2137D2614E56A99179@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: 
 <AM0PR10MB3107136C7FF2137D2614E56A99179@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 22 Mar 2022 10:25:38 +0100
Message-ID: 
 <CANNYZj85noGs9H4A4pYqOO6Rng5MtEMMtVAgOpcBb7AUfeMy4w@mail.gmail.com>
Subject: Re: [yocto] Strange sporadic build issues (incremental builds in
 docker container)
To: Matthias Klein <matthias.klein@optimeas.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Mar 2022 09:25:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56524

It's hard to say without the full error message, and the build
directory of the affected recipe. The easy way out is to simply wipe
tmp/ before each build.

Alex

On Tue, 22 Mar 2022 at 09:51, Matthias Klein <matthias.klein@optimeas.de> wrote:
>
> Hello together,
>
> I am building various kirkstone/master yoctos every night via Jenkins inside a Debian Bullseye Docker container.
> These are incremental builds, reusing the build directory and sstate-cache of the previous build. The different yoctos are built in order. Each time, a new Docker container is launched.
> (The same environment builds dunfell yoctos without any problems).
>
> Now it happens sporadically that one of the builds aborts with the following message:
>
> stderr: The series file no longer matches the applied patches. Please run 'quilt pop -a'.
>
> They are usually alternating packages where the patch step fails with the above message. Also different yoctos are affected. But it is always the above message.
> If I then restart the failed build it usually builds cleanly.
>
> Does anyone have an idea in which direction the problem goes?
>
> Many greetings,
> Matthias
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56522): https://lists.yoctoproject.org/g/yocto/message/56522
> Mute This Topic: https://lists.yoctoproject.org/mt/89948013/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

