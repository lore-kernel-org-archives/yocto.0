Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web08.1247.1615507099888358476
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Mar 2021 15:58:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JStqgZoQ;
 spf=pass (domain: gmail.com, ip: 209.85.160.173, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id 73so2550814qtg.13
        for <yocto@lists.yoctoproject.org>; Thu, 11 Mar 2021 15:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Nek7Uw7F5WaqhEG9FVPvkdSARNpXBc1jQryMuDYFEAU=;
        b=JStqgZoQ2D4GXywezN7GPQ88bYR7++ce4x6Eg6dG8IIDMIWfAuLZ8VKTtQsy8aIxNB
         dS+cWc0Tzag46BQStHYbkjZWJcvrztThCMZPUbzHw4gnABcOaXodkz4KnDsotKJV9ddd
         ZoGjm+C55DfK6vDIExbvRemOeLr9HUpsecM1a/4DRYyxHmmXVeSbjcNq20Np+6M14rmh
         /BxYHhjOP8Dv4xXJlo6VKdysz9RMMitT569pLMTY7xgipA5MAR2Yk/vEWJWNcraOJwc6
         KgHJBZmAEO0tNcph6S+OkEcc50y+I3RF7fOM/ew86riScMLU+r7Zls2xbhJzbfPY62bC
         KMfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Nek7Uw7F5WaqhEG9FVPvkdSARNpXBc1jQryMuDYFEAU=;
        b=etVhaA4I46+nELKDiC8dbdVmyHNP1tZ51eA2D574IMfBdITY9obkxMhA4RiBxPOw5p
         e2LwARy0MKx+XMjCpIRie2vgx+noyZambZBSKH34JzREu2NE82hjwx7KNKcaR4jzGIv1
         NEcLE9/cBMqeSe6432IHV7Ez3Ihs8KyxVlNsUh33kkUvj4xB4otZVlU9cnlknDa2I59S
         +4bILjE7/yOXHti3PNJb/Tsvde/MMTAFA7B4Da9zBS2v7XA8WDnJM6RvobhHPqk06wNo
         dIYfy/67f6gPKcHf7kpEE4nxuZu7zDNcBvVHwL9f3VMMmbfTLLEAc+g9CiO5AXRBscqL
         MelQ==
X-Gm-Message-State: AOAM533Lgobv9T5WNtSY+580urKRsZB45drTxq0c69surT/ceUpEbIT8
	ZNNjCegbZ9B/WyhY/fo2U+hQ9Etch/1BvRlq8wQ=
X-Google-Smtp-Source: ABdhPJw2R5Pm8YgBm1fzATQqtJXqz0Gk4ysxOeTWtLpIC2uNzH65j4tDuD3ZO5H8tda3KiRhLsE6z5+W0xEVjGnOmO0=
X-Received: by 2002:ac8:6e85:: with SMTP id c5mr9417677qtv.299.1615507098945;
 Thu, 11 Mar 2021 15:58:18 -0800 (PST)
MIME-Version: 1.0
References: <guHG.1615463094141117545.QTYF@lists.yoctoproject.org>
In-Reply-To: <guHG.1615463094141117545.QTYF@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 11 Mar 2021 15:57:53 -0800
Message-ID: <CAMKF1soKZ59PSfCNbOvq9mySqE1Uvndfi2HY-c-ZA4xgK7RUbw@mail.gmail.com>
Subject: Re: [yocto] Want to use nodejs 14 from nodejs 10 in yocto warrior bsp
To: darshak.raval@volansys.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 11, 2021 at 3:45 AM darshak.raval via
lists.yoctoproject.org
<darshak.raval=volansys.com@lists.yoctoproject.org> wrote:
>
> Hi,
> I am currently using yocto warrior bsp as my build system.
> In warrior, nodejs version 10 is running at sources/meta-openembedded/meta-oe/recipes-devtools
> I want to use nodejs 14. I couldn't find yocto recipe for nodejs 14.
> Is it possible to upgrade from nodejs 10 to nodejs 14 in yocto warrior ?
> Thanks in advance.

you could backport nodejs 12.x from master as your own risk but I
don't think we have recipe for 14.x contributed yet.
> Darshak
>
>
> 
>
