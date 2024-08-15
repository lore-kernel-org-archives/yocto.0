Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24F7C3DA7F
	for <webhook@archiver.kernel.org>; Thu, 15 Aug 2024 10:25:08 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.119739.1723717500736160475
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Aug 2024 03:25:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SB8yrx3R;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52f04b4abdcso948908e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 15 Aug 2024 03:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723717499; x=1724322299; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nbqZ7sep3JNRaXhX/KwRawNO0UxSf7Osgqrp7TQAWKo=;
        b=SB8yrx3RzLYqhbLpgirPuaH1BS9Sjg2XvgEQRe8cNEYjrS4BIbqcpwQkKZQC9h8j3Z
         7unT64SZNqxj0HonAUrWNIYA/yeAEs17Qrz+unVdIBF9oBA2bUtktW8fETUnapPg9Onl
         quQ5ttfyajw5qUufIiPRJKKxuz+mu7ios+4q+QY3UCt1/ZVoDs3yjY1T8MqFTJg7fI6J
         +mgr98UcAP8fEsnXoOfwzTc9pdnq2JH41/WneV3UjHrq5TdDfC51iCEBz9lT3B/kCsTJ
         uoBiADxHh24DxkKAQ/TgP8ny75EAe+5dm8wkZHL1jT8e2Agy7Hmo9QD4/CjLNarMepAb
         ipWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723717499; x=1724322299;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nbqZ7sep3JNRaXhX/KwRawNO0UxSf7Osgqrp7TQAWKo=;
        b=VJm9Lmxy8iba88t1ktkJeqMYad5dAtzrrW369r9BVWiJ44mJtp8ZuPfANGZG673GDX
         rWnywJEEHkg4G27xtjYuuca8RgzYT9i3HRpjNEupxQGUfkeVdYCFNofX8KsJeDvUzymI
         GQfcYDnhm2PZnYDe8lz09wYGDyTC1xAEjqfjEGdb3inyOUz0SgaaaRpS5fJqhosgeScd
         pLdadp9MYlNYon6Gf8iRCXndRSBT3J3wjUZBBLM8YLn0U3AQBEGhbsSrYlHrOQzVj9Av
         NdFuHbxbpAHIr1kiCTLjEBxzSRpa5UB7lw5Cn0fCxYl6XNvzwsG+3UYYBrm+qlmnK2jH
         dASw==
X-Gm-Message-State: AOJu0YyustPGb6RwR9Ge+W6h5LL7LwTDzCemzW3qTuVqg5DPt+Xzn+6W
	mfPX9OyDxV16Oobp5tgTL8J9Z/AKG6UQLLdYhRF9AXXwn3pp0Fk6SZcrvScdOhpflwymOXsths+
	hZOdEsxaHNRZEc+cXcBOLNs1/OY0rvQ==
X-Google-Smtp-Source: AGHT+IFovVo6Zo4148nSVr6aZ5iheovGA6l/kDk7c939BouvnR5otUrroMnnIu6OiAiZKBXwH3dm5lt5TglAZfsoXmw=
X-Received: by 2002:a05:6512:39cc:b0:52e:9d6b:2691 with SMTP id
 2adb3069b0e04-532eda70422mr3676281e87.20.1723717498375; Thu, 15 Aug 2024
 03:24:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1so5j+Pybn90f2_bCZHEUjGD0TGNqjb1rJgpJbxjdQguVw@mail.gmail.com>
 <MADEUP.17EBDF92AD5AE264.10875@lists.yoctoproject.org>
In-Reply-To: <MADEUP.17EBDF92AD5AE264.10875@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 15 Aug 2024 12:24:47 +0200
Message-ID: <CANNYZj_DHt0xKAHbantF9_m8DdTMXAouJk0=2t=hFX52Ve67vA@mail.gmail.com>
Subject: Re: [yocto] Parallel builds under yocto
To: yocto@lists.yoctoproject.org, steven.monsees@baesystems.us
Cc: Khem Raj <raj.khem@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Aug 2024 10:25:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63708

On Thu, 15 Aug 2024 at 12:18, Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.us@lists.yoctoproject.org> wrote:
>
>
> So, to be clear, in this example:
>
> There are 12 cores total on a board ...
> BB_NUMBER_THREADS=3D"8", this tells bitbake to generate 8 tasks
>
> And, these tells do_make/do_install to each generate 2 tasks:
>
> PARALLEL_MAKE=3D"-j 2"
> PARALLEL_MAKEINST=3D"-j 2=E2=80=9D
>
> All 12 cores are available to be used yocto build.
>
> Correct ?

No. This merely instructs bitbake to start a maximum of 8 tasks (it
can run less if the task dependency graph doesn't allow for more until
some task on the critical path completes and 'unlocks' further tasks),
and each of those tasks, if it's a make-driven one, will run on a
maximum of two cores. So you can end up anywhere from 8*2=3D16 processes
to just one process, and on average you're likely to under-utilize the
CPU with these settings, and have your build take longer than it could
be.

Please do stick with the defaults, they are picked to maximize CPU
utilization at small risk of running out of RAM.

Alex

