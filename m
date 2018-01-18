Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C693EE00DC2; Thu, 18 Jan 2018 00:58:12 -0800 (PST)
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
	*      [209.85.217.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2E7DE00CD9
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 00:58:11 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id x16so15085030uaj.11
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 00:58:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TkB5rlkobQe5MPygYS8RudNQUMtZTbN5OlJo67rLrx0=;
	b=O+HqPhb/eiaCyCf4xjOHxgd/SzwQQfJJClucX0bzBu9aHVRLrFzT2hkMICU0GR7Xfx
	W81dljy+jflW1tReEqLGHR+a9RLLTolJ7HYBf4avd/Tb4P7WPpJXq9miUeT3XDxMNhDl
	rSYxgOkM7T1cZWzMWfhoW9iDvWQriPgk610NxP8HryRpEx+TZXwv7Vlatm7AQ8ZN0ELJ
	SpRRkhh78QdxsIBoYdlDoKkzrcdn+AnO5WKaFqh4cdCEMdHKNZznGJUiWgWNV9jXc/Io
	tQ5cMF862uUj2WupIibz0BKeIE5FTvXXtQ68Yx8EV8Sjdqo+NI2Aq4st1t4rwoaocKrV
	HQZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TkB5rlkobQe5MPygYS8RudNQUMtZTbN5OlJo67rLrx0=;
	b=AQVqDwAZtyAYcABjQnNau4zOuoDYnTiLRVohRq0l3RiixLhCBgxTiFHx82uh7rjoWV
	myJuq02PKIo0sZcAvw2AR3PaY396dXrIPGgU/4fYfQzFCWLm6pr/2wxcJtdhAzfp3SHi
	sc+URbtRSWbAloSIIN5D3+KHc3Zvd+HLfSyAJIsEdvnErr8nz0GiJSOxSkB0ZUo44Jd0
	g07jtrklL2mO9oaeWATgz9WYh5BW9UHZiMHr9VXrhHIIJUsa36hv9fhaHKtaAAByIiwt
	RD7HxHQ4gIazjXVZft/stu6Lg/Hl+G3MikGYGwMLuMibhTgqnIjNdEuu2caEGdOPwhkP
	kh/g==
X-Gm-Message-State: AKwxytc83dkGmB46HhQ+zhb0SxmAgAVKnzDGILC05LlQycTBAb/lyMIu
	PvupIB2C71h+8MvkBISw+2vpzdRINpA6uv9Sjgw=
X-Google-Smtp-Source: ACJfBotv4PH2aY6ePQVUH7z2m1RZfZyx6CsSM/04ydxkYPhjRUESGTygz5Td+oyTSBJaTDegEIIIgZc+jANEjvWrS70=
X-Received: by 10.159.48.195 with SMTP id k3mr4378328uab.4.1516265890503; Thu,
	18 Jan 2018 00:58:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.51.154 with HTTP; Thu, 18 Jan 2018 00:58:09 -0800 (PST)
In-Reply-To: <CAC+thW1kL2F2LKxpnLMTd-YfWZV8KNzDSqpF8q2KdOBENBjt4g@mail.gmail.com>
References: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
	<CAC+thW1kL2F2LKxpnLMTd-YfWZV8KNzDSqpF8q2KdOBENBjt4g@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Thu, 18 Jan 2018 09:58:09 +0100
Message-ID: <CAC+thW0xBGsXZz-GJQU5f-LbVtUVWmzt5ReUwZr-SG4gvw-eVA@mail.gmail.com>
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
X-List-Received-Date: Thu, 18 Jan 2018 08:58:12 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 17, 2018 at 1:58 PM, Andrea Galbusera <gizero@gmail.com> wrote:
> Hi!
>
> On Wed, Jan 17, 2018 at 1:46 PM, Mathias Rudnik
> <rudnik.mathias@googlemail.com> wrote:
>> Hello,
>>
>> I am trying to build libepoxy but the do_compile tasks breaks.
>> I found following error messages in the logs:
>>
>> arm-poky-linux-gnueabi-gcc -march=armv6 -mfpu=vfp -mfloat-abi=hard
>> -mtune=arm1176jzf-s -mfpu=vfp
>> --sysroot=/hdd_gold1/mathias/git/poky/rpi-build/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot
>> '-Itest/egl_common at sta' '-Itest' '-Iinclude/epoxy'
>> '-I../libepoxy-1.4.3/test' '-Iinclude' '-I../libepoxy-1.4.3/include' '-Isrc'
>> '-I../libepoxy-1.4.3/src' '-fdiagnostics-color=always' '-pipe'
>> '-D_FILE_OFFSET_BITS=64' '-Wall' '-Winvalid-pch' '-std=gnu99' '-O2' '-g'
>> '-O2' '-g' '-feliminate-unused-debug-types'
>> '-fdebug-prefix-map=/hdd_gold1/mathias/git/poky/rpi-build/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4.3-r0=/usr/src/debug/libepoxy/1.4.3-r0'
>> '-fdebug-prefix-map=/hdd_gold1/mathias/git/poky/rpi-build/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot-native='
>> '-fdebug-prefix-map=/hdd_gold1/mathias/git/poky/rpi-build/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot='
>> '-lEGL' '-fPIC' '-Wpointer-arith' '-Wmissing-declarations' '-Wformat=2'
>> '-Wstrict-prototypes' '-Wmissing-prototypes' '-Wnested-externs'
>> '-Wbad-function-cast' '-Wold-style-definition'
>> '-Wdeclaration-after-statement' '-Wunused' '-Wuninitialized' '-Wshadow'
>> '-Wmissing-noreturn' '-Wmissing-format-attribute' '-Wredundant-decls'
>> '-Wlogical-op' '-Werror=implicit' '-Werror=nonnull' '-Werror=init-self'
>> '-Werror=main' '-Werror=missing-braces' '-Werror=sequence-point'
>> '-Werror=return-type' '-Werror=trigraphs' '-Werror=array-bounds'
>> '-Werror=write-strings' '-Werror=address' '-Werror=int-to-pointer-cast'
>> '-Werror=pointer-to-int-cast' '-fno-strict-aliasing' '-Wno-int-conversion'
>> '-MMD' '-MQ' 'test/egl_common at sta/egl_common.c.o' '-MF' 'test/egl_common
>> at sta/egl_common.c.o.d' -o 'test/egl_common at sta/egl_common.c.o' -c
>> ../libepoxy-1.4.3/test/egl_common.c
>> ../libepoxy-1.4.3/test/egl_common.c: In function 'get_egl_display_or_skip':
>> ../libepoxy-1.4.3/test/egl_common.c:36:5: error: unknown type name
>> 'Display'; did you mean 'EGLDisplay'?
>>      Display *dpy = XOpenDisplay(NULL);
>>      ^~~~~~~
>>      EGLDisplay
>> ../libepoxy-1.4.3/test/egl_common.c:36:20: error: implicit declaration of
>> function 'XOpenDisplay'; did you mean 'eglGetDisplay'?
>> [-Werror=implicit-function-declaration]
>>      Display *dpy = XOpenDisplay(NULL);
>>                     ^~~~~~~~~~~~
>>                     eglGetDisplay
>> ../libepoxy-1.4.3/test/egl_common.c:36:20: warning: nested extern
>> declaration of 'XOpenDisplay' [-Wnested-externs]
>> cc1: some warnings being treated as errors
>>
>> Does anybody know what i am doing wrong?
>
> Just noticed this also here in CI builds. Unfortunately I'm building
> with lot of new stuff from master branches wrt latest successful
> build. In my case meta-raspberrypi is in the pile, but I haven't had
> the time to investigate yet. At first glance at least commit
> 043f0218491452de223a5f0b47945fc6ec1633eb (libepoxy related) should be
> in my bisecting range. Will report back if something comes up.

Looks like my first guess was not that bad. Reverting below commit,
which switched to meson build system brought my build back to green.
Also CC-ing the patch author who might suggest further investigations.

commit 043f0218491452de223a5f0b47945fc6ec1633eb
Author:     Alexander Kanavin <alexander.kanavin@linux.intel.com>
AuthorDate: Thu Jan 4 15:12:33 2018 +0200
Commit:     Richard Purdie <richard.purdie@linuxfoundation.org>
CommitDate: Fri Jan 5 12:02:37 2018 +0000

    libepoxy: convert to meson build

    Add a patch to work around absence of dlvsym() on musl
    (wasn't previously a problem as autotools weren't building tests by default)

    (From OE-Core rev: aaa523e87c73abc2cf8cf3ea55d9e2c6789d3b9a)

    Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

My configuration is as follows:

Build Configuration:
BB_VERSION           = "1.37.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "arm-poky-linux-gnueabi"
MACHINE              = "raspberrypi3"
DISTRO               = "poky"
DISTRO_VERSION       = "2.4+snapshot-20180117"
TUNE_FEATURES        = "arm armv7ve vfp thumb neon vfpv4
callconvention-hard cortexa7"
TARGET_FPU           = "hard"
meta
meta-poky
meta-yocto-bsp       = "HEAD:d7cf7d6d032158690d6503ddc2c20bc5cd614264"
meta-oe
meta-python
meta-networking      = "HEAD:8cef6b38e62e6c79ec857510df454cefc868b0df"
meta-rauc            = "HEAD:40277f38840fa851e15390169120a4822b867e1d"
meta-swupdate        = "HEAD:033c840bc17844894330dd5a913114f82ed28484"
meta-sunxi           = "HEAD:2c85181c9274654e2337284a59658132f1fc45b7"
meta-raspberrypi     = "HEAD:c47caaca325b8cd81ee5bcd7cb30295faf0d440d"
meta-bsl             = "HEAD:071abd63f0d35c194288bf590f252ee3cf039cc7"

