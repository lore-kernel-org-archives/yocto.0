Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8161C0218A
	for <webhook@archiver.kernel.org>; Thu, 30 Jan 2025 19:37:35 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
 by mx.groups.io with SMTP id smtpd.web10.3092.1738265851650286586
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2025 11:37:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PA36YHDR;
 spf=pass (domain: gmail.com, ip: 209.85.167.178, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3ebb1652729so627912b6e.3;
        Thu, 30 Jan 2025 11:37:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738265851; x=1738870651; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dlZuLS1bC4w6T1dl/y6wnsSLH+epWqvuduYcs2ZuAfI=;
        b=PA36YHDRw7+bIs87AznFJhCnDkNVOM/TSDnRP7h3014punwdcQpLzIEiNFAI7Ehh7l
         zyg8jBo3cbL3ykyjYr86MIJV84LGZQ5E1sUmZ03O61dTBGn906fH1UHv8arHdiBavIve
         51PT+Vqm0KLGfFwpoPBX2lTbC1Rra0E/BZmKS0Xy/FrUn8n9ZDjBgQCkITw/brSIyMe6
         1ahZmrlgzf/aYd+NcK4v2Jf4nZxHHLIFoY1+6ICe5PFvA/sBLD+zMLVZkZcGDsXhaF+b
         yTH2SAdRjMLEfy5Od8L13bGXirw2nQgtUtA0IOdaKFDmX2AygAOPusiO1ArmsIg77FWB
         GLRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738265851; x=1738870651;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dlZuLS1bC4w6T1dl/y6wnsSLH+epWqvuduYcs2ZuAfI=;
        b=OxN1XCumAYinD/mGqenCgHLmwy9oahXaKyOd8ZZwO/4pdtOnfhiIk6pTU31maxk/WK
         Vz2Bx4qsz8DwW8K0KDFfY1lFJNfUEc+eQ1VSfPxQKdzpcNC3RzyjyU4U0sEFK01DZJEX
         4rrxxay8zM8BBncXyFdebyQXIebab9AhwDaVWwVqgzaGrjey1Pai9hl8kFB8V8Bcqcck
         Sf/VXgP+6WLWBLt5Nz67EOdPIrL3we7pxHyJpA2zLiVbP0lgeS2qRFYmeOnKWvnHU275
         xLnbqfyBtgLz+iOlR0pbTeZG9a55D8XRGgMOO6We5gELf5KrLg6t4CrvVc9oG2ezDEbP
         JOWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTagHRnFSIzY+8TKNeJhz8cSEKohtqqXJ9zorAQOpvSwkFaXEHmUhLpwqClxuh0qOWQOiT/g==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yz3xjCzvNufWCKoY6SxfodLP3/fl942bCZd1Eq0pWdxsrdcE9xv
	ZIDEum2JDJQFQm4nVWGdIC36FwUwikAVYqGkUs87u6Elji169lj6Husly3SQorgKKu2xVew2uUW
	0/Itj4DwFv1Yub37uWTMy1EGU6wA=
X-Gm-Gg: ASbGncvKUj9BMZPKRJlzPgCCIsmuAukztEsEYf93xN672G1VeNfXN1NDDaLjVWtZtVw
	zoO6RJ8XH1X8wsAMLo74sbj0UZebU1MteAziUYUsloy3yFUDhd3VczkJ5xnyNKsx1kWyixjg9z1
	BGOTsaE9Lpc1+zMkISPZ3uCTHL0w==
X-Google-Smtp-Source: AGHT+IEhSXvUBnsVLFMPeoGdQIM9t1RYBI9NpYX4UeRl2b0gEg5hR4DXQHWcYdifX9bd8C3/NPuodr+J2XmdKY9Yar4=
X-Received: by 2002:a05:6871:6188:b0:29e:569a:f90d with SMTP id
 586e51a60fabf-2b32f34a430mr4826837fac.32.1738265850877; Thu, 30 Jan 2025
 11:37:30 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1so+CuiYgvadZM9APzGZLP=+4ACs_5U-kqCU9VtykP8WLQ@mail.gmail.com>
 <Z5uffus3AOUpBb6B@gmail.com>
In-Reply-To: <Z5uffus3AOUpBb6B@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 30 Jan 2025 11:37:04 -0800
X-Gm-Features: AWEUYZnuPCy1up5sGnauG-iUyBbkkispDc3Q_FuPee-u3rC7xoFF1GiJnW9UUZ8
Message-ID: <CAMKF1sqS4vF7Z8=at5QMNwTshKCQ4Vgvg8KVSqvtGA1QTmfOLg@mail.gmail.com>
Subject: Re: Request to apply patch
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Linux Yocto <linux-yocto@lists.yoctoproject.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 19:37:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64682

Thanks for the update.

On Thu, Jan 30, 2025 at 7:49=E2=80=AFAM Bruce Ashfield <bruce.ashfield@gmai=
l.com> wrote:
>
> I've merged the patch to 6.12 and have staged it for any
> future versions.
>
> SRCREV bumps should be out shortly.
>
> Bruce
>
> In message: Request to apply patch
> on 28/01/2025 Khem Raj wrote:
>
> > Hi Bruce,
> >
> > With recent, changs in include poisoning patch for GCC, there are new
> > latent issues coming to light. one of them was while cross building
> > intel-speed-select recipe which is built from kernel sources, and
> > kernel makefile hardcodes the paths, I have sent a patch to fix it to
> > lkml
> >
> > https://lore.kernel.org/lkml/20250129033932.2576077-1-raj.khem@gmail.co=
m/T/#u
> >
> > Please consider applying it for linux-yocto kernel 6.12+
> >
> > Thanks
> > -Khem

