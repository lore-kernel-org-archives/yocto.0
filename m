Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51193E00869; Sun, 28 Sep 2014 21:58:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AC84E00861
	for <yocto@yoctoproject.org>; Sun, 28 Sep 2014 21:58:24 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id g201so3961646oib.34
	for <yocto@yoctoproject.org>; Sun, 28 Sep 2014 21:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=XQI1PQANp+sxnz+o7ES7V4J+oHGJuTDXfZH47/UaO7w=;
	b=TNAtH61fK2xuFXvJeSIh6PFg1b4OMkgKy07ujGJ9aClarXSa1VvQAM/4/TWenIyLgK
	YG/nAw7U0m6rqI6FMc8gR7nQeMGOmugFfTHKbsmRk6bpAbqt4bSWisGRTB7JgtFkwg+s
	xZLr9aEl/3suDdI/v9hfnYgovjzFnq3Q9GWzbV+y0FBXpSbMjJQTXAbYkQ7sdHubeqPf
	CEbTTXoO7PPxiCToHCquz0v9TcUFedTw45M491KLnZcm72ejbYKi9IQCZbw55BZk8iQM
	okD1GQNiKdgeyRQjIa4F24rso8BlwPx+ksrcMqIZL2kRarHj/MyAVaadBivfflrR0W77
	VGDA==
X-Received: by 10.60.37.165 with SMTP id z5mr37934562oej.16.1411966703026;
	Sun, 28 Sep 2014 21:58:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.95.213 with HTTP; Sun, 28 Sep 2014 21:57:52 -0700 (PDT)
In-Reply-To: <CACjDgAMqZ31WnnnQQn-bC1c1G302EcE0mMTEg01x8rn4989M8Q@mail.gmail.com>
References: <CACjDgAMqZ31WnnnQQn-bC1c1G302EcE0mMTEg01x8rn4989M8Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 28 Sep 2014 21:57:52 -0700
Message-ID: <CAMKF1sqjcM3OQVkgh-fxPEW007CAaAy7MzoP7Y2ZZ-Hi_3Z5Jg@mail.gmail.com>
To: Albert K <alberk@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Luajit Compile Error
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
X-List-Received-Date: Mon, 29 Sep 2014 04:58:28 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Sep 28, 2014 at 7:22 PM, Albert K <alberk@gmail.com> wrote:
> Dear all,
>
> I am getting error when i include luajit package from the
> meta-embedded and this is build from the core-image-minimal
> layer(yocto daisy).  Can someone help to point me the right direction
> for fixing the compile error as show below?  Thanks.
>

its expecting 32bit gcc to be available on your build host. So install
gcc-multilib
on build machine and it should go on.

>
> yocto@ubuntu-yocto:/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/temp$
> cat log.do_compile.16806
> DEBUG: Executing shell function do_compile
> NOTE: make -j 4 CROSS=i586-poky-linux- TARGET_CFLAGS=
> --sysroot=/yocto/poky/build/tmp/sysroots/qemux86 TARGET_LDFLAGS=
> --sysroot=/yocto/poky/build/tmp/sysroots/qemux86 TARGET_SHLDFLAGS=
> --sysroot=/yocto/poky/build/tmp/sysroots/qemux86 HOST_CC=gcc  -m32
> ==== Building LuaJIT 2.0.2 ====
> make -C src
> make[1]: Entering directory
> `/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/LuaJIT-2.0.2/src'
> HOSTCC    host/minilua.o
> HOSTCC    host/buildvm_asm.o
> HOSTCC    host/buildvm_peobj.o
> HOSTCC    host/buildvm_lib.o
> In file included from host/buildvm_peobj.c:9:0:
> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or directory
>  #include <sys/types.h>
>                        ^
> In file included from host/buildvm_asm.c:6:0:
> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or directory
>  #include <sys/types.h>
>                        ^
> compilation terminated.
> In file included from host/buildvm_lib.c:6:0:
> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or directory
>  #include <sys/types.h>
>                        ^
> compilation terminated.
> compilation terminated.
> make[1]: *** [host/buildvm_asm.o] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make[1]: *** [host/buildvm_peobj.o] Error 1
> make[1]: *** [host/buildvm_lib.o] Error 1
> In file included from /usr/include/limits.h:25:0,
>                  from
> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h:168,
>                  from
> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/syslimits.h:7,
>                  from
> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h:34,
>                  from host/minilua.c:32:
> /usr/include/features.h:374:25: fatal error: sys/cdefs.h: No such file
> or directory
>  #  include <sys/cdefs.h>
>                          ^
> compilation terminated.
> make[1]: *** [host/minilua.o] Error 1
> make[1]: Leaving directory
> `/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/LuaJIT-2.0.2/src'
> make: *** [default] Error 2
> ERROR: oe_runmake failed
> WARNING: exit code 1 from a shell command.
> ERROR: Function failed: do_compile (log file is located at
> /yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/temp/log.do_compile.16806)
> yocto@ubuntu-yocto:/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/temp$
> cat log.do_compile.16806
> DEBUG: Executing shell function do_compile
> NOTE: make -j 4 CROSS=i586-poky-linux- TARGET_CFLAGS=
> --sysroot=/yocto/poky/build/tmp/sysroots/qemux86 TARGET_LDFLAGS=
> --sysroot=/yocto/poky/build/tmp/sysroots/qemux86 TARGET_SHLDFLAGS=
> --sysroot=/yocto/poky/build/tmp/sysroots/qemux86 HOST_CC=gcc  -m32
> ==== Building LuaJIT 2.0.2 ====
> make -C src
> make[1]: Entering directory
> `/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/LuaJIT-2.0.2/src'
> HOSTCC    host/minilua.o
> HOSTCC    host/buildvm_asm.o
> HOSTCC    host/buildvm_peobj.o
> HOSTCC    host/buildvm_lib.o
> In file included from host/buildvm_peobj.c:9:0:
> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or directory
>  #include <sys/types.h>
>                        ^
> In file included from host/buildvm_asm.c:6:0:
> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or directory
>  #include <sys/types.h>
>                        ^
> compilation terminated.
> In file included from host/buildvm_lib.c:6:0:
> host/buildvm.h:9:23: fatal error: sys/types.h: No such file or directory
>  #include <sys/types.h>
>                        ^
> compilation terminated.
> compilation terminated.
> make[1]: *** [host/buildvm_asm.o] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make[1]: *** [host/buildvm_peobj.o] Error 1
> make[1]: *** [host/buildvm_lib.o] Error 1
> In file included from /usr/include/limits.h:25:0,
>                  from
> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h:168,
>                  from
> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/syslimits.h:7,
>                  from
> /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h:34,
>                  from host/minilua.c:32:
> /usr/include/features.h:374:25: fatal error: sys/cdefs.h: No such file
> or directory
>  #  include <sys/cdefs.h>
>                          ^
> compilation terminated.
> make[1]: *** [host/minilua.o] Error 1
> make[1]: Leaving directory
> `/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/LuaJIT-2.0.2/src'
> make: *** [default] Error 2
> ERROR: oe_runmake failed
> WARNING: exit code 1 from a shell command.
> ERROR: Function failed: do_compile (log file is located at
> /yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/temp/log.do_compile.16806)
> yocto@ubuntu-yocto:/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/temp$
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

