Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82B4CE00D91; Wed, 17 Jan 2018 04:58:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA21AE00C02
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 04:58:34 -0800 (PST)
Received: by mail-ua0-f196.google.com with SMTP id t6so11572187ual.7
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 04:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FXILT8aiZz68bXZzhQnieVFphpjkAv1zLGn80p0V/wY=;
	b=iYl/q6u39L9O/fMZ0nMYhVUP/1AVHfsIRHFm791JycmgBs21ZRpy8i/i8TLTzJW2UI
	R7xSpT8j9cM3ZeUZJUyleCeSXhMYGb3OxP14T7CJBjW2ZF9akLxFDpHLpt+1EG4tq6k/
	EooAS8rN7KnZgogeqyReBiRTNt0mYdY5k92RKOXuklIk89cFwB5YKAOqJQn1IP4FwY/E
	bi2Vh6kRdxfRt6EDc2kZXzbiJh/B36xg5IIheweami0eKMADMljpxvwMVz1Y3i4XW/Ik
	+E3BKXyF8+SZrMJB8nTh+Ma2u6Qnqi3msdxROSJ/EXgaXhHy/qn6z79dAb4mFIVPvTir
	RqmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FXILT8aiZz68bXZzhQnieVFphpjkAv1zLGn80p0V/wY=;
	b=Y1+ryVWkMW6d9JynHYc0U5yKB0LOucz6e48qndY6W5KSkGDSl/jfKOPNV3MMQ67s8b
	DdWBTJahvIhEifirS95npzVP9qswlgFW8mio3SvYXEokoLNeui5imca5XDKCYGCZhnPJ
	9AfrP7WDET3kid9oJwg5JmC+4sQ5G/hlo1gQJUbjm861pQLcltiXTFsHslUdRKf/R5JR
	0vtGHcv98kC+C5oLGvwrdDTclXY99ZAxyN+Uscq2Q2WM+qZqbpam5AAttkMWs7AB4HN0
	WlYN486lLjqvp2ZJS6dAmTCV+fBd/G8Pvx7n2k8WY+8N8rS/FvuyrqiajyPah7jbN5C6
	IYdw==
X-Gm-Message-State: AKwxyteJmY8TmfnPIbQkwmC9ubged4EOu7VOpT5gadoeUpstvc7KriJi
	hmKi/8HBbP1RnYaA1Kym5CcLdcibKdiFP2lNA8w=
X-Google-Smtp-Source: ACJfBosgR4/riXWVCR2rfFrzfS86Rnga/cZ6tm5ou+ES5Awbw/GiwCw03syOKGGSPE052vkEk7tn1bkMzdtjHc59eEA=
X-Received: by 10.159.52.81 with SMTP id s17mr2134462uab.203.1516193913590;
	Wed, 17 Jan 2018 04:58:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.51.154 with HTTP; Wed, 17 Jan 2018 04:58:32 -0800 (PST)
In-Reply-To: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
References: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Wed, 17 Jan 2018 13:58:32 +0100
Message-ID: <CAC+thW1kL2F2LKxpnLMTd-YfWZV8KNzDSqpF8q2KdOBENBjt4g@mail.gmail.com>
To: Mathias Rudnik <rudnik.mathias@googlemail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Error do_compile libepoxy
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 17 Jan 2018 12:58:35 -0000
Content-Type: text/plain; charset="UTF-8"

Hi!

On Wed, Jan 17, 2018 at 1:46 PM, Mathias Rudnik
<rudnik.mathias@googlemail.com> wrote:
> Hello,
>
> I am trying to build libepoxy but the do_compile tasks breaks.
> I found following error messages in the logs:
>
> arm-poky-linux-gnueabi-gcc -march=armv6 -mfpu=vfp -mfloat-abi=hard
> -mtune=arm1176jzf-s -mfpu=vfp
> --sysroot=/hdd_gold1/mathias/git/poky/rpi-build/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot
> '-Itest/egl_common at sta' '-Itest' '-Iinclude/epoxy'
> '-I../libepoxy-1.4.3/test' '-Iinclude' '-I../libepoxy-1.4.3/include' '-Isrc'
> '-I../libepoxy-1.4.3/src' '-fdiagnostics-color=always' '-pipe'
> '-D_FILE_OFFSET_BITS=64' '-Wall' '-Winvalid-pch' '-std=gnu99' '-O2' '-g'
> '-O2' '-g' '-feliminate-unused-debug-types'
> '-fdebug-prefix-map=/hdd_gold1/mathias/git/poky/rpi-build/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4.3-r0=/usr/src/debug/libepoxy/1.4.3-r0'
> '-fdebug-prefix-map=/hdd_gold1/mathias/git/poky/rpi-build/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot-native='
> '-fdebug-prefix-map=/hdd_gold1/mathias/git/poky/rpi-build/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot='
> '-lEGL' '-fPIC' '-Wpointer-arith' '-Wmissing-declarations' '-Wformat=2'
> '-Wstrict-prototypes' '-Wmissing-prototypes' '-Wnested-externs'
> '-Wbad-function-cast' '-Wold-style-definition'
> '-Wdeclaration-after-statement' '-Wunused' '-Wuninitialized' '-Wshadow'
> '-Wmissing-noreturn' '-Wmissing-format-attribute' '-Wredundant-decls'
> '-Wlogical-op' '-Werror=implicit' '-Werror=nonnull' '-Werror=init-self'
> '-Werror=main' '-Werror=missing-braces' '-Werror=sequence-point'
> '-Werror=return-type' '-Werror=trigraphs' '-Werror=array-bounds'
> '-Werror=write-strings' '-Werror=address' '-Werror=int-to-pointer-cast'
> '-Werror=pointer-to-int-cast' '-fno-strict-aliasing' '-Wno-int-conversion'
> '-MMD' '-MQ' 'test/egl_common at sta/egl_common.c.o' '-MF' 'test/egl_common
> at sta/egl_common.c.o.d' -o 'test/egl_common at sta/egl_common.c.o' -c
> ../libepoxy-1.4.3/test/egl_common.c
> ../libepoxy-1.4.3/test/egl_common.c: In function 'get_egl_display_or_skip':
> ../libepoxy-1.4.3/test/egl_common.c:36:5: error: unknown type name
> 'Display'; did you mean 'EGLDisplay'?
>      Display *dpy = XOpenDisplay(NULL);
>      ^~~~~~~
>      EGLDisplay
> ../libepoxy-1.4.3/test/egl_common.c:36:20: error: implicit declaration of
> function 'XOpenDisplay'; did you mean 'eglGetDisplay'?
> [-Werror=implicit-function-declaration]
>      Display *dpy = XOpenDisplay(NULL);
>                     ^~~~~~~~~~~~
>                     eglGetDisplay
> ../libepoxy-1.4.3/test/egl_common.c:36:20: warning: nested extern
> declaration of 'XOpenDisplay' [-Wnested-externs]
> cc1: some warnings being treated as errors
>
> Does anybody know what i am doing wrong?

Just noticed this also here in CI builds. Unfortunately I'm building
with lot of new stuff from master branches wrt latest successful
build. In my case meta-raspberrypi is in the pile, but I haven't had
the time to investigate yet. At first glance at least commit
043f0218491452de223a5f0b47945fc6ec1633eb (libepoxy related) should be
in my bisecting range. Will report back if something comes up.

