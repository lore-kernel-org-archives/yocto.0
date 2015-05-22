Return-Path: <patholdn@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8791E009E6; Fri, 22 May 2015 15:37:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (patholdn[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26070E009CA
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 15:37:19 -0700 (PDT)
Received: by oiww2 with SMTP id w2so24104964oiw.0
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 15:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=0dFLRswl7vlg3uFYAHwYphiOiXG9fqWvJk6zlovubYE=;
	b=YAwqiFrSYZpajVFpzixWgbdnb/KYq7F9ig3p8fX4EAF8xUOciIRjN6CPDSll8nNUfO
	7aaAqMCqfr7u+sQET6Le88OtyPYwFCmfy3jqxPqw5h7b+gLsPi38FHwxK7u8w/0y1+n8
	n9zf5Pgg9voGsPhdEGVVDRzmNm43k2jiVLe5C8lk8bVYCm7gMYukNcYJoQTzd2QJFARO
	3D8RaO0Zwp86M3D84VMaZBjY7DcIObLygCCvPQP3bzWchU8deqEqDwu4E7ONAr5yWa4k
	JVBkfC6HhnmC3gaf/exGM3fuUFndM9lhmc8C/b5RaFmvJsbgTRa4R/jjRPkhK1JhRIjX
	mfSA==
MIME-Version: 1.0
X-Received: by 10.202.219.195 with SMTP id s186mr7962185oig.25.1432334238832; 
	Fri, 22 May 2015 15:37:18 -0700 (PDT)
Received: by 10.202.197.144 with HTTP; Fri, 22 May 2015 15:37:18 -0700 (PDT)
Date: Fri, 22 May 2015 18:37:18 -0400
Message-ID: <CANKYLMGmmfH6xPMmsJy-BXF49M9CnU=ADkQgb9qAuF+WMW=1kQ@mail.gmail.com>
From: Patricia Holden <patholdn@gmail.com>
To: yocto@yoctoproject.org
Subject: glibc failure during core-image-minimal bitbake
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
X-List-Received-Date: Fri, 22 May 2015 22:37:23 -0000
Content-Type: multipart/alternative; boundary=001a113d29da815d4a0516b34d88

--001a113d29da815d4a0516b34d88
Content-Type: text/plain; charset=UTF-8

It seems no matter what I try to do I am failing the glibc portion of the
bitbake for core-image-minimal.  Here is an excerpt from the last round:

| x86_64-poky-linux-gcc  -m64
--sysroot=/home/patti/poky/build/tmp/sysroots/ags0-qemux86-tcbootstrap
open_catalog.c -c -std=gnu99 -fgnu89-inline  -O2 -Wall -Werror -Winline
-Wno-error=undef -Wundef -Wwrite-strings -feliminate-unused-debug-types
-fmerge-all-constants -frounding-math -g -pipe -Wstrict-prototypes
-fPIC
-DNLSPATH='"/usr/share/locale/%L/%N:/usr/share/locale/%L/LC_MESSAGES/%N:/usr/share/locale/%l/%N:/usr/share/locale/%l/LC_MESSAGES/%N:"'
-I../include
-I/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/catgets
-I/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux
-I../sysdeps/unix/sysv/linux/x86_64/64
-I../sysdeps/unix/sysv/linux/x86_64  -I../sysdeps/unix/sysv/linux/x86
-I../sysdeps/unix/sysv/linux/wordsize-64  -I../sysdeps/x86_64/nptl
-I../sysdeps/unix/sysv/linux/include -I../sysdeps/unix/sysv/linux
-I../sysdeps/nptl  -I../sysdeps/pthread  -I../sysdeps/gnu
-I../sysdeps/unix/inet  -I../sysdeps/unix/sysv  -I../sysdeps/unix/x86_64
-I../sysdeps/unix  -I../sysdeps/posix  -I../sysdeps/x86_64/64
-I../sysdeps/x86_64/fpu/multiarch  -I../sysdeps/x86_64/fpu
-I../sysdeps/x86/fpu/include -I../sysdeps/x86/fpu
-I../sysdeps/x86_64/multiarch  -I../sysdeps/x86_64  -I../sysdeps/x86
-I../sysdeps/ieee754/ldbl-96  -I../sysdeps/ieee754/dbl-64/wordsize-64
-I../sysdeps/ieee754/dbl-64  -I../sysdeps/ieee754/flt-32
-I../sysdeps/wordsize-64  -I../sysdeps/ieee754  -I../sysdeps/generic  -I..
-I../libio -I. -nostdinc -isystem
/home/patti/poky/build/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux.gcc-cross-initial-x86_64/gcc/x86_64-poky-linux/4.9.2/include
-isystem
/home/patti/poky/build/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux.gcc-cross-initial-x86_64/gcc/x86_64-poky-linux/4.9.2/include-fixed
-isystem /home/patti/poky/build/tmp/sysroots/ags0-qemux86/usr/include
-D_LIBC_REENTRANT -include
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/libc-modules.h
-DMODULE_NAME=libc -include ../include/libc-symbols.h  -DPIC -DSHARED
-o
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/catgets/open_catalog.os
-MD -MP -MF
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/catgets/open_catalog.os.dt
-MT
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/catgets/open_catalog.os
| echo 'catgets/catgets.o catgets/open_catalog.o' >
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/catgets/stamp.oT
| mv -f
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/catgets/stamp.oT
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/catgets/stamp.o
| echo 'catgets/catgets.os catgets/open_catalog.os' >
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/catgets/stamp.osT
| mv -f
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/catgets/stamp.osT
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/catgets/stamp.os
| make[2]: Leaving directory
'/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/git/catgets'
| make -j 4 subdir=math -C math ..=../ subdir_lib
| make[2]: Entering directory
'/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/git/math'
| .././scripts/mkinstalldirs
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/math
| .././scripts/mkinstalldirs
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/math
| mkdir -p --
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/math
| mkdir -p --
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/math
| /opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/bin/perl gen-libm-test.pl
-u ../sysdeps/x86_64/fpu/libm-test-ulps -o
"/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/math/"
| echo '' >
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/math/stamp.oST
| mv -f
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/math/stamp.oST
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/math/stamp.oS
| Can't locate Getopt/Std.pm in @INC (you may need to install the
Getopt::Std module) (@INC contains: //usr/lib/perl //usr/lib/perl/5.20.0
//usr/lib/perl/site_perl/5.20.0 //usr/lib/perl/vendor_perl/5.20.0
/opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/lib/perl/site_perl/5.20.0/
/opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/lib/perl/site_perl/5.20.0
/opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/lib/perl/vendor_perl/5.20.0/
/opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/lib/perl/vendor_perl/5.20.0
/opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/lib/perl/5.20.0/
/opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/lib/perl/5.20.0
/opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/lib/perl/5.20.0 .) at
gen-libm-test.pl line 36.
| BEGIN failed--compilation aborted at gen-libm-test.pl line 36.
| Makefile:119: recipe for target
'/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/math/libm-test.stmp'
failed
| make[2]: ***
[/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/math/libm-test.stmp]
Error 2
| make[2]: Leaving directory
'/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/git/math'
| Makefile:234: recipe for target 'math/subdir_lib' failed
| make[1]: *** [math/subdir_lib] Error 2
| make[1]: Leaving directory
'/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/git'
| Makefile:9: recipe for target 'all' failed
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/temp/log.do_compile.8358)
ERROR: Task 41 (/home/patti/poky/meta/recipes-core/glibc/glibc_2.21.bb,
do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1305 tasks of which 1166 didn't need to be
rerun and 2 failed.
No currently running tasks (1305 of 2147)

Summary: 2 tasks failed:
  virtual:native:/home/patti/poky/meta/recipes-devtools/syslinux/
syslinux_6.03.bb, do_install
  /home/patti/poky/meta/recipes-core/glibc/glibc_2.21.bb, do_compile
Summary: There was 1 WARNING message shown.

--001a113d29da815d4a0516b34d88
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It seems no matter what I try to do I am failing the glibc=
 portion of the bitbake for core-image-minimal.=C2=A0 Here is an excerpt fr=
om the last round:<br><br>| x86_64-poky-linux-gcc=C2=A0 -m64 --sysroot=3D/h=
ome/patti/poky/build/tmp/sysroots/ags0-qemux86-tcbootstrap open_catalog.c -=
c -std=3Dgnu99 -fgnu89-inline=C2=A0 -O2 -Wall -Werror -Winline -Wno-error=
=3Dundef -Wundef -Wwrite-strings -feliminate-unused-debug-types -fmerge-all=
-constants -frounding-math -g -pipe -Wstrict-prototypes=C2=A0=C2=A0 -fPIC=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -DNLSPATH=3D&#39;&quot;/usr/share/loca=
le/%L/%N:/usr/share/locale/%L/LC_MESSAGES/%N:/usr/share/locale/%l/%N:/usr/s=
hare/locale/%l/LC_MESSAGES/%N:&quot;&#39; -I../include -I/home/patti/poky/b=
uild/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/catge=
ts=C2=A0 -I/home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/=
build-x86_64-poky-linux=C2=A0 -I../sysdeps/unix/sysv/linux/x86_64/64=C2=A0 =
-I../sysdeps/unix/sysv/linux/x86_64=C2=A0 -I../sysdeps/unix/sysv/linux/x86=
=C2=A0 -I../sysdeps/unix/sysv/linux/wordsize-64=C2=A0 -I../sysdeps/x86_64/n=
ptl=C2=A0 -I../sysdeps/unix/sysv/linux/include -I../sysdeps/unix/sysv/linux=
=C2=A0 -I../sysdeps/nptl=C2=A0 -I../sysdeps/pthread=C2=A0 -I../sysdeps/gnu=
=C2=A0 -I../sysdeps/unix/inet=C2=A0 -I../sysdeps/unix/sysv=C2=A0 -I../sysde=
ps/unix/x86_64=C2=A0 -I../sysdeps/unix=C2=A0 -I../sysdeps/posix=C2=A0 -I../=
sysdeps/x86_64/64=C2=A0 -I../sysdeps/x86_64/fpu/multiarch=C2=A0 -I../sysdep=
s/x86_64/fpu=C2=A0 -I../sysdeps/x86/fpu/include -I../sysdeps/x86/fpu=C2=A0 =
-I../sysdeps/x86_64/multiarch=C2=A0 -I../sysdeps/x86_64=C2=A0 -I../sysdeps/=
x86=C2=A0 -I../sysdeps/ieee754/ldbl-96=C2=A0 -I../sysdeps/ieee754/dbl-64/wo=
rdsize-64=C2=A0 -I../sysdeps/ieee754/dbl-64=C2=A0 -I../sysdeps/ieee754/flt-=
32=C2=A0 -I../sysdeps/wordsize-64=C2=A0 -I../sysdeps/ieee754=C2=A0 -I../sys=
deps/generic=C2=A0 -I.. -I../libio -I. -nostdinc -isystem /home/patti/poky/=
build/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux.gcc-cross-initial=
-x86_64/gcc/x86_64-poky-linux/4.9.2/include -isystem /home/patti/poky/build=
/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux.gcc-cross-initial-x86_=
64/gcc/x86_64-poky-linux/4.9.2/include-fixed -isystem /home/patti/poky/buil=
d/tmp/sysroots/ags0-qemux86/usr/include=C2=A0 -D_LIBC_REENTRANT -include /h=
ome/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-=
poky-linux/libc-modules.h -DMODULE_NAME=3Dlibc -include ../include/libc-sym=
bols.h=C2=A0 -DPIC -DSHARED=C2=A0=C2=A0=C2=A0=C2=A0 -o /home/patti/poky/bui=
ld/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/catgets=
/open_catalog.os -MD -MP -MF /home/patti/poky/build/tmp/work/x86_64-poky-li=
nux/glibc/2.21-r0/build-x86_64-poky-linux/catgets/open_catalog.os.dt -MT /h=
ome/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-=
poky-linux/catgets/open_catalog.os<br>| echo &#39;catgets/catgets.o catgets=
/open_catalog.o&#39; &gt; /home/patti/poky/build/tmp/work/x86_64-poky-linux=
/glibc/2.21-r0/build-x86_64-poky-linux/catgets/stamp.oT<br>| mv -f /home/pa=
tti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-l=
inux/catgets/stamp.oT /home/patti/poky/build/tmp/work/x86_64-poky-linux/gli=
bc/2.21-r0/build-x86_64-poky-linux/catgets/stamp.o<br>| echo &#39;catgets/c=
atgets.os catgets/open_catalog.os&#39; &gt; /home/patti/poky/build/tmp/work=
/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/catgets/stamp.osT<=
br>| mv -f /home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/=
build-x86_64-poky-linux/catgets/stamp.osT /home/patti/poky/build/tmp/work/x=
86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/catgets/stamp.os<br>=
| make[2]: Leaving directory &#39;/home/patti/poky/build/tmp/work/x86_64-po=
ky-linux/glibc/2.21-r0/git/catgets&#39;<br>| make -j 4 subdir=3Dmath -C mat=
h ..=3D../ subdir_lib<br>| make[2]: Entering directory &#39;/home/patti/pok=
y/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/git/math&#39;<br>| .././sc=
ripts/mkinstalldirs /home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc=
/2.21-r0/build-x86_64-poky-linux/math<br>| .././scripts/mkinstalldirs /home=
/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-pok=
y-linux/math<br>| mkdir -p -- /home/patti/poky/build/tmp/work/x86_64-poky-l=
inux/glibc/2.21-r0/build-x86_64-poky-linux/math<br>| mkdir -p -- /home/patt=
i/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-lin=
ux/math<br>| /opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/bin/perl <a hr=
ef=3D"http://gen-libm-test.pl">gen-libm-test.pl</a> -u ../sysdeps/x86_64/fp=
u/libm-test-ulps -o &quot;/home/patti/poky/build/tmp/work/x86_64-poky-linux=
/glibc/2.21-r0/build-x86_64-poky-linux/math/&quot;<br>| echo &#39;&#39; &gt=
; /home/patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86=
_64-poky-linux/math/stamp.oST<br>| mv -f /home/patti/poky/build/tmp/work/x8=
6_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/math/stamp.oST /home/=
patti/poky/build/tmp/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky=
-linux/math/stamp.oS<br>| Can&#39;t locate Getopt/Std.pm in @INC (you may n=
eed to install the Getopt::Std module) (@INC contains: //usr/lib/perl //usr=
/lib/perl/5.20.0 //usr/lib/perl/site_perl/5.20.0 //usr/lib/perl/vendor_perl=
/5.20.0 /opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/lib/perl/site_perl/=
5.20.0/ /opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/lib/perl/site_perl/=
5.20.0 /opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/lib/perl/vendor_perl=
/5.20.0/ /opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/lib/perl/vendor_pe=
rl/5.20.0 /opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/lib/perl/5.20.0/ =
/opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/lib/perl/5.20.0 /opt/poky/1=
.8/sysroots/x86_64-pokysdk-linux/usr/lib/perl/5.20.0 .) at <a href=3D"http:=
//gen-libm-test.pl">gen-libm-test.pl</a> line 36.<br>| BEGIN failed--compil=
ation aborted at <a href=3D"http://gen-libm-test.pl">gen-libm-test.pl</a> l=
ine 36.<br>| Makefile:119: recipe for target &#39;/home/patti/poky/build/tm=
p/work/x86_64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/math/libm-te=
st.stmp&#39; failed<br>| make[2]: *** [/home/patti/poky/build/tmp/work/x86_=
64-poky-linux/glibc/2.21-r0/build-x86_64-poky-linux/math/libm-test.stmp] Er=
ror 2<br>| make[2]: Leaving directory &#39;/home/patti/poky/build/tmp/work/=
x86_64-poky-linux/glibc/2.21-r0/git/math&#39;<br>| Makefile:234: recipe for=
 target &#39;math/subdir_lib&#39; failed<br>| make[1]: *** [math/subdir_lib=
] Error 2<br>| make[1]: Leaving directory &#39;/home/patti/poky/build/tmp/w=
ork/x86_64-poky-linux/glibc/2.21-r0/git&#39;<br>| Makefile:9: recipe for ta=
rget &#39;all&#39; failed<br>| make: *** [all] Error 2<br>| ERROR: oe_runma=
ke failed<br>| WARNING: exit code 1 from a shell command.<br>| ERROR: Funct=
ion failed: do_compile (log file is located at /home/patti/poky/build/tmp/w=
ork/x86_64-poky-linux/glibc/2.21-r0/temp/log.do_compile.8358)<br>ERROR: Tas=
k 41 (/home/patti/poky/meta/recipes-core/glibc/<a href=3D"http://glibc_2.21=
.bb">glibc_2.21.bb</a>, do_compile) failed with exit code &#39;1&#39;<br>NO=
TE: Tasks Summary: Attempted 1305 tasks of which 1166 didn&#39;t need to be=
 rerun and 2 failed.<br>No currently running tasks (1305 of 2147)<br><br>Su=
mmary: 2 tasks failed:<br>=C2=A0 virtual:native:/home/patti/poky/meta/recip=
es-devtools/syslinux/<a href=3D"http://syslinux_6.03.bb">syslinux_6.03.bb</=
a>, do_install<br>=C2=A0 /home/patti/poky/meta/recipes-core/glibc/<a href=
=3D"http://glibc_2.21.bb">glibc_2.21.bb</a>, do_compile<br>Summary: There w=
as 1 WARNING message shown.<br><br></div>

--001a113d29da815d4a0516b34d88--
