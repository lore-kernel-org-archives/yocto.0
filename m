Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 026F4C3DA6D
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 17:16:14 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web11.26738.1747761371163310055
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 May 2025 10:16:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kU5KskMX;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6f8c2e87757so49250106d6.2
        for <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 10:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747761370; x=1748366170; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=miKCWy+WnmQXTlSpbg2IsRP9dNsjMsolS440PgU0aQI=;
        b=kU5KskMXqfGxEZYP9dkOXXaJnE9Tfutm2CFavttql9Fhezir0YB/SDUuANkE8btcBg
         S3PIIBcUW4LVPDQnL+BHzB2IDzbSRvRP1FGAFuNXPY4P8heTgjBJ5xiBTB9gEuqhUZIh
         ImP2Fv5YtfJQ1CtVCqr/sUCI7wdYeP/BRMo3mfzsNtYbDhKaib/WKxm9llbvC6BNmemL
         siXAHcdK/4KiK2O3K+bWeg+IJ4f4cCyalb9jo8y9Q5gaPFDZGt86NQAEzthmjb7dv0G6
         1+1bfQLDsQ/6YkKvbdc7p0ArP4WfXKv4Fq92I3TsEFFE/uM6ssUtC2HWYuLjkUveqdb7
         EZTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747761370; x=1748366170;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=miKCWy+WnmQXTlSpbg2IsRP9dNsjMsolS440PgU0aQI=;
        b=PZNkHyh7y/5ccJCQ7xJUT5xOW4rxgycl1wMYI7g6oQD+hBgT3odgcMZ3IhIB4JVKsH
         fjz3Z7knYuq6X28K79Gmubhu+54Am0w28I4ZNnTPm3audj8//HwZqNGaNa2aozmGI2AX
         /pZ7GIfh3v6Lqq/lKwaNu/cXeYEpJh6Z17Nz6pQON6Dx4hrp0e75ZcQFh6LBBziblOx9
         hriz6hlGx8ZZxJyq4bTQULq6uFVvSv2fS6zunn9CUoVtQYRaXTyauwTUefavCrsTTdpi
         UdHbRKuesykWj35TuQ0ymodoQxvy65Wnnv9mzvIwSpntgFVaNeI8vixU5RzU2z68rpDI
         26Mw==
X-Gm-Message-State: AOJu0YzYt3gUE8gHe3papfJbkTd6nMqeKuk54m8pacp7RzGJMTUIsfdJ
	J5TYbApaDp8mGQz0509iLUHDVNS+hs5um3KWYQFUuH6HsAv4t8c7WIL9KleDg5SxTMEKYrzw2qg
	AeaVAOC8LyGhqX5dZkRjUkRwS8o0noqbWw6/Q
X-Gm-Gg: ASbGnct4UntqbudtDjb7Sw2fnpwBjF6mjuhX7fTIyRjr1ddUq7tnV48R7ejyc7s9FbP
	DWy3yebeXbwwmNE021cvY5TbqC0E+pGQPUetDAON6rw9tWAVQFWaHeKHJxL6hNTkal9tCqLBEgB
	Kqre9J/ZODDNAUl3DCdMWLC5rJHe7LTtd0GA==
X-Google-Smtp-Source: AGHT+IGxrKKiel7LDie6QFCJ7qwHxuzEgAErWis1IDcU+ztfkG/zMNBNrX1jJ2K0lDgmyOhANukyHydUm4FAUgpDetE=
X-Received: by 2002:ad4:5c62:0:b0:6f8:c7f7:a055 with SMTP id
 6a1803df08f44-6f8c7f7a310mr183883136d6.40.1747761370179; Tue, 20 May 2025
 10:16:10 -0700 (PDT)
MIME-Version: 1.0
References: <CACq04CGjYASSJR6ie3FFGs-BgJLZipzrX8ozBmzrBSrAb+ODyA@mail.gmail.com>
In-Reply-To: <CACq04CGjYASSJR6ie3FFGs-BgJLZipzrX8ozBmzrBSrAb+ODyA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 20 May 2025 19:15:58 +0200
X-Gm-Features: AX0GCFtLnX-PqCxg2fY0zkmzXpzyvv8H2_IgYRq4-a2VJ3Ng4ZD9VJdj5h8x3tI
Message-ID: <CANNYZj_B9XVH1xwUY=4fn7c8B961rVgSqsZGhp-MNixZZUGOxQ@mail.gmail.com>
Subject: Re: [yocto] Only build the packages that needs rebuilding
To: yocto@lists.yoctoproject.org, mohammad.rasim96@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 17:16:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65376

On Tue, 20 May 2025 at 19:11, Mohammad Rasim via
lists.yoctoproject.org
<mohammad.rasim96=gmail.com@lists.yoctoproject.org> wrote:
> Is there a way to make yocto/bitbake download prebuilt packages from a repo and only build packages that has a modified recipe or the user request to forcibly build?
> In alpine linux for example when you build an image you can make the build system download the packages from the alpine project repo (or another repo if the package is hosted elsewhere)
> And only build the package that doesn't have a prebuilt version or whose recipe (called APKBUILD in alpine world)
>
> This makes building a customizable image very fast and also reproducible.

Yes, the mechanism for that is called sstate cache. If you build
everything, then publish the cache on the internet, and someone else
configures their yocto build exactly as you have, and uses the cache
you published, they will not see any compilation, and yocto will
proceed directly to making an image after downloading the packages
from sstate server.

We don't yet have the top level tool for doing this in a single step,
but I'm working on it, and the code is ready:
https://pretalx.com/yocto-workshop-at-embedded-recipes-2025/talk/QJTEQN/

Alex

