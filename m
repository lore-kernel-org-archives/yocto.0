Return-Path: <ravikiran.j@mistralsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55C00E00A81; Wed, 15 Mar 2017 00:02:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 233A3E00A48
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 00:02:24 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id b140so14459054iof.1
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 00:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mistralsolutions.com; s=dkim;
	h=mime-version:from:date:message-id:subject:to;
	bh=nI/whPzZmFn1c6pqImdZ0VBC8LwA0RvGVA1AXAhn25Y=;
	b=kL5LyY7J/Fl0UBZto7AFGlXJAeTEkuSoZs/awyzgAoeCyzZ2SVV/2NXBFp/cFMNbZH
	7O5hEtAZPqenYwcN/wI0tOIlBfEQ8uw7VBuHYjNzNzILakVCvguFFL+m6ipf7lq0ttSS
	cee3kOS2svwgcJgjIvWrAjDDAi255ZgN8b4kk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=nI/whPzZmFn1c6pqImdZ0VBC8LwA0RvGVA1AXAhn25Y=;
	b=eEeq+C2hki+S2Tqvsq+wC1IXkRrbP2Zm+x51+ba1aGEKQ6OYrXnJgMyZFYfQ3bIa4X
	p8hclTnaGQVGJfvKE4Vo/Hlv5xCPpqGVXVchskwm1WexGh314Bj8w4vMtsjgMAmnASw8
	TkGkXxQ1WArbeUwDRfclJbO82dxdnzCqApHVH26IrB8HzqaqNgZDLvl4IaxTLJKOd2sP
	80rtG5SjTKbo077terZhosgvazjz1YHzapRtPpbxP8nP6DQLD2z0VMZJtVUgR9gNBkLw
	+F13qi3ATGTw0CUNg9x4LvRtirYahyZAWfKc40V+/YORmvY/NwrRlO8Qk9yTjNMiSgA+
	u/nQ==
X-Gm-Message-State: AFeK/H03xQ3W+l7kiY36L5hxeYZVCGcEggIqwa27lzCnUwRGSXxyWzNNYLH8f0NOmoprNe2OzjpH31JZpbPplw==
X-Received: by 10.107.154.194 with SMTP id c185mr3543055ioe.109.1489561343633; 
	Wed, 15 Mar 2017 00:02:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.121.197 with HTTP; Wed, 15 Mar 2017 00:02:23 -0700 (PDT)
From: ravikiran j <ravikiran.j@mistralsolutions.com>
Date: Wed, 15 Mar 2017 12:32:23 +0530
Message-ID: <CALDHXtdN0uoeBFwiKy6GgwyhvfEXS+N_SjFORA9A2_r8QqK17A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: arm-poky-linux-gnueabi-gcc: Command not found
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
X-List-Received-Date: Wed, 15 Mar 2017 07:02:28 -0000
Content-Type: multipart/alternative; boundary=001a1140f4b6c24055054abf86ef

--001a1140f4b6c24055054abf86ef
Content-Type: text/plain; charset=UTF-8

I am trying to build the linux kernel for odorid-xu3 board but i am getting
following errors for
*bitbake linux-stable*


DEBUG: Executing shell function do_compile
NOTE: make -j 4 HOSTCC=gcc  HOSTCPP=gcc  -E zImage
CC=arm-poky-linux-gnueabi-gcc   -fuse-ld=bfd
LD=arm-poky-linux-gnueabi-ld.bfd
ERROR: oe_runmake failed
/home/mistral/yocto1/poky/build-xfce/tmp/work-shared/odroid-xu3/kernel-source/scripts/gcc-version.sh:
line 25: arm-poky-linux-gnueabi-gcc: command not found
/home/mistral/yocto1/poky/build-xfce/tmp/work-shared/odroid-xu3/kernel-source/scripts/gcc-version.sh:
line 26: arm-poky-linux-gnueabi-gcc: command not found
make[2]: arm-poky-linux-gnueabi-gcc: Command not found
make[2]: arm-poky-linux-gnueabi-gcc: Command not found
  GEN     ./Makefile
scripts/kconfig/conf  --silentoldconfig Kconfig
/home/mistral/yocto1/poky/build-xfce/tmp/work-shared/odroid-xu3/kernel-source/scripts/gcc-version.sh:
line 25: arm-poky-linux-gnueabi-gcc: command not found
/home/mistral/yocto1/poky/build-xfce/tmp/work-shared/odroid-xu3/kernel-source/scripts/gcc-version.sh:
line 26: arm-poky-linux-gnueabi-gcc: command not found
make[2]: arm-poky-linux-gnueabi-gcc: Command not found
make[2]: arm-poky-linux-gnueabi-gcc: Command not found
  CHK     include/config/kernel.release
make[2]: arm-poky-linux-gnueabi-gcc: Command not found
make[2]: arm-poky-linux-gnueabi-gcc: Command not found
  GEN     ./Makefile


 Using
/home/mistral/yocto1/poky/build-xfce/tmp/work-shared/odroid-xu3/kernel-source
as source for kernel
make[2]: arm-poky-linux-gnueabi-gcc: Command not found
make[2]: arm-poky-linux-gnueabi-gcc: Command not found
  HOSTCC  scripts/pnmtologo
  HOSTCC  scripts/kallsyms
  CC      scripts/mod/empty.o
/bin/sh: 1: arm-poky-linux-gnueabi-gcc: not found
/home/mistral/yocto1/poky/build-xfce/tmp/work-shared/odroid-xu3/kernel-source/scripts/Makefile.build:293:
recipe for target 'scripts/mod/empty.o' failed
make[4]: *** [scripts/mod/empty.o] Error 127
/home/mistral/yocto1/poky/build-xfce/tmp/work-shared/odroid-xu3/kernel-source/scripts/Makefile.build:544:
recipe for target 'scripts/mod' failed
make[3]: *** [scripts/mod] Error 2
make[3]: *** Waiting for unfinished jobs....
  HOSTCC  scripts/dtc/dtc.o
  HOSTCC  scripts/dtc/flattree.o
  HOSTCC  scripts/dtc/fstree.o
  HOSTCC  scripts/dtc/data.o
  HOSTCC  scripts/dtc/livetree.o
  HOSTCC  scripts/dtc/treesource.o
  HOSTCC  scripts/dtc/srcpos.o
  HOSTCC  scripts/dtc/checks.o
  HOSTCC  scripts/dtc/util.o
  SHIPPED scripts/dtc/dtc-lexer.lex.c
  SHIPPED scripts/dtc/dtc-parser.tab.h
  SHIPPED scripts/dtc/dtc-parser.tab.c
  HOSTCC  scripts/dtc/dtc-lexer.lex.o
  HOSTCC  scripts/dtc/dtc-parser.tab.o
  HOSTLD  scripts/dtc/dtc
/home/mistral/yocto1/poky/build-xfce/tmp/work-shared/odroid-xu3/kernel-source/Makefile:560:
recipe for target 'scripts' failed
make[2]: *** [scripts] Error 2
Makefile:150: recipe for target 'sub-make' failed
make[1]: *** [sub-make] Error 2
Makefile:24: recipe for target '__sub-make' failed
make: *** [__sub-make] Error 2
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_compile (log file is located at
/home/mistral/yocto1/poky/build-xfce/tmp/work/odroid_xu3-poky-linux-gnueabi/linux-stable/4.9.13+gitAUTOINC+f3329efb7f-r0/temp/log.do_compile.15577)

what is the problem and how to solve this problem ?

--001a1140f4b6c24055054abf86ef
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I am trying to build the linux kernel for odorid=
-xu3 board but i am getting following errors for<br></div><b>bitbake linux-=
stable</b><br><br><br>DEBUG: Executing shell function do_compile<br>NOTE: m=
ake -j 4 HOSTCC=3Dgcc=C2=A0 HOSTCPP=3Dgcc=C2=A0 -E zImage CC=3Darm-poky-lin=
ux-gnueabi-gcc=C2=A0=C2=A0 -fuse-ld=3Dbfd LD=3Darm-poky-linux-gnueabi-ld.bf=
d<br>ERROR: oe_runmake failed<br>/home/mistral/yocto1/poky/build-xfce/tmp/w=
ork-shared/odroid-xu3/kernel-source/scripts/gcc-version.sh: line 25: arm-po=
ky-linux-gnueabi-gcc: command not found<br>/home/mistral/yocto1/poky/build-=
xfce/tmp/work-shared/odroid-xu3/kernel-source/scripts/gcc-version.sh: line =
26: arm-poky-linux-gnueabi-gcc: command not found<br>make[2]: arm-poky-linu=
x-gnueabi-gcc: Command not found<br>make[2]: arm-poky-linux-gnueabi-gcc: Co=
mmand not found<br>=C2=A0 GEN=C2=A0=C2=A0=C2=A0=C2=A0 ./Makefile<br>scripts=
/kconfig/conf=C2=A0 --silentoldconfig Kconfig<br>/home/mistral/yocto1/poky/=
build-xfce/tmp/work-shared/odroid-xu3/kernel-source/scripts/gcc-version.sh:=
 line 25: arm-poky-linux-gnueabi-gcc: command not found<br>/home/mistral/yo=
cto1/poky/build-xfce/tmp/work-shared/odroid-xu3/kernel-source/scripts/gcc-v=
ersion.sh: line 26: arm-poky-linux-gnueabi-gcc: command not found<br>make[2=
]: arm-poky-linux-gnueabi-gcc: Command not found<br>make[2]: arm-poky-linux=
-gnueabi-gcc: Command not found<br>=C2=A0 CHK=C2=A0=C2=A0=C2=A0=C2=A0 inclu=
de/config/kernel.release<br>make[2]: arm-poky-linux-gnueabi-gcc: Command no=
t found<br>make[2]: arm-poky-linux-gnueabi-gcc: Command not found<br>=C2=A0=
 GEN=C2=A0=C2=A0=C2=A0=C2=A0 ./Makefile<br><br><br>=C2=A0Using /home/mistra=
l/yocto1/poky/build-xfce/tmp/work-shared/odroid-xu3/kernel-source as source=
 for kernel<br>make[2]: arm-poky-linux-gnueabi-gcc: Command not found<br>ma=
ke[2]: arm-poky-linux-gnueabi-gcc: Command not found<br>=C2=A0 HOSTCC=C2=A0=
 scripts/pnmtologo<br>=C2=A0 HOSTCC=C2=A0 scripts/kallsyms<br>=C2=A0 CC=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 scripts/mod/empty.o<br>/bin/sh: 1: arm-poky-lin=
ux-gnueabi-gcc: not found<br>/home/mistral/yocto1/poky/build-xfce/tmp/work-=
shared/odroid-xu3/kernel-source/scripts/Makefile.build:293: recipe for targ=
et &#39;scripts/mod/empty.o&#39; failed<br>make[4]: *** [scripts/mod/empty.=
o] Error 127<br>/home/mistral/yocto1/poky/build-xfce/tmp/work-shared/odroid=
-xu3/kernel-source/scripts/Makefile.build:544: recipe for target &#39;scrip=
ts/mod&#39; failed<br>make[3]: *** [scripts/mod] Error 2<br>make[3]: *** Wa=
iting for unfinished jobs....<br>=C2=A0 HOSTCC=C2=A0 scripts/dtc/dtc.o<br>=
=C2=A0 HOSTCC=C2=A0 scripts/dtc/flattree.o<br>=C2=A0 HOSTCC=C2=A0 scripts/d=
tc/fstree.o<br>=C2=A0 HOSTCC=C2=A0 scripts/dtc/data.o<br>=C2=A0 HOSTCC=C2=
=A0 scripts/dtc/livetree.o<br>=C2=A0 HOSTCC=C2=A0 scripts/dtc/treesource.o<=
br>=C2=A0 HOSTCC=C2=A0 scripts/dtc/srcpos.o<br>=C2=A0 HOSTCC=C2=A0 scripts/=
dtc/checks.o<br>=C2=A0 HOSTCC=C2=A0 scripts/dtc/util.o<br>=C2=A0 SHIPPED sc=
ripts/dtc/dtc-lexer.lex.c<br>=C2=A0 SHIPPED scripts/dtc/dtc-parser.tab.h<br=
>=C2=A0 SHIPPED scripts/dtc/dtc-parser.tab.c<br>=C2=A0 HOSTCC=C2=A0 scripts=
/dtc/dtc-lexer.lex.o<br>=C2=A0 HOSTCC=C2=A0 scripts/dtc/dtc-parser.tab.o<br=
>=C2=A0 HOSTLD=C2=A0 scripts/dtc/dtc<br>/home/mistral/yocto1/poky/build-xfc=
e/tmp/work-shared/odroid-xu3/kernel-source/Makefile:560: recipe for target =
&#39;scripts&#39; failed<br>make[2]: *** [scripts] Error 2<br>Makefile:150:=
 recipe for target &#39;sub-make&#39; failed<br>make[1]: *** [sub-make] Err=
or 2<br>Makefile:24: recipe for target &#39;__sub-make&#39; failed<br>make:=
 *** [__sub-make] Error 2<br>WARNING: exit code 1 from a shell command.<br>=
ERROR: Function failed: do_compile (log file is located at /home/mistral/yo=
cto1/poky/build-xfce/tmp/work/odroid_xu3-poky-linux-gnueabi/linux-stable/4.=
9.13+gitAUTOINC+f3329efb7f-r0/temp/log.do_compile.15577)<br><br></div>what =
is the problem and how to solve this problem ?<br><div><br><br></div></div>

--001a1140f4b6c24055054abf86ef--
