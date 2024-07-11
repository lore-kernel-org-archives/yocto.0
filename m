Return-Path: <b.hutchman@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF90C3DA49
	for <webhook@archiver.kernel.org>; Thu, 11 Jul 2024 12:34:21 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web10.10631.1720701253095479998
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Jul 2024 05:34:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gWLRggp5;
 spf=pass (domain: gmail.com, ip: 209.85.216.45, mailfrom: b.hutchman@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2c97ff39453so658124a91.0
        for <yocto@lists.yoctoproject.org>; Thu, 11 Jul 2024 05:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720701252; x=1721306052; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ar8veQT8xmQBqjGYd3AasjXWTDgBRq+vaUoMaQR6EbY=;
        b=gWLRggp5ye0OcMVabHYPRgwdkdQ4dans6o31LRmiNceB9cAOALJ+sTVPnj0Hqrk9hh
         Chj7ECcgLV2c+byoDCiRNODBp+sveDRWlnTO3wVhtZJyHuaXE2y/pZYpsjBvMZWtWBXK
         9joQkbqm23qw041KqzJe1MS+bLeVoh2rEa6lBkm77Fob7LJvkedq1B0BaEG1fLkrpHi2
         ROnLjDxUTcDz2ZJfUWumdRarWmsxjxRFY6ugX1dJ03rF1Iu1McaTUNpU/0ZrBMY/DtdY
         ivSV5fDI/1MKefvn9GvW2+oSYzUV4vu+UFYM8TEac9NRiIOIzgD46uQUABTzbgLUeHdW
         azig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720701252; x=1721306052;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ar8veQT8xmQBqjGYd3AasjXWTDgBRq+vaUoMaQR6EbY=;
        b=mYmJqYFUxueLBzQunSKi2E7NgQ3vF4o8vLNChw3tx1RDiXCEcY6hufBbxCrJJS1wbM
         rwaRLaBBmFppDowyNh54jCGVjLIlUGmt5c8FDEGwwoIYZeJUe1LtiXWZeU5/JWx/8LnT
         dasoaQtTirpSNNMd1At+6dy7D7cIJprx0x+dWlKtE7XpUj4eKRwow/RaHRW+AHPIuVIx
         SgjuQ/S70gY3sDqstt0KQkC7MSR4QewlAwkw3MtS93zAVgesIPAJ/a7IGk7HTNShcyT8
         Vnu0nmH/Ej3gDqf/y+GTkZiLgfbk1oCOgQgFRityJaYECDqUgE5yN1pTGPf5006ZAPhq
         vSHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXrQ2wfqFdBf/x/4/T6a0HoaM850eNfZiGeHm75DZJ9D8NiQt4QOv+0SJeDgw/mNQeApxpx3ac3l2/LOLiutYm+5YDUZg/x7wx8biEb
X-Gm-Message-State: AOJu0YwCU0DNC/Uzj+7MzIcUFc8HTkLIaicUfhSeDVsG3djxwNvNnnuc
	aXLdy9ftXisYGr/SwXroVXOpPUwnrTuVoTVK+1hd3NdjGjGm6t0I17ljCnsuZAmzne42cbI1k4u
	ZJDkB6jEpLMzNN/NBDo7ByIGF8zQuvBtK
X-Google-Smtp-Source: AGHT+IHyEtMxDLog/HVOsjdTn5ln8jJuGTNZjOoHv5oddzGPUwHoVfT7n1MVBgAe++rzphKVcVzDBec5EwipS5mj1uA=
X-Received: by 2002:a17:90a:f491:b0:2c9:7fba:d88b with SMTP id
 98e67ed59e1d1-2ca35c27e0dmr7482551a91.14.1720701252173; Thu, 11 Jul 2024
 05:34:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAFZh4h_wh01sjAar-QqHsQ=KY4zLjmpmXuJc83OeYue7YyYW3A@mail.gmail.com>
In-Reply-To: <CAFZh4h_wh01sjAar-QqHsQ=KY4zLjmpmXuJc83OeYue7YyYW3A@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
Date: Thu, 11 Jul 2024 08:33:59 -0400
Message-ID: <CAFZh4h9iaCGdnDhxik9Qtq82f0MGU2eL+8nBa8qoCCJrH-xsGQ@mail.gmail.com>
Subject: Re: Using lttng-ust 2.13.6 from Yocto Kirkstone and getting weird
 segfault saying strlen_asimd.S can't be found.
To: lttng-dev@lists.lttng.org, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e688f2061cf7faae"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Jul 2024 12:34:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63470

--000000000000e688f2061cf7faae
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 10, 2024 at 9:53=E2=80=AFPM Brian Hutchinson <b.hutchman@gmail.=
com>
wrote:

> Hi,
>
> I'm getting a weird segfault when I compile in a lttng-ust tracepoint int=
o
> my application.
>
> I'm able to run the lttng-ust hello_world example just fine on my platfor=
m
> which one would think should prove everything out, but when I use the exa=
ct
> same hello world trace provider and link it into my multi-threadded app a=
nd
> simply call:
>
> lttng_ust_tracepoint(hello_world, my_first_tracepoint, 23,               =
          "hi there!");
>
> I get a segfault.
>
> Background.  I'm on aarch64 platform (imx8mm-lpddr4-evk) with sdk (gcc
> 11.4 glibc 2.35) and rootfs generated from Yocto Kirkstone 4.0.18.  Built
> lttng-tools (2.13.9) and lttng-ust (2.13.6) from yocto recipe.  Built
> out-of-tree kernel modules for lttng-modules (2.13.9) and I'm on kernel
> 6.1.38.
>
> If I do a backtrace with gdb on the core this is what I see:
>
> GNU gdb (GDB) 11.2
> Copyright (C) 2022 Free Software Foundation, Inc.
> License GPLv3+: GNU GPL version 3 or later <
> http://gnu.org/licenses/gpl.html>
> This is free software: you are free to change and redistribute it.
> There is NO WARRANTY, to the extent permitted by law.
> Type "show copying" and "show warranty" for details.
> This GDB was configured as "aarch64-poky-linux".
> Type "show configuration" for configuration details.
> For bug reporting instructions, please see:
> <https://www.gnu.org/software/gdb/bugs/>.
> Find the GDB manual and other documentation resources online at:
>    <http://www.gnu.org/software/gdb/documentation/>.
>
> For help, type "help".
> Type "apropos word" to search for commands related to "word"...
> Reading symbols from ./my_app...
>
> warning: core file may not match specified executable file.
> [New LWP 757]
> [New LWP 759]
> [New LWP 758]
> [Thread debugging using libthread_db enabled]
> Using host libthread_db library "/lib/libthread_db.so.1".
> Core was generated by `./my_app'.
> Program terminated with signal SIGSEGV, Segmentation fault.
> #0  __strlen_asimd () at ../sysdeps/aarch64/multiarch/strlen_asimd.S:96
> 96      ../sysdeps/aarch64/multiarch/strlen_asimd.S: No such file or
> directory.
> [Current thread is 1 (Thread 0xffffb8e2d040 (LWP 757))]
> (gdb) bt
> #0  __strlen_asimd () at ../sysdeps/aarch64/multiarch/strlen_asimd.S:96
> #1  0x0000ffffb86c5330 in lttng_ust_tracepoint_module_register () from
> /usr/lib/liblttng-ust-tracepoint.so.1
> #2  0x0000aaaab4c8da18 in lttng_ust__tracepoints__ptrs_init () at
> /opt/poky/4.0.18/sysroots/cortexa53-crypto-poky-linux/usr/include/lttng/t=
racepoint.h:629
>
> #3  0x0000ffffb872b30c in call_init (env=3D<optimized out>,
> argv=3D0xffffe2d66098, argc=3D1) at ../csu/libc-start.c:145
> #4  __libc_start_main_impl (main=3D0xaaaab4bd94e0 <main>, argc=3D1,
> argv=3D0xffffe2d66098, init=3D<optimized out>, fini=3D<optimized out>,
> rtld_fini=3D<optimized out>, stack_end=3D<optimized out>) at
> ../csu/libc-start.c:376
> #5  0x0000aaaab4bd9230 in _start () at ../sysdeps/aarch64/start.S:81
> (gdb)
>
> If I run valgrind, this is what I see:
>
> =3D=3D627=3D=3D Memcheck, a memory error detector
> =3D=3D627=3D=3D Copyright (C) 2002-2017, and GNU GPL'd, by Julian Seward =
et al.
> =3D=3D627=3D=3D Using Valgrind-3.18.1 and LibVEX; rerun with -h for copyr=
ight info
> =3D=3D627=3D=3D Command: ./my_app
> =3D=3D627=3D=3D
> LTTng-UST: Error while registering tracepoint probe.
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D Process terminating with default action of signal 6 (SIGA=
BRT)
> =3D=3D627=3D=3D    at 0x6772278: __pthread_kill_implementation (pthread_k=
ill.c:44)
> =3D=3D627=3D=3D    by 0x672DD4F: raise (raise.c:26)
> =3D=3D627=3D=3D    by 0x671AEE3: abort (abort.c:79)
> =3D=3D627=3D=3D    by 0x2C572B: lttng_ust__events_init__hello_world
> (ust-tracepoint-event.h:1221)
> =3D=3D627=3D=3D    by 0x2C5B97: lttng_ust_constructor_hello_world
> (ust-tracepoint-event.h:1239)
> =3D=3D627=3D=3D    by 0x671B30B: call_init (libc-start.c:145)
> =3D=3D627=3D=3D    by 0x671B30B: __libc_start_main@@GLIBC_2.34 (libc-star=
t.c:376)
> =3D=3D627=3D=3D    by 0x21122F: (below main) (start.S:81)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D HEAP SUMMARY:
> =3D=3D627=3D=3D     in use at exit: 151,712 bytes in 90 blocks
> =3D=3D627=3D=3D   total heap usage: 1,184 allocs, 1,094 frees, 202,570 by=
tes
> allocated
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D 48 bytes in 1 blocks are still reachable in loss record 1=
 of 17
> =3D=3D627=3D=3D    at 0x618A790: calloc (vg_replace_malloc.c:1328)
> =3D=3D627=3D=3D    by 0x68D50CB: lttng_ust_tracepoint_module_register (in
> /usr/lib/liblttng-ust-tracepoint.so.1.0.0)
> =3D=3D627=3D=3D    by 0x5923653: call_init.part.0 (dl-init.c:74)
> =3D=3D627=3D=3D    by 0x5923767: call_init (dl-init.c:29)
> =3D=3D627=3D=3D    by 0x5923767: _dl_init (dl-init.c:121)
> =3D=3D627=3D=3D    by 0x5935D37: ??? (in /lib/ld-linux-aarch64.so.1)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D 48 bytes in 1 blocks are still reachable in loss record 2=
 of 17
> =3D=3D627=3D=3D    at 0x618A790: calloc (vg_replace_malloc.c:1328)
> =3D=3D627=3D=3D    by 0x61E8143: lttng_ust_probe_register (in
> /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x61FD49B: ??? (in /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x5923653: call_init.part.0 (dl-init.c:74)
> =3D=3D627=3D=3D    by 0x5923767: call_init (dl-init.c:29)
> =3D=3D627=3D=3D    by 0x5923767: _dl_init (dl-init.c:121)
> =3D=3D627=3D=3D    by 0x5935D37: ??? (in /lib/ld-linux-aarch64.so.1)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D 48 bytes in 1 blocks are still reachable in loss record 3=
 of 17
> =3D=3D627=3D=3D    at 0x618A790: calloc (vg_replace_malloc.c:1328)
> =3D=3D627=3D=3D    by 0x61E8143: lttng_ust_probe_register (in
> /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x61DFF4F: ??? (in /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x5923653: call_init.part.0 (dl-init.c:74)
> =3D=3D627=3D=3D    by 0x5923767: call_init (dl-init.c:29)
> =3D=3D627=3D=3D    by 0x5923767: _dl_init (dl-init.c:121)
> =3D=3D627=3D=3D    by 0x5935D37: ??? (in /lib/ld-linux-aarch64.so.1)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D 48 bytes in 1 blocks are still reachable in loss record 4=
 of 17
> =3D=3D627=3D=3D    at 0x618A790: calloc (vg_replace_malloc.c:1328)
> =3D=3D627=3D=3D    by 0x61E8143: lttng_ust_probe_register (in
> /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x61E026F: ??? (in /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x5923653: call_init.part.0 (dl-init.c:74)
> =3D=3D627=3D=3D    by 0x5923767: call_init (dl-init.c:29)
> =3D=3D627=3D=3D    by 0x5923767: _dl_init (dl-init.c:121)
> =3D=3D627=3D=3D    by 0x5935D37: ??? (in /lib/ld-linux-aarch64.so.1)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D 48 bytes in 1 blocks are still reachable in loss record 5=
 of 17
> =3D=3D627=3D=3D    at 0x618A790: calloc (vg_replace_malloc.c:1328)
> =3D=3D627=3D=3D    by 0x61E8143: lttng_ust_probe_register (in
> /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x61E058F: ??? (in /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x5923653: call_init.part.0 (dl-init.c:74)
> =3D=3D627=3D=3D    by 0x5923767: call_init (dl-init.c:29)
> =3D=3D627=3D=3D    by 0x5923767: _dl_init (dl-init.c:121)
> =3D=3D627=3D=3D    by 0x5935D37: ??? (in /lib/ld-linux-aarch64.so.1)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D 48 bytes in 1 blocks are still reachable in loss record 6=
 of 17
> =3D=3D627=3D=3D    at 0x618A790: calloc (vg_replace_malloc.c:1328)
> =3D=3D627=3D=3D    by 0x68D50CB: lttng_ust_tracepoint_module_register (in
> /usr/lib/liblttng-ust-tracepoint.so.1.0.0)
> =3D=3D627=3D=3D    by 0x2C5A17: lttng_ust__tracepoints__ptrs_init
> (tracepoint.h:629)
> =3D=3D627=3D=3D    by 0x671B30B: call_init (libc-start.c:145)
> =3D=3D627=3D=3D    by 0x671B30B: __libc_start_main@@GLIBC_2.34 (libc-star=
t.c:376)
> =3D=3D627=3D=3D    by 0x21122F: (below main) (start.S:81)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D 128 bytes in 1 blocks are still reachable in loss record =
7 of 17
> =3D=3D627=3D=3D    at 0x618551C: malloc (vg_replace_malloc.c:381)
> =3D=3D627=3D=3D    by 0x68A388B: ??? (in /usr/lib/liblttng-ust-common.so.=
1.0.0)
> =3D=3D627=3D=3D    by 0x68A2FBF: lttng_ust_common_ctor (in
> /usr/lib/liblttng-ust-common.so.1.0.0)
> =3D=3D627=3D=3D    by 0x5923653: call_init.part.0 (dl-init.c:74)
> =3D=3D627=3D=3D    by 0x5923767: call_init (dl-init.c:29)
> =3D=3D627=3D=3D    by 0x5923767: _dl_init (dl-init.c:121)
> =3D=3D627=3D=3D    by 0x5935D37: ??? (in /lib/ld-linux-aarch64.so.1)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D 200 bytes in 1 blocks are still reachable in loss record =
8 of 17
> =3D=3D627=3D=3D    at 0x618551C: malloc (vg_replace_malloc.c:381)
> =3D=3D627=3D=3D    by 0x5929E37: malloc (rtld-malloc.h:56)
> =3D=3D627=3D=3D    by 0x5929E37: add_to_global_resize (dl-open.c:152)
> =3D=3D627=3D=3D    by 0x592AA8F: dl_open_worker_begin (dl-open.c:716)
> =3D=3D627=3D=3D    by 0x681D877: _dl_catch_exception (dl-error-skeleton.c=
:208)
> =3D=3D627=3D=3D    by 0x5929C77: dl_open_worker (dl-open.c:782)
> =3D=3D627=3D=3D    by 0x681D877: _dl_catch_exception (dl-error-skeleton.c=
:208)
> =3D=3D627=3D=3D    by 0x592A07B: _dl_open (dl-open.c:884)
> =3D=3D627=3D=3D    by 0x676C467: dlopen_doit (dlopen.c:56)
> =3D=3D627=3D=3D    by 0x681D877: _dl_catch_exception (dl-error-skeleton.c=
:208)
> =3D=3D627=3D=3D    by 0x681D92F: _dl_catch_error (dl-error-skeleton.c:227=
)
> =3D=3D627=3D=3D    by 0x676BF4F: _dlerror_run (dlerror.c:138)
> =3D=3D627=3D=3D    by 0x676C52B: dlopen_implementation (dlopen.c:71)
> =3D=3D627=3D=3D    by 0x676C52B: dlopen@@GLIBC_2.34 (dlopen.c:81)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D 240 bytes in 2 blocks are still reachable in loss record =
9 of 17
> =3D=3D627=3D=3D    at 0x618551C: malloc (vg_replace_malloc.c:381)
> =3D=3D627=3D=3D    by 0x59214C7: malloc (rtld-malloc.h:56)
> =3D=3D627=3D=3D    by 0x59214C7: _dl_map_object_deps (dl-deps.c:479)
> =3D=3D627=3D=3D    by 0x592A50B: dl_open_worker_begin (dl-open.c:592)
> =3D=3D627=3D=3D    by 0x681D877: _dl_catch_exception (dl-error-skeleton.c=
:208)
> =3D=3D627=3D=3D    by 0x5929C77: dl_open_worker (dl-open.c:782)
> =3D=3D627=3D=3D    by 0x681D877: _dl_catch_exception (dl-error-skeleton.c=
:208)
> =3D=3D627=3D=3D    by 0x592A07B: _dl_open (dl-open.c:884)
> =3D=3D627=3D=3D    by 0x676C467: dlopen_doit (dlopen.c:56)
> =3D=3D627=3D=3D    by 0x681D877: _dl_catch_exception (dl-error-skeleton.c=
:208)
> =3D=3D627=3D=3D    by 0x681D92F: _dl_catch_error (dl-error-skeleton.c:227=
)
> =3D=3D627=3D=3D    by 0x676BF4F: _dlerror_run (dlerror.c:138)
> =3D=3D627=3D=3D    by 0x676C52B: dlopen_implementation (dlopen.c:71)
> =3D=3D627=3D=3D    by 0x676C52B: dlopen@@GLIBC_2.34 (dlopen.c:81)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D 292 bytes in 15 blocks are possibly lost in loss record 1=
0 of 17
> =3D=3D627=3D=3D    at 0x618551C: malloc (vg_replace_malloc.c:381)
> =3D=3D627=3D=3D    by 0x6783993: strdup (strdup.c:42)
> =3D=3D627=3D=3D    by 0x61FD92F: ??? (in /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x681DA9F: dl_iterate_phdr (dl-iteratephdr.c:74)
> =3D=3D627=3D=3D    by 0x61FE653: lttng_ust_dl_update (in
> /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x61DE83B: ??? (in /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x5923653: call_init.part.0 (dl-init.c:74)
> =3D=3D627=3D=3D    by 0x5923767: call_init (dl-init.c:29)
> =3D=3D627=3D=3D    by 0x5923767: _dl_init (dl-init.c:121)
> =3D=3D627=3D=3D    by 0x5935D37: ??? (in /lib/ld-linux-aarch64.so.1)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D 336 bytes in 1 blocks are possibly lost in loss record 11=
 of 17
> =3D=3D627=3D=3D    at 0x618A790: calloc (vg_replace_malloc.c:1328)
> =3D=3D627=3D=3D    by 0x592ECB7: calloc (rtld-malloc.h:44)
> =3D=3D627=3D=3D    by 0x592ECB7: allocate_dtv (dl-tls.c:376)
> =3D=3D627=3D=3D    by 0x592F723: _dl_allocate_tls (dl-tls.c:635)
> =3D=3D627=3D=3D    by 0x677114F: allocate_stack (allocatestack.c:428)
> =3D=3D627=3D=3D    by 0x677114F: pthread_create@@GLIBC_2.34
> (pthread_create.c:647)
> =3D=3D627=3D=3D    by 0x61DEF03: ??? (in /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x5923653: call_init.part.0 (dl-init.c:74)
> =3D=3D627=3D=3D    by 0x5923767: call_init (dl-init.c:29)
> =3D=3D627=3D=3D    by 0x5923767: _dl_init (dl-init.c:121)
> =3D=3D627=3D=3D    by 0x5935D37: ??? (in /lib/ld-linux-aarch64.so.1)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D 336 bytes in 1 blocks are possibly lost in loss record 12=
 of 17
> =3D=3D627=3D=3D    at 0x618A790: calloc (vg_replace_malloc.c:1328)
> =3D=3D627=3D=3D    by 0x592ECB7: calloc (rtld-malloc.h:44)
> =3D=3D627=3D=3D    by 0x592ECB7: allocate_dtv (dl-tls.c:376)
> =3D=3D627=3D=3D    by 0x592F723: _dl_allocate_tls (dl-tls.c:635)
> =3D=3D627=3D=3D    by 0x677114F: allocate_stack (allocatestack.c:428)
> =3D=3D627=3D=3D    by 0x677114F: pthread_create@@GLIBC_2.34
> (pthread_create.c:647)
> =3D=3D627=3D=3D    by 0x61DEEB7: ??? (in /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x5923653: call_init.part.0 (dl-init.c:74)
> =3D=3D627=3D=3D    by 0x5923767: call_init (dl-init.c:29)
> =3D=3D627=3D=3D    by 0x5923767: _dl_init (dl-init.c:121)
> =3D=3D627=3D=3D    by 0x5935D37: ??? (in /lib/ld-linux-aarch64.so.1)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D 340 bytes in 17 blocks are possibly lost in loss record 1=
3 of 17
> =3D=3D627=3D=3D    at 0x618A790: calloc (vg_replace_malloc.c:1328)
> =3D=3D627=3D=3D    by 0x61FD94F: ??? (in /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x681DA9F: dl_iterate_phdr (dl-iteratephdr.c:74)
> =3D=3D627=3D=3D    by 0x61FE653: lttng_ust_dl_update (in
> /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x61DE83B: ??? (in /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x5923653: call_init.part.0 (dl-init.c:74)
> =3D=3D627=3D=3D    by 0x5923767: call_init (dl-init.c:29)
> =3D=3D627=3D=3D    by 0x5923767: _dl_init (dl-init.c:121)
> =3D=3D627=3D=3D    by 0x5935D37: ??? (in /lib/ld-linux-aarch64.so.1)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D 1,248 bytes in 26 blocks are still reachable in loss reco=
rd 14 of
> 17
> =3D=3D627=3D=3D    at 0x618A790: calloc (vg_replace_malloc.c:1328)
> =3D=3D627=3D=3D    by 0x68D529F: lttng_ust_tracepoint_module_register (in
> /usr/lib/liblttng-ust-tracepoint.so.1.0.0)
> =3D=3D627=3D=3D    by 0x5923653: call_init.part.0 (dl-init.c:74)
> =3D=3D627=3D=3D    by 0x5923767: call_init (dl-init.c:29)
> =3D=3D627=3D=3D    by 0x5923767: _dl_init (dl-init.c:121)
> =3D=3D627=3D=3D    by 0x5935D37: ??? (in /lib/ld-linux-aarch64.so.1)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D 4,608 bytes in 2 blocks are possibly lost in loss record =
15 of 17
> =3D=3D627=3D=3D    at 0x618551C: malloc (vg_replace_malloc.c:381)
> =3D=3D627=3D=3D    by 0x5922FFB: malloc (rtld-malloc.h:56)
> =3D=3D627=3D=3D    by 0x5922FFB: _dlfo_mappings_segment_allocate
> (dl-find_object.c:217)
> =3D=3D627=3D=3D    by 0x5922FFB: _dl_find_object_update_1 (dl-find_object=
.c:671)
> =3D=3D627=3D=3D    by 0x5922FFB: _dl_find_object_update (dl-find_object.c=
:805)
> =3D=3D627=3D=3D    by 0x592A803: dl_open_worker_begin (dl-open.c:735)
> =3D=3D627=3D=3D    by 0x681D877: _dl_catch_exception (dl-error-skeleton.c=
:208)
> =3D=3D627=3D=3D    by 0x5929C77: dl_open_worker (dl-open.c:782)
> =3D=3D627=3D=3D    by 0x681D877: _dl_catch_exception (dl-error-skeleton.c=
:208)
> =3D=3D627=3D=3D    by 0x592A07B: _dl_open (dl-open.c:884)
> =3D=3D627=3D=3D    by 0x676C467: dlopen_doit (dlopen.c:56)
> =3D=3D627=3D=3D    by 0x681D877: _dl_catch_exception (dl-error-skeleton.c=
:208)
> =3D=3D627=3D=3D    by 0x681D92F: _dl_catch_error (dl-error-skeleton.c:227=
)
> =3D=3D627=3D=3D    by 0x676BF4F: _dlerror_run (dlerror.c:138)
> =3D=3D627=3D=3D    by 0x676C52B: dlopen_implementation (dlopen.c:71)
> =3D=3D627=3D=3D    by 0x676C52B: dlopen@@GLIBC_2.34 (dlopen.c:81)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D 70,992 bytes in 17 blocks are possibly lost in loss recor=
d 16 of
> 17
> =3D=3D627=3D=3D    at 0x618A790: calloc (vg_replace_malloc.c:1328)
> =3D=3D627=3D=3D    by 0x61FD91B: ??? (in /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x681DA9F: dl_iterate_phdr (dl-iteratephdr.c:74)
> =3D=3D627=3D=3D    by 0x61FE653: lttng_ust_dl_update (in
> /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x61DE83B: ??? (in /usr/lib/liblttng-ust.so.1.0.0)
> =3D=3D627=3D=3D    by 0x5923653: call_init.part.0 (dl-init.c:74)
> =3D=3D627=3D=3D    by 0x5923767: call_init (dl-init.c:29)
> =3D=3D627=3D=3D    by 0x5923767: _dl_init (dl-init.c:121)
> =3D=3D627=3D=3D    by 0x5935D37: ??? (in /lib/ld-linux-aarch64.so.1)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D 72,704 bytes in 1 blocks are still reachable in loss reco=
rd 17 of
> 17
> =3D=3D627=3D=3D    at 0x618551C: malloc (vg_replace_malloc.c:381)
> =3D=3D627=3D=3D    by 0x653E137: ??? (in /usr/lib/libstdc++.so.6.0.29)
> =3D=3D627=3D=3D    by 0x5923653: call_init.part.0 (dl-init.c:74)
> =3D=3D627=3D=3D    by 0x5923767: call_init (dl-init.c:29)
> =3D=3D627=3D=3D    by 0x5923767: _dl_init (dl-init.c:121)
> =3D=3D627=3D=3D    by 0x5935D37: ??? (in /lib/ld-linux-aarch64.so.1)
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D LEAK SUMMARY:
> =3D=3D627=3D=3D    definitely lost: 0 bytes in 0 blocks
> =3D=3D627=3D=3D    indirectly lost: 0 bytes in 0 blocks
> =3D=3D627=3D=3D      possibly lost: 76,904 bytes in 53 blocks
> =3D=3D627=3D=3D    still reachable: 74,808 bytes in 37 blocks
> =3D=3D627=3D=3D         suppressed: 0 bytes in 0 blocks
> =3D=3D627=3D=3D
> =3D=3D627=3D=3D For lists of detected and suppressed errors, rerun with: =
-s
> =3D=3D627=3D=3D ERROR SUMMARY: 6 errors from 6 contexts (suppressed: 0 fr=
om 0)
> Aborted
>
> I'm sure I'm probably doing something wrong but I've tried static linking=
,
> dynamic linking using LD_PRELOAD helpers like LD_PRELOAD=3Dliblttng-ust-p=
thread-wrapper.so.1:liblttng-ust-fd.so.1:liblttng-ust-fork.so.1
> and I'm out of options that I know to try.
>
> Looking for pointers on what else I can try and what I could be doing
> wrong.
>
> I had this same segfault issue using Dunfell version of Yocto and earlier
> versions of lttng (2.11) but never dug into it because was planning on
> upgrading everything soon, so recently stepped up to newer versions of
> everything to see if that solved the issue but apparently not.
>
>
I'm not sure about this, still trying to comprehend everything, but I think
my issue could be related to all this gcc TLS, heap, trampoline talk here:

https://www.mail-archive.com/lttng-dev@lists.lttng.org/msg13584.html

Regards,

Brian

--000000000000e688f2061cf7faae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Jul 10, 2024 at 9:53=E2=80=AFPM Brian Hutchinson &lt;<a href=
=3D"mailto:b.hutchman@gmail.com">b.hutchman@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>=
Hi,</div><div><br></div><div>I&#39;m getting a weird segfault when I compil=
e in a lttng-ust tracepoint into my application.</div><div><br></div><div>I=
&#39;m able to run the lttng-ust hello_world example just fine on my platfo=
rm which one would think should prove everything out, but when I use the ex=
act same hello world trace provider and link it into my multi-threadded app=
 and simply call:=C2=A0 <br><pre><span>lttng_ust_tracepoint</span><span>(</=
span><span>hello_world</span><span>,</span><span> </span><span>my_first_tra=
cepoint</span><span>,</span><span> </span><span>23</span><span>,</span>
<span>                         </span><span>&quot;hi there!&quot;</span><sp=
an>);</span></pre></div><div>I get a segfault.</div><div><br></div><div>Bac=
kground.=C2=A0 I&#39;m on aarch64 platform (imx8mm-lpddr4-evk) with sdk (gc=
c 11.4 glibc 2.35) and rootfs generated from Yocto Kirkstone 4.0.18.=C2=A0 =
Built lttng-tools (2.13.9) and lttng-ust (2.13.6) from yocto recipe.=C2=A0 =
Built out-of-tree kernel modules for lttng-modules (2.13.9) and I&#39;m on =
kernel 6.1.38.</div><div><br></div><div>If I do a backtrace with gdb on the=
 core this is what I see:</div><div><br></div><div><span style=3D"font-fami=
ly:monospace"><span style=3D"font-weight:bold;color:rgb(0,0,0);background-c=
olor:rgb(255,255,255)">GNU gdb (GDB) 11.2</span><span style=3D"color:rgb(0,=
0,0);background-color:rgb(255,255,255)">
</span><br>Copyright (C) 2022 Free Software Foundation, Inc.
<br>License GPLv3+: GNU GPL version 3 or later &lt;<a href=3D"http://gnu.or=
g/licenses/gpl.html" target=3D"_blank">http://gnu.org/licenses/gpl.html</a>=
&gt;
<br>This is free software: you are free to change and redistribute it.
<br>There is NO WARRANTY, to the extent permitted by law.
<br>Type &quot;show copying&quot; and &quot;show warranty&quot; for details=
.
<br>This GDB was configured as &quot;aarch64-poky-linux&quot;.
<br>Type &quot;show configuration&quot; for configuration details.
<br>For bug reporting instructions, please see:
<br>&lt;<a href=3D"https://www.gnu.org/software/gdb/bugs/" target=3D"_blank=
">https://www.gnu.org/software/gdb/bugs/</a>&gt;.
<br>Find the GDB manual and other documentation resources online at:
<br> =C2=A0=C2=A0=C2=A0&lt;<a href=3D"http://www.gnu.org/software/gdb/docum=
entation/" target=3D"_blank">http://www.gnu.org/software/gdb/documentation/=
</a>&gt;.
<br>
<br>For help, type &quot;help&quot;.
<br>Type &quot;apropos word&quot; to search for commands related to &quot;w=
ord&quot;...
<br>Reading symbols from ./my_app...
<br>
<br>warning: core file may not match specified executable file.
<br>[New LWP 757]
<br>[New LWP 759]
<br>[New LWP 758]
<br>[Thread debugging using libthread_db enabled]
<br>Using host libthread_db library &quot;/lib/libthread_db.so.1&quot;.
<br>Core was generated by `./my_app&#39;.
<br>Program terminated with signal SIGSEGV, Segmentation fault.
<br>#0 =C2=A0__strlen_asimd () at ../sysdeps/aarch64/multiarch/strlen_asimd=
.S:96
<br>96 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0../sysdeps/aarch64/multiarch/strlen_as=
imd.S: No such file or directory.
<br>[Current thread is 1 (Thread 0xffffb8e2d040 (LWP 757))]
<br>(gdb) bt
<br>#0 =C2=A0__strlen_asimd () at ../sysdeps/aarch64/multiarch/strlen_asimd=
.S:96
<br>#1 =C2=A00x0000ffffb86c5330 in lttng_ust_tracepoint_module_register () =
from /usr/lib/liblttng-ust-tracepoint.so.1
<br>#2 =C2=A00x0000aaaab4c8da18 in lttng_ust__tracepoints__ptrs_init () at =
/opt/poky/4.0.18/sysroots/cortexa53-crypto-poky-linux/usr/include/lttng/tra=
cepoint.h:629
<br>#3 =C2=A00x0000ffffb872b30c in call_init (env=3D&lt;optimized out&gt;, =
argv=3D0xffffe2d66098, argc=3D1) at ../csu/libc-start.c:145
<br>#4 =C2=A0__libc_start_main_impl (main=3D0xaaaab4bd94e0 &lt;main&gt;, ar=
gc=3D1, argv=3D0xffffe2d66098, init=3D&lt;optimized out&gt;, fini=3D&lt;opt=
imized out&gt;, rtld_fini=3D&lt;optimized out&gt;, stack_end=3D&lt;optimize=
d out&gt;) at ../csu/libc-start.c:376
<br>#5 =C2=A00x0000aaaab4bd9230 in _start () at ../sysdeps/aarch64/start.S:=
81
<br>(gdb)<br></span></div><div><span style=3D"font-family:monospace"><br></=
span></div><div><span style=3D"font-family:monospace">If I run valgrind, th=
is is what I see:</span></div><div><span style=3D"font-family:monospace"><b=
r></span></div><div><span style=3D"font-family:monospace"><span style=3D"co=
lor:rgb(0,0,0);background-color:rgb(255,255,255)">=3D=3D627=3D=3D Memcheck,=
 a memory error detector
</span><br>=3D=3D627=3D=3D Copyright (C) 2002-2017, and GNU GPL&#39;d, by J=
ulian Seward et al.
<br>=3D=3D627=3D=3D Using Valgrind-3.18.1 and LibVEX; rerun with -h for cop=
yright info
<br>=3D=3D627=3D=3D Command: ./my_app
<br>=3D=3D627=3D=3D =C2=A0<br>LTTng-UST: Error while registering tracepoint=
 probe.
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D Process terminating with defa=
ult action of signal 6 (SIGABRT)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x6772278: __pthread_kill_implemen=
tation (pthread_kill.c:44)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x672DD4F: raise (raise.c:26)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x671AEE3: abort (abort.c:79)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x2C572B: lttng_ust__events_init__=
hello_world (ust-tracepoint-event.h:1221)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x2C5B97: lttng_ust_constructor_he=
llo_world (ust-tracepoint-event.h:1239)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x671B30B: call_init (libc-start.c=
:145)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x671B30B: __libc_start_main@@GLIB=
C_2.34 (libc-start.c:376)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x21122F: (below main) (start.S:81=
)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D HEAP SUMMARY:
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0=C2=A0in use at exit: 151,712 bytes i=
n 90 blocks
<br>=3D=3D627=3D=3D =C2=A0=C2=A0total heap usage: 1,184 allocs, 1,094 frees=
, 202,570 bytes allocated
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D 48 bytes in 1 blocks are stil=
l reachable in loss record 1 of 17
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x618A790: calloc (vg_replace_mall=
oc.c:1328)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x68D50CB: lttng_ust_tracepoint_mo=
dule_register (in /usr/lib/liblttng-ust-tracepoint.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923653: call_init.part.0 (dl-in=
it.c:74)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: call_init (dl-init.c:29=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: _dl_init (dl-init.c:121=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5935D37: ??? (in /lib/ld-linux-a=
arch64.so.1)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D 48 bytes in 1 blocks are stil=
l reachable in loss record 2 of 17
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x618A790: calloc (vg_replace_mall=
oc.c:1328)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61E8143: lttng_ust_probe_registe=
r (in /usr/lib/liblttng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61FD49B: ??? (in /usr/lib/libltt=
ng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923653: call_init.part.0 (dl-in=
it.c:74)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: call_init (dl-init.c:29=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: _dl_init (dl-init.c:121=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5935D37: ??? (in /lib/ld-linux-a=
arch64.so.1)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D 48 bytes in 1 blocks are stil=
l reachable in loss record 3 of 17
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x618A790: calloc (vg_replace_mall=
oc.c:1328)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61E8143: lttng_ust_probe_registe=
r (in /usr/lib/liblttng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61DFF4F: ??? (in /usr/lib/libltt=
ng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923653: call_init.part.0 (dl-in=
it.c:74)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: call_init (dl-init.c:29=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: _dl_init (dl-init.c:121=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5935D37: ??? (in /lib/ld-linux-a=
arch64.so.1)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D 48 bytes in 1 blocks are stil=
l reachable in loss record 4 of 17
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x618A790: calloc (vg_replace_mall=
oc.c:1328)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61E8143: lttng_ust_probe_registe=
r (in /usr/lib/liblttng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61E026F: ??? (in /usr/lib/libltt=
ng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923653: call_init.part.0 (dl-in=
it.c:74)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: call_init (dl-init.c:29=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: _dl_init (dl-init.c:121=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5935D37: ??? (in /lib/ld-linux-a=
arch64.so.1)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D 48 bytes in 1 blocks are stil=
l reachable in loss record 5 of 17
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x618A790: calloc (vg_replace_mall=
oc.c:1328)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61E8143: lttng_ust_probe_registe=
r (in /usr/lib/liblttng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61E058F: ??? (in /usr/lib/libltt=
ng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923653: call_init.part.0 (dl-in=
it.c:74)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: call_init (dl-init.c:29=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: _dl_init (dl-init.c:121=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5935D37: ??? (in /lib/ld-linux-a=
arch64.so.1)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D 48 bytes in 1 blocks are stil=
l reachable in loss record 6 of 17
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x618A790: calloc (vg_replace_mall=
oc.c:1328)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x68D50CB: lttng_ust_tracepoint_mo=
dule_register (in /usr/lib/liblttng-ust-tracepoint.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x2C5A17: lttng_ust__tracepoints__=
ptrs_init (tracepoint.h:629)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x671B30B: call_init (libc-start.c=
:145)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x671B30B: __libc_start_main@@GLIB=
C_2.34 (libc-start.c:376)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x21122F: (below main) (start.S:81=
)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D 128 bytes in 1 blocks are sti=
ll reachable in loss record 7 of 17
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x618551C: malloc (vg_replace_mall=
oc.c:381)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x68A388B: ??? (in /usr/lib/libltt=
ng-ust-common.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x68A2FBF: lttng_ust_common_ctor (=
in /usr/lib/liblttng-ust-common.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923653: call_init.part.0 (dl-in=
it.c:74)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: call_init (dl-init.c:29=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: _dl_init (dl-init.c:121=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5935D37: ??? (in /lib/ld-linux-a=
arch64.so.1)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D 200 bytes in 1 blocks are sti=
ll reachable in loss record 8 of 17
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x618551C: malloc (vg_replace_mall=
oc.c:381)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5929E37: malloc (rtld-malloc.h:5=
6)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5929E37: add_to_global_resize (d=
l-open.c:152)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x592AA8F: dl_open_worker_begin (d=
l-open.c:716)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x681D877: _dl_catch_exception (dl=
-error-skeleton.c:208)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5929C77: dl_open_worker (dl-open=
.c:782)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x681D877: _dl_catch_exception (dl=
-error-skeleton.c:208)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x592A07B: _dl_open (dl-open.c:884=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x676C467: dlopen_doit (dlopen.c:5=
6)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x681D877: _dl_catch_exception (dl=
-error-skeleton.c:208)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x681D92F: _dl_catch_error (dl-err=
or-skeleton.c:227)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x676BF4F: _dlerror_run (dlerror.c=
:138)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x676C52B: dlopen_implementation (=
dlopen.c:71)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x676C52B: dlopen@@GLIBC_2.34 (dlo=
pen.c:81)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D 240 bytes in 2 blocks are sti=
ll reachable in loss record 9 of 17
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x618551C: malloc (vg_replace_mall=
oc.c:381)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x59214C7: malloc (rtld-malloc.h:5=
6)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x59214C7: _dl_map_object_deps (dl=
-deps.c:479)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x592A50B: dl_open_worker_begin (d=
l-open.c:592)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x681D877: _dl_catch_exception (dl=
-error-skeleton.c:208)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5929C77: dl_open_worker (dl-open=
.c:782)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x681D877: _dl_catch_exception (dl=
-error-skeleton.c:208)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x592A07B: _dl_open (dl-open.c:884=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x676C467: dlopen_doit (dlopen.c:5=
6)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x681D877: _dl_catch_exception (dl=
-error-skeleton.c:208)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x681D92F: _dl_catch_error (dl-err=
or-skeleton.c:227)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x676BF4F: _dlerror_run (dlerror.c=
:138)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x676C52B: dlopen_implementation (=
dlopen.c:71)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x676C52B: dlopen@@GLIBC_2.34 (dlo=
pen.c:81)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D 292 bytes in 15 blocks are po=
ssibly lost in loss record 10 of 17
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x618551C: malloc (vg_replace_mall=
oc.c:381)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x6783993: strdup (strdup.c:42)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61FD92F: ??? (in /usr/lib/libltt=
ng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x681DA9F: dl_iterate_phdr (dl-ite=
ratephdr.c:74)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61FE653: lttng_ust_dl_update (in=
 /usr/lib/liblttng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61DE83B: ??? (in /usr/lib/libltt=
ng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923653: call_init.part.0 (dl-in=
it.c:74)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: call_init (dl-init.c:29=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: _dl_init (dl-init.c:121=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5935D37: ??? (in /lib/ld-linux-a=
arch64.so.1)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D 336 bytes in 1 blocks are pos=
sibly lost in loss record 11 of 17
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x618A790: calloc (vg_replace_mall=
oc.c:1328)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x592ECB7: calloc (rtld-malloc.h:4=
4)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x592ECB7: allocate_dtv (dl-tls.c:=
376)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x592F723: _dl_allocate_tls (dl-tl=
s.c:635)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x677114F: allocate_stack (allocat=
estack.c:428)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x677114F: pthread_create@@GLIBC_2=
.34 (pthread_create.c:647)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61DEF03: ??? (in /usr/lib/libltt=
ng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923653: call_init.part.0 (dl-in=
it.c:74)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: call_init (dl-init.c:29=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: _dl_init (dl-init.c:121=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5935D37: ??? (in /lib/ld-linux-a=
arch64.so.1)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D 336 bytes in 1 blocks are pos=
sibly lost in loss record 12 of 17
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x618A790: calloc (vg_replace_mall=
oc.c:1328)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x592ECB7: calloc (rtld-malloc.h:4=
4)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x592ECB7: allocate_dtv (dl-tls.c:=
376)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x592F723: _dl_allocate_tls (dl-tl=
s.c:635)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x677114F: allocate_stack (allocat=
estack.c:428)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x677114F: pthread_create@@GLIBC_2=
.34 (pthread_create.c:647)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61DEEB7: ??? (in /usr/lib/libltt=
ng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923653: call_init.part.0 (dl-in=
it.c:74)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: call_init (dl-init.c:29=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: _dl_init (dl-init.c:121=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5935D37: ??? (in /lib/ld-linux-a=
arch64.so.1)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D 340 bytes in 17 blocks are po=
ssibly lost in loss record 13 of 17
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x618A790: calloc (vg_replace_mall=
oc.c:1328)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61FD94F: ??? (in /usr/lib/libltt=
ng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x681DA9F: dl_iterate_phdr (dl-ite=
ratephdr.c:74)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61FE653: lttng_ust_dl_update (in=
 /usr/lib/liblttng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61DE83B: ??? (in /usr/lib/libltt=
ng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923653: call_init.part.0 (dl-in=
it.c:74)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: call_init (dl-init.c:29=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: _dl_init (dl-init.c:121=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5935D37: ??? (in /lib/ld-linux-a=
arch64.so.1)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D 1,248 bytes in 26 blocks are =
still reachable in loss record 14 of 17
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x618A790: calloc (vg_replace_mall=
oc.c:1328)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x68D529F: lttng_ust_tracepoint_mo=
dule_register (in /usr/lib/liblttng-ust-tracepoint.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923653: call_init.part.0 (dl-in=
it.c:74)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: call_init (dl-init.c:29=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: _dl_init (dl-init.c:121=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5935D37: ??? (in /lib/ld-linux-a=
arch64.so.1)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D 4,608 bytes in 2 blocks are p=
ossibly lost in loss record 15 of 17
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x618551C: malloc (vg_replace_mall=
oc.c:381)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5922FFB: malloc (rtld-malloc.h:5=
6)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5922FFB: _dlfo_mappings_segment_=
allocate (dl-find_object.c:217)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5922FFB: _dl_find_object_update_=
1 (dl-find_object.c:671)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5922FFB: _dl_find_object_update =
(dl-find_object.c:805)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x592A803: dl_open_worker_begin (d=
l-open.c:735)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x681D877: _dl_catch_exception (dl=
-error-skeleton.c:208)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5929C77: dl_open_worker (dl-open=
.c:782)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x681D877: _dl_catch_exception (dl=
-error-skeleton.c:208)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x592A07B: _dl_open (dl-open.c:884=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x676C467: dlopen_doit (dlopen.c:5=
6)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x681D877: _dl_catch_exception (dl=
-error-skeleton.c:208)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x681D92F: _dl_catch_error (dl-err=
or-skeleton.c:227)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x676BF4F: _dlerror_run (dlerror.c=
:138)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x676C52B: dlopen_implementation (=
dlopen.c:71)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x676C52B: dlopen@@GLIBC_2.34 (dlo=
pen.c:81)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D 70,992 bytes in 17 blocks are=
 possibly lost in loss record 16 of 17
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x618A790: calloc (vg_replace_mall=
oc.c:1328)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61FD91B: ??? (in /usr/lib/libltt=
ng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x681DA9F: dl_iterate_phdr (dl-ite=
ratephdr.c:74)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61FE653: lttng_ust_dl_update (in=
 /usr/lib/liblttng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x61DE83B: ??? (in /usr/lib/libltt=
ng-ust.so.1.0.0)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923653: call_init.part.0 (dl-in=
it.c:74)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: call_init (dl-init.c:29=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: _dl_init (dl-init.c:121=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5935D37: ??? (in /lib/ld-linux-a=
arch64.so.1)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D 72,704 bytes in 1 blocks are =
still reachable in loss record 17 of 17
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0at 0x618551C: malloc (vg_replace_mall=
oc.c:381)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x653E137: ??? (in /usr/lib/libstd=
c++.so.6.0.29)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923653: call_init.part.0 (dl-in=
it.c:74)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: call_init (dl-init.c:29=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5923767: _dl_init (dl-init.c:121=
)
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0by 0x5935D37: ??? (in /lib/ld-linux-a=
arch64.so.1)
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D LEAK SUMMARY:
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0definitely lost: 0 bytes in 0 blocks
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0indirectly lost: 0 bytes in 0 blocks
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0possibly lost: 76,904 byt=
es in 53 blocks
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0still reachable: 74,808 bytes in 37 b=
locks
<br>=3D=3D627=3D=3D =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0suppres=
sed: 0 bytes in 0 blocks
<br>=3D=3D627=3D=3D =C2=A0<br>=3D=3D627=3D=3D For lists of detected and sup=
pressed errors, rerun with: -s
<br>=3D=3D627=3D=3D ERROR SUMMARY: 6 errors from 6 contexts (suppressed: 0 =
from 0)
<br>Aborted<br>
<br></span></div><div><span style=3D"font-family:monospace">I&#39;m sure I&=
#39;m probably doing something wrong but I&#39;ve tried static linking, dyn=
amic linking using LD_PRELOAD helpers like </span><span style=3D"font-famil=
y:monospace"><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,2=
55)">LD_PRELOAD=3Dliblttng-ust-pthread-wrapper.so.1:liblttng-ust-fd.so.1:li=
blttng-ust-fork.so.1 and I&#39;m out of options that I know to try.</span><=
/span></div><div><span style=3D"font-family:monospace"><span style=3D"color=
:rgb(0,0,0);background-color:rgb(255,255,255)"><br></span></span></div><div=
><span style=3D"font-family:monospace"><span style=3D"color:rgb(0,0,0);back=
ground-color:rgb(255,255,255)">Looking for pointers on what else I can try =
and what I could be doing wrong.<br></span></span></div><div><span style=3D=
"font-family:monospace"><span style=3D"color:rgb(0,0,0);background-color:rg=
b(255,255,255)"><br></span></span></div><div><span style=3D"font-family:mon=
ospace"><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">=
I had this same segfault issue using Dunfell version of Yocto and earlier v=
ersions of lttng (2.11) but never dug into it because was planning on upgra=
ding everything soon, so recently stepped up to newer versions of everythin=
g to see if that solved the issue but apparently not.<br></span></span></di=
v><div><span style=3D"font-family:monospace"><span style=3D"color:rgb(0,0,0=
);background-color:rgb(255,255,255)"><br></span></span></div></div></blockq=
uote><div><br></div><div><div>I&#39;m not sure about this, still trying to =
comprehend everything, but I think my issue could be related to all this gc=
c TLS, heap, trampoline talk here:</div><div><br></div><div><a href=3D"http=
s://www.mail-archive.com/lttng-dev@lists.lttng.org/msg13584.html">https://w=
ww.mail-archive.com/lttng-dev@lists.lttng.org/msg13584.html</a></div><div><=
br></div><div>Regards,</div><div><br></div><div>Brian</div>=C2=A0</div></di=
v></div>

--000000000000e688f2061cf7faae--

