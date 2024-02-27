Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F30A9C5478C
	for <webhook@archiver.kernel.org>; Tue, 27 Feb 2024 19:01:17 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web11.2455.1709060471814960813
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Feb 2024 11:01:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=V5mEZSCJ;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: joel.winarske@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1dca3951ad9so23254175ad.3
        for <yocto@lists.yoctoproject.org>; Tue, 27 Feb 2024 11:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709060471; x=1709665271; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sv/IAnvpBkScT49u5oR01MGu/LiJeolCHutvrw+5Qk0=;
        b=V5mEZSCJMbWBlqlXwQBIaiB+v0C8tOrBJaAB0tFTpa+MXrAnAQcPq7LbBJhI28xjmi
         sBva0IwEQMylZHoNT7fpFC7wY9V+1jv44dH7oZZJjag7ykPEeZvvkns4Sbs+ilK5FfP5
         /DJ1QZd4u/oPoJ5vxP4boXqIoNnJKThtiR97koTMzLPS/BqPPUGixVvLK3pNxIbaTLU4
         xZgnno1eIZ9AlwUVtbqS352GjKRh0vCBALgoXVx8tMCP3feyhmwxbTsxVisR7DpK4neI
         YorQYfVaPNaOat6Ifom4lkHLUY6icAZmnnZZkq2f3+viE2up0N6Vra6nVL9e0RlvpmcG
         Y7Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709060471; x=1709665271;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sv/IAnvpBkScT49u5oR01MGu/LiJeolCHutvrw+5Qk0=;
        b=WzL3wQmPUHPajM4ZU+JcbNDdzo3Lf73ftnv8uNC2QsamoV6/G8Snvr0bfnav0X3XDe
         5thVcN4bpSLvBA4VHBfKfapLseyU7tuKX2K0atsJYgELvRLipwjEodmgSSnUoInOYL0h
         lYvqxo/Hgs8G+998jUNMuYpBctrSmd6asYUo0R1+BZ89uF4tS0PH6F/vqek9zi7xeEpF
         Dt/5aJ11PIcelkJoJ6dE/SaWlsbXjh7pzKXoz6GmlRyj5DaM+PfIAzZN7mCP2vstsfJc
         5iRVrI+hVOK1fhxvP+5u7U0ZrIZmkkUX+5DgWEmnxsy7ftEpT6VRni9SIgD6Dl+/msLm
         Q4Eg==
X-Gm-Message-State: AOJu0Yx3dcmF0rEUTdyOEMShHtMyQ3qkrs3i11B4Pz+XTy3LeqLknM16
	/uabPYrGFTwJS2smTXilFHXJgu+Ix73XXafmcWZ4BSOLPGNXvbRpXrE1T7GKEjTsmGTOQNCaE8L
	tsEDTnhajcmqa47Bd42HtDYQPco+l/xJf6HWkpw==
X-Google-Smtp-Source: AGHT+IEJ++fLcuVkIjc4auAoGANYIWehnawqVhL9NuhoWiFffZUKByedZjYLCPUBAtAmn+mJ9jmMMVQQPt0OXvvvszI=
X-Received: by 2002:a17:902:b494:b0:1db:fa72:25eb with SMTP id
 y20-20020a170902b49400b001dbfa7225ebmr11403488plr.52.1709060470614; Tue, 27
 Feb 2024 11:01:10 -0800 (PST)
MIME-Version: 1.0
References: <CABKMkPK-m3T120viE08qTJ8pm1xpd+bhZNAgevnmkvvb3XAFmA@mail.gmail.com>
 <CABKMkPKWppU6dSNRMuwt_dhJM4g3M4RSsTWKqRzintbZWiuz0A@mail.gmail.com>
 <CAMKF1spwK3a8YyBEFnrUMjLRqv+e8zHtWACJiNYi5QWhBNsZjg@mail.gmail.com> <17B7C28219925C6A.14830@lists.yoctoproject.org>
In-Reply-To: <17B7C28219925C6A.14830@lists.yoctoproject.org>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Tue, 27 Feb 2024 11:00:59 -0800
Message-ID: <CABKMkP+6-imuCoyoct=WG8sYiRFEfsCsgjzXSfYPfuhYCA953Q@mail.gmail.com>
Subject: Re: [yocto] [kirkstone] dwarfsrcfiles + rust staticlib
To: yocto@lists.yoctoproject.org, joel.winarske@gmail.com
Content-Type: multipart/alternative; boundary="0000000000004033b2061261a635"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Feb 2024 19:01:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62626

--0000000000004033b2061261a635
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The Rust recipe is located here:
https://github.com/meta-flutter/meta-flutter/blob/jw/rive/recipes-devtools/=
rive/rive-taffy-ffi_0.3.0.bb

On Tue, Feb 27, 2024 at 7:40=E2=80=AFAM Joel Winarske via lists.yoctoprojec=
t.org
<joel.winarske=3Dgmail.com@lists.yoctoproject.org> wrote:

> `ar x` returns nothing.
>
> $ ar t ./libtaffy_ffi.a
> taffy_ffi-6a284b6b44182cb3.taffy_ffi.ab6ea036-cgu.0.rcgu.o
> taffy_ffi-6a284b6b44182cb3.4001iepzo748wc7r.rcgu.o
> taffy-7cbe31eff8600da4.taffy.328dd793-cgu.0.rcgu.o
> slotmap-4965e51b30b65dec.slotmap.6af9b30d-cgu.0.rcgu.o
> std.std.ffc53cd6-cgu.0.rcgu.o
> std.std.ffc53cd6-cgu.1.rcgu.o
> std.std.ffc53cd6-cgu.10.rcgu.o
> std.std.ffc53cd6-cgu.11.rcgu.o
> std.std.ffc53cd6-cgu.12.rcgu.o
> std.std.ffc53cd6-cgu.13.rcgu.o
> std.std.ffc53cd6-cgu.14.rcgu.o
> std.std.ffc53cd6-cgu.15.rcgu.o
> std.std.ffc53cd6-cgu.2.rcgu.o
> std.std.ffc53cd6-cgu.3.rcgu.o
> std.std.ffc53cd6-cgu.4.rcgu.o
> std.std.ffc53cd6-cgu.5.rcgu.o
> std.std.ffc53cd6-cgu.6.rcgu.o
> std.std.ffc53cd6-cgu.7.rcgu.o
> std.std.ffc53cd6-cgu.8.rcgu.o
> std.std.ffc53cd6-cgu.9.rcgu.o
> panic_unwind-6b59a4f45c60d735.panic_unwind.f600cc85-cgu.0.rcgu.o
> panic_unwind-6b59a4f45c60d735.panic_unwind.f600cc85-cgu.1.rcgu.o
> object-2d6fc44f598fbc25.object.40806be7-cgu.0.rcgu.o
> object-2d6fc44f598fbc25.object.40806be7-cgu.1.rcgu.o
> object-2d6fc44f598fbc25.object.40806be7-cgu.10.rcgu.o
> object-2d6fc44f598fbc25.object.40806be7-cgu.11.rcgu.o
> object-2d6fc44f598fbc25.object.40806be7-cgu.12.rcgu.o
> object-2d6fc44f598fbc25.object.40806be7-cgu.13.rcgu.o
> object-2d6fc44f598fbc25.object.40806be7-cgu.14.rcgu.o
> object-2d6fc44f598fbc25.object.40806be7-cgu.15.rcgu.o
> object-2d6fc44f598fbc25.object.40806be7-cgu.2.rcgu.o
> object-2d6fc44f598fbc25.object.40806be7-cgu.3.rcgu.o
> object-2d6fc44f598fbc25.object.40806be7-cgu.4.rcgu.o
> object-2d6fc44f598fbc25.object.40806be7-cgu.5.rcgu.o
> object-2d6fc44f598fbc25.object.40806be7-cgu.6.rcgu.o
> object-2d6fc44f598fbc25.object.40806be7-cgu.7.rcgu.o
> object-2d6fc44f598fbc25.object.40806be7-cgu.8.rcgu.o
> object-2d6fc44f598fbc25.object.40806be7-cgu.9.rcgu.o
> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.0.rcgu.o
> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.1.rcgu.o
> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.10.rcgu.o
> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.11.rcgu.o
> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.12.rcgu.o
> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.13.rcgu.o
> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.14.rcgu.o
> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.15.rcgu.o
> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.2.rcgu.o
> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.3.rcgu.o
> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.4.rcgu.o
> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.5.rcgu.o
> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.6.rcgu.o
> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.7.rcgu.o
> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.8.rcgu.o
> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.9.rcgu.o
> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.0.rcgu.o
> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.1.rcgu.o
> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.2.rcgu.o
> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.3.rcgu.o
> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.4.rcgu.o
> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.5.rcgu.o
> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.6.rcgu.o
> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.7.rcgu.o
> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.8.rcgu.o
> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.9.rcgu.o
> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.0.rcgu.o
> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.1.rcgu.o
> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.10.rcgu.o
> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.11.rcgu.o
> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.12.rcgu.o
> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.13.rcgu.o
> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.14.rcgu.o
> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.15.rcgu.o
> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.2.rcgu.o
> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.3.rcgu.o
> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.4.rcgu.o
> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.5.rcgu.o
> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.6.rcgu.o
> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.7.rcgu.o
> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.8.rcgu.o
> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.9.rcgu.o
> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.0.rcgu.o
> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.1.rcgu.o
> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.10.rcgu.o
> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.11.rcgu.o
> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.12.rcgu.o
> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.13.rcgu.o
> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.14.rcgu.o
> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.15.rcgu.o
> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.2.rcgu.o
> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.3.rcgu.o
> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.4.rcgu.o
> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.5.rcgu.o
> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.6.rcgu.o
> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.7.rcgu.o
> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.8.rcgu.o
> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.9.rcgu.o
> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.0.rcgu.o
> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.1.rcgu.o
> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.10.rcgu.o
> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.11.rcgu.o
> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.12.rcgu.o
> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.13.rcgu.o
> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.14.rcgu.o
> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.15.rcgu.o
> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.2.rcgu.o
> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.3.rcgu.o
> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.4.rcgu.o
> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.5.rcgu.o
> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.6.rcgu.o
> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.7.rcgu.o
> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.8.rcgu.o
> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.9.rcgu.o
> hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-cgu.0.rcgu.o
> hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-cgu.1.rcgu.o
> hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-cgu.2.rcgu.o
> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.0.rcgu.o
> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.1.rcgu.o
> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.10.rcgu.o
> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.11.rcgu.o
> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.12.rcgu.o
> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.13.rcgu.o
> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.14.rcgu.o
> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.15.rcgu.o
> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.2.rcgu.o
> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.3.rcgu.o
> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.4.rcgu.o
> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.5.rcgu.o
> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.6.rcgu.o
> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.7.rcgu.o
> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.8.rcgu.o
> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.9.rcgu.o
> adler-f6f71ffc86226e5d.adler.1084079f-cgu.0.rcgu.o
> adler-f6f71ffc86226e5d.adler.1084079f-cgu.1.rcgu.o
> adler-f6f71ffc86226e5d.adler.1084079f-cgu.2.rcgu.o
> adler-f6f71ffc86226e5d.adler.1084079f-cgu.3.rcgu.o
> adler-f6f71ffc86226e5d.adler.1084079f-cgu.4.rcgu.o
> adler-f6f71ffc86226e5d.adler.1084079f-cgu.5.rcgu.o
>
> rustc_std_workspace_alloc-8bcd9c28c85ed0b6.rustc_std_workspace_alloc.9988=
bf24-cgu.0.rcgu.o
> unwind-88f2cb0d7ef20338.unwind.efe615ca-cgu.0.rcgu.o
> cfg_if-37cc76b65d413337.cfg_if.98e3614e-cgu.0.rcgu.o
> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.0.rcgu.o
> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.1.rcgu.o
> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.10.rcgu.o
> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.11.rcgu.o
> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.2.rcgu.o
> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.3.rcgu.o
> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.4.rcgu.o
> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.5.rcgu.o
> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.6.rcgu.o
> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.7.rcgu.o
> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.8.rcgu.o
> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.9.rcgu.o
> grid-ab7f7f3e4cbbc5b1.grid.5b3fc95f-cgu.0.rcgu.o
> num_traits-fa4ea3438d1893c0.num_traits.fd22c02e-cgu.0.rcgu.o
> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.0.rcgu.o
> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.1.rcgu.o
> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.10.rcgu.o
> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.11.rcgu.o
> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.12.rcgu.o
> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.13.rcgu.o
> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.14.rcgu.o
> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.15.rcgu.o
> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.2.rcgu.o
> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.3.rcgu.o
> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.4.rcgu.o
> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.5.rcgu.o
> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.6.rcgu.o
> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.7.rcgu.o
> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.8.rcgu.o
> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.9.rcgu.o
>
> rustc_std_workspace_core-a173c240a23b696c.rustc_std_workspace_core.7597cc=
26-cgu.0.rcgu.o
> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.0.rcgu.o
> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.1.rcgu.o
> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.10.rcgu.o
> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.11.rcgu.o
> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.12.rcgu.o
> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.13.rcgu.o
> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.14.rcgu.o
> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.15.rcgu.o
> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.2.rcgu.o
> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.3.rcgu.o
> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.4.rcgu.o
> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.5.rcgu.o
> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.6.rcgu.o
> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.7.rcgu.o
> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.8.rcgu.o
> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.9.rcgu.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.0.rcgu.=
o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.1.rcgu.=
o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.10.rcgu=
.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.100.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.101.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.102.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.103.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.104.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.105.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.106.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.107.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.108.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.109.rcg=
u.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.11.rcgu=
.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.110.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.111.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.112.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.113.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.114.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.115.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.116.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.117.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.118.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.119.rcg=
u.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.12.rcgu=
.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.120.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.121.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.122.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.123.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.124.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.125.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.126.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.127.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.128.rcg=
u.o
>
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.129.rcg=
u.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.13.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.14.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.15.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.16.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.17.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.18.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.19.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.2.rcgu.=
o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.20.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.21.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.22.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.23.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.24.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.25.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.26.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.27.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.28.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.29.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.3.rcgu.=
o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.30.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.31.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.32.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.33.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.34.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.35.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.36.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.37.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.38.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.39.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.4.rcgu.=
o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.40.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.41.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.42.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.43.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.44.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.45.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.46.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.47.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.48.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.49.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.5.rcgu.=
o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.50.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.51.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.52.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.53.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.54.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.55.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.56.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.57.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.58.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.59.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.6.rcgu.=
o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.60.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.61.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.62.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.63.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.64.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.65.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.66.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.67.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.68.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.69.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.7.rcgu.=
o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.70.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.71.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.72.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.73.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.74.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.75.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.76.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.77.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.78.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.79.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.8.rcgu.=
o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.80.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.81.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.82.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.83.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.84.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.85.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.86.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.87.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.88.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.89.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.9.rcgu.=
o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.90.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.91.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.92.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.93.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.94.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.95.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.96.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.97.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.98.rcgu=
.o
> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.99.rcgu=
.o
>
>
>
> On Sat, Feb 24, 2024 at 6:06=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wro=
te:
>
>> try to run ar x on the .a file and see what objects it contains.
>>
>> On Fri, Feb 23, 2024 at 5:51=E2=80=AFPM Joel Winarske <joel.winarske@gma=
il.com>
>> wrote:
>> >
>> > Running readelf -h on the file does work and it shows that it is indee=
d
>> the correct machine architecture
>> >
>> > ELF Header:
>> >   Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00
>> >   Class:                             ELF64
>> >   Data:                              2's complement, little endian
>> >   Version:                           1 (current)
>> >   OS/ABI:                            UNIX - System V
>> >   ABI Version:                       0
>> >   Type:                              REL (Relocatable file)
>> >   Machine:                           AArch64
>> >   Version:                           0x1
>> >   Entry point address:               0x0
>> >   Start of program headers:          0 (bytes into file)
>> >   Start of section headers:          201744 (bytes into file)
>> >   Flags:                             0x0
>> >   Size of this header:               64 (bytes)
>> >   Size of program headers:           0 (bytes)
>> >   Number of program headers:         0
>> >   Size of section headers:           64 (bytes)
>> >   Number of section headers:         165
>> >   Section header string table index: 1
>> >
>> >
>> > On Fri, Feb 23, 2024 at 5:40=E2=80=AFPM Joel Winarske <joel.winarske@g=
mail.com>
>> wrote:
>> >>
>> >> I'm hitting qa issue when attempting to install a archive file built
>> with Rust:
>> >>
>> >> dwarfsrcfiles:
>> /home/joel/agl/raspberrypi4/tmp/work/aarch64-agl-linux/rive-taffy-ffi/0.=
3.0-r0/package/usr/lib/taffy_ffi/libtaffy_ffi.a:
>> not a valid ELF file
>> >>
>> >> I can link this same archive file with C code and the executable
>> runs.  It's a valid archive.
>> >>
>> >> Any suggestions?
>> >
>> >
>> >
>> >
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62624):
> https://lists.yoctoproject.org/g/yocto/message/62624
> Mute This Topic: https://lists.yoctoproject.org/mt/104540813/2167248
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> joel.winarske@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000004033b2061261a635
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The Rust recipe is located here:<br><a href=3D"https://git=
hub.com/meta-flutter/meta-flutter/blob/jw/rive/recipes-devtools/rive/rive-t=
affy-ffi_0.3.0.bb">https://github.com/meta-flutter/meta-flutter/blob/jw/riv=
e/recipes-devtools/rive/rive-taffy-ffi_0.3.0.bb</a></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 27, 2024 at =
7:40=E2=80=AFAM Joel Winarske via <a href=3D"http://lists.yoctoproject.org"=
>lists.yoctoproject.org</a> &lt;joel.winarske=3D<a href=3D"mailto:gmail.com=
@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div>`ar x` returns nothing.<br></div><div><br></div><div>$ ar t ./libtaffy_=
ffi.a <br>taffy_ffi-6a284b6b44182cb3.taffy_ffi.ab6ea036-cgu.0.rcgu.o<br>taf=
fy_ffi-6a284b6b44182cb3.4001iepzo748wc7r.rcgu.o<br>taffy-7cbe31eff8600da4.t=
affy.328dd793-cgu.0.rcgu.o<br>slotmap-4965e51b30b65dec.slotmap.6af9b30d-cgu=
.0.rcgu.o<br>std.std.ffc53cd6-cgu.0.rcgu.o<br>std.std.ffc53cd6-cgu.1.rcgu.o=
<br>std.std.ffc53cd6-cgu.10.rcgu.o<br>std.std.ffc53cd6-cgu.11.rcgu.o<br>std=
.std.ffc53cd6-cgu.12.rcgu.o<br>std.std.ffc53cd6-cgu.13.rcgu.o<br>std.std.ff=
c53cd6-cgu.14.rcgu.o<br>std.std.ffc53cd6-cgu.15.rcgu.o<br>std.std.ffc53cd6-=
cgu.2.rcgu.o<br>std.std.ffc53cd6-cgu.3.rcgu.o<br>std.std.ffc53cd6-cgu.4.rcg=
u.o<br>std.std.ffc53cd6-cgu.5.rcgu.o<br>std.std.ffc53cd6-cgu.6.rcgu.o<br>st=
d.std.ffc53cd6-cgu.7.rcgu.o<br>std.std.ffc53cd6-cgu.8.rcgu.o<br>std.std.ffc=
53cd6-cgu.9.rcgu.o<br>panic_unwind-6b59a4f45c60d735.panic_unwind.f600cc85-c=
gu.0.rcgu.o<br>panic_unwind-6b59a4f45c60d735.panic_unwind.f600cc85-cgu.1.rc=
gu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.0.rcgu.o<br>object-2d6f=
c44f598fbc25.object.40806be7-cgu.1.rcgu.o<br>object-2d6fc44f598fbc25.object=
.40806be7-cgu.10.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.11.r=
cgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.12.rcgu.o<br>object-2d=
6fc44f598fbc25.object.40806be7-cgu.13.rcgu.o<br>object-2d6fc44f598fbc25.obj=
ect.40806be7-cgu.14.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.1=
5.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.2.rcgu.o<br>object-=
2d6fc44f598fbc25.object.40806be7-cgu.3.rcgu.o<br>object-2d6fc44f598fbc25.ob=
ject.40806be7-cgu.4.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.5=
.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.6.rcgu.o<br>object-2=
d6fc44f598fbc25.object.40806be7-cgu.7.rcgu.o<br>object-2d6fc44f598fbc25.obj=
ect.40806be7-cgu.8.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.9.=
rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.0.rcgu.o<br>memchr-c0=
d6e4e574632eeb.memchr.af0f6cf3-cgu.1.rcgu.o<br>memchr-c0d6e4e574632eeb.memc=
hr.af0f6cf3-cgu.10.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.11=
.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.12.rcgu.o<br>memchr-=
c0d6e4e574632eeb.memchr.af0f6cf3-cgu.13.rcgu.o<br>memchr-c0d6e4e574632eeb.m=
emchr.af0f6cf3-cgu.14.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu=
.15.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.2.rcgu.o<br>memch=
r-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.3.rcgu.o<br>memchr-c0d6e4e574632eeb.=
memchr.af0f6cf3-cgu.4.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu=
.5.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.6.rcgu.o<br>memchr=
-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.7.rcgu.o<br>memchr-c0d6e4e574632eeb.m=
emchr.af0f6cf3-cgu.8.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.=
9.rcgu.o<br>addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.0.rcgu.o<br>a=
ddr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.1.rcgu.o<br>addr2line-b038=
aec7c65acee8.addr2line.b9ae8a32-cgu.2.rcgu.o<br>addr2line-b038aec7c65acee8.=
addr2line.b9ae8a32-cgu.3.rcgu.o<br>addr2line-b038aec7c65acee8.addr2line.b9a=
e8a32-cgu.4.rcgu.o<br>addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.5.r=
cgu.o<br>addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.6.rcgu.o<br>addr=
2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.7.rcgu.o<br>addr2line-b038aec=
7c65acee8.addr2line.b9ae8a32-cgu.8.rcgu.o<br>addr2line-b038aec7c65acee8.add=
r2line.b9ae8a32-cgu.9.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.0=
.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.1.rcgu.o<br>gimli-7cd0=
1052d9283c69.gimli.7f321bcb-cgu.10.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7=
f321bcb-cgu.11.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.12.rcgu.=
o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.13.rcgu.o<br>gimli-7cd01052d=
9283c69.gimli.7f321bcb-cgu.14.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321b=
cb-cgu.15.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.2.rcgu.o<br>g=
imli-7cd01052d9283c69.gimli.7f321bcb-cgu.3.rcgu.o<br>gimli-7cd01052d9283c69=
.gimli.7f321bcb-cgu.4.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.5=
.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.6.rcgu.o<br>gimli-7cd0=
1052d9283c69.gimli.7f321bcb-cgu.7.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f=
321bcb-cgu.8.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.9.rcgu.o<b=
r>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.0.rcgu.o<br>r=
ustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.1.rcgu.o<br>rust=
c_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.10.rcgu.o<br>rustc_=
demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.11.rcgu.o<br>rustc_de=
mangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.12.rcgu.o<br>rustc_dema=
ngle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.13.rcgu.o<br>rustc_demang=
le-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.14.rcgu.o<br>rustc_demangle=
-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.15.rcgu.o<br>rustc_demangle-e=
53ade3145326c47.rustc_demangle.625b5e5b-cgu.2.rcgu.o<br>rustc_demangle-e53a=
de3145326c47.rustc_demangle.625b5e5b-cgu.3.rcgu.o<br>rustc_demangle-e53ade3=
145326c47.rustc_demangle.625b5e5b-cgu.4.rcgu.o<br>rustc_demangle-e53ade3145=
326c47.rustc_demangle.625b5e5b-cgu.5.rcgu.o<br>rustc_demangle-e53ade3145326=
c47.rustc_demangle.625b5e5b-cgu.6.rcgu.o<br>rustc_demangle-e53ade3145326c47=
.rustc_demangle.625b5e5b-cgu.7.rcgu.o<br>rustc_demangle-e53ade3145326c47.ru=
stc_demangle.625b5e5b-cgu.8.rcgu.o<br>rustc_demangle-e53ade3145326c47.rustc=
_demangle.625b5e5b-cgu.9.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6=
661e28d-cgu.0.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu=
.1.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.10.rcgu.o<=
br>std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.11.rcgu.o<br>std_det=
ect-e27f75a393d69b0c.std_detect.6661e28d-cgu.12.rcgu.o<br>std_detect-e27f75=
a393d69b0c.std_detect.6661e28d-cgu.13.rcgu.o<br>std_detect-e27f75a393d69b0c=
.std_detect.6661e28d-cgu.14.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detec=
t.6661e28d-cgu.15.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6661e28d=
-cgu.2.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.3.rcgu=
.o<br>std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.4.rcgu.o<br>std_d=
etect-e27f75a393d69b0c.std_detect.6661e28d-cgu.5.rcgu.o<br>std_detect-e27f7=
5a393d69b0c.std_detect.6661e28d-cgu.6.rcgu.o<br>std_detect-e27f75a393d69b0c=
.std_detect.6661e28d-cgu.7.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect=
.6661e28d-cgu.8.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6661e28d-c=
gu.9.rcgu.o<br>hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-cgu.0.rcgu.o<b=
r>hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-cgu.1.rcgu.o<br>hashbrown-b=
daa07c171d4ff64.hashbrown.53dbd1a6-cgu.2.rcgu.o<br>miniz_oxide-250b3f59209e=
9bec.miniz_oxide.bd1ce1dd-cgu.0.rcgu.o<br>miniz_oxide-250b3f59209e9bec.mini=
z_oxide.bd1ce1dd-cgu.1.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.b=
d1ce1dd-cgu.10.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-=
cgu.11.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.12.r=
cgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.13.rcgu.o<br=
>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.14.rcgu.o<br>miniz_o=
xide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.15.rcgu.o<br>miniz_oxide-250=
b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.2.rcgu.o<br>miniz_oxide-250b3f59209e=
9bec.miniz_oxide.bd1ce1dd-cgu.3.rcgu.o<br>miniz_oxide-250b3f59209e9bec.mini=
z_oxide.bd1ce1dd-cgu.4.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.b=
d1ce1dd-cgu.5.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-c=
gu.6.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.7.rcgu=
.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.8.rcgu.o<br>min=
iz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.9.rcgu.o<br>adler-f6f71f=
fc86226e5d.adler.1084079f-cgu.0.rcgu.o<br>adler-f6f71ffc86226e5d.adler.1084=
079f-cgu.1.rcgu.o<br>adler-f6f71ffc86226e5d.adler.1084079f-cgu.2.rcgu.o<br>=
adler-f6f71ffc86226e5d.adler.1084079f-cgu.3.rcgu.o<br>adler-f6f71ffc86226e5=
d.adler.1084079f-cgu.4.rcgu.o<br>adler-f6f71ffc86226e5d.adler.1084079f-cgu.=
5.rcgu.o<br>rustc_std_workspace_alloc-8bcd9c28c85ed0b6.rustc_std_workspace_=
alloc.9988bf24-cgu.0.rcgu.o<br>unwind-88f2cb0d7ef20338.unwind.efe615ca-cgu.=
0.rcgu.o<br>cfg_if-37cc76b65d413337.cfg_if.98e3614e-cgu.0.rcgu.o<br>libc-ed=
8f6a4dbcdd053e.libc.7f784050-cgu.0.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.7f7=
84050-cgu.1.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.10.rcgu.o<br>=
libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.11.rcgu.o<br>libc-ed8f6a4dbcdd053e.=
libc.7f784050-cgu.2.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.3.rcg=
u.o<br>libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.4.rcgu.o<br>libc-ed8f6a4dbcd=
d053e.libc.7f784050-cgu.5.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.7f784050-cgu=
.6.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.7.rcgu.o<br>libc-ed8f6=
a4dbcdd053e.libc.7f784050-cgu.8.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.7f7840=
50-cgu.9.rcgu.o<br>grid-ab7f7f3e4cbbc5b1.grid.5b3fc95f-cgu.0.rcgu.o<br>num_=
traits-fa4ea3438d1893c0.num_traits.fd22c02e-cgu.0.rcgu.o<br>alloc-f872d0211=
dbe2026.alloc.53eb9598-cgu.0.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb959=
8-cgu.1.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.10.rcgu.o<br>al=
loc-f872d0211dbe2026.alloc.53eb9598-cgu.11.rcgu.o<br>alloc-f872d0211dbe2026=
.alloc.53eb9598-cgu.12.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.=
13.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.14.rcgu.o<br>alloc-f=
872d0211dbe2026.alloc.53eb9598-cgu.15.rcgu.o<br>alloc-f872d0211dbe2026.allo=
c.53eb9598-cgu.2.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.3.rcgu=
.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.4.rcgu.o<br>alloc-f872d0211=
dbe2026.alloc.53eb9598-cgu.5.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb959=
8-cgu.6.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.7.rcgu.o<br>all=
oc-f872d0211dbe2026.alloc.53eb9598-cgu.8.rcgu.o<br>alloc-f872d0211dbe2026.a=
lloc.53eb9598-cgu.9.rcgu.o<br>rustc_std_workspace_core-a173c240a23b696c.rus=
tc_std_workspace_core.7597cc26-cgu.0.rcgu.o<br>core-ec2ee475f0bbc2be.core.e=
d6d5d31-cgu.0.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.1.rcgu.o<br=
>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.10.rcgu.o<br>core-ec2ee475f0bbc2be=
.core.ed6d5d31-cgu.11.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.12.=
rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.13.rcgu.o<br>core-ec2ee47=
5f0bbc2be.core.ed6d5d31-cgu.14.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d3=
1-cgu.15.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.2.rcgu.o<br>core=
-ec2ee475f0bbc2be.core.ed6d5d31-cgu.3.rcgu.o<br>core-ec2ee475f0bbc2be.core.=
ed6d5d31-cgu.4.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.5.rcgu.o<b=
r>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.6.rcgu.o<br>core-ec2ee475f0bbc2be=
.core.ed6d5d31-cgu.7.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.8.rc=
gu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.9.rcgu.o<br>compiler_builti=
ns-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.0.rcgu.o<br>compiler_bui=
ltins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.1.rcgu.o<br>compiler_=
builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.10.rcgu.o<br>compi=
ler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.100.rcgu.o<br>=
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.101.rcgu.=
o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.102.=
rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu=
.103.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f=
2-cgu.104.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2a=
de58f2-cgu.105.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builti=
ns.2ade58f2-cgu.106.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_b=
uiltins.2ade58f2-cgu.107.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compi=
ler_builtins.2ade58f2-cgu.108.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.=
compiler_builtins.2ade58f2-cgu.109.rcgu.o<br>compiler_builtins-8cb3deaee778=
3e49.compiler_builtins.2ade58f2-cgu.11.rcgu.o<br>compiler_builtins-8cb3deae=
e7783e49.compiler_builtins.2ade58f2-cgu.110.rcgu.o<br>compiler_builtins-8cb=
3deaee7783e49.compiler_builtins.2ade58f2-cgu.111.rcgu.o<br>compiler_builtin=
s-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.112.rcgu.o<br>compiler_bu=
iltins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.113.rcgu.o<br>compil=
er_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.114.rcgu.o<br>c=
ompiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.115.rcgu.o=
<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.116.r=
cgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.=
117.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2=
-cgu.118.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ad=
e58f2-cgu.119.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtin=
s.2ade58f2-cgu.12.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_bui=
ltins.2ade58f2-cgu.120.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compile=
r_builtins.2ade58f2-cgu.121.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.co=
mpiler_builtins.2ade58f2-cgu.122.rcgu.o<br>compiler_builtins-8cb3deaee7783e=
49.compiler_builtins.2ade58f2-cgu.123.rcgu.o<br>compiler_builtins-8cb3deaee=
7783e49.compiler_builtins.2ade58f2-cgu.124.rcgu.o<br>compiler_builtins-8cb3=
deaee7783e49.compiler_builtins.2ade58f2-cgu.125.rcgu.o<br>compiler_builtins=
-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.126.rcgu.o<br>compiler_bui=
ltins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.127.rcgu.o<br>compile=
r_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.128.rcgu.o<br>co=
mpiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.129.rcgu.o<=
br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.13.rcg=
u.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.14=
.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cg=
u.15.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f=
2-cgu.16.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ad=
e58f2-cgu.17.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins=
.2ade58f2-cgu.18.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_buil=
tins.2ade58f2-cgu.19.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_=
builtins.2ade58f2-cgu.2.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compil=
er_builtins.2ade58f2-cgu.20.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.co=
mpiler_builtins.2ade58f2-cgu.21.rcgu.o<br>compiler_builtins-8cb3deaee7783e4=
9.compiler_builtins.2ade58f2-cgu.22.rcgu.o<br>compiler_builtins-8cb3deaee77=
83e49.compiler_builtins.2ade58f2-cgu.23.rcgu.o<br>compiler_builtins-8cb3dea=
ee7783e49.compiler_builtins.2ade58f2-cgu.24.rcgu.o<br>compiler_builtins-8cb=
3deaee7783e49.compiler_builtins.2ade58f2-cgu.25.rcgu.o<br>compiler_builtins=
-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.26.rcgu.o<br>compiler_buil=
tins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.27.rcgu.o<br>compiler_=
builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.28.rcgu.o<br>compi=
ler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.29.rcgu.o<br>c=
ompiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.3.rcgu.o<b=
r>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.30.rcgu=
.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.31.=
rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu=
.32.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2=
-cgu.33.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade=
58f2-cgu.34.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.=
2ade58f2-cgu.35.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_built=
ins.2ade58f2-cgu.36.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_b=
uiltins.2ade58f2-cgu.37.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compil=
er_builtins.2ade58f2-cgu.38.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.co=
mpiler_builtins.2ade58f2-cgu.39.rcgu.o<br>compiler_builtins-8cb3deaee7783e4=
9.compiler_builtins.2ade58f2-cgu.4.rcgu.o<br>compiler_builtins-8cb3deaee778=
3e49.compiler_builtins.2ade58f2-cgu.40.rcgu.o<br>compiler_builtins-8cb3deae=
e7783e49.compiler_builtins.2ade58f2-cgu.41.rcgu.o<br>compiler_builtins-8cb3=
deaee7783e49.compiler_builtins.2ade58f2-cgu.42.rcgu.o<br>compiler_builtins-=
8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.43.rcgu.o<br>compiler_built=
ins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.44.rcgu.o<br>compiler_b=
uiltins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.45.rcgu.o<br>compil=
er_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.46.rcgu.o<br>co=
mpiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.47.rcgu.o<b=
r>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.48.rcgu=
.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.49.=
rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu=
.5.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-=
cgu.50.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade5=
8f2-cgu.51.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2=
ade58f2-cgu.52.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builti=
ns.2ade58f2-cgu.53.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_bu=
iltins.2ade58f2-cgu.54.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compile=
r_builtins.2ade58f2-cgu.55.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.com=
piler_builtins.2ade58f2-cgu.56.rcgu.o<br>compiler_builtins-8cb3deaee7783e49=
.compiler_builtins.2ade58f2-cgu.57.rcgu.o<br>compiler_builtins-8cb3deaee778=
3e49.compiler_builtins.2ade58f2-cgu.58.rcgu.o<br>compiler_builtins-8cb3deae=
e7783e49.compiler_builtins.2ade58f2-cgu.59.rcgu.o<br>compiler_builtins-8cb3=
deaee7783e49.compiler_builtins.2ade58f2-cgu.6.rcgu.o<br>compiler_builtins-8=
cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.60.rcgu.o<br>compiler_builti=
ns-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.61.rcgu.o<br>compiler_bu=
iltins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.62.rcgu.o<br>compile=
r_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.63.rcgu.o<br>com=
piler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.64.rcgu.o<br=
>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.65.rcgu.=
o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.66.r=
cgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.=
67.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-=
cgu.68.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade5=
8f2-cgu.69.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2=
ade58f2-cgu.7.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtin=
s.2ade58f2-cgu.70.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_bui=
ltins.2ade58f2-cgu.71.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler=
_builtins.2ade58f2-cgu.72.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.comp=
iler_builtins.2ade58f2-cgu.73.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.=
compiler_builtins.2ade58f2-cgu.74.rcgu.o<br>compiler_builtins-8cb3deaee7783=
e49.compiler_builtins.2ade58f2-cgu.75.rcgu.o<br>compiler_builtins-8cb3deaee=
7783e49.compiler_builtins.2ade58f2-cgu.76.rcgu.o<br>compiler_builtins-8cb3d=
eaee7783e49.compiler_builtins.2ade58f2-cgu.77.rcgu.o<br>compiler_builtins-8=
cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.78.rcgu.o<br>compiler_builti=
ns-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.79.rcgu.o<br>compiler_bu=
iltins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.8.rcgu.o<br>compiler=
_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.80.rcgu.o<br>comp=
iler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.81.rcgu.o<br>=
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.82.rcgu.o=
<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.83.rc=
gu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.8=
4.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-c=
gu.85.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58=
f2-cgu.86.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2a=
de58f2-cgu.87.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtin=
s.2ade58f2-cgu.88.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_bui=
ltins.2ade58f2-cgu.89.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler=
_builtins.2ade58f2-cgu.9.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compi=
ler_builtins.2ade58f2-cgu.90.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.c=
ompiler_builtins.2ade58f2-cgu.91.rcgu.o<br>compiler_builtins-8cb3deaee7783e=
49.compiler_builtins.2ade58f2-cgu.92.rcgu.o<br>compiler_builtins-8cb3deaee7=
783e49.compiler_builtins.2ade58f2-cgu.93.rcgu.o<br>compiler_builtins-8cb3de=
aee7783e49.compiler_builtins.2ade58f2-cgu.94.rcgu.o<br>compiler_builtins-8c=
b3deaee7783e49.compiler_builtins.2ade58f2-cgu.95.rcgu.o<br>compiler_builtin=
s-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.96.rcgu.o<br>compiler_bui=
ltins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.97.rcgu.o<br>compiler=
_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.98.rcgu.o<br>comp=
iler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.99.rcgu.o<br>=
</div><div><br></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Sat, Feb 24, 2024 at 6:06=E2=80=AFPM Khem Raj &=
lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">try to run ar x on the .a file and see what objects it contains.<br>
<br>
On Fri, Feb 23, 2024 at 5:51=E2=80=AFPM Joel Winarske &lt;<a href=3D"mailto=
:joel.winarske@gmail.com" target=3D"_blank">joel.winarske@gmail.com</a>&gt;=
 wrote:<br>
&gt;<br>
&gt; Running readelf -h on the file does work and it shows that it is indee=
d the correct machine architecture<br>
&gt;<br>
&gt; ELF Header:<br>
&gt;=C2=A0 =C2=A0Magic:=C2=A0 =C2=A07f 45 4c 46 02 01 01 00 00 00 00 00 00 =
00 00 00<br>
&gt;=C2=A0 =C2=A0Class:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ELF64<br>
&gt;=C2=A0 =C2=A0Data:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2&#39;s complement, li=
ttle endian<br>
&gt;=C2=A0 =C2=A0Version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01 (current)<br>
&gt;=C2=A0 =C2=A0OS/ABI:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UNIX - System V<br>
&gt;=C2=A0 =C2=A0ABI Version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;=C2=A0 =C2=A0Type:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 REL (Relocatable file)=
<br>
&gt;=C2=A0 =C2=A0Machine:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0AArch64<br>
&gt;=C2=A0 =C2=A0Version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x1<br>
&gt;=C2=A0 =C2=A0Entry point address:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00x0<br>
&gt;=C2=A0 =C2=A0Start of program headers:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 0 (bytes into file)<br>
&gt;=C2=A0 =C2=A0Start of section headers:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 201744 (bytes into file)<br>
&gt;=C2=A0 =C2=A0Flags:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x0<br>
&gt;=C2=A0 =C2=A0Size of this header:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A064 (bytes)<br>
&gt;=C2=A0 =C2=A0Size of program headers:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A00 (bytes)<br>
&gt;=C2=A0 =C2=A0Number of program headers:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00<br>
&gt;=C2=A0 =C2=A0Size of section headers:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A064 (bytes)<br>
&gt;=C2=A0 =C2=A0Number of section headers:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0165<br>
&gt;=C2=A0 =C2=A0Section header string table index: 1<br>
&gt;<br>
&gt;<br>
&gt; On Fri, Feb 23, 2024 at 5:40=E2=80=AFPM Joel Winarske &lt;<a href=3D"m=
ailto:joel.winarske@gmail.com" target=3D"_blank">joel.winarske@gmail.com</a=
>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m hitting qa issue when attempting to install a archive file=
 built with Rust:<br>
&gt;&gt;<br>
&gt;&gt; dwarfsrcfiles: /home/joel/agl/raspberrypi4/tmp/work/aarch64-agl-li=
nux/rive-taffy-ffi/0.3.0-r0/package/usr/lib/taffy_ffi/libtaffy_ffi.a: not a=
 valid ELF file<br>
&gt;&gt;<br>
&gt;&gt; I can link this same archive file with C code and the executable r=
uns.=C2=A0 It&#39;s a valid archive.<br>
&gt;&gt;<br>
&gt;&gt; Any suggestions?<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
</blockquote></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62624): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62624" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62624</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/104540813/216=
7248" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/104540813/2167248</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:joel.winarske@gmail.com" target=3D"_blank">joel.=
winarske@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000004033b2061261a635--

