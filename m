Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4064DC54798
	for <webhook@archiver.kernel.org>; Wed, 28 Feb 2024 02:06:39 +0000 (UTC)
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
 by mx.groups.io with SMTP id smtpd.web11.4029.1709085995673924157
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Feb 2024 18:06:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=d0jIItFf;
 spf=pass (domain: gmail.com, ip: 209.85.160.49, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-2206232d806so377063fac.2
        for <yocto@lists.yoctoproject.org>; Tue, 27 Feb 2024 18:06:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709085995; x=1709690795; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MgPlN392smHw3ArfgGWFfQke45WXey82C0hiSWsALcQ=;
        b=d0jIItFfQlu4LQNbM6i8ltAii0VaTCARCrYe/JgJhO/4Ff9OrvjANlBR5rdHEUWlc9
         pAxq6K3xD8dUUdcBEbe8k6pIqPYASo8TlKVXHMK6nRvIET6S4tjir2LfaDme4lWimxIT
         cF26i4yBho5H2lVGFSckcOAuUOz7/FIbEU2JkjO8WPOWFgDSqR66NpyYOFY8MJVtRxQM
         iAeoXVgs/fCWUhM4OArFaxOWZ5IwrcPl1mBLgpHtTLbvebSZnJhkBwW/tPEpNiJtLK2A
         WaO9QlDQ9fVxb28UzKwwmTj/SQa0xoRonYWgXto/CcF6HFy1zcWXGWvFtK5zj7P8kYHj
         YkvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709085995; x=1709690795;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MgPlN392smHw3ArfgGWFfQke45WXey82C0hiSWsALcQ=;
        b=IGFaSymOTtgKyJkboU/5kN3L9tMj7v4B0hnC66ojybDJof/dHeAje6Q5IdQ3zpxA5M
         t4Tq4WPz3Y7ohKuW7BRnqcjMwwbOTKAy/3+7QsfJe9mTv8EoBX2RDVxk88wgyxmnqUhs
         ZgK8jDmZiQIyyD585CgtSBZOmZgGz+dXsSj6M3XZlhCKxd6rMCqU5k4b85srj/S0goTD
         bXJ26KPD2QjtL9okge8eQ/tqhwqRVzyLSk9VurGZD8/W/h4R8oqr6n4eGm+HWoQPfSbL
         uoUdrkUzNt1X2aUhjz7lDzVM8yVoa/xTPpkEmFHm9FQYDee19yBD4w0t40ja+HOBtyVX
         5E+w==
X-Gm-Message-State: AOJu0YxgimfdhlCl+mYDeu8TPFZnH1k+0fBJHDs+mwr9qBs4Sf7Tk9BT
	MlYOWurLIx/ygWtalMVpl5mTaLr7gSIr5SrAvqj2KJ9WE/t402GVu0VodVRKlBou/YsXFIdAOSk
	CwEl0YPr1pli0xhDuwm981mS7e/CTXC8P24U=
X-Google-Smtp-Source: AGHT+IEApqTun5KOeIL2OpSC/w2oyt24WT8/vXtDIVOBkvkbzhUQHJh8g07vVpBmgGxoil4P80Z2c7awdZy8rxuz9+M=
X-Received: by 2002:a05:6870:350d:b0:21e:b6fc:750d with SMTP id
 k13-20020a056870350d00b0021eb6fc750dmr12113002oah.32.1709085994553; Tue, 27
 Feb 2024 18:06:34 -0800 (PST)
MIME-Version: 1.0
References: <CABKMkPK-m3T120viE08qTJ8pm1xpd+bhZNAgevnmkvvb3XAFmA@mail.gmail.com>
 <CABKMkPKWppU6dSNRMuwt_dhJM4g3M4RSsTWKqRzintbZWiuz0A@mail.gmail.com>
 <CAMKF1spwK3a8YyBEFnrUMjLRqv+e8zHtWACJiNYi5QWhBNsZjg@mail.gmail.com>
 <17B7C28219925C6A.14830@lists.yoctoproject.org> <17B7CD71BB129A27.21419@lists.yoctoproject.org>
 <CABKMkPJy2ZtLTcWSKEGRPJ-ws00evTqK2ds6ksar7RuTA-QFsg@mail.gmail.com>
In-Reply-To: <CABKMkPJy2ZtLTcWSKEGRPJ-ws00evTqK2ds6ksar7RuTA-QFsg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 27 Feb 2024 18:06:08 -0800
Message-ID: <CAMKF1spnZBB=_qFAbVi53dyzSgDqhoX6WPboDGR56aPtfgnUsQ@mail.gmail.com>
Subject: Re: [yocto] [kirkstone] dwarfsrcfiles + rust staticlib
To: yocto@lists.yoctoproject.org, joel.winarske@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 02:06:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62628

On Tue, Feb 27, 2024 at 6:04=E2=80=AFPM Joel Winarske <joel.winarske@gmail.=
com> wrote:
>
> I sorted it out.  I needed to export RUSTFLAGS like this:
>
> cargo_do_compile:prepend() {
>     export RUSTFLAGS=3D"--emit=3Dllvm-ir"
> }

Good, I wanted to ask if the .o files are proper ELF files or not
inside the .a but I guess you have sorted it.

>
> On Tue, Feb 27, 2024 at 11:01=E2=80=AFAM Joel Winarske via lists.yoctopro=
ject.org <joel.winarske=3Dgmail.com@lists.yoctoproject.org> wrote:
>>
>> The Rust recipe is located here:
>> https://github.com/meta-flutter/meta-flutter/blob/jw/rive/recipes-devtoo=
ls/rive/rive-taffy-ffi_0.3.0.bb
>>
>> On Tue, Feb 27, 2024 at 7:40=E2=80=AFAM Joel Winarske via lists.yoctopro=
ject.org <joel.winarske=3Dgmail.com@lists.yoctoproject.org> wrote:
>>>
>>> `ar x` returns nothing.
>>>
>>> $ ar t ./libtaffy_ffi.a
>>> taffy_ffi-6a284b6b44182cb3.taffy_ffi.ab6ea036-cgu.0.rcgu.o
>>> taffy_ffi-6a284b6b44182cb3.4001iepzo748wc7r.rcgu.o
>>> taffy-7cbe31eff8600da4.taffy.328dd793-cgu.0.rcgu.o
>>> slotmap-4965e51b30b65dec.slotmap.6af9b30d-cgu.0.rcgu.o
>>> std.std.ffc53cd6-cgu.0.rcgu.o
>>> std.std.ffc53cd6-cgu.1.rcgu.o
>>> std.std.ffc53cd6-cgu.10.rcgu.o
>>> std.std.ffc53cd6-cgu.11.rcgu.o
>>> std.std.ffc53cd6-cgu.12.rcgu.o
>>> std.std.ffc53cd6-cgu.13.rcgu.o
>>> std.std.ffc53cd6-cgu.14.rcgu.o
>>> std.std.ffc53cd6-cgu.15.rcgu.o
>>> std.std.ffc53cd6-cgu.2.rcgu.o
>>> std.std.ffc53cd6-cgu.3.rcgu.o
>>> std.std.ffc53cd6-cgu.4.rcgu.o
>>> std.std.ffc53cd6-cgu.5.rcgu.o
>>> std.std.ffc53cd6-cgu.6.rcgu.o
>>> std.std.ffc53cd6-cgu.7.rcgu.o
>>> std.std.ffc53cd6-cgu.8.rcgu.o
>>> std.std.ffc53cd6-cgu.9.rcgu.o
>>> panic_unwind-6b59a4f45c60d735.panic_unwind.f600cc85-cgu.0.rcgu.o
>>> panic_unwind-6b59a4f45c60d735.panic_unwind.f600cc85-cgu.1.rcgu.o
>>> object-2d6fc44f598fbc25.object.40806be7-cgu.0.rcgu.o
>>> object-2d6fc44f598fbc25.object.40806be7-cgu.1.rcgu.o
>>> object-2d6fc44f598fbc25.object.40806be7-cgu.10.rcgu.o
>>> object-2d6fc44f598fbc25.object.40806be7-cgu.11.rcgu.o
>>> object-2d6fc44f598fbc25.object.40806be7-cgu.12.rcgu.o
>>> object-2d6fc44f598fbc25.object.40806be7-cgu.13.rcgu.o
>>> object-2d6fc44f598fbc25.object.40806be7-cgu.14.rcgu.o
>>> object-2d6fc44f598fbc25.object.40806be7-cgu.15.rcgu.o
>>> object-2d6fc44f598fbc25.object.40806be7-cgu.2.rcgu.o
>>> object-2d6fc44f598fbc25.object.40806be7-cgu.3.rcgu.o
>>> object-2d6fc44f598fbc25.object.40806be7-cgu.4.rcgu.o
>>> object-2d6fc44f598fbc25.object.40806be7-cgu.5.rcgu.o
>>> object-2d6fc44f598fbc25.object.40806be7-cgu.6.rcgu.o
>>> object-2d6fc44f598fbc25.object.40806be7-cgu.7.rcgu.o
>>> object-2d6fc44f598fbc25.object.40806be7-cgu.8.rcgu.o
>>> object-2d6fc44f598fbc25.object.40806be7-cgu.9.rcgu.o
>>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.0.rcgu.o
>>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.1.rcgu.o
>>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.10.rcgu.o
>>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.11.rcgu.o
>>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.12.rcgu.o
>>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.13.rcgu.o
>>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.14.rcgu.o
>>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.15.rcgu.o
>>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.2.rcgu.o
>>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.3.rcgu.o
>>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.4.rcgu.o
>>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.5.rcgu.o
>>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.6.rcgu.o
>>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.7.rcgu.o
>>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.8.rcgu.o
>>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.9.rcgu.o
>>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.0.rcgu.o
>>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.1.rcgu.o
>>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.2.rcgu.o
>>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.3.rcgu.o
>>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.4.rcgu.o
>>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.5.rcgu.o
>>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.6.rcgu.o
>>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.7.rcgu.o
>>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.8.rcgu.o
>>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.9.rcgu.o
>>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.0.rcgu.o
>>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.1.rcgu.o
>>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.10.rcgu.o
>>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.11.rcgu.o
>>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.12.rcgu.o
>>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.13.rcgu.o
>>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.14.rcgu.o
>>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.15.rcgu.o
>>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.2.rcgu.o
>>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.3.rcgu.o
>>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.4.rcgu.o
>>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.5.rcgu.o
>>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.6.rcgu.o
>>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.7.rcgu.o
>>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.8.rcgu.o
>>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.9.rcgu.o
>>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.0.rcgu.o
>>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.1.rcgu.o
>>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.10.rcgu.o
>>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.11.rcgu.o
>>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.12.rcgu.o
>>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.13.rcgu.o
>>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.14.rcgu.o
>>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.15.rcgu.o
>>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.2.rcgu.o
>>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.3.rcgu.o
>>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.4.rcgu.o
>>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.5.rcgu.o
>>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.6.rcgu.o
>>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.7.rcgu.o
>>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.8.rcgu.o
>>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.9.rcgu.o
>>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.0.rcgu.o
>>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.1.rcgu.o
>>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.10.rcgu.o
>>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.11.rcgu.o
>>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.12.rcgu.o
>>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.13.rcgu.o
>>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.14.rcgu.o
>>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.15.rcgu.o
>>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.2.rcgu.o
>>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.3.rcgu.o
>>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.4.rcgu.o
>>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.5.rcgu.o
>>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.6.rcgu.o
>>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.7.rcgu.o
>>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.8.rcgu.o
>>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.9.rcgu.o
>>> hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-cgu.0.rcgu.o
>>> hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-cgu.1.rcgu.o
>>> hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-cgu.2.rcgu.o
>>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.0.rcgu.o
>>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.1.rcgu.o
>>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.10.rcgu.o
>>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.11.rcgu.o
>>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.12.rcgu.o
>>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.13.rcgu.o
>>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.14.rcgu.o
>>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.15.rcgu.o
>>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.2.rcgu.o
>>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.3.rcgu.o
>>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.4.rcgu.o
>>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.5.rcgu.o
>>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.6.rcgu.o
>>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.7.rcgu.o
>>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.8.rcgu.o
>>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.9.rcgu.o
>>> adler-f6f71ffc86226e5d.adler.1084079f-cgu.0.rcgu.o
>>> adler-f6f71ffc86226e5d.adler.1084079f-cgu.1.rcgu.o
>>> adler-f6f71ffc86226e5d.adler.1084079f-cgu.2.rcgu.o
>>> adler-f6f71ffc86226e5d.adler.1084079f-cgu.3.rcgu.o
>>> adler-f6f71ffc86226e5d.adler.1084079f-cgu.4.rcgu.o
>>> adler-f6f71ffc86226e5d.adler.1084079f-cgu.5.rcgu.o
>>> rustc_std_workspace_alloc-8bcd9c28c85ed0b6.rustc_std_workspace_alloc.99=
88bf24-cgu.0.rcgu.o
>>> unwind-88f2cb0d7ef20338.unwind.efe615ca-cgu.0.rcgu.o
>>> cfg_if-37cc76b65d413337.cfg_if.98e3614e-cgu.0.rcgu.o
>>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.0.rcgu.o
>>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.1.rcgu.o
>>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.10.rcgu.o
>>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.11.rcgu.o
>>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.2.rcgu.o
>>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.3.rcgu.o
>>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.4.rcgu.o
>>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.5.rcgu.o
>>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.6.rcgu.o
>>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.7.rcgu.o
>>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.8.rcgu.o
>>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.9.rcgu.o
>>> grid-ab7f7f3e4cbbc5b1.grid.5b3fc95f-cgu.0.rcgu.o
>>> num_traits-fa4ea3438d1893c0.num_traits.fd22c02e-cgu.0.rcgu.o
>>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.0.rcgu.o
>>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.1.rcgu.o
>>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.10.rcgu.o
>>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.11.rcgu.o
>>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.12.rcgu.o
>>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.13.rcgu.o
>>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.14.rcgu.o
>>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.15.rcgu.o
>>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.2.rcgu.o
>>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.3.rcgu.o
>>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.4.rcgu.o
>>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.5.rcgu.o
>>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.6.rcgu.o
>>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.7.rcgu.o
>>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.8.rcgu.o
>>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.9.rcgu.o
>>> rustc_std_workspace_core-a173c240a23b696c.rustc_std_workspace_core.7597=
cc26-cgu.0.rcgu.o
>>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.0.rcgu.o
>>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.1.rcgu.o
>>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.10.rcgu.o
>>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.11.rcgu.o
>>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.12.rcgu.o
>>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.13.rcgu.o
>>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.14.rcgu.o
>>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.15.rcgu.o
>>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.2.rcgu.o
>>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.3.rcgu.o
>>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.4.rcgu.o
>>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.5.rcgu.o
>>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.6.rcgu.o
>>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.7.rcgu.o
>>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.8.rcgu.o
>>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.9.rcgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.0.rcg=
u.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.1.rcg=
u.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.10.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.100.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.101.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.102.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.103.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.104.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.105.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.106.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.107.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.108.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.109.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.11.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.110.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.111.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.112.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.113.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.114.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.115.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.116.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.117.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.118.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.119.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.12.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.120.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.121.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.122.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.123.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.124.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.125.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.126.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.127.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.128.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.129.r=
cgu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.13.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.14.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.15.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.16.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.17.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.18.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.19.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.2.rcg=
u.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.20.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.21.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.22.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.23.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.24.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.25.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.26.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.27.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.28.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.29.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.3.rcg=
u.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.30.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.31.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.32.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.33.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.34.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.35.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.36.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.37.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.38.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.39.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.4.rcg=
u.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.40.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.41.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.42.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.43.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.44.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.45.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.46.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.47.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.48.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.49.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.5.rcg=
u.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.50.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.51.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.52.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.53.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.54.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.55.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.56.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.57.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.58.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.59.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.6.rcg=
u.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.60.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.61.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.62.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.63.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.64.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.65.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.66.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.67.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.68.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.69.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.7.rcg=
u.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.70.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.71.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.72.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.73.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.74.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.75.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.76.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.77.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.78.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.79.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.8.rcg=
u.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.80.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.81.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.82.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.83.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.84.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.85.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.86.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.87.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.88.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.89.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.9.rcg=
u.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.90.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.91.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.92.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.93.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.94.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.95.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.96.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.97.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.98.rc=
gu.o
>>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.99.rc=
gu.o
>>>
>>>
>>>
>>> On Sat, Feb 24, 2024 at 6:06=E2=80=AFPM Khem Raj <raj.khem@gmail.com> w=
rote:
>>>>
>>>> try to run ar x on the .a file and see what objects it contains.
>>>>
>>>> On Fri, Feb 23, 2024 at 5:51=E2=80=AFPM Joel Winarske <joel.winarske@g=
mail.com> wrote:
>>>> >
>>>> > Running readelf -h on the file does work and it shows that it is ind=
eed the correct machine architecture
>>>> >
>>>> > ELF Header:
>>>> >   Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00
>>>> >   Class:                             ELF64
>>>> >   Data:                              2's complement, little endian
>>>> >   Version:                           1 (current)
>>>> >   OS/ABI:                            UNIX - System V
>>>> >   ABI Version:                       0
>>>> >   Type:                              REL (Relocatable file)
>>>> >   Machine:                           AArch64
>>>> >   Version:                           0x1
>>>> >   Entry point address:               0x0
>>>> >   Start of program headers:          0 (bytes into file)
>>>> >   Start of section headers:          201744 (bytes into file)
>>>> >   Flags:                             0x0
>>>> >   Size of this header:               64 (bytes)
>>>> >   Size of program headers:           0 (bytes)
>>>> >   Number of program headers:         0
>>>> >   Size of section headers:           64 (bytes)
>>>> >   Number of section headers:         165
>>>> >   Section header string table index: 1
>>>> >
>>>> >
>>>> > On Fri, Feb 23, 2024 at 5:40=E2=80=AFPM Joel Winarske <joel.winarske=
@gmail.com> wrote:
>>>> >>
>>>> >> I'm hitting qa issue when attempting to install a archive file buil=
t with Rust:
>>>> >>
>>>> >> dwarfsrcfiles: /home/joel/agl/raspberrypi4/tmp/work/aarch64-agl-lin=
ux/rive-taffy-ffi/0.3.0-r0/package/usr/lib/taffy_ffi/libtaffy_ffi.a: not a =
valid ELF file
>>>> >>
>>>> >> I can link this same archive file with C code and the executable ru=
ns.  It's a valid archive.
>>>> >>
>>>> >> Any suggestions?
>>>> >
>>>> >
>>>> >
>>>> >
>>>
>>>
>>>
>>>
>>
>>
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62627): https://lists.yoctoproject.org/g/yocto/messag=
e/62627
> Unfollow This Topic: https://lists.yoctoproject.org/unft/104540813/199791=
4
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

