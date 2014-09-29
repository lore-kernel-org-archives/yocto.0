Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8743E00863; Sun, 28 Sep 2014 19:22:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D74D6E0079E
	for <yocto@yoctoproject.org>; Sun, 28 Sep 2014 19:22:46 -0700 (PDT)
Received: by mail-qa0-f43.google.com with SMTP id i13so8097306qae.2
	for <yocto@yoctoproject.org>; Sun, 28 Sep 2014 19:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=AwmQ1rY4vOYOR9SS0Q2ZS1KM3StoKywIuhisB445KTY=;
	b=DdKpxI5JsW9nY+MatswsiQbu1FqZjTS3msgKuUYfK+hmEzXKe0gn8rjxeC3eJ8GZ5a
	OJHcW/knwrbqvLhAegeiI/SezgDD9plCMGsM5WMmf3jFGE5y6SNvnqvK7Yteo0g08MmF
	pI5eyAesCIz6sCeBNySzGJ0BEa7fAN+uHV5+b0FEz2CN6vz4c3hAPNlGt1M74flVd0Fp
	CCfFAIu3lBHi1KwWgTQuyZWT93b0gIOkVLU6B+15fih1wr1gtj3pFL5Q0rLwi/3es/+q
	iWbN6K4xpTLkDBeGXmFcMvZKlCpAIHPTuKyigKE+dagzBpRSqe4ZX9JCRy7u9+OGULad
	q0qA==
MIME-Version: 1.0
X-Received: by 10.140.44.34 with SMTP id f31mr549911qga.13.1411957365539; Sun,
	28 Sep 2014 19:22:45 -0700 (PDT)
Received: by 10.140.98.233 with HTTP; Sun, 28 Sep 2014 19:22:45 -0700 (PDT)
Date: Mon, 29 Sep 2014 10:22:45 +0800
Message-ID: <CACjDgAMqZ31WnnnQQn-bC1c1G302EcE0mMTEg01x8rn4989M8Q@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Luajit Compile Error
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
X-List-Received-Date: Mon, 29 Sep 2014 02:22:47 -0000
Content-Type: text/plain; charset=UTF-8

Dear all,

I am getting error when i include luajit package from the
meta-embedded and this is build from the core-image-minimal
layer(yocto daisy).  Can someone help to point me the right direction
for fixing the compile error as show below?  Thanks.


yocto@ubuntu-yocto:/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/temp$
cat log.do_compile.16806
DEBUG: Executing shell function do_compile
NOTE: make -j 4 CROSS=i586-poky-linux- TARGET_CFLAGS=
--sysroot=/yocto/poky/build/tmp/sysroots/qemux86 TARGET_LDFLAGS=
--sysroot=/yocto/poky/build/tmp/sysroots/qemux86 TARGET_SHLDFLAGS=
--sysroot=/yocto/poky/build/tmp/sysroots/qemux86 HOST_CC=gcc  -m32
==== Building LuaJIT 2.0.2 ====
make -C src
make[1]: Entering directory
`/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/LuaJIT-2.0.2/src'
HOSTCC    host/minilua.o
HOSTCC    host/buildvm_asm.o
HOSTCC    host/buildvm_peobj.o
HOSTCC    host/buildvm_lib.o
In file included from host/buildvm_peobj.c:9:0:
host/buildvm.h:9:23: fatal error: sys/types.h: No such file or directory
 #include <sys/types.h>
                       ^
In file included from host/buildvm_asm.c:6:0:
host/buildvm.h:9:23: fatal error: sys/types.h: No such file or directory
 #include <sys/types.h>
                       ^
compilation terminated.
In file included from host/buildvm_lib.c:6:0:
host/buildvm.h:9:23: fatal error: sys/types.h: No such file or directory
 #include <sys/types.h>
                       ^
compilation terminated.
compilation terminated.
make[1]: *** [host/buildvm_asm.o] Error 1
make[1]: *** Waiting for unfinished jobs....
make[1]: *** [host/buildvm_peobj.o] Error 1
make[1]: *** [host/buildvm_lib.o] Error 1
In file included from /usr/include/limits.h:25:0,
                 from
/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h:168,
                 from
/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/syslimits.h:7,
                 from
/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h:34,
                 from host/minilua.c:32:
/usr/include/features.h:374:25: fatal error: sys/cdefs.h: No such file
or directory
 #  include <sys/cdefs.h>
                         ^
compilation terminated.
make[1]: *** [host/minilua.o] Error 1
make[1]: Leaving directory
`/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/LuaJIT-2.0.2/src'
make: *** [default] Error 2
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_compile (log file is located at
/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/temp/log.do_compile.16806)
yocto@ubuntu-yocto:/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/temp$
cat log.do_compile.16806
DEBUG: Executing shell function do_compile
NOTE: make -j 4 CROSS=i586-poky-linux- TARGET_CFLAGS=
--sysroot=/yocto/poky/build/tmp/sysroots/qemux86 TARGET_LDFLAGS=
--sysroot=/yocto/poky/build/tmp/sysroots/qemux86 TARGET_SHLDFLAGS=
--sysroot=/yocto/poky/build/tmp/sysroots/qemux86 HOST_CC=gcc  -m32
==== Building LuaJIT 2.0.2 ====
make -C src
make[1]: Entering directory
`/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/LuaJIT-2.0.2/src'
HOSTCC    host/minilua.o
HOSTCC    host/buildvm_asm.o
HOSTCC    host/buildvm_peobj.o
HOSTCC    host/buildvm_lib.o
In file included from host/buildvm_peobj.c:9:0:
host/buildvm.h:9:23: fatal error: sys/types.h: No such file or directory
 #include <sys/types.h>
                       ^
In file included from host/buildvm_asm.c:6:0:
host/buildvm.h:9:23: fatal error: sys/types.h: No such file or directory
 #include <sys/types.h>
                       ^
compilation terminated.
In file included from host/buildvm_lib.c:6:0:
host/buildvm.h:9:23: fatal error: sys/types.h: No such file or directory
 #include <sys/types.h>
                       ^
compilation terminated.
compilation terminated.
make[1]: *** [host/buildvm_asm.o] Error 1
make[1]: *** Waiting for unfinished jobs....
make[1]: *** [host/buildvm_peobj.o] Error 1
make[1]: *** [host/buildvm_lib.o] Error 1
In file included from /usr/include/limits.h:25:0,
                 from
/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h:168,
                 from
/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/syslimits.h:7,
                 from
/usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed/limits.h:34,
                 from host/minilua.c:32:
/usr/include/features.h:374:25: fatal error: sys/cdefs.h: No such file
or directory
 #  include <sys/cdefs.h>
                         ^
compilation terminated.
make[1]: *** [host/minilua.o] Error 1
make[1]: Leaving directory
`/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/LuaJIT-2.0.2/src'
make: *** [default] Error 2
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_compile (log file is located at
/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/temp/log.do_compile.16806)
yocto@ubuntu-yocto:/yocto/poky/build/tmp/work/i586-poky-linux/luajit/2.0.2-r0/temp$

