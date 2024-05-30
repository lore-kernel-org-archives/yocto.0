Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76E0AC25B74
	for <webhook@archiver.kernel.org>; Thu, 30 May 2024 15:47:37 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
 by mx.groups.io with SMTP id smtpd.web10.13308.1717084055691164241
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 May 2024 08:47:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=h5dvyxri;
 spf=pass (domain: gmail.com, ip: 209.85.160.44, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-250671a1bc7so60375fac.3
        for <yocto@lists.yoctoproject.org>; Thu, 30 May 2024 08:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717084055; x=1717688855; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y/OJ/PWxO8bnQtzxDHdlgUiAa52evR9d9YNMSPHcqmo=;
        b=h5dvyxrigrOWsMhE5fW25MJuYu9IMslIgarQfc8Y0HsiHTu/mrvwKSFtB2ylkqXI5i
         t7d5ZwBKe3ti1CaRJ9tf2AlvWwMdQkujZJK9OEezcQIBCc7VAenKqwQ8ccI3I5pxNuAb
         Y4Mt+vv5cdjeCYt09r2jpjBtTDgyzWMPX89HrIV3xLpNt5hpF/D35KOp6viomQjJfZDb
         EGDNHi0zLEMcRa6rDXj2QQs3esxnGqza95VS+mV4RKt3XPlxdLMmxF9iIz4V5ZOK2PhA
         rjyvmYU35qHsCPhttgrGd4nPvKxur6NWfBZ7oSBHbUXzumSsfKb6YSHPbqAXnx2Oyz0L
         8AWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717084055; x=1717688855;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y/OJ/PWxO8bnQtzxDHdlgUiAa52evR9d9YNMSPHcqmo=;
        b=BzyaBxHHxgNmNhk351y3VVViloO2qlImchHo1B/9z4bvYY0enYNdeFXsbhUGQ1lLVm
         4Muh1VOrF7cM+buoEuNghlvm1Vz1xBPh6/X/z6PIzBRqOqwXzwo8xTve+1sMGwqVVBGa
         3eRlZt+OjBX51r1cNb3yfAekrb/d3ETfUDZX8fqVYFkmhJ8baA5HWcmZg2F4hoY/g+/I
         c9PpxxYHY3gWJU61jBTBrH0VM88VQhBcWtjuiiyx+wIVLBuh8dDMiduCIOsWLmb+VIrJ
         r6RJ5muEgNYtKihpR+n99xsCm8tzll28h8hyAN8cPgOhgFPLtFrpaqSyiJ+Ojl7umBQz
         eP1Q==
X-Gm-Message-State: AOJu0Yx6euwS7z/e3LCp2Ncu9YifmrgYEQYMO2+QbdEpCfkS15FV5sU0
	aufT0JwqEylPRWLmqvOyK0TNvOFGu8xQ/yT48GgJBgF5iGBaWCGW7BdwJOpYafDQuaAaXOt6oRK
	saXVWWBx/mEtuu7qBtp6HxtIzXks=
X-Google-Smtp-Source: AGHT+IGOxk7dPWqhx3K58CXLVZLRP1YMJtJUF9ODOfBq03j2bWsOememazcoTpSX1WkODkjcppJxvR7XkYzWTGC3APg=
X-Received: by 2002:a05:6870:9720:b0:221:bf34:b15f with SMTP id
 586e51a60fabf-25060bd0b65mr3307744fac.25.1717084054890; Thu, 30 May 2024
 08:47:34 -0700 (PDT)
MIME-Version: 1.0
References: <20240530051104.2814410-1-raj.khem@gmail.com> <42f29624a3e2f495c125782d87e8a02e9b55b4bb.camel@linuxfoundation.org>
In-Reply-To: <42f29624a3e2f495c125782d87e8a02e9b55b4bb.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 30 May 2024 08:47:08 -0700
Message-ID: <CAMKF1sqLLsjcjaA4YSHLsRRqJ8nKycFySAZPw4GthEVC+gUwHg@mail.gmail.com>
Subject: Re: [yocto] [meta-mingw] [PATCH 0/4] GCC-14 related fixes
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org, jpewhacker@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 May 2024 15:47:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63243

On Thu, May 30, 2024 at 12:47=E2=80=AFAM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Wed, 2024-05-29 at 22:10 -0700, Khem Raj via lists.yoctoproject.org wr=
ote:
> > This series addresses the set of issues seen with mingw builds with GCC=
-14
> >
> > Khem Raj (4):
> >   mingw-w64: Upgrade to 12.0.0 release
> >   curl: Disable incompatible-pointer-types warning as error on mingw
> >   gettext: Disable incompatible-pointer-types warning as error on mingw
> >   diffutils: Fix build with GCC-14
>
> These let the build with gcc14 get further thanks. I did have to add
> some whitespace to the CFLAGS appends.
>
> There was a failure in qemu these patches exposed so I've sent a cflags
> fix for that which lets mingw build cleanly.
>
> I also realised my config was using the wrong list for patches, I've
> changed it to yocto-patches now (README was already changed).

ah, I should have realized the mailing list change :)

>
> Cheers,
>
> Richard

