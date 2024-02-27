Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBABC5478C
	for <webhook@archiver.kernel.org>; Tue, 27 Feb 2024 15:40:52 +0000 (UTC)
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web10.15395.1709048447498410483
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Feb 2024 07:40:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EAhkOPuZ;
 spf=pass (domain: gmail.com, ip: 209.85.210.181, mailfrom: joel.winarske@gmail.com)
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6e46dcd8feaso1502414b3a.2
        for <yocto@lists.yoctoproject.org>; Tue, 27 Feb 2024 07:40:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709048447; x=1709653247; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/U8Vu4bbMI/qgvadtZt97VZHGmOHwZGul0fT4R0fQDw=;
        b=EAhkOPuZY4TjGUR+sOL4Midmcc/OITEl0vvIMUUc5taKQc1so8Af5i1lusKBq1XhnA
         LDiSklLBFfBJt4zw7ap5l9PWwegU8vmkU0lSCbG+1YXg9akRg8R+D3fyWKkSXGYz3+tS
         RmNw4lM1BaRV/SSTsQ/2lLyx25qkygY9uPNMbRehjs1TbJSfDzpc6/aFWZH0spSumW9U
         KfIzkRWrDo1bY4z1yFtKlUANrG5IAZ683xUr3O60zVPIp5pt2+zLCDm4JtLF6HrZlqnC
         AlMjy5XpCO46daRyWJ/U9BzR4XaH97tuVfygNHUwCcvGuoeov4BTkvFaoOb9m+ebTsqr
         JONw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709048447; x=1709653247;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/U8Vu4bbMI/qgvadtZt97VZHGmOHwZGul0fT4R0fQDw=;
        b=li3d77yVkhEBG31jQ2qjCh4qm9dZy6YusH1G7XH/l1Otj8hkrm/BJNBnX2v1zGnsfc
         wcbNBXFd5jTOI83DWz4s7UicsrMVHW5w93AiEZH/KaytCZv1o36uSfGMlUMxOcnd7riT
         tHb3J/L8cjEDXsvcjl2uXbUiTZthhoysCoHpaePgZejiCaHSPCzoQ+qKW0STeaU+kWx/
         3gn9dMf3a/G54IwRzoi8IvrJhK7k+GKWSSX02vfcyiLjF2YIa0Atgs2Mk5MvVoivF1RG
         qTtuvMAgaSOFdRA0U6Q2kSMlLKsj+jMpvlInUbGmISQwf2zwcpTgndc7OoI6QWuIVOJ9
         hzLA==
X-Gm-Message-State: AOJu0YxzNzGFOPHwsOspxCqIbkcdwJmY1eiZudhXjrbbYOZJpSP4irR4
	I93CuS0vJTOg9Kg+pt/muYg4kZBnAwB/Z6rfBxjzyKYBwT8Q2FFmXChB6twTThtVW6CplSEhOsh
	yjhFxqoTGLo6U+vRqctjuJwrMt5peajDjgE9x78el
X-Google-Smtp-Source: AGHT+IGa7QY8Raj2vaFYFtrHhiiy7rqXdreKJJlSv2bgfEXbR48h4tro4s7I0eVCseK0uRyygMJmdrIC32KO/RMf204=
X-Received: by 2002:a17:90a:53e4:b0:29a:9c5f:a8d2 with SMTP id
 y91-20020a17090a53e400b0029a9c5fa8d2mr7455209pjh.43.1709048446433; Tue, 27
 Feb 2024 07:40:46 -0800 (PST)
MIME-Version: 1.0
References: <CABKMkPK-m3T120viE08qTJ8pm1xpd+bhZNAgevnmkvvb3XAFmA@mail.gmail.com>
 <CABKMkPKWppU6dSNRMuwt_dhJM4g3M4RSsTWKqRzintbZWiuz0A@mail.gmail.com> <CAMKF1spwK3a8YyBEFnrUMjLRqv+e8zHtWACJiNYi5QWhBNsZjg@mail.gmail.com>
In-Reply-To: <CAMKF1spwK3a8YyBEFnrUMjLRqv+e8zHtWACJiNYi5QWhBNsZjg@mail.gmail.com>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Tue, 27 Feb 2024 07:40:35 -0800
Message-ID: <CABKMkP+0f8Ka3XN1FXxbT7ab03vOtZ=8kuMUTxd5HKEueF2nHQ@mail.gmail.com>
Subject: Re: [yocto] [kirkstone] dwarfsrcfiles + rust staticlib
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008dc53106125ed904"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Feb 2024 15:40:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62624

--0000000000008dc53106125ed904
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

`ar x` returns nothing.

$ ar t ./libtaffy_ffi.a
taffy_ffi-6a284b6b44182cb3.taffy_ffi.ab6ea036-cgu.0.rcgu.o
taffy_ffi-6a284b6b44182cb3.4001iepzo748wc7r.rcgu.o
taffy-7cbe31eff8600da4.taffy.328dd793-cgu.0.rcgu.o
slotmap-4965e51b30b65dec.slotmap.6af9b30d-cgu.0.rcgu.o
std.std.ffc53cd6-cgu.0.rcgu.o
std.std.ffc53cd6-cgu.1.rcgu.o
std.std.ffc53cd6-cgu.10.rcgu.o
std.std.ffc53cd6-cgu.11.rcgu.o
std.std.ffc53cd6-cgu.12.rcgu.o
std.std.ffc53cd6-cgu.13.rcgu.o
std.std.ffc53cd6-cgu.14.rcgu.o
std.std.ffc53cd6-cgu.15.rcgu.o
std.std.ffc53cd6-cgu.2.rcgu.o
std.std.ffc53cd6-cgu.3.rcgu.o
std.std.ffc53cd6-cgu.4.rcgu.o
std.std.ffc53cd6-cgu.5.rcgu.o
std.std.ffc53cd6-cgu.6.rcgu.o
std.std.ffc53cd6-cgu.7.rcgu.o
std.std.ffc53cd6-cgu.8.rcgu.o
std.std.ffc53cd6-cgu.9.rcgu.o
panic_unwind-6b59a4f45c60d735.panic_unwind.f600cc85-cgu.0.rcgu.o
panic_unwind-6b59a4f45c60d735.panic_unwind.f600cc85-cgu.1.rcgu.o
object-2d6fc44f598fbc25.object.40806be7-cgu.0.rcgu.o
object-2d6fc44f598fbc25.object.40806be7-cgu.1.rcgu.o
object-2d6fc44f598fbc25.object.40806be7-cgu.10.rcgu.o
object-2d6fc44f598fbc25.object.40806be7-cgu.11.rcgu.o
object-2d6fc44f598fbc25.object.40806be7-cgu.12.rcgu.o
object-2d6fc44f598fbc25.object.40806be7-cgu.13.rcgu.o
object-2d6fc44f598fbc25.object.40806be7-cgu.14.rcgu.o
object-2d6fc44f598fbc25.object.40806be7-cgu.15.rcgu.o
object-2d6fc44f598fbc25.object.40806be7-cgu.2.rcgu.o
object-2d6fc44f598fbc25.object.40806be7-cgu.3.rcgu.o
object-2d6fc44f598fbc25.object.40806be7-cgu.4.rcgu.o
object-2d6fc44f598fbc25.object.40806be7-cgu.5.rcgu.o
object-2d6fc44f598fbc25.object.40806be7-cgu.6.rcgu.o
object-2d6fc44f598fbc25.object.40806be7-cgu.7.rcgu.o
object-2d6fc44f598fbc25.object.40806be7-cgu.8.rcgu.o
object-2d6fc44f598fbc25.object.40806be7-cgu.9.rcgu.o
memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.0.rcgu.o
memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.1.rcgu.o
memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.10.rcgu.o
memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.11.rcgu.o
memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.12.rcgu.o
memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.13.rcgu.o
memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.14.rcgu.o
memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.15.rcgu.o
memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.2.rcgu.o
memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.3.rcgu.o
memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.4.rcgu.o
memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.5.rcgu.o
memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.6.rcgu.o
memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.7.rcgu.o
memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.8.rcgu.o
memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.9.rcgu.o
addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.0.rcgu.o
addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.1.rcgu.o
addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.2.rcgu.o
addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.3.rcgu.o
addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.4.rcgu.o
addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.5.rcgu.o
addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.6.rcgu.o
addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.7.rcgu.o
addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.8.rcgu.o
addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.9.rcgu.o
gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.0.rcgu.o
gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.1.rcgu.o
gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.10.rcgu.o
gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.11.rcgu.o
gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.12.rcgu.o
gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.13.rcgu.o
gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.14.rcgu.o
gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.15.rcgu.o
gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.2.rcgu.o
gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.3.rcgu.o
gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.4.rcgu.o
gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.5.rcgu.o
gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.6.rcgu.o
gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.7.rcgu.o
gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.8.rcgu.o
gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.9.rcgu.o
rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.0.rcgu.o
rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.1.rcgu.o
rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.10.rcgu.o
rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.11.rcgu.o
rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.12.rcgu.o
rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.13.rcgu.o
rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.14.rcgu.o
rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.15.rcgu.o
rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.2.rcgu.o
rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.3.rcgu.o
rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.4.rcgu.o
rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.5.rcgu.o
rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.6.rcgu.o
rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.7.rcgu.o
rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.8.rcgu.o
rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.9.rcgu.o
std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.0.rcgu.o
std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.1.rcgu.o
std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.10.rcgu.o
std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.11.rcgu.o
std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.12.rcgu.o
std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.13.rcgu.o
std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.14.rcgu.o
std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.15.rcgu.o
std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.2.rcgu.o
std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.3.rcgu.o
std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.4.rcgu.o
std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.5.rcgu.o
std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.6.rcgu.o
std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.7.rcgu.o
std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.8.rcgu.o
std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.9.rcgu.o
hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-cgu.0.rcgu.o
hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-cgu.1.rcgu.o
hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-cgu.2.rcgu.o
miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.0.rcgu.o
miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.1.rcgu.o
miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.10.rcgu.o
miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.11.rcgu.o
miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.12.rcgu.o
miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.13.rcgu.o
miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.14.rcgu.o
miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.15.rcgu.o
miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.2.rcgu.o
miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.3.rcgu.o
miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.4.rcgu.o
miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.5.rcgu.o
miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.6.rcgu.o
miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.7.rcgu.o
miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.8.rcgu.o
miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.9.rcgu.o
adler-f6f71ffc86226e5d.adler.1084079f-cgu.0.rcgu.o
adler-f6f71ffc86226e5d.adler.1084079f-cgu.1.rcgu.o
adler-f6f71ffc86226e5d.adler.1084079f-cgu.2.rcgu.o
adler-f6f71ffc86226e5d.adler.1084079f-cgu.3.rcgu.o
adler-f6f71ffc86226e5d.adler.1084079f-cgu.4.rcgu.o
adler-f6f71ffc86226e5d.adler.1084079f-cgu.5.rcgu.o
rustc_std_workspace_alloc-8bcd9c28c85ed0b6.rustc_std_workspace_alloc.9988bf=
24-cgu.0.rcgu.o
unwind-88f2cb0d7ef20338.unwind.efe615ca-cgu.0.rcgu.o
cfg_if-37cc76b65d413337.cfg_if.98e3614e-cgu.0.rcgu.o
libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.0.rcgu.o
libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.1.rcgu.o
libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.10.rcgu.o
libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.11.rcgu.o
libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.2.rcgu.o
libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.3.rcgu.o
libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.4.rcgu.o
libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.5.rcgu.o
libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.6.rcgu.o
libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.7.rcgu.o
libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.8.rcgu.o
libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.9.rcgu.o
grid-ab7f7f3e4cbbc5b1.grid.5b3fc95f-cgu.0.rcgu.o
num_traits-fa4ea3438d1893c0.num_traits.fd22c02e-cgu.0.rcgu.o
alloc-f872d0211dbe2026.alloc.53eb9598-cgu.0.rcgu.o
alloc-f872d0211dbe2026.alloc.53eb9598-cgu.1.rcgu.o
alloc-f872d0211dbe2026.alloc.53eb9598-cgu.10.rcgu.o
alloc-f872d0211dbe2026.alloc.53eb9598-cgu.11.rcgu.o
alloc-f872d0211dbe2026.alloc.53eb9598-cgu.12.rcgu.o
alloc-f872d0211dbe2026.alloc.53eb9598-cgu.13.rcgu.o
alloc-f872d0211dbe2026.alloc.53eb9598-cgu.14.rcgu.o
alloc-f872d0211dbe2026.alloc.53eb9598-cgu.15.rcgu.o
alloc-f872d0211dbe2026.alloc.53eb9598-cgu.2.rcgu.o
alloc-f872d0211dbe2026.alloc.53eb9598-cgu.3.rcgu.o
alloc-f872d0211dbe2026.alloc.53eb9598-cgu.4.rcgu.o
alloc-f872d0211dbe2026.alloc.53eb9598-cgu.5.rcgu.o
alloc-f872d0211dbe2026.alloc.53eb9598-cgu.6.rcgu.o
alloc-f872d0211dbe2026.alloc.53eb9598-cgu.7.rcgu.o
alloc-f872d0211dbe2026.alloc.53eb9598-cgu.8.rcgu.o
alloc-f872d0211dbe2026.alloc.53eb9598-cgu.9.rcgu.o
rustc_std_workspace_core-a173c240a23b696c.rustc_std_workspace_core.7597cc26=
-cgu.0.rcgu.o
core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.0.rcgu.o
core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.1.rcgu.o
core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.10.rcgu.o
core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.11.rcgu.o
core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.12.rcgu.o
core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.13.rcgu.o
core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.14.rcgu.o
core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.15.rcgu.o
core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.2.rcgu.o
core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.3.rcgu.o
core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.4.rcgu.o
core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.5.rcgu.o
core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.6.rcgu.o
core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.7.rcgu.o
core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.8.rcgu.o
core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.9.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.0.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.1.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.10.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.100.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.101.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.102.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.103.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.104.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.105.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.106.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.107.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.108.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.109.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.11.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.110.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.111.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.112.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.113.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.114.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.115.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.116.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.117.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.118.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.119.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.12.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.120.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.121.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.122.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.123.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.124.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.125.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.126.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.127.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.128.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.129.rcgu.=
o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.13.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.14.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.15.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.16.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.17.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.18.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.19.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.2.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.20.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.21.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.22.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.23.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.24.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.25.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.26.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.27.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.28.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.29.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.3.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.30.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.31.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.32.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.33.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.34.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.35.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.36.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.37.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.38.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.39.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.4.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.40.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.41.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.42.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.43.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.44.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.45.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.46.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.47.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.48.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.49.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.5.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.50.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.51.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.52.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.53.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.54.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.55.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.56.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.57.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.58.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.59.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.6.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.60.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.61.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.62.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.63.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.64.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.65.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.66.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.67.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.68.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.69.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.7.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.70.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.71.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.72.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.73.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.74.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.75.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.76.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.77.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.78.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.79.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.8.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.80.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.81.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.82.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.83.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.84.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.85.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.86.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.87.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.88.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.89.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.9.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.90.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.91.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.92.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.93.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.94.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.95.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.96.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.97.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.98.rcgu.o
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.99.rcgu.o



On Sat, Feb 24, 2024 at 6:06=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wrote=
:

> try to run ar x on the .a file and see what objects it contains.
>
> On Fri, Feb 23, 2024 at 5:51=E2=80=AFPM Joel Winarske <joel.winarske@gmai=
l.com>
> wrote:
> >
> > Running readelf -h on the file does work and it shows that it is indeed
> the correct machine architecture
> >
> > ELF Header:
> >   Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00
> >   Class:                             ELF64
> >   Data:                              2's complement, little endian
> >   Version:                           1 (current)
> >   OS/ABI:                            UNIX - System V
> >   ABI Version:                       0
> >   Type:                              REL (Relocatable file)
> >   Machine:                           AArch64
> >   Version:                           0x1
> >   Entry point address:               0x0
> >   Start of program headers:          0 (bytes into file)
> >   Start of section headers:          201744 (bytes into file)
> >   Flags:                             0x0
> >   Size of this header:               64 (bytes)
> >   Size of program headers:           0 (bytes)
> >   Number of program headers:         0
> >   Size of section headers:           64 (bytes)
> >   Number of section headers:         165
> >   Section header string table index: 1
> >
> >
> > On Fri, Feb 23, 2024 at 5:40=E2=80=AFPM Joel Winarske <joel.winarske@gm=
ail.com>
> wrote:
> >>
> >> I'm hitting qa issue when attempting to install a archive file built
> with Rust:
> >>
> >> dwarfsrcfiles:
> /home/joel/agl/raspberrypi4/tmp/work/aarch64-agl-linux/rive-taffy-ffi/0.3=
.0-r0/package/usr/lib/taffy_ffi/libtaffy_ffi.a:
> not a valid ELF file
> >>
> >> I can link this same archive file with C code and the executable runs.
> It's a valid archive.
> >>
> >> Any suggestions?
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#62594):
> https://lists.yoctoproject.org/g/yocto/message/62594
> > Mute This Topic: https://lists.yoctoproject.org/mt/104540813/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--0000000000008dc53106125ed904
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>`ar x` returns nothing.<br></div><div><br></div><div>=
$ ar t ./libtaffy_ffi.a <br>taffy_ffi-6a284b6b44182cb3.taffy_ffi.ab6ea036-c=
gu.0.rcgu.o<br>taffy_ffi-6a284b6b44182cb3.4001iepzo748wc7r.rcgu.o<br>taffy-=
7cbe31eff8600da4.taffy.328dd793-cgu.0.rcgu.o<br>slotmap-4965e51b30b65dec.sl=
otmap.6af9b30d-cgu.0.rcgu.o<br>std.std.ffc53cd6-cgu.0.rcgu.o<br>std.std.ffc=
53cd6-cgu.1.rcgu.o<br>std.std.ffc53cd6-cgu.10.rcgu.o<br>std.std.ffc53cd6-cg=
u.11.rcgu.o<br>std.std.ffc53cd6-cgu.12.rcgu.o<br>std.std.ffc53cd6-cgu.13.rc=
gu.o<br>std.std.ffc53cd6-cgu.14.rcgu.o<br>std.std.ffc53cd6-cgu.15.rcgu.o<br=
>std.std.ffc53cd6-cgu.2.rcgu.o<br>std.std.ffc53cd6-cgu.3.rcgu.o<br>std.std.=
ffc53cd6-cgu.4.rcgu.o<br>std.std.ffc53cd6-cgu.5.rcgu.o<br>std.std.ffc53cd6-=
cgu.6.rcgu.o<br>std.std.ffc53cd6-cgu.7.rcgu.o<br>std.std.ffc53cd6-cgu.8.rcg=
u.o<br>std.std.ffc53cd6-cgu.9.rcgu.o<br>panic_unwind-6b59a4f45c60d735.panic=
_unwind.f600cc85-cgu.0.rcgu.o<br>panic_unwind-6b59a4f45c60d735.panic_unwind=
.f600cc85-cgu.1.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.0.rcg=
u.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.1.rcgu.o<br>object-2d6fc=
44f598fbc25.object.40806be7-cgu.10.rcgu.o<br>object-2d6fc44f598fbc25.object=
.40806be7-cgu.11.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.12.r=
cgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.13.rcgu.o<br>object-2d=
6fc44f598fbc25.object.40806be7-cgu.14.rcgu.o<br>object-2d6fc44f598fbc25.obj=
ect.40806be7-cgu.15.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.2=
.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.3.rcgu.o<br>object-2=
d6fc44f598fbc25.object.40806be7-cgu.4.rcgu.o<br>object-2d6fc44f598fbc25.obj=
ect.40806be7-cgu.5.rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.6.=
rcgu.o<br>object-2d6fc44f598fbc25.object.40806be7-cgu.7.rcgu.o<br>object-2d=
6fc44f598fbc25.object.40806be7-cgu.8.rcgu.o<br>object-2d6fc44f598fbc25.obje=
ct.40806be7-cgu.9.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.0.r=
cgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.1.rcgu.o<br>memchr-c0d=
6e4e574632eeb.memchr.af0f6cf3-cgu.10.rcgu.o<br>memchr-c0d6e4e574632eeb.memc=
hr.af0f6cf3-cgu.11.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.12=
.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.13.rcgu.o<br>memchr-=
c0d6e4e574632eeb.memchr.af0f6cf3-cgu.14.rcgu.o<br>memchr-c0d6e4e574632eeb.m=
emchr.af0f6cf3-cgu.15.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu=
.2.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.3.rcgu.o<br>memchr=
-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.4.rcgu.o<br>memchr-c0d6e4e574632eeb.m=
emchr.af0f6cf3-cgu.5.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.=
6.rcgu.o<br>memchr-c0d6e4e574632eeb.memchr.af0f6cf3-cgu.7.rcgu.o<br>memchr-=
c0d6e4e574632eeb.memchr.af0f6cf3-cgu.8.rcgu.o<br>memchr-c0d6e4e574632eeb.me=
mchr.af0f6cf3-cgu.9.rcgu.o<br>addr2line-b038aec7c65acee8.addr2line.b9ae8a32=
-cgu.0.rcgu.o<br>addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.1.rcgu.o=
<br>addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.2.rcgu.o<br>addr2line=
-b038aec7c65acee8.addr2line.b9ae8a32-cgu.3.rcgu.o<br>addr2line-b038aec7c65a=
cee8.addr2line.b9ae8a32-cgu.4.rcgu.o<br>addr2line-b038aec7c65acee8.addr2lin=
e.b9ae8a32-cgu.5.rcgu.o<br>addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cg=
u.6.rcgu.o<br>addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.7.rcgu.o<br=
>addr2line-b038aec7c65acee8.addr2line.b9ae8a32-cgu.8.rcgu.o<br>addr2line-b0=
38aec7c65acee8.addr2line.b9ae8a32-cgu.9.rcgu.o<br>gimli-7cd01052d9283c69.gi=
mli.7f321bcb-cgu.0.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.1.rc=
gu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.10.rcgu.o<br>gimli-7cd010=
52d9283c69.gimli.7f321bcb-cgu.11.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f3=
21bcb-cgu.12.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.13.rcgu.o<=
br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.14.rcgu.o<br>gimli-7cd01052d92=
83c69.gimli.7f321bcb-cgu.15.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb=
-cgu.2.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.3.rcgu.o<br>giml=
i-7cd01052d9283c69.gimli.7f321bcb-cgu.4.rcgu.o<br>gimli-7cd01052d9283c69.gi=
mli.7f321bcb-cgu.5.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.6.rc=
gu.o<br>gimli-7cd01052d9283c69.gimli.7f321bcb-cgu.7.rcgu.o<br>gimli-7cd0105=
2d9283c69.gimli.7f321bcb-cgu.8.rcgu.o<br>gimli-7cd01052d9283c69.gimli.7f321=
bcb-cgu.9.rcgu.o<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b=
-cgu.0.rcgu.o<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cg=
u.1.rcgu.o<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.1=
0.rcgu.o<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.11.=
rcgu.o<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.12.rc=
gu.o<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.13.rcgu=
.o<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.14.rcgu.o=
<br>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.15.rcgu.o<b=
r>rustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.2.rcgu.o<br>r=
ustc_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.3.rcgu.o<br>rust=
c_demangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.4.rcgu.o<br>rustc_d=
emangle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.5.rcgu.o<br>rustc_dema=
ngle-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.6.rcgu.o<br>rustc_demangl=
e-e53ade3145326c47.rustc_demangle.625b5e5b-cgu.7.rcgu.o<br>rustc_demangle-e=
53ade3145326c47.rustc_demangle.625b5e5b-cgu.8.rcgu.o<br>rustc_demangle-e53a=
de3145326c47.rustc_demangle.625b5e5b-cgu.9.rcgu.o<br>std_detect-e27f75a393d=
69b0c.std_detect.6661e28d-cgu.0.rcgu.o<br>std_detect-e27f75a393d69b0c.std_d=
etect.6661e28d-cgu.1.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6661e=
28d-cgu.10.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.11=
.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.12.rcgu.o<br=
>std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.13.rcgu.o<br>std_detec=
t-e27f75a393d69b0c.std_detect.6661e28d-cgu.14.rcgu.o<br>std_detect-e27f75a3=
93d69b0c.std_detect.6661e28d-cgu.15.rcgu.o<br>std_detect-e27f75a393d69b0c.s=
td_detect.6661e28d-cgu.2.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6=
661e28d-cgu.3.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu=
.4.rcgu.o<br>std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.5.rcgu.o<b=
r>std_detect-e27f75a393d69b0c.std_detect.6661e28d-cgu.6.rcgu.o<br>std_detec=
t-e27f75a393d69b0c.std_detect.6661e28d-cgu.7.rcgu.o<br>std_detect-e27f75a39=
3d69b0c.std_detect.6661e28d-cgu.8.rcgu.o<br>std_detect-e27f75a393d69b0c.std=
_detect.6661e28d-cgu.9.rcgu.o<br>hashbrown-bdaa07c171d4ff64.hashbrown.53dbd=
1a6-cgu.0.rcgu.o<br>hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-cgu.1.rcg=
u.o<br>hashbrown-bdaa07c171d4ff64.hashbrown.53dbd1a6-cgu.2.rcgu.o<br>miniz_=
oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.0.rcgu.o<br>miniz_oxide-250=
b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.1.rcgu.o<br>miniz_oxide-250b3f59209e=
9bec.miniz_oxide.bd1ce1dd-cgu.10.rcgu.o<br>miniz_oxide-250b3f59209e9bec.min=
iz_oxide.bd1ce1dd-cgu.11.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide=
.bd1ce1dd-cgu.12.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1d=
d-cgu.13.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.14=
.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.15.rcgu.o<=
br>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.2.rcgu.o<br>miniz_=
oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.3.rcgu.o<br>miniz_oxide-250=
b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.4.rcgu.o<br>miniz_oxide-250b3f59209e=
9bec.miniz_oxide.bd1ce1dd-cgu.5.rcgu.o<br>miniz_oxide-250b3f59209e9bec.mini=
z_oxide.bd1ce1dd-cgu.6.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.b=
d1ce1dd-cgu.7.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-c=
gu.8.rcgu.o<br>miniz_oxide-250b3f59209e9bec.miniz_oxide.bd1ce1dd-cgu.9.rcgu=
.o<br>adler-f6f71ffc86226e5d.adler.1084079f-cgu.0.rcgu.o<br>adler-f6f71ffc8=
6226e5d.adler.1084079f-cgu.1.rcgu.o<br>adler-f6f71ffc86226e5d.adler.1084079=
f-cgu.2.rcgu.o<br>adler-f6f71ffc86226e5d.adler.1084079f-cgu.3.rcgu.o<br>adl=
er-f6f71ffc86226e5d.adler.1084079f-cgu.4.rcgu.o<br>adler-f6f71ffc86226e5d.a=
dler.1084079f-cgu.5.rcgu.o<br>rustc_std_workspace_alloc-8bcd9c28c85ed0b6.ru=
stc_std_workspace_alloc.9988bf24-cgu.0.rcgu.o<br>unwind-88f2cb0d7ef20338.un=
wind.efe615ca-cgu.0.rcgu.o<br>cfg_if-37cc76b65d413337.cfg_if.98e3614e-cgu.0=
.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.0.rcgu.o<br>libc-ed8f6a4=
dbcdd053e.libc.7f784050-cgu.1.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.7f784050=
-cgu.10.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.11.rcgu.o<br>libc=
-ed8f6a4dbcdd053e.libc.7f784050-cgu.2.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.=
7f784050-cgu.3.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.4.rcgu.o<b=
r>libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.5.rcgu.o<br>libc-ed8f6a4dbcdd053e=
.libc.7f784050-cgu.6.rcgu.o<br>libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.7.rc=
gu.o<br>libc-ed8f6a4dbcdd053e.libc.7f784050-cgu.8.rcgu.o<br>libc-ed8f6a4dbc=
dd053e.libc.7f784050-cgu.9.rcgu.o<br>grid-ab7f7f3e4cbbc5b1.grid.5b3fc95f-cg=
u.0.rcgu.o<br>num_traits-fa4ea3438d1893c0.num_traits.fd22c02e-cgu.0.rcgu.o<=
br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.0.rcgu.o<br>alloc-f872d0211dbe=
2026.alloc.53eb9598-cgu.1.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-c=
gu.10.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.11.rcgu.o<br>allo=
c-f872d0211dbe2026.alloc.53eb9598-cgu.12.rcgu.o<br>alloc-f872d0211dbe2026.a=
lloc.53eb9598-cgu.13.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.14=
.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.15.rcgu.o<br>alloc-f87=
2d0211dbe2026.alloc.53eb9598-cgu.2.rcgu.o<br>alloc-f872d0211dbe2026.alloc.5=
3eb9598-cgu.3.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.4.rcgu.o<=
br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.5.rcgu.o<br>alloc-f872d0211dbe=
2026.alloc.53eb9598-cgu.6.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-c=
gu.7.rcgu.o<br>alloc-f872d0211dbe2026.alloc.53eb9598-cgu.8.rcgu.o<br>alloc-=
f872d0211dbe2026.alloc.53eb9598-cgu.9.rcgu.o<br>rustc_std_workspace_core-a1=
73c240a23b696c.rustc_std_workspace_core.7597cc26-cgu.0.rcgu.o<br>core-ec2ee=
475f0bbc2be.core.ed6d5d31-cgu.0.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d=
31-cgu.1.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.10.rcgu.o<br>cor=
e-ec2ee475f0bbc2be.core.ed6d5d31-cgu.11.rcgu.o<br>core-ec2ee475f0bbc2be.cor=
e.ed6d5d31-cgu.12.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.13.rcgu=
.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.14.rcgu.o<br>core-ec2ee475f0b=
bc2be.core.ed6d5d31-cgu.15.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cg=
u.2.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.3.rcgu.o<br>core-ec2e=
e475f0bbc2be.core.ed6d5d31-cgu.4.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5=
d31-cgu.5.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.6.rcgu.o<br>cor=
e-ec2ee475f0bbc2be.core.ed6d5d31-cgu.7.rcgu.o<br>core-ec2ee475f0bbc2be.core=
.ed6d5d31-cgu.8.rcgu.o<br>core-ec2ee475f0bbc2be.core.ed6d5d31-cgu.9.rcgu.o<=
br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.0.rcgu=
.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.1.r=
cgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.=
10.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-=
cgu.100.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade=
58f2-cgu.101.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins=
.2ade58f2-cgu.102.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_bui=
ltins.2ade58f2-cgu.103.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compile=
r_builtins.2ade58f2-cgu.104.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.co=
mpiler_builtins.2ade58f2-cgu.105.rcgu.o<br>compiler_builtins-8cb3deaee7783e=
49.compiler_builtins.2ade58f2-cgu.106.rcgu.o<br>compiler_builtins-8cb3deaee=
7783e49.compiler_builtins.2ade58f2-cgu.107.rcgu.o<br>compiler_builtins-8cb3=
deaee7783e49.compiler_builtins.2ade58f2-cgu.108.rcgu.o<br>compiler_builtins=
-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.109.rcgu.o<br>compiler_bui=
ltins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.11.rcgu.o<br>compiler=
_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.110.rcgu.o<br>com=
piler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.111.rcgu.o<b=
r>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.112.rcg=
u.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.11=
3.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-c=
gu.114.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade5=
8f2-cgu.115.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.=
2ade58f2-cgu.116.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_buil=
tins.2ade58f2-cgu.117.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler=
_builtins.2ade58f2-cgu.118.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.com=
piler_builtins.2ade58f2-cgu.119.rcgu.o<br>compiler_builtins-8cb3deaee7783e4=
9.compiler_builtins.2ade58f2-cgu.12.rcgu.o<br>compiler_builtins-8cb3deaee77=
83e49.compiler_builtins.2ade58f2-cgu.120.rcgu.o<br>compiler_builtins-8cb3de=
aee7783e49.compiler_builtins.2ade58f2-cgu.121.rcgu.o<br>compiler_builtins-8=
cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.122.rcgu.o<br>compiler_built=
ins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.123.rcgu.o<br>compiler_=
builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.124.rcgu.o<br>comp=
iler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.125.rcgu.o<br=
>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.126.rcgu=
.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.127=
.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cg=
u.128.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58=
f2-cgu.129.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2=
ade58f2-cgu.13.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builti=
ns.2ade58f2-cgu.14.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_bu=
iltins.2ade58f2-cgu.15.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compile=
r_builtins.2ade58f2-cgu.16.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.com=
piler_builtins.2ade58f2-cgu.17.rcgu.o<br>compiler_builtins-8cb3deaee7783e49=
.compiler_builtins.2ade58f2-cgu.18.rcgu.o<br>compiler_builtins-8cb3deaee778=
3e49.compiler_builtins.2ade58f2-cgu.19.rcgu.o<br>compiler_builtins-8cb3deae=
e7783e49.compiler_builtins.2ade58f2-cgu.2.rcgu.o<br>compiler_builtins-8cb3d=
eaee7783e49.compiler_builtins.2ade58f2-cgu.20.rcgu.o<br>compiler_builtins-8=
cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.21.rcgu.o<br>compiler_builti=
ns-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.22.rcgu.o<br>compiler_bu=
iltins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.23.rcgu.o<br>compile=
r_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.24.rcgu.o<br>com=
piler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.25.rcgu.o<br=
>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.26.rcgu.=
o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.27.r=
cgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.=
28.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-=
cgu.29.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade5=
8f2-cgu.3.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2a=
de58f2-cgu.30.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtin=
s.2ade58f2-cgu.31.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_bui=
ltins.2ade58f2-cgu.32.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler=
_builtins.2ade58f2-cgu.33.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.comp=
iler_builtins.2ade58f2-cgu.34.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.=
compiler_builtins.2ade58f2-cgu.35.rcgu.o<br>compiler_builtins-8cb3deaee7783=
e49.compiler_builtins.2ade58f2-cgu.36.rcgu.o<br>compiler_builtins-8cb3deaee=
7783e49.compiler_builtins.2ade58f2-cgu.37.rcgu.o<br>compiler_builtins-8cb3d=
eaee7783e49.compiler_builtins.2ade58f2-cgu.38.rcgu.o<br>compiler_builtins-8=
cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.39.rcgu.o<br>compiler_builti=
ns-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.4.rcgu.o<br>compiler_bui=
ltins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.40.rcgu.o<br>compiler=
_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.41.rcgu.o<br>comp=
iler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.42.rcgu.o<br>=
compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.43.rcgu.o=
<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.44.rc=
gu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.4=
5.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-c=
gu.46.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58=
f2-cgu.47.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2a=
de58f2-cgu.48.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtin=
s.2ade58f2-cgu.49.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_bui=
ltins.2ade58f2-cgu.5.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_=
builtins.2ade58f2-cgu.50.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compi=
ler_builtins.2ade58f2-cgu.51.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.c=
ompiler_builtins.2ade58f2-cgu.52.rcgu.o<br>compiler_builtins-8cb3deaee7783e=
49.compiler_builtins.2ade58f2-cgu.53.rcgu.o<br>compiler_builtins-8cb3deaee7=
783e49.compiler_builtins.2ade58f2-cgu.54.rcgu.o<br>compiler_builtins-8cb3de=
aee7783e49.compiler_builtins.2ade58f2-cgu.55.rcgu.o<br>compiler_builtins-8c=
b3deaee7783e49.compiler_builtins.2ade58f2-cgu.56.rcgu.o<br>compiler_builtin=
s-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.57.rcgu.o<br>compiler_bui=
ltins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.58.rcgu.o<br>compiler=
_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.59.rcgu.o<br>comp=
iler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.6.rcgu.o<br>c=
ompiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.60.rcgu.o<=
br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.61.rcg=
u.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.62=
.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cg=
u.63.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f=
2-cgu.64.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ad=
e58f2-cgu.65.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins=
.2ade58f2-cgu.66.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_buil=
tins.2ade58f2-cgu.67.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_=
builtins.2ade58f2-cgu.68.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compi=
ler_builtins.2ade58f2-cgu.69.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.c=
ompiler_builtins.2ade58f2-cgu.7.rcgu.o<br>compiler_builtins-8cb3deaee7783e4=
9.compiler_builtins.2ade58f2-cgu.70.rcgu.o<br>compiler_builtins-8cb3deaee77=
83e49.compiler_builtins.2ade58f2-cgu.71.rcgu.o<br>compiler_builtins-8cb3dea=
ee7783e49.compiler_builtins.2ade58f2-cgu.72.rcgu.o<br>compiler_builtins-8cb=
3deaee7783e49.compiler_builtins.2ade58f2-cgu.73.rcgu.o<br>compiler_builtins=
-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.74.rcgu.o<br>compiler_buil=
tins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.75.rcgu.o<br>compiler_=
builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.76.rcgu.o<br>compi=
ler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.77.rcgu.o<br>c=
ompiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.78.rcgu.o<=
br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.79.rcg=
u.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.8.=
rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu=
.80.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2=
-cgu.81.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade=
58f2-cgu.82.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.=
2ade58f2-cgu.83.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_built=
ins.2ade58f2-cgu.84.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_b=
uiltins.2ade58f2-cgu.85.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compil=
er_builtins.2ade58f2-cgu.86.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.co=
mpiler_builtins.2ade58f2-cgu.87.rcgu.o<br>compiler_builtins-8cb3deaee7783e4=
9.compiler_builtins.2ade58f2-cgu.88.rcgu.o<br>compiler_builtins-8cb3deaee77=
83e49.compiler_builtins.2ade58f2-cgu.89.rcgu.o<br>compiler_builtins-8cb3dea=
ee7783e49.compiler_builtins.2ade58f2-cgu.9.rcgu.o<br>compiler_builtins-8cb3=
deaee7783e49.compiler_builtins.2ade58f2-cgu.90.rcgu.o<br>compiler_builtins-=
8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.91.rcgu.o<br>compiler_built=
ins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.92.rcgu.o<br>compiler_b=
uiltins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.93.rcgu.o<br>compil=
er_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.94.rcgu.o<br>co=
mpiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.95.rcgu.o<b=
r>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.96.rcgu=
.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu.97.=
rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2-cgu=
.98.rcgu.o<br>compiler_builtins-8cb3deaee7783e49.compiler_builtins.2ade58f2=
-cgu.99.rcgu.o<br></div><div><br></div><br></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Feb 24, 2024 at 6:06=E2=
=80=AFPM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">try to run ar x on the .a file and see what objects it contains.<br>
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
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#62594): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/62594" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/62594</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10454081=
3/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/104540813/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--0000000000008dc53106125ed904--

