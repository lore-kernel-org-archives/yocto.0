Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84752C04FFE
	for <webhook@archiver.kernel.org>; Wed,  8 May 2024 08:20:41 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.7223.1715156439876394139
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 May 2024 01:20:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=W2mgOm9D;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-51f74fa2a82so4665442e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 08 May 2024 01:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715156438; x=1715761238; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8miRtY+cVRRSG9kpmA4Ru8zfKoCbMQoQXLCRuvR95yY=;
        b=W2mgOm9D4rwbqPXPjZjfhpgSEM0GyTKA1P6iNuLBXbPpQnq7YGmhXsN4M2NVoGZs79
         LwxKEXhD05w0tyvZw8/Nj0RrJht0p+tqH/HwVmm00QiaX2OlviNC27ENREENJoNwMmdw
         9OtalzFoMkFGkPhBDCb7kjsltFWdx138U1sjyLGPYcQkHCqCgdMyV4h0WC2qPRaeEK5s
         dRt8Zhf+20yKNDMRvaRN0SWSwJi1nkTBouu4ne1kyyLiSmIqopeqJidH3n9BzVNIroVN
         P0+ifG+hNmU0lp014vQdK7nk5uMz7jyAggNHvQZ5evjL6XVtKYwCPl67NK8TzLovXJoa
         XI9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715156438; x=1715761238;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8miRtY+cVRRSG9kpmA4Ru8zfKoCbMQoQXLCRuvR95yY=;
        b=M81+a5NvW+y6KiXoAtoF1+dO9hLwN6PnelzFzpRCZgCmI+hlquCHuEjVwgVA+yz536
         PSb48AD3uR8HorwvonHVIWirUeFec+US1+dVJyR8U88kYZECQJoLICMk0knhli8BlNQJ
         kaWoGVQWvuSacDvHLfZ9JWt36oJz4Qf3faL9QD8tbZIg/FHhsSLbeEiEzQob4RQz54Vl
         2bDqq7zH8quOzxu1esramRmx9RNCAVJKkizrAJ7zonYlSa8jFjvYgyOYO3ehEj/lChUr
         uqKuCbizYB6DwV5lCtDrP+Tb6rjhWVkIcgNE4FZOqD5TAkgta9Q2WILPauEtQW3OZprk
         5DEA==
X-Gm-Message-State: AOJu0YzcH/ZsrDlHdtvWzCvHWUe5GkUShg1HoR2LsgaIilw8n9l1GPqY
	J1rRtU026cjzjzMDdNDMIPpWR5lzlfLOc9mDGrUAWKzMOIwv9XNH7gts1RoOF5ehQcjR5i7yycm
	FT8is1CkZlgawxzdBUs7IYFklcIJQeA==
X-Google-Smtp-Source: AGHT+IGgErCvhyCPh3XuaMZ5WLE01IaRDv74APwxnDcksqnTL5/5Ga9oqsmH24hNV5z9LAOTijQk30pR3+7lnDotq7A=
X-Received: by 2002:a05:6512:3157:b0:518:eef0:45c0 with SMTP id
 2adb3069b0e04-5217cc520d0mr1607375e87.48.1715156437801; Wed, 08 May 2024
 01:20:37 -0700 (PDT)
MIME-Version: 1.0
References: <CANuMBWHa8ZkbRuG-=QURATjqKL2N1W3PkYwd-gk-U+NK9da-kA@mail.gmail.com>
 <CAMKF1soiCS7BQ10rS_XpjHHApmUdjxd56Pe84kHCpD1Km5ZyhQ@mail.gmail.com>
 <CANuMBWE-nUnL4AKZvkhNqC+23YKOri5pbVNb8mtQgZ9oh_Krag@mail.gmail.com>
 <CAMKF1spiK52Tr4fVyaCNNiqsSAOm8bA6CEBT0d0ONf7VcJ4prQ@mail.gmail.com> <CANuMBWEvnXYsoUJj1mByhV8pOwan+6hQFkZMvjG1Y_d1W7RDYw@mail.gmail.com>
In-Reply-To: <CANuMBWEvnXYsoUJj1mByhV8pOwan+6hQFkZMvjG1Y_d1W7RDYw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 8 May 2024 10:20:26 +0200
Message-ID: <CANNYZj_c2xGw5v8TE_ySA1qwtDjX=9UNmfWy+DOxkgDoNG-BZA@mail.gmail.com>
Subject: Re: [yocto] Warning about "no-recipes"
To: yocto@lists.yoctoproject.org, worik.stanton@tirotech.co.nz
Cc: Khem Raj <raj.khem@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 May 2024 08:20:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63051

On Wed, 8 May 2024 at 05:38, Worik Stanton via lists.yoctoproject.org
<worik.stanton=tirotech.co.nz@lists.yoctoproject.org> wrote:
> The "whomever" has gone away, and I am on my own!
>
> Where do I start resolving a dependency like this?

First of all, please introduce yourself like I'm sure you would when
you meet new people in real life. Who you are, who you work for, what
is your product, and why are you in this situation. Aggressively
asking for help won't help you.

Alex

