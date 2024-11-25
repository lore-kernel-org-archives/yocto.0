Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77DDBD58D63
	for <webhook@archiver.kernel.org>; Mon, 25 Nov 2024 16:13:05 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
 by mx.groups.io with SMTP id smtpd.web10.22244.1732551181001344489
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2024 08:13:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Hm9/SUfe;
 spf=pass (domain: gmail.com, ip: 209.85.167.171, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3e602994635so2831164b6e.0
        for <yocto@lists.yoctoproject.org>; Mon, 25 Nov 2024 08:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732551180; x=1733155980; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BmtGIRM+M9No8xcsQXdpR+rcSvwGsOEzwDe9v+6cn7I=;
        b=Hm9/SUfeGsqNamHJX7+m5WYnVtrHzMej4eW0z40fXsqbrnOCOgoIgLVPau2XPtKucY
         G6RgiiDlUgV72+xdF6c1iyEVfqiUmfIH6uxXb1cwFaxrvu9u00ZbsHr5jP2KSKbWpBpi
         Re2AwNYClXE34yud6LiEp55+UJ1bCsgwVydy1po8xJUVZ+EmiiTXRpWu4vAE7o5T4mGi
         uUvn3dsZsfbT3IKavkjmQ63gCQGNjaHx3xbQYU/HzHH13nmSssv7WV4SjwIDkQtbHMgu
         LY9jQZfdp9AdQraxIK7qYIhZ6wQCdgfHxWodNdrwn7EJWz8kJjKH67E9rAVarfdB7H4a
         BW6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732551180; x=1733155980;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BmtGIRM+M9No8xcsQXdpR+rcSvwGsOEzwDe9v+6cn7I=;
        b=ZYMnHqcu29sSxjEsCMPkYSh+MOOCh1nCdwyPOnLBIYH2T9POiwTCUV7WYdwF99xfGT
         LRr19e0Ej8S6Fw9luKDstGEndDkRQ0NJ6c4VGaBesfDo93yGsRyUc/o0GFAy97hylHJ+
         kHrf5rdD0PG4OWeha5mcrGdpN0klm7IKR/DJTU5S1TIgNq0OW4YaOPOYKQDeG2BDh6Um
         prwvLtpNmujq3NzeoqiXUCUZiJe4qv2Bwy1mujZqtAUM1CSPYr2t3dAKN3P7tQgDb46l
         Q/Lyb2p7syKHpqilmrPBV3gtSLWc9YrDeH91tvSb5njVHSWtVYfBoW2KhE2SJX9t0x23
         WkCw==
X-Gm-Message-State: AOJu0YzmFpnqamQ+I8pf9fPVwfbdKgJzzloYTHhNrFm4CNcLYEknMGBq
	puJkR5nMQY5B6CLQPPpG6r4tVTh1BgwVyMpVBjfF3L7OvwvDY7gdhYELK1wzdQaFApBqqYN6+yW
	jS9tW++o/GuekHk8xN6t+RHdLW5Vf8Q==
X-Gm-Gg: ASbGncsqEEs7c5PSDBKYY3/WhZBIqzPkqCS+a/XHPsmu/N89N/exK/twD/OVOt18KdZ
	/Axox/kknYYfh4vWoIfevuHv81AsfDmc=
X-Google-Smtp-Source: AGHT+IGbfK8YB6UPZmYZSH6DROXPp1wIgt5bxIoxcDPV6dNTIE1jTOX/MwZv/7BSSvRFBAztOmJy+Q07evF4DVNQfPA=
X-Received: by 2002:a05:6808:150e:b0:3ea:57cf:7c26 with SMTP id
 5614622812f47-3ea57cf813amr401741b6e.19.1732551180023; Mon, 25 Nov 2024
 08:13:00 -0800 (PST)
MIME-Version: 1.0
References: <uLDAQA9NCYNb2YdDUyELhD7St0jSmMC214MYF8dgAa3gkIl8zZc-y3eTj-HP_HX0oPkiZVPaZ5oZpONslESKvwRgVM5mxovf0QXW4-faV_E=@protonmail.com>
In-Reply-To: <uLDAQA9NCYNb2YdDUyELhD7St0jSmMC214MYF8dgAa3gkIl8zZc-y3eTj-HP_HX0oPkiZVPaZ5oZpONslESKvwRgVM5mxovf0QXW4-faV_E=@protonmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 25 Nov 2024 08:12:34 -0800
Message-ID: <CAMKF1soMARmeK2ak5T_kQGakN21PBz2fc1fxJKmqNKCNaAmruQ@mail.gmail.com>
Subject: Re: [yocto] poky master gcc 14.2 failing at do_compile
To: yocto@lists.yoctoproject.org, kanakshilledar111@protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Nov 2024 16:13:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64340

Hi Kanak,

It seems the linker is running out of memory on you build host. So I
wonder if you have enough RAM on the build host.
or perhaps reduce the build parallelism that matches your build
machine's resources.

On Mon, Nov 25, 2024 at 7:10=E2=80=AFAM Kanak Shilledar via
lists.yoctoproject.org
<kanakshilledar111=3Dprotonmail.com@lists.yoctoproject.org> wrote:
>
> Hi,
> I am trying to build the `core-image-minimal` recipe for beaglev-ahead ma=
chine which is in the [meta-riscv](https://github.com/riscv/meta-riscv) lay=
er. I am using the master branch of poky as well as master branch of meta-r=
iscv.
> The build configuration looks like the following
>
> ```
> Build Configuration:
> BB_VERSION           =3D "2.9.1"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "riscv64-poky-linux"
> MACHINE              =3D "beaglev-ahead"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "5.1"
> TUNE_FEATURES        =3D "riscv64"
> meta
> meta-poky
> meta-yocto-bsp       =3D "master:88489115ae83f80f8f00f296f7f775ba24884744=
"
> meta-riscv           =3D "master:4b779658548197083a17269e25554ce6bddc8563=
"
> ```
>
> The build fails for the recipe `gcc_14.2.bb:do_compile`.
>
> ```
> ... // SNIP ...
> | /home/kanak/yocto/buildthead/tmp/work/riscv64-poky-linux/gcc/14.2.0/rec=
ipe-sysroot-native/usr/bin/riscv64-poky-linux/../../libexec/riscv64-poky-li=
nux/gcc/riscv64-poky-linux/14.2.0/ld: c-family/c-warn.o: in function `diagn=
ose_mismatched_attributes(tree_node*, tree_node*)':
> | /usr/src/debug/gcc/14.2.0/gcc/c-family/c-warn.cc:2685:(.text+0x5180): u=
ndefined reference to `cxx_dialect'
> | /home/kanak/yocto/buildthead/tmp/work/riscv64-poky-linux/gcc/14.2.0/rec=
ipe-sysroot-native/usr/bin/riscv64-poky-linux/../../libexec/riscv64-poky-li=
nux/gcc/riscv64-poky-linux/14.2.0/ld: /usr/src/debug/gcc/14.2.0/gcc/c-famil=
y/c-warn.cc:2691:(.text+0x5184): undefined reference to `cxx_dialect'
> | /home/kanak/yocto/buildthead/tmp/work/riscv64-poky-linux/gcc/14.2.0/rec=
ipe-sysroot-native/usr/bin/riscv64-poky-linux/../../libexec/riscv64-poky-li=
nux/gcc/riscv64-poky-linux/14.2.0/ld: c-family/c-warn.o: in function `maybe=
_warn_shift_overflow(unsigned int, tree_node*, tree_node*)':
> | /usr/src/debug/gcc/14.2.0/gcc/c-family/c-warn.cc:2708:(.text+0x522e): u=
ndefined reference to `cxx_dialect'
> | /home/kanak/yocto/buildthead/tmp/work/riscv64-poky-linux/gcc/14.2.0/rec=
ipe-sysroot-native/usr/bin/riscv64-poky-linux/../../libexec/riscv64-poky-li=
nux/gcc/riscv64-poky-linux/14.2.0/ld: /usr/src/debug/gcc/14.2.0/gcc/c-famil=
y/c-warn.cc:2709:(.text+0x5242): undefined reference to `c_inhibit_evaluati=
on_warnings'
> | /home/kanak/yocto/buildthead/tmp/work/riscv64-poky-linux/gcc/14.2.0/rec=
ipe-sysroot-native/usr/bin/riscv64-poky-linux/../../libexec/riscv64-poky-li=
nux/gcc/riscv64-poky-linux/14.2.0/ld: /usr/src/debug/gcc/14.2.0/gcc/c-famil=
y/c-warn.cc:2709:(.text+0x5246): undefined reference to `c_inhibit_evaluati=
on_warnings'
> | /home/kanak/yocto/buildthead/tmp/work/riscv64-poky-linux/gcc/14.2.0/rec=
ipe-sysroot-native/usr/bin/riscv64-poky-linux/../../libexec/riscv64-poky-li=
nux/gcc/riscv64-poky-linux/14.2.0/ld: /usr/src/debug/gcc/14.2.0/gcc/c-famil=
y/c-warn.cc:2745:(.text+0x53f2): undefined reference to `bool_promoted_to_i=
nt_p(tree_node*)'
> | /home/kanak/yocto/buildthead/tmp/work/riscv64-poky-linux/gcc/14.2.0/rec=
ipe-sysroot-native/usr/bin/riscv64-poky-linux/../../libexec/riscv64-poky-li=
nux/gcc/riscv64-poky-linux/14.2.0/ld: c-family/c-warn.o: in function `maybe=
_warn_sizeof_array_div(unsigned int, tree_node*, tree_node*, tree_node*, tr=
ee_node*)':
> | /usr/src/debug/gcc/14.2.0/gcc/c-family/c-warn.cc:3801:(.text+0x5d00): u=
ndefined reference to `cxx_dialect'
> | /home/kanak/yocto/buildthead/tmp/work/riscv64-poky-linux/gcc/14.2.0/rec=
ipe-sysroot-native/usr/bin/riscv64-poky-linux/../../libexec/riscv64-poky-li=
nux/gcc/riscv64-poky-linux/14.2.0/ld: /usr/src/debug/gcc/14.2.0/gcc/c-famil=
y/c-warn.cc:3801:(.text+0x5d04): undefined reference to `cxx_dialect'
> | collect2: fatal error: ld terminated with signal 9 [Killed]
> | compilation terminated.
> | make[1]: *** [../../../../../../../work-shared/gcc-14.2.0-r0/gcc-14.2.0=
/gcc/c/Make-lang.in:87: cc1] Error 1
> | make[1]: Leaving directory '/home/kanak/yocto/buildthead/tmp/work/riscv=
64-poky-linux/gcc/14.2.0/gcc-14.2.0/build.riscv64-poky-linux.riscv64-poky-l=
inux/gcc'
> | make: *** [Makefile:4699: all-gcc] Error 2
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> ERROR: Task (/home/kanak/yocto/sources/poky/meta/recipes-devtools/gcc/gcc=
_14.2.bb:do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3635 tasks of which 3634 didn't need to be=
 rerun and 1 failed.
>
> Summary: 1 task failed:
>   /home/kanak/yocto/sources/poky/meta/recipes-devtools/gcc/gcc_14.2.bb:do=
_compile
>     log: /home/kanak/yocto/buildthead/tmp/work/riscv64-poky-linux/gcc/14.=
2.0/temp/log.do_compile.1516845
> Summary: There were 2 ERROR messages, returning a non-zero exit code.
> ```
>
> I have attached the full log below.
> How can I resolve this issue?
> I am using WSL running Ubuntu 22.04 and 5.15.153.1-microsoft-standard-WSL=
2 kernel as the host.
>
> Thanks and Regards,
> Kanak Shilledar
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64338): https://lists.yoctoproject.org/g/yocto/messag=
e/64338
> Mute This Topic: https://lists.yoctoproject.org/mt/109772609/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

