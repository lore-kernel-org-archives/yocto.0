Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB717C47258
	for <webhook@archiver.kernel.org>; Thu, 25 Jan 2024 14:54:45 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.19602.1706194480772017136
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jan 2024 06:54:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ajsv4UiG;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5100fd7f71dso2720514e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 06:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706194479; x=1706799279; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lBKDyYmfKn5+dy6U3XyG8/vokB+0RNN/qwyN/IjgDns=;
        b=Ajsv4UiGXhguDYY8VuG+BOfR0Ixt8fLUTcC57vhMoWG/uTGJmtWs8knI6YmeqvSyEZ
         s6VH6cVzzyaK3lKjy4u6p/Oz98MLvSyxIRGG90Hy1ZoFtSWEDOEwkH7jvGxu4pjdefCG
         B4gBNIi9Nn40IG8kHxWuI9+iAqNa+jV1SXaCiJ+vBSqf1sDH1i0ZmuRW6cSV2oHrqkkc
         S/5n2Ub5y/5t6TDBOwoTMmv9E7waZWsqOWwC0R+NvZEzcmQ3G+BG6v69H8jtyExQBsCf
         gsnMiP0b3n51TItGbgequd2bDGaFMU55tyucQepOsYlHriqUJiYvkXVnFjoedDMkpZ8o
         MCnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706194479; x=1706799279;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lBKDyYmfKn5+dy6U3XyG8/vokB+0RNN/qwyN/IjgDns=;
        b=rQqR2kHP0rQWMvriRr6pMrAHKZSJc+yr5MwBusKKNPf7AmGqLGfmx0R39PnVDRjy67
         uY2Z+4FzCIrN8nEn0go9SNoowKjVnH5P8p5C9oS4e/qBDB79L2RlfCqJG52wXbQ73X4i
         xqAPIUH02IFAN9MsGcjHbHeqwltHjtoTwWRm1efdTyCHvda8hmBMVfq+ORunO8oPFVSE
         4LHk8uehaRLDimJ7E5fzdBajZVvBxZwU/q5XdBbN2DqY9GAqqQYHLP9/88c5jQCZ2b6K
         aJnFoHbgI3XOPePv2/YLydrgh9nZIA7Eccz11KJjVfYM3g5VPIrpxkxerqzf+3Op8zsF
         OMMQ==
X-Gm-Message-State: AOJu0Yyzswp2gaH/20/HhXgcaYLSX4XW3K8OtrIOECbdYrCj4X7FhF84
	1d2mwQyXE9BqdmfaBluJmJHTXf5zUFiD8nna2Ilsg2b6itB7LI/D0UFxieRREkGMiPSftzAKrKW
	+WKEjhKzy675V6bT0YRn3lGA19RXcgEhm
X-Google-Smtp-Source: AGHT+IEd4q4IEuxsZ4uYSIcSpOa3Vu4Uzjpfva6fZmRfS+006QZPSXzL8hmTPeILFpoDx7I4EByTon0FimgMfhVJHjk=
X-Received: by 2002:a05:6512:e96:b0:50e:70b1:9544 with SMTP id
 bi22-20020a0565120e9600b0050e70b19544mr805968lfb.111.1706194478710; Thu, 25
 Jan 2024 06:54:38 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj-T2Aj7=KGsAoe78-y3BBzJ0+Hfz0puj3VntD2hBqE7OQ@mail.gmail.com>
 <27265.1706185127772242958@lists.yoctoproject.org>
In-Reply-To: <27265.1706185127772242958@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 25 Jan 2024 15:54:27 +0100
Message-ID: <CANNYZj8EwssU2_QbnxUg_GAvbjWwrhD7bkV2H9uoi2ogSrT7-Q@mail.gmail.com>
Subject: Re: [yocto] Multiple images on the same hardware
To: yocto@lists.yoctoproject.org, an010@live.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 14:54:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62292

On the image level you can only control which packages go into it.
Kernel modules are all split into their own packages, so you can
install (or not) what you want.

Building the same userspace recipe slightly differently for different
images isn't possible. You need to accept that and find some other way
to differentiate between images (e.g. by installing (or not) the
package that the recipe produces to begin with, or by supplying
different runtime configurations).

The alternative is indeed making two (or more) slightly different
distros or slightly different machines, and running separate builds
for them, which greatly increases complexity.

Alex

On Thu, 25 Jan 2024 at 13:18, Aleksandar Nikolic <an010@live.com> wrote:
>
> I thought that could be an issue with multiple machines, thanks for the confirmation.
>
> How am I supposed to decide which kernel config fragments are included in which image though, since they go into SRC_URI? The same problem arises if the same userspace package needs to be built slightly differently for different products
> That's not something I can easily control in the image recipe.
>
> Multiple recipes for multiple products is one way to solve this, but I don't find that as an elegant way of solving this problem.
>
> Aleksandar
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62290): https://lists.yoctoproject.org/g/yocto/message/62290
> Mute This Topic: https://lists.yoctoproject.org/mt/103951016/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

