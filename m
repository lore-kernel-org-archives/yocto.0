Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FF49C5478C
	for <webhook@archiver.kernel.org>; Wed, 28 Feb 2024 02:04:49 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web11.3992.1709085881816018961
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Feb 2024 18:04:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ap8vPGkb;
 spf=pass (domain: gmail.com, ip: 209.85.214.176, mailfrom: joel.winarske@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1dc418fa351so2984375ad.1
        for <yocto@lists.yoctoproject.org>; Tue, 27 Feb 2024 18:04:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709085881; x=1709690681; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GTznTsaFQh1cWiP6rYZ1m/rIb2V+2JOe++XIrGapeFA=;
        b=Ap8vPGkbZCo2QhZBGSTjNRpWaPxqvjKdyjzL2COeNiUZsM96iC6+IpLz8mMqzBtYbE
         94UDiF8L7GVAakTU+4HJjGDn/3t370dD9L99YNv61+nfY/2ja9Do+Q01o0gvRPxnYy3u
         WQNkgl/7mQLcoatLAsdVnHHFTWa/bQx1xfNSq/FCZWFamsWsHvB1VlH3GWgEPo82rx3n
         1Rq9TZ9lHRn46pKpHL3y/Y2Ax0IvUSMPZyY512khl8LbzO+SzvaAa7G+bkNr6f35qhH9
         KBTgjFVCiz9/a8UPGbzVoPBGNo8j66Gi2aYbg88GeOkKNWsWMGa1xvTy8U/ikSH616ep
         H8dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709085881; x=1709690681;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GTznTsaFQh1cWiP6rYZ1m/rIb2V+2JOe++XIrGapeFA=;
        b=Xa7cKjArgqPbHcwWz7wMx9kLR5mOWu0lmQClffsEdp68DXr3Ibt2d6v6EYwcTUvSsx
         svrpQBODB7yLpZyv5JwSYOCBWUeO7nfIMl9suoY2r4LQCZfYNac74HQfXfl6ZrR9IQ2o
         uA+tqRsba7U1a6BCOS2Q8w8I9OeuLQ9R0JCD3Z0+gyU1r45cIlK+EQzYHWslHpXlMDj0
         AMWxRgXBmFEQq7qspFNrRQF0ftAGbxeiCHMyh9TX9cm3H1EYYhe32CXcJkEPWBVCh5+4
         yZLBZiId6mUa2KJoh62L8UOjr0D3Aq157dJ8LTg/eCklSNk8R5pWSGzbbI1H6u/mjxlU
         5Quw==
X-Gm-Message-State: AOJu0Yztch4GjImg2FBaBa2DNckQq57IBz84Yd1akPDPxHdS5fZkz+SH
	1D17H8YhZ9Oaa1d70WsVKl7O2DVFaoHlnuxSrZ7WSAB+p8Wjt4tYFUSIRDUPBalAJkBJsySV2f+
	cx2/91lHcmTzxDTyOJoonAaOHNrNMO4UM5ozTDw==
X-Google-Smtp-Source: AGHT+IGAJPGDDsUBn5j8XBTQ+HfxScbCVET25idH28XbNpJK0U/6G/3eYtrE645y87zjFlJygP81bEWoXWa1ivddaOE=
X-Received: by 2002:a17:903:187:b0:1dc:88bd:64db with SMTP id
 z7-20020a170903018700b001dc88bd64dbmr1813040plg.21.1709085880740; Tue, 27 Feb
 2024 18:04:40 -0800 (PST)
MIME-Version: 1.0
References: <CABKMkPK-m3T120viE08qTJ8pm1xpd+bhZNAgevnmkvvb3XAFmA@mail.gmail.com>
 <CABKMkPKWppU6dSNRMuwt_dhJM4g3M4RSsTWKqRzintbZWiuz0A@mail.gmail.com>
 <CAMKF1spwK3a8YyBEFnrUMjLRqv+e8zHtWACJiNYi5QWhBNsZjg@mail.gmail.com>
 <17B7C28219925C6A.14830@lists.yoctoproject.org> <17B7CD71BB129A27.21419@lists.yoctoproject.org>
In-Reply-To: <17B7CD71BB129A27.21419@lists.yoctoproject.org>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Tue, 27 Feb 2024 18:04:29 -0800
Message-ID: <CABKMkPJy2ZtLTcWSKEGRPJ-ws00evTqK2ds6ksar7RuTA-QFsg@mail.gmail.com>
Subject: Re: [yocto] [kirkstone] dwarfsrcfiles + rust staticlib
To: yocto@lists.yoctoproject.org, joel.winarske@gmail.com
Content-Type: multipart/alternative; boundary="000000000000cff2c50612679035"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 02:04:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62627

--000000000000cff2c50612679035
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I sorted it out.  I needed to export RUSTFLAGS like this:

cargo_do_compile:prepend() {
    export RUSTFLAGS=3D"--emit=3Dllvm-ir"
}

On Tue, Feb 27, 2024 at 11:01=E2=80=AFAM Joel Winarske via lists.yoctoproje=
ct.org
<joel.winarske=3Dgmail.com@lists.yoctoproject.org> wrote:

> The Rust recipe is located here:
>
> https://github.com/meta-flutter/meta-flutter/blob/jw/rive/recipes-devtool=
s/rive/rive-taffy-ffi_0.3.0.bb
>
> On Tue, Feb 27, 2024 at 7:40=E2=80=AFAM Joel Winarske via lists.yoctoproj=
ect.org
> <joel.winarske=3Dgmail.com@lists.yoctoproject.org> wrote:
>
>> `ar x` returns nothing.
>>
>> $ ar t ./libtaffy_ffi.a
>> taffy_ffi-6a284b6b44182cb3.taffy_ffi.ab6ea036-cgu.0.rcgu.o
>> taffy_ffi-6a284b6b44182cb3.4001iepzo748wc7r.rcgu.o
>> taffy-7cbe31eff8600da4.taffy.328dd793-cgu.0.rcgu.o
>> slotmap-4965e51b30b65dec.slotmap.6af9b30d-cgu.0.rcgu.o
>> std.std.ffc53cd6-cgu.0.rcgu.o
>> std.std.ffc53cd6-cgu.1.rcgu.o
>> std.std.ffc53cd6-cgu.10.rcgu.o
>> std.std.ffc53cd6-cgu.11.rcgu.o
>> std.std.ffc53cd6-cgu.12.rcgu.o
>> std.std.ffc53cd6-cgu.13.rcgu.o
>> std.std.ffc53cd6-cgu.14.rcgu.o
>> std.std.ffc53cd6-cgu.15.rcgu.o
>> std.std.ffc53cd6-cgu.2.rcgu.o
>> std.std.ffc53cd6-cgu.3.rcgu.o
>> std.std.ffc53cd6-cgu.4.rcgu.o
>> std.std.ffc53cd6-cgu.5.rcgu.o
>> std.std.ffc53cd6-cgu.6.rcgu.o
>> std.std.ffc53cd6-cgu.7.rcgu.o
>> std.std.ffc53cd6-cgu.8.rcgu.o
>> std.std.ffc53cd6-cgu.9.rcgu.o
>> panic_unwind-6b59a4f45c60d735.panic_unwind.f600cc85-cgu.0.rcgu.o
>> panic_unwind-6b59a4f45c60d735.panic_unwind.f600cc85-cgu.1.rcgu.o
>> object-2d6fc44f598fbc25.object.40806be7-cgu.0.rcgu.o
>> object-2d6fc44f598fbc25.object.40806be7-cgu.1.rcgu.o
>> object-2d6fc44f598fbc25.object.40806be7-cgu.10.rcgu.o
>> object-2d6fc44f598fbc25.object.40806be7-cgu.11.rcgu.o
>> object-2d6fc44f598fbc25.object.40806be7-cgu.12.rcgu.o
>> object-2d6fc44f598fbc25.object.40806be7-cgu.13.rcgu.o
>> object-2d6fc44f598fbc25.object.40806be7-cgu.14.rcgu.o
>> object-2d6fc44f598fbc25.object.40806be7-cgu.15.rcgu.o
>> object-2d6fc44f598fbc25.object.40806be7-cgu.2.rcgu.o
>> object-2d6fc44f598fbc25.object.40806be7-cgu.3.rcgu.o
>> object-2d6fc44f598fbc25.object.40806be7-cgu.4.rcgu.o
>> object-2d6fc44f598fbc25.object.40806be7-cgu.5.rcgu.o
>> object-2d6fc44f598fbc25.object.40806be7-cgu.6.rcgu.o
>> object-2d6fc44f598fbc25.object.40806be7-cgu.7.rcgu.o
>> object-2d6fc44f598fbc25.object.40806be7-cgu.8.rcgu.o
>> object-2d6fc44f598fbc25.object.40806be7-cgu.9.rcgu.o
>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.0.rcgu.o
>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.1.rcgu.o
>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.10.rcgu.o
>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.11.rcgu.o
>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.12.rcgu.o
>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.13.rcgu.o
>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.14.rcgu.o
>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.15.rcgu.o
>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.2.rcgu.o
>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.3.rcgu.o
>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.4.rcgu.o
>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.5.rcgu.o
>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.6.rcgu.o
>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.7.rcgu.o
>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.8.rcgu.o
>> memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.9.rcgu.o
>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.0.rcgu.o
>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.1.rcgu.o
>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.2.rcgu.o
>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.3.rcgu.o
>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.4.rcgu.o
>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.5.rcgu.o
>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.6.rcgu.o
>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.7.rcgu.o
>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.8.rcgu.o
>> addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.9.rcgu.o
>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.0.rcgu.o
>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.1.rcgu.o
>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.10.rcgu.o
>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.11.rcgu.o
>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.12.rcgu.o
>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.13.rcgu.o
>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.14.rcgu.o
>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.15.rcgu.o
>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.2.rcgu.o
>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.3.rcgu.o
>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.4.rcgu.o
>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.5.rcgu.o
>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.6.rcgu.o
>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.7.rcgu.o
>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.8.rcgu.o
>> gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.9.rcgu.o
>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.0.rcgu.o
>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.1.rcgu.o
>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.10.rcgu.o
>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.11.rcgu.o
>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.12.rcgu.o
>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.13.rcgu.o
>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.14.rcgu.o
>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.15.rcgu.o
>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.2.rcgu.o
>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.3.rcgu.o
>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.4.rcgu.o
>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.5.rcgu.o
>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.6.rcgu.o
>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.7.rcgu.o
>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.8.rcgu.o
>> rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.9.rcgu.o
>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.0.rcgu.o
>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.1.rcgu.o
>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.10.rcgu.o
>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.11.rcgu.o
>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.12.rcgu.o
>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.13.rcgu.o
>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.14.rcgu.o
>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.15.rcgu.o
>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.2.rcgu.o
>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.3.rcgu.o
>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.4.rcgu.o
>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.5.rcgu.o
>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.6.rcgu.o
>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.7.rcgu.o
>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.8.rcgu.o
>> std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.9.rcgu.o
>> hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-cgu.0.rcgu.o
>> hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-cgu.1.rcgu.o
>> hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-cgu.2.rcgu.o
>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.0.rcgu.o
>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.1.rcgu.o
>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.10.rcgu.o
>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.11.rcgu.o
>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.12.rcgu.o
>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.13.rcgu.o
>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.14.rcgu.o
>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.15.rcgu.o
>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.2.rcgu.o
>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.3.rcgu.o
>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.4.rcgu.o
>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.5.rcgu.o
>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.6.rcgu.o
>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.7.rcgu.o
>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.8.rcgu.o
>> miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.9.rcgu.o
>> adler-f6f71ffc86226e5d.adler.1084079f-cgu.0.rcgu.o
>> adler-f6f71ffc86226e5d.adler.1084079f-cgu.1.rcgu.o
>> adler-f6f71ffc86226e5d.adler.1084079f-cgu.2.rcgu.o
>> adler-f6f71ffc86226e5d.adler.1084079f-cgu.3.rcgu.o
>> adler-f6f71ffc86226e5d.adler.1084079f-cgu.4.rcgu.o
>> adler-f6f71ffc86226e5d.adler.1084079f-cgu.5.rcgu.o
>>
>> rustc_std_workspace_alloc-8bcd9c28c85ed0b6.rustc_std_workspace_alloc.998=
8bf24-cgu.0.rcgu.o
>> unwind-88f2cb0d7ef20338.unwind.efe615ca-cgu.0.rcgu.o
>> cfg_if-37cc76b65d413337.cfg_if.98e3614e-cgu.0.rcgu.o
>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.0.rcgu.o
>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.1.rcgu.o
>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.10.rcgu.o
>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.11.rcgu.o
>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.2.rcgu.o
>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.3.rcgu.o
>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.4.rcgu.o
>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.5.rcgu.o
>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.6.rcgu.o
>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.7.rcgu.o
>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.8.rcgu.o
>> libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.9.rcgu.o
>> grid-ab7f7f3e4cbbc5b1.grid.5b3fc95f-cgu.0.rcgu.o
>> num_traits-fa4ea3438d1893c0.num_traits.fd22c02e-cgu.0.rcgu.o
>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.0.rcgu.o
>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.1.rcgu.o
>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.10.rcgu.o
>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.11.rcgu.o
>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.12.rcgu.o
>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.13.rcgu.o
>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.14.rcgu.o
>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.15.rcgu.o
>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.2.rcgu.o
>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.3.rcgu.o
>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.4.rcgu.o
>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.5.rcgu.o
>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.6.rcgu.o
>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.7.rcgu.o
>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.8.rcgu.o
>> alloc-f872d0211dbe2026.alloc.53eb9598-cgu.9.rcgu.o
>>
>> rustc_std_workspace_core-a173c240a23b696c.rustc_std_workspace_core.7597c=
c26-cgu.0.rcgu.o
>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.0.rcgu.o
>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.1.rcgu.o
>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.10.rcgu.o
>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.11.rcgu.o
>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.12.rcgu.o
>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.13.rcgu.o
>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.14.rcgu.o
>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.15.rcgu.o
>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.2.rcgu.o
>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.3.rcgu.o
>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.4.rcgu.o
>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.5.rcgu.o
>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.6.rcgu.o
>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.7.rcgu.o
>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.8.rcgu.o
>> core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.9.rcgu.o
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.0.rcgu=
.o
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.1.rcgu=
.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.10.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.100.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.101.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.102.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.103.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.104.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.105.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.106.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.107.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.108.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.109.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.11.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.110.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.111.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.112.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.113.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.114.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.115.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.116.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.117.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.118.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.119.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.12.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.120.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.121.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.122.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.123.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.124.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.125.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.126.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.127.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.128.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.129.rc=
gu.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.13.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.14.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.15.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.16.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.17.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.18.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.19.rcg=
u.o
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.2.rcgu=
.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.20.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.21.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.22.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.23.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.24.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.25.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.26.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.27.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.28.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.29.rcg=
u.o
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.3.rcgu=
.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.30.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.31.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.32.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.33.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.34.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.35.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.36.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.37.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.38.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.39.rcg=
u.o
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.4.rcgu=
.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.40.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.41.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.42.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.43.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.44.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.45.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.46.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.47.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.48.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.49.rcg=
u.o
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.5.rcgu=
.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.50.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.51.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.52.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.53.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.54.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.55.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.56.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.57.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.58.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.59.rcg=
u.o
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.6.rcgu=
.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.60.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.61.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.62.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.63.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.64.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.65.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.66.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.67.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.68.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.69.rcg=
u.o
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.7.rcgu=
.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.70.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.71.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.72.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.73.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.74.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.75.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.76.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.77.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.78.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.79.rcg=
u.o
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.8.rcgu=
.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.80.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.81.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.82.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.83.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.84.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.85.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.86.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.87.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.88.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.89.rcg=
u.o
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.9.rcgu=
.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.90.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.91.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.92.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.93.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.94.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.95.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.96.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.97.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.98.rcg=
u.o
>>
>> compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.99.rcg=
u.o
>>
>>
>>
>> On Sat, Feb 24, 2024 at 6:06=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wr=
ote:
>>
>>> try to run ar x on the .a file and see what objects it contains.
>>>
>>> On Fri, Feb 23, 2024 at 5:51=E2=80=AFPM Joel Winarske <joel.winarske@gm=
ail.com>
>>> wrote:
>>> >
>>> > Running readelf -h on the file does work and it shows that it is
>>> indeed the correct machine architecture
>>> >
>>> > ELF Header:
>>> >   Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00
>>> >   Class:                             ELF64
>>> >   Data:                              2's complement, little endian
>>> >   Version:                           1 (current)
>>> >   OS/ABI:                            UNIX - System V
>>> >   ABI Version:                       0
>>> >   Type:                              REL (Relocatable file)
>>> >   Machine:                           AArch64
>>> >   Version:                           0x1
>>> >   Entry point address:               0x0
>>> >   Start of program headers:          0 (bytes into file)
>>> >   Start of section headers:          201744 (bytes into file)
>>> >   Flags:                             0x0
>>> >   Size of this header:               64 (bytes)
>>> >   Size of program headers:           0 (bytes)
>>> >   Number of program headers:         0
>>> >   Size of section headers:           64 (bytes)
>>> >   Number of section headers:         165
>>> >   Section header string table index: 1
>>> >
>>> >
>>> > On Fri, Feb 23, 2024 at 5:40=E2=80=AFPM Joel Winarske <joel.winarske@=
gmail.com>
>>> wrote:
>>> >>
>>> >> I'm hitting qa issue when attempting to install a archive file built
>>> with Rust:
>>> >>
>>> >> dwarfsrcfiles:
>>> /home/joel/agl/raspberrypi4/tmp/work/aarch64-agl-linux/rive-taffy-ffi/0=
.3.0-r0/package/usr/lib/taffy_ffi/libtaffy_ffi.a:
>>> not a valid ELF file
>>> >>
>>> >> I can link this same archive file with C code and the executable
>>> runs.  It's a valid archive.
>>> >>
>>> >> Any suggestions?
>>> >
>>> >
>>> >
>>> >
>>>
>>
>>
>>
>>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62626):
> https://lists.yoctoproject.org/g/yocto/message/62626
> Mute This Topic: https://lists.yoctoproject.org/mt/104540813/2167248
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> joel.winarske@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000cff2c50612679035
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I sorted it out.=C2=A0 I needed to export RUSTFLAGS like t=
his:<br><br>cargo_do_compile:prepend() {<br>=C2=A0 =C2=A0 export RUSTFLAGS=
=3D&quot;--emit=3Dllvm-ir&quot;<br>}<br></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 27, 2024 at 11:01=E2=80=
=AFAM Joel Winarske via <a href=3D"http://lists.yoctoproject.org">lists.yoc=
toproject.org</a> &lt;joel.winarske=3D<a href=3D"mailto:gmail.com@lists.yoc=
toproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">The Rust re=
cipe is located here:<br><a href=3D"https://github.com/meta-flutter/meta-fl=
utter/blob/jw/rive/recipes-devtools/rive/rive-taffy-ffi_0.3.0.bb" target=3D=
"_blank">https://github.com/meta-flutter/meta-flutter/blob/jw/rive/recipes-=
devtools/rive/rive-taffy-ffi_0.3.0.bb</a></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 27, 2024 at 7:40=E2=80=
=AFAM Joel Winarske via <a href=3D"http://lists.yoctoproject.org" target=3D=
"_blank">lists.yoctoproject.org</a> &lt;joel.winarske=3D<a href=3D"mailto:g=
mail.com@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctopro=
ject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div>`ar x` returns nothing.<br></div><div><br></d=
iv><div>$ ar t ./libtaffy_ffi.a <br>taffy_ffi-6a284b6b44182cb3.taffy_ffi.ab=
6ea036-cgu.0.rcgu.o<br>taffy_ffi-6a284b6b44182cb3.4001iepzo748wc7r.rcgu.o<b=
r>taffy-7cbe31eff8600da4.taffy.328dd793-cgu.0.rcgu.o<br>slotmap-4965e51b30b=
65dec.slotmap.6af9b30d-cgu.0.rcgu.o<br>std.std.ffc53cd6-cgu.0.rcgu.o<br>std=
.std.ffc53cd6-cgu.1.rcgu.o<br>std.std.ffc53cd6-cgu.10.rcgu.o<br>std.std.ffc=
53cd6-cgu.11.rcgu.o<br>std.std.ffc53cd6-cgu.12.rcgu.o<br>std.std.ffc53cd6-c=
gu.13.rcgu.o<br>std.std.ffc53cd6-cgu.14.rcgu.o<br>std.std.ffc53cd6-cgu.15.r=
cgu.o<br>std.std.ffc53cd6-cgu.2.rcgu.o<br>std.std.ffc53cd6-cgu.3.rcgu.o<br>=
std.std.ffc53cd6-cgu.4.rcgu.o<br>std.std.ffc53cd6-cgu.5.rcgu.o<br>std.std.f=
fc53cd6-cgu.6.rcgu.o<br>std.std.ffc53cd6-cgu.7.rcgu.o<br>std.std.ffc53cd6-c=
gu.8.rcgu.o<br>std.std.ffc53cd6-cgu.9.rcgu.o<br>panic_unwind-6b59a4f45c60d7=
35.panic_unwind.f600cc85-cgu.0.rcgu.o<br>panic_unwind-6b59a4f45c60d735.pani=
c_unwind.f600cc85-cgu.1.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-c=
gu.0.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.1.rcgu.o<br>obje=
ct-2d6fc44f598fbc25.object.40806be7-cgu.10.rcgu.o<br>object-2d6fc44f598fbc2=
5.object.40806be7-cgu.11.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-=
cgu.12.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.13.rcgu.o<br>o=
bject-2d6fc44f598fbc25.object.40806be7-cgu.14.rcgu.o<br>object-2d6fc44f598f=
bc25.object.40806be7-cgu.15.rcgu.o<br>object-2d6fc44f598fbc25.object.40806b=
e7-cgu.2.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.3.rcgu.o<br>=
object-2d6fc44f598fbc25.object.40806be7-cgu.4.rcgu.o<br>object-2d6fc44f598f=
bc25.object.40806be7-cgu.5.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be=
7-cgu.6.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.7.rcgu.o<br>o=
bject-2d6fc44f598fbc25.object.40806be7-cgu.8.rcgu.o<br>object-2d6fc44f598fb=
c25.object.40806be7-cgu.9.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3=
-cgu.0.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.1.rcgu.o<br>me=
mchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.10.rcgu.o<br>memchr-c0d6e4e574632=
eeb.memchr.af0f6cf3-cgu.11.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf=
3-cgu.12.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.13.rcgu.o<br=
>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.14.rcgu.o<br>memchr-c0d6e4e574=
632eeb.memchr.af0f6cf3-cgu.15.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f=
6cf3-cgu.2.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.3.rcgu.o<b=
r>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.4.rcgu.o<br>memchr-c0d6e4e574=
632eeb.memchr.af0f6cf3-cgu.5.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6=
cf3-cgu.6.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.7.rcgu.o<br=
>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.8.rcgu.o<br>memchr-c0d6e4e5746=
32eeb.memchr.af0f6cf3-cgu.9.rcgu.o<br>addr2line-b038aec7c65acee8.addr2line.=
b9ae8a32-cgu.0.rcgu.o<br>addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.=
1.rcgu.o<br>addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.2.rcgu.o<br>a=
ddr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.3.rcgu.o<br>addr2line-b038=
aec7c65acee8.addr2line.b9ae8a32-cgu.4.rcgu.o<br>addr2line-b038aec7c65acee8.=
addr2line.b9ae8a32-cgu.5.rcgu.o<br>addr2line-b038aec7c65acee8.addr2line.b9a=
e8a32-cgu.6.rcgu.o<br>addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.7.r=
cgu.o<br>addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.8.rcgu.o<br>addr=
2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.9.rcgu.o<br>gimli-7cd01052d92=
83c69.gimli.7f321bcb-cgu.0.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-=
cgu.1.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.10.rcgu.o<br>giml=
i-7cd01052d9283c69.gimli.7f321bcb-cgu.11.rcgu.o<br>gimli-7cd01052d9283c69.g=
imli.7f321bcb-cgu.12.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.13=
.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.14.rcgu.o<br>gimli-7cd=
01052d9283c69.gimli.7f321bcb-cgu.15.rcgu.o<br>gimli-7cd01052d9283c69.gimli.=
7f321bcb-cgu.2.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.3.rcgu.o=
<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.4.rcgu.o<br>gimli-7cd01052d92=
83c69.gimli.7f321bcb-cgu.5.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-=
cgu.6.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.7.rcgu.o<br>gimli=
-7cd01052d9283c69.gimli.7f321bcb-cgu.8.rcgu.o<br>gimli-7cd01052d9283c69.gim=
li.7f321bcb-cgu.9.rcgu.o<br>rustc_demangle-e53ade3145326c47.rustc_demangle.=
625b5e5b-cgu.0.rcgu.o<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625=
b5e5b-cgu.1.rcgu.o<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e=
5b-cgu.10.rcgu.o<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b=
-cgu.11.rcgu.o<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-c=
gu.12.rcgu.o<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu=
.13.rcgu.o<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.1=
4.rcgu.o<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.15.=
rcgu.o<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.2.rcg=
u.o<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.3.rcgu.o=
<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.4.rcgu.o<br=
>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.5.rcgu.o<br>ru=
stc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.6.rcgu.o<br>rustc=
_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.7.rcgu.o<br>rustc_de=
mangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.8.rcgu.o<br>rustc_deman=
gle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.9.rcgu.o<br>std_detect-e27=
f75a393d69b0c.std_detect.6661e28d-cgu.0.rcgu.o<br>std_detect-e27f75a393d69b=
0c.std_detect.6661e28d-cgu.1.rcgu.o<br>std_detect-e27f75a393d69b0c.std_dete=
ct.6661e28d-cgu.10.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6661e28=
d-cgu.11.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.12.r=
cgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.13.rcgu.o<br>s=
td_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.14.rcgu.o<br>std_detect-=
e27f75a393d69b0c.std_detect.6661e28d-cgu.15.rcgu.o<br>std_detect-e27f75a393=
d69b0c.std_detect.6661e28d-cgu.2.rcgu.o<br>std_detect-e27f75a393d69b0c.std_=
detect.6661e28d-cgu.3.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6661=
e28d-cgu.4.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.5.=
rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.6.rcgu.o<br>s=
td_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.7.rcgu.o<br>std_detect-e=
27f75a393d69b0c.std_detect.6661e28d-cgu.8.rcgu.o<br>std_detect-e27f75a393d6=
9b0c.std_detect.6661e28d-cgu.9.rcgu.o<br>hashbrown-bdaa07c171d4ff64.hashbro=
wn.53dbd1a6-cgu.0.rcgu.o<br>hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-c=
gu.1.rcgu.o<br>hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-cgu.2.rcgu.o<b=
r>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.0.rcgu.o<br>miniz_o=
xide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.1.rcgu.o<br>miniz_oxide-250b=
3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.10.rcgu.o<br>miniz_oxide-250b3f59209e=
9bec.miniz_oxide.bd1ce1dd-cgu.11.rcgu.o<br>miniz_oxide-250b3f59209e9bec.min=
iz_oxide.bd1ce1dd-cgu.12.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide=
.bd1ce1dd-cgu.13.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1d=
d-cgu.14.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.15=
.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.2.rcgu.o<b=
r>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.3.rcgu.o<br>miniz_o=
xide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.4.rcgu.o<br>miniz_oxide-250b=
3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.5.rcgu.o<br>miniz_oxide-250b3f59209e9=
bec.miniz_oxide.bd1ce1dd-cgu.6.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz=
_oxide.bd1ce1dd-cgu.7.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd=
1ce1dd-cgu.8.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cg=
u.9.rcgu.o<br>adler-f6f71ffc86226e5d.adler.1084079f-cgu.0.rcgu.o<br>adler-f=
6f71ffc86226e5d.adler.1084079f-cgu.1.rcgu.o<br>adler-f6f71ffc86226e5d.adler=
.1084079f-cgu.2.rcgu.o<br>adler-f6f71ffc86226e5d.adler.1084079f-cgu.3.rcgu.=
o<br>adler-f6f71ffc86226e5d.adler.1084079f-cgu.4.rcgu.o<br>adler-f6f71ffc86=
226e5d.adler.1084079f-cgu.5.rcgu.o<br>rustc_std_workspace_alloc-8bcd9c28c85=
ed0b6.rustc_std_workspace_alloc.9988bf24-cgu.0.rcgu.o<br>unwind-88f2cb0d7ef=
20338.unwind.efe615ca-cgu.0.rcgu.o<br>cfg_if-37cc76b65d413337.cfg_if.98e361=
4e-cgu.0.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.0.rcgu.o<br>libc=
-ed8f6a4dbcdd053e.libc.7f784050-cgu.1.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.=
7f784050-cgu.10.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.11.rcgu.o=
<br>libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.2.rcgu.o<br>libc-ed8f6a4dbcdd05=
3e.libc.7f784050-cgu.3.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.4.=
rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.5.rcgu.o<br>libc-ed8f6a4d=
bcdd053e.libc.7f784050-cgu.6.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.7f784050-=
cgu.7.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.8.rcgu.o<br>libc-ed=
8f6a4dbcdd053e.libc.7f784050-cgu.9.rcgu.o<br>grid-ab7f7f3e4cbbc5b1.grid.5b3=
fc95f-cgu.0.rcgu.o<br>num_traits-fa4ea3438d1893c0.num_traits.fd22c02e-cgu.0=
.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.0.rcgu.o<br>alloc-f872=
d0211dbe2026.alloc.53eb9598-cgu.1.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53=
eb9598-cgu.10.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.11.rcgu.o=
<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.12.rcgu.o<br>alloc-f872d0211d=
be2026.alloc.53eb9598-cgu.13.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb959=
8-cgu.14.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.15.rcgu.o<br>a=
lloc-f872d0211dbe2026.alloc.53eb9598-cgu.2.rcgu.o<br>alloc-f872d0211dbe2026=
.alloc.53eb9598-cgu.3.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.4=
.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.5.rcgu.o<br>alloc-f872=
d0211dbe2026.alloc.53eb9598-cgu.6.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53=
eb9598-cgu.7.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.8.rcgu.o<b=
r>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.9.rcgu.o<br>rustc_std_workspace=
_core-a173c240a23b696c.rustc_std_workspace_core.7597cc26-cgu.0.rcgu.o<br>co=
re-ec2ee475f0bbc2be.core.ed6d5d31-cgu.0.rcgu.o<br>core-ec2ee475f0bbc2be.cor=
e.ed6d5d31-cgu.1.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.10.rcgu.=
o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.11.rcgu.o<br>core-ec2ee475f0bb=
c2be.core.ed6d5d31-cgu.12.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu=
.13.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.14.rcgu.o<br>core-ec2=
ee475f0bbc2be.core.ed6d5d31-cgu.15.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6=
d5d31-cgu.2.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.3.rcgu.o<br>c=
ore-ec2ee475f0bbc2be.core.ed6d5d31-cgu.4.rcgu.o<br>core-ec2ee475f0bbc2be.co=
re.ed6d5d31-cgu.5.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.6.rcgu.=
o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.7.rcgu.o<br>core-ec2ee475f0bbc=
2be.core.ed6d5d31-cgu.8.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.9=
.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cg=
u.0.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2=
-cgu.1.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade5=
8f2-cgu.10.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2=
ade58f2-cgu.100.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_built=
ins.2ade58f2-cgu.101.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_=
builtins.2ade58f2-cgu.102.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.comp=
iler_builtins.2ade58f2-cgu.103.rcgu.o<br>compiler_builtins-8cb3deaee7783e49=
.compiler_builtins.2ade58f2-cgu.104.rcgu.o<br>compiler_builtins-8cb3deaee77=
83e49.compiler_builtins.2ade58f2-cgu.105.rcgu.o<br>compiler_builtins-8cb3de=
aee7783e49.compiler_builtins.2ade58f2-cgu.106.rcgu.o<br>compiler_builtins-8=
cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.107.rcgu.o<br>compiler_built=
ins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.108.rcgu.o<br>compiler_=
builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.109.rcgu.o<br>comp=
iler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.11.rcgu.o<br>=
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.110.rcgu.=
o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.111.=
rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu=
.112.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f=
2-cgu.113.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2a=
de58f2-cgu.114.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builti=
ns.2ade58f2-cgu.115.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_b=
uiltins.2ade58f2-cgu.116.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compi=
ler_builtins.2ade58f2-cgu.117.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.=
compiler_builtins.2ade58f2-cgu.118.rcgu.o<br>compiler_builtins-8cb3deaee778=
3e49.compiler_builtins.2ade58f2-cgu.119.rcgu.o<br>compiler_builtins-8cb3dea=
ee7783e49.compiler_builtins.2ade58f2-cgu.12.rcgu.o<br>compiler_builtins-8cb=
3deaee7783e49.compiler_builtins.2ade58f2-cgu.120.rcgu.o<br>compiler_builtin=
s-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.121.rcgu.o<br>compiler_bu=
iltins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.122.rcgu.o<br>compil=
er_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.123.rcgu.o<br>c=
ompiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.124.rcgu.o=
<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.125.r=
cgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.=
126.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2=
-cgu.127.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ad=
e58f2-cgu.128.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtin=
s.2ade58f2-cgu.129.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_bu=
iltins.2ade58f2-cgu.13.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compile=
r_builtins.2ade58f2-cgu.14.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.com=
piler_builtins.2ade58f2-cgu.15.rcgu.o<br>compiler_builtins-8cb3deaee7783e49=
.compiler_builtins.2ade58f2-cgu.16.rcgu.o<br>compiler_builtins-8cb3deaee778=
3e49.compiler_builtins.2ade58f2-cgu.17.rcgu.o<br>compiler_builtins-8cb3deae=
e7783e49.compiler_builtins.2ade58f2-cgu.18.rcgu.o<br>compiler_builtins-8cb3=
deaee7783e49.compiler_builtins.2ade58f2-cgu.19.rcgu.o<br>compiler_builtins-=
8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.2.rcgu.o<br>compiler_builti=
ns-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.20.rcgu.o<br>compiler_bu=
iltins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.21.rcgu.o<br>compile=
r_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.22.rcgu.o<br>com=
piler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.23.rcgu.o<br=
>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.24.rcgu.=
o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.25.r=
cgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.=
26.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-=
cgu.27.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade5=
8f2-cgu.28.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2=
ade58f2-cgu.29.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builti=
ns.2ade58f2-cgu.3.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_bui=
ltins.2ade58f2-cgu.30.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler=
_builtins.2ade58f2-cgu.31.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.comp=
iler_builtins.2ade58f2-cgu.32.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.=
compiler_builtins.2ade58f2-cgu.33.rcgu.o<br>compiler_builtins-8cb3deaee7783=
e49.compiler_builtins.2ade58f2-cgu.34.rcgu.o<br>compiler_builtins-8cb3deaee=
7783e49.compiler_builtins.2ade58f2-cgu.35.rcgu.o<br>compiler_builtins-8cb3d=
eaee7783e49.compiler_builtins.2ade58f2-cgu.36.rcgu.o<br>compiler_builtins-8=
cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.37.rcgu.o<br>compiler_builti=
ns-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.38.rcgu.o<br>compiler_bu=
iltins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.39.rcgu.o<br>compile=
r_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.4.rcgu.o<br>comp=
iler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.40.rcgu.o<br>=
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.41.rcgu.o=
<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.42.rc=
gu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.4=
3.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-c=
gu.44.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58=
f2-cgu.45.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2a=
de58f2-cgu.46.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtin=
s.2ade58f2-cgu.47.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_bui=
ltins.2ade58f2-cgu.48.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler=
_builtins.2ade58f2-cgu.49.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.comp=
iler_builtins.2ade58f2-cgu.5.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.c=
ompiler_builtins.2ade58f2-cgu.50.rcgu.o<br>compiler_builtins-8cb3deaee7783e=
49.compiler_builtins.2ade58f2-cgu.51.rcgu.o<br>compiler_builtins-8cb3deaee7=
783e49.compiler_builtins.2ade58f2-cgu.52.rcgu.o<br>compiler_builtins-8cb3de=
aee7783e49.compiler_builtins.2ade58f2-cgu.53.rcgu.o<br>compiler_builtins-8c=
b3deaee7783e49.compiler_builtins.2ade58f2-cgu.54.rcgu.o<br>compiler_builtin=
s-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.55.rcgu.o<br>compiler_bui=
ltins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.56.rcgu.o<br>compiler=
_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.57.rcgu.o<br>comp=
iler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.58.rcgu.o<br>=
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.59.rcgu.o=
<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.6.rcg=
u.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.60=
.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cg=
u.61.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f=
2-cgu.62.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ad=
e58f2-cgu.63.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins=
.2ade58f2-cgu.64.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_buil=
tins.2ade58f2-cgu.65.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_=
builtins.2ade58f2-cgu.66.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compi=
ler_builtins.2ade58f2-cgu.67.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.c=
ompiler_builtins.2ade58f2-cgu.68.rcgu.o<br>compiler_builtins-8cb3deaee7783e=
49.compiler_builtins.2ade58f2-cgu.69.rcgu.o<br>compiler_builtins-8cb3deaee7=
783e49.compiler_builtins.2ade58f2-cgu.7.rcgu.o<br>compiler_builtins-8cb3dea=
ee7783e49.compiler_builtins.2ade58f2-cgu.70.rcgu.o<br>compiler_builtins-8cb=
3deaee7783e49.compiler_builtins.2ade58f2-cgu.71.rcgu.o<br>compiler_builtins=
-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.72.rcgu.o<br>compiler_buil=
tins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.73.rcgu.o<br>compiler_=
builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.74.rcgu.o<br>compi=
ler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.75.rcgu.o<br>c=
ompiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.76.rcgu.o<=
br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.77.rcg=
u.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.78=
.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cg=
u.79.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f=
2-cgu.8.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade=
58f2-cgu.80.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.=
2ade58f2-cgu.81.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_built=
ins.2ade58f2-cgu.82.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_b=
uiltins.2ade58f2-cgu.83.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compil=
er_builtins.2ade58f2-cgu.84.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.co=
mpiler_builtins.2ade58f2-cgu.85.rcgu.o<br>compiler_builtins-8cb3deaee7783e4=
9.compiler_builtins.2ade58f2-cgu.86.rcgu.o<br>compiler_builtins-8cb3deaee77=
83e49.compiler_builtins.2ade58f2-cgu.87.rcgu.o<br>compiler_builtins-8cb3dea=
ee7783e49.compiler_builtins.2ade58f2-cgu.88.rcgu.o<br>compiler_builtins-8cb=
3deaee7783e49.compiler_builtins.2ade58f2-cgu.89.rcgu.o<br>compiler_builtins=
-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.9.rcgu.o<br>compiler_built=
ins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.90.rcgu.o<br>compiler_b=
uiltins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.91.rcgu.o<br>compil=
er_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.92.rcgu.o<br>co=
mpiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.93.rcgu.o<b=
r>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.94.rcgu=
.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.95.=
rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu=
.96.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2=
-cgu.97.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade=
58f2-cgu.98.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.=
2ade58f2-cgu.99.rcgu.o<br></div><div><br></div><br></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Feb 24, 2024 at =
6:06=E2=80=AFPM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">try to run ar x on the .a file and see what o=
bjects it contains.<br>
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
<br>
<br>
</blockquote></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62626): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62626" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62626</a><br>
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

--000000000000cff2c50612679035--

