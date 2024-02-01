Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D122DC48286
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 16:36:22 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web11.20053.1706805373096362516
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 08:36:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20230601.gappssmtp.com header.s=20230601 header.b=HJOLG22R;
 spf=softfail (domain: sidebranch.com, ip: 209.85.218.42, mailfrom: leon@sidebranch.com)
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a35385da5bbso200635066b.3
        for <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 08:36:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20230601.gappssmtp.com; s=20230601; t=1706805369; x=1707410169; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PUZfGyYuA7OzyPsM76+++/EimLULh6a7iG4v2tcbGe4=;
        b=HJOLG22RccA5JcrNWwMkCn0dyIGj19+KDxCKLxxmnHeOA9Lr20IHCD7mXuWMPJu4X+
         BVVgcFE6yu15G4roNLSevZkO8Fhd7DSHdEuJ8egA+F/0fiW0ApDTkfQwmPlUBNVml10V
         qUWHdKo3NPV439O97YlSI7s6JPLXHx/hmJqOli3gMNCPnEl8SSrTWEkRDqPnpsuoRTL2
         AquItTWrqtFO8lp4/hc5A5TvW6N8BhXLgQJGwmvlUAT1bCcfy2aaT60UCkEJg3SyNzEs
         velJl1oDN0vrANFYYbpaRMedmQEZ43WY8GRRLhORQHpoZ8F/DPGSrkaaBxo1SSyoyIxf
         akEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706805369; x=1707410169;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PUZfGyYuA7OzyPsM76+++/EimLULh6a7iG4v2tcbGe4=;
        b=YfhY4JruW13Q7WxLai7NNEFiYDjlSUnX80uzHk8LMSD1QKOlx651Q9L8OtERIagfdG
         rAkC+/8HXMWzCR1H9s5sK8TmQDPbmg3NbinJID3pWYwu0KOgz0XplkYGc+wjr1JNCJZl
         LW5gzXrN/HGrg4zAfg/uVHNiTTPpruUOmYye2W1dW/VnScmTAXENPPBwUvYFqS7ag2IP
         KzQ8DB59nfOp7ER0VMM0EfWOcHr2ycbZzsMMp+nvcY5oc9SpyyKzq2B/QESuTadij14F
         chiFZ8Mu3OUTrszOZ2CyawhpDrhVxYbXF7+QDWMXPQxfC9zU4yfGYsB+m7RiDTLBm4AN
         nWkQ==
X-Gm-Message-State: AOJu0YzxGkqGeyyBTUeCIlpi+KBCKdN3P+xeQuTv/6onDdbFR2SgnA1O
	t8wLrP5ag7AV1Cg1YmU3kADyRLaSDHxxQYt4m1HIT9clYhOMx6JRsXltIhvSh6abmPvGoXWy/GY
	81XqHS4ZL975gSYRFsR/tnLF+cAzY5ErFsbgqvpDOktCThZtH4of5Rw==
X-Google-Smtp-Source: AGHT+IGZXCDOIJwdzDyxORwhIVgBWCzQV3kzQPJfyqnYqJmzfT/oFrMM9c4WjcW5sC0UOPeEzpB/gAT/xTFoqUhfxUQ=
X-Received: by 2002:a17:907:171b:b0:a31:1907:2fe8 with SMTP id
 le27-20020a170907171b00b00a3119072fe8mr3870579ejc.48.1706805369467; Thu, 01
 Feb 2024 08:36:09 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj-t4yhegR4Q-8s1K2u3YvdB9ctekHTXKLR8GB9UEERVuA@mail.gmail.com>
 <23652.1706792492588535839@lists.yoctoproject.org>
In-Reply-To: <23652.1706792492588535839@lists.yoctoproject.org>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Thu, 1 Feb 2024 17:35:57 +0100
Message-ID: <CAMjhiJgA9-E2XZiPfB-noMs9nAoHRZee=Ls+Wq5p5cxuuh7qhw@mail.gmail.com>
Subject: Re: [yocto] Is there a way to speed up the initial fetch task?
To: yocto@lists.yoctoproject.org, timotheus.giuliani@philips.com
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 16:36:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62370

Hi Timotheus,

On Thu, Feb 1, 2024 at 2:01=E2=80=AFPM timotheus.giuliani via
lists.yoctoproject.org
<timotheus.giuliani=3Dphilips.com@lists.yoctoproject.org> wrote:
>
> It=E2=80=99s not possible to keep the download directory, since the build=
 runs on cloud runners that are shared resources. Every time a PR is create=
d a new runner instance with an empty workspace will be assigned. Therefore=
, I can=E2=80=99t reuse anything local from previous builds.
>
Not possible?   Although not trivial to setup (depending on what cloud
provider), most cloud runners also allow to keep persistent data (from
a previous run) and pre-prune your fresh runner instance with this
persistent data.

downloads and even sstate-cache might be interesting, especially on
incremental builds.

Search terms: cloud runner cache share persistent

Off-topic for Yocto though, as this is quite general.

Regards, Leon

