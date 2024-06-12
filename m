Return-Path: <kaiwan.billimoria@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BDE7C27C53
	for <webhook@archiver.kernel.org>; Wed, 12 Jun 2024 10:51:40 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web10.8217.1718189480066487919
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jun 2024 03:51:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eckKPRfy;
 spf=pass (domain: gmail.com, ip: 209.85.208.52, mailfrom: kaiwan.billimoria@gmail.com)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-57a44c2ce80so2736629a12.0
        for <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 03:51:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718189478; x=1718794278; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=akLi8fIMuBw5FHyFj7Jp3sARkiuGBC0TSXiWd6tVB4A=;
        b=eckKPRfy1C6W4LBiT8SEdEuDi3m65TMo+BC1/BXC0n6Uo23hIe6mlPB85CvKu2scRq
         4KpYNpfIu55xz3PaYyIqh/ffLR+lxouS2LP1OpSFejuV8nI6B1kd77d1cg4lzZQlFm6R
         m7YNzvP+c4r8pmDLMwZCp2x4tnmISy2iYqV+ZzBgTorW7Nfxr3TzUgJffgxlO4V0zZyV
         TPiUFO/Bgo60+j03oRM9OErxfc6cfuE9VKEk84g684Fbh51fDa2nZkzzI+fbCjmyZ5FT
         BcjbhGJaPGv7qoFsesMGMfuCSdL8amQo3yGoCh0aAMWxD5gTkMqZhkmjVa/zGzqoCpX7
         pU2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718189478; x=1718794278;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=akLi8fIMuBw5FHyFj7Jp3sARkiuGBC0TSXiWd6tVB4A=;
        b=nrdzhdSWXFZ3vw1jKoix7DbaT+VYUOvH05p3xx9EhDHZKzR7emwbpp+gNeTCc6pmgP
         LJM4EOudiMT/KKrzDMVNt2/3bnkOUYdixjSO7N5tp5YWCsUeimk+EgSMuGhwYH5kuAxH
         n05BjdwSp3Ag/5yWAwFndyyRnnK7PwvdUm6RvEhv/su+nRXA1vBhPgQ0dQjs3JsmsquX
         P4yaQ8GVG0B7c5/8EckhOI1Q9nNhh5M6JaV8C0hF5g2z2UaRO78YqnAlNV8gXjHqvPI/
         bHBoQNDsGxvQ9Yx2YhFm6pAUCLGm2k45oJBaZTDofhsSxFlwYEzPH3VsaX+SpMi+rGpC
         GlwA==
X-Gm-Message-State: AOJu0Ywq7NKSVHm/ArBmjvy6gdU+lGauoozYK5sf3hwwadBKaPN1ahac
	o/2aTv6rPGH/EW5MPwlsNNzdgctJTbZn956xzLciD4VrLLaIGhS23i6QNyHKHl6gNGjdIMDOYwX
	/KenIRrsZapswT2m7A/n83ztc3NAeYp8u
X-Google-Smtp-Source: AGHT+IHo77fKwAXqOlWR+GSOyexbT4zN4DOLCekrZLPwz5mEiZpRYQ6Q84y1I7dGxfRBVkDQrQ0xBKiLYNXQpvJ1xkE=
X-Received: by 2002:a50:d799:0:b0:57c:8339:6dcc with SMTP id
 4fb4d7f45d1cf-57caaabcb26mr866826a12.33.1718189477610; Wed, 12 Jun 2024
 03:51:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAPDLWs9n96dwiMAkVr9LXY8-64Q0ze3ER1SYs-cpuUV2hfBo+w@mail.gmail.com>
In-Reply-To: <CAPDLWs9n96dwiMAkVr9LXY8-64Q0ze3ER1SYs-cpuUV2hfBo+w@mail.gmail.com>
From: Kaiwan N Billimoria <kaiwan.billimoria@gmail.com>
Date: Wed, 12 Jun 2024 16:21:00 +0530
Message-ID: <CAPDLWs8Pax1rbB4R1ipV_Vsw_4ygys9B_tHqUxeyxXn-0jLuMQ@mail.gmail.com>
Subject: Re: Recipe for using a custom Makefile with C source
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 10:51:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63326

Whoops! in my previous message, the last output line should read
'helloworld_dbg' and not 'hellowworld_dbg2' (was just another
experiment)..

On Wed, Jun 12, 2024 at 4:14=E2=80=AFPM Kaiwan N Billimoria
<kaiwan.billimoria@gmail.com> wrote:
>
> Hello all!
>
> I have a newbie question regarding creating a recipe for C code, where
> the project already has a custom Makefile -which of course must be
> used for the build.
> From what I recall, the recipe doesn't have to do anything special;
> bitbake will pick up the Makefile and do the 'make'...
>
> However, when experimenting with a v simple 'hello, world' C program
> and Makefile, I find that am unable to get a 'debug build'
> helloworld_dbg binary executable - it simply seems to use the default
> $(CFLAGS) value and I can't seem to influence it, via the recipe or
> the Makefile??
> I've tried the CFLAGS:append approach as well as the TARGET_CFLAGS
> setting but they don't seem to help.
>
> Here's my (essential) recipe:
> ...
> SRC_URI =3D "\
>     file://helloworld.c \
>     file://Makefile \
>     "
>
> FILES:${PN} +=3D "helloworld helloworld_dbg"
> S =3D "${WORKDIR}"
>
> # GCC: later option takes precedence
> CFLAGS:append =3D " -g -ggdb -O0 -Wpedantic"
>
> do_configure:prepend() {
>     bbplain ">>> WORKDIR =3D S =3D ${WORKDIR}"
>     bbplain ">>> build dir B =3D ${B}"
>     bbplain ">>> dest dir D  =3D ${D}"
>     bbplain ">>> CFLAGS =3D ${CFLAGS}"
>     bbplain ">>> TARGET_CFLAGS =3D ${TARGET_CFLAGS}"
>     bbplain ">>> TMPDIR =3D ${TMPDIR} "
> }
>
> PARALLEL_MAKE =3D ""
>
> do_install() {
>     install -d ${D}${bindir}
>     install -m 0755 ${S}/helloworld ${D}${bindir}
>     install -m 0755 ${S}/helloworld_dbg ${D}${bindir}
> }
>
>
> And my Makefile:
> ALL :=3D helloworld helloworld_dbg
> all: ${ALL}
>
> helloworld: helloworld.c
>     $(CC) $(CFLAGS) $(LDFLAGS) helloworld.c -o helloworld -Wall -O2
>     ls -l ./helloworld ; file ./helloworld
> #    strip --strip-all ./helloworld
> helloworld_dbg: helloworld.c
>     $(CC) $(CFLAGS_DBG) $(LDFLAGS) helloworld.c -o helloworld_dbg -Wall
>
> clean:
>     rm -f $(ALL)
>
> The helloworld.c is the usual...
>
> $ ls -l .../tmp-glibc/work/cortexa72-kaiwanTECH-linux/hellomake/1.0/hello=
world*
> -rwxr-xr-x 1 kaiwan kaiwan 77680 Jun 12 15:45
> .../tmp-glibc/work/cortexa72-kaiwanTECH-linux/hellomake/1.0/helloworld*
> -rw-rw-r-- 1 kaiwan kaiwan    83 May 30 11:08
> .../tmp-glibc/work/cortexa72-kaiwanTECH-linux/hellomake/1.0/helloworld.c
> -rwxr-xr-x 1 kaiwan kaiwan 77000 Jun 12 15:45
> .../tmp-glibc/work/cortexa72-kaiwanTECH-linux/hellomake/1.0/helloworld_db=
g2*
>
> You can see that both binaries are essentially the same...
> (I realize that an answer to a very similar query was posted here [1];
> am just looking to see if there's any update).
>
> [1] https://stackoverflow.com/questions/34934869/why-does-bitbake-ignore-=
cflags-in-my-makefile
>
> Thanks and regards,
> Kaiwan.
>
> --
> Kaiwan N Billimoria
> Founder, kaiwanTECH
> kaiwantech.com  |  https://amazon.com/author/kaiwanbillimoria

