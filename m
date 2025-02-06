Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05448C02194
	for <webhook@archiver.kernel.org>; Thu,  6 Feb 2025 15:58:46 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
 by mx.groups.io with SMTP id smtpd.web10.44713.1738857519941010670
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Feb 2025 07:58:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NAGBkVGq;
 spf=pass (domain: gmail.com, ip: 209.85.160.45, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-2aa17010cbcso675972fac.3
        for <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 07:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738857519; x=1739462319; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rMLthHwfulJrr/3sem4Jo3ZAl5bPmozskhsrwvvFddA=;
        b=NAGBkVGqbjK5vu8Yvl1qL3fMvX43Zo7cHJUfDqC4CujSnCjnKTSWH0lsAkyGmKZSV+
         KBjBIER2UemzhSrxEBl4i2BNovlGHfjabN6hereklyfRE2/KOgdxgFfCHFgYdtgpe61F
         cSeCYBwP0Nt7ZMcMBVMD7GhHRLgq/QlBf0fXXNBsHF9TzlQvvxF4o4ADXzUt/rmNhlfM
         9R25eCNf3WP3DJ6tq4EsbVNcUPvxJbb4H9cx5FB85BZ1fIFq4wW+0oRSARe/8kx+gGpM
         KXDGnFqzxbdgqH0epP1LutM1WyuWIJbd4eY1wkLmd33Ag2VeQrVVQoBc1e/+LOVH0gAq
         zmaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738857519; x=1739462319;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rMLthHwfulJrr/3sem4Jo3ZAl5bPmozskhsrwvvFddA=;
        b=gszUWx46BkHJjhHla5ng51AQM6ok29BgX250yStEEtTetnpRKQgDC6kNS6nHMPox80
         cvd8V9g4auTbTBVMDzRl1lCUMA4FE+6e1jN4/Huk7BoedbYmKKBR1Hr/y9uol3NRYsra
         XZp75VDbsoD0Tvs02LewSdiGhMlYgm66tRS9g5T4fRhV+Q5x4cJmHCHTPOc9suoYmMZi
         LXHz0OcL4GgzK13ueWAHf4Ostbsv1a8yGrLliItVC1UuzFBl2wfsiRkzO+QKG7AZ+l8X
         eAcjXgfOzcrLifY1D2LF843Tc9tCAIqPupigN32xgilIFSd+oWckeGxwRnxBQBPJEKe4
         CKSg==
X-Gm-Message-State: AOJu0Yz1QXtMqjHycoSAsJH3lA1rwy7V+HVIsO9TiAtfULx4eZPlX9Ci
	jsnyDTIXKOnvRu2aKUYi8BsGjTyw3H1rjtzD/DTLAQtdmse4H/p0SwQ5yaKoGFqWLqiFoxzDdqp
	6cYsqdMKl/bwjTBwuQFCa/quEyyMZOUVWKfY=
X-Gm-Gg: ASbGncvJPB9t00O4vwREuYoXUzyP2+ccQrJirxzz+c4b+0sk/8objfKCk6jXKTXnK9j
	njOsN/Rhb7atUv2cnvlkWPp3GjqK6OFT88YUKqO8Jgw8auUjeL7KqqdpqlzDTebQkkSaPM6ZG
X-Google-Smtp-Source: AGHT+IG0QI/xA/BUK+DsnyqP+2kGMqjQ/OcOhGNlWgIGHUDnb03OlGSlkWA5Jq6/HDoqljbdJBSxFednSmlM6AejAhQ=
X-Received: by 2002:a05:6871:10d:b0:29e:5894:9de7 with SMTP id
 586e51a60fabf-2b805189f13mr5296583fac.33.1738857519084; Thu, 06 Feb 2025
 07:58:39 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1spB1e1Ziia4RMQ2-E6ooV8O3h+grWmfD5nLQuSyVtK7fA@mail.gmail.com>
 <22391.1738857292994881870@lists.yoctoproject.org>
In-Reply-To: <22391.1738857292994881870@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 6 Feb 2025 07:58:12 -0800
X-Gm-Features: AWEUYZn85vm-BcrxPHermZ8De6L5wntoOYSpKkKXEyIeqCBEqZ8BDjlkxUZ9nmg
Message-ID: <CAMKF1soC8CoNRRF8p4G78cQBxuQRJQXHOuY3VPT+gBP=GSh-PA@mail.gmail.com>
Subject: Re: [yocto] Unable to boot a raspberry Pi Zero 2 W using the master
 branch of Yocto #raspberrypi #raspberrypi0-wifi
To: jdowd@slashdevslashnull.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 15:58:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64728

On Thu, Feb 6, 2025 at 7:54=E2=80=AFAM John via Lists.Yoctoproject.Org
<jdowd=3Dslashdevslashnull.org@lists.yoctoproject.org> wrote:
>
> Khem,
>
> Thanks for the help but no joy. It gives me a unrecognised image on the S=
D card. It is un-mountable. I'm working in Linux and not Windows which I be=
lieve is where the WIC format is more prevalent on.
>

dd'ing wic should work fine on Linux as well. you might need to unxz
the wic.xz before passing it onto dd e.g. see
https://github.com/riscv/meta-riscv?tab=3Dreadme-ov-file#dding-wicgz


> Cheers!!

