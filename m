Return-Path: <gokulraj.kana@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C287E00994; Thu,  6 Jun 2019 09:26:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gokulraj.kana[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.196 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
	[209.85.160.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B40CE00951
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 09:26:38 -0700 (PDT)
Received: by mail-qt1-f196.google.com with SMTP id s57so3350621qte.8
	for <yocto@yoctoproject.org>; Thu, 06 Jun 2019 09:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=F44oecrmRjHT/ZTMF77Uy4tuUdYEifxE/XR05x1+xbE=;
	b=fqGxif9h8g+znIoynxidliNWf1/a68gAnXvYWaERUrczaivuY6Qewld3DaugFyNPr6
	fqG6E9l9k+NkqFfBJyx0Fx8vIPii+WzTLAkHOP4tPiFcHRLglnii+ekQis18DH6pg3V8
	6vDI3kPviFi3FRIZ0XPwOk6Aqups7IYB03sMlDLu+LABOTYvrVXg3x2Ww3JGkxMIyJBm
	ZpdlQibVvFNmqf6BLKm0wUOkjTiStI1fO0GDJzfFtV5+wrWEFFtipoWaS5xD/vrnX5H1
	IUo0Iz4DNfWWkE98NiGbP7AJnZX2Yi7p/VXjIqTGkdleOkgWrrVkKFMmEnvi6GDCfQ3q
	Yobg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=F44oecrmRjHT/ZTMF77Uy4tuUdYEifxE/XR05x1+xbE=;
	b=LjLMl+5G1wQccT8bgjcWHQNyDokAccxNimO3DspjXci0aWyBrJIiURdblNk8VYJ/ea
	134BDrvYzfsPuWnw+nT1FPozazyvrnc0GLHahvSE9niP9hyQgRD0PoD+gNyoctbaOoDc
	9tszcHTqMsGpZIPNRAqS//Y22YzBa0yB7tY0S0ee7kcUU5aKg80WzQ0tADxb359Xhr/a
	6YAQZ7Jxz5gB5GvdJGUVvbUOGkdosY02YiQLlK9NzgYeOlwCQoKoMaCQ+iIBGmRlvZC6
	f6JcTW8HHMwk/v5n32cjdnV5yy653rWswf4zkYKAPBOjdo6lQecvJ1sx1pu095im2que
	yNHg==
X-Gm-Message-State: APjAAAXr+QUvpzMfYOS/ivy99FArWDhWZCzU6MJH9XfcfchoLU/qm7PO
	B/ucMrvydbi+/kkz0vT8qLnd7t2nqiGs72FzD95KgHSNch4=
X-Google-Smtp-Source: APXvYqy8qJ3NS6IwoueHrOhVr/W8vC5nSD0Z2xfvOC7nTciXbqYUh10BFC+/8wLgzxfS/kb31OciQoOpempYxoXSA/c=
X-Received: by 2002:ad4:43c9:: with SMTP id o9mr32641661qvs.113.1559838397115; 
	Thu, 06 Jun 2019 09:26:37 -0700 (PDT)
MIME-Version: 1.0
From: Gokul Raj <gokulraj.kana@gmail.com>
Date: Thu, 6 Jun 2019 21:56:25 +0530
Message-ID: <CAFP4eQ-pUhBiqESOk-5uNGcbRkHW+=+wOpi=dTZDQ55ygGgBJQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Error in building new recipe for Jool network translator
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
X-List-Received-Date: Thu, 06 Jun 2019 16:26:39 -0000
Content-Type: multipart/alternative; boundary="00000000000091330c058aaa2d3b"

--00000000000091330c058aaa2d3b
Content-Type: text/plain; charset="UTF-8"

Hi All,

I'm new to yocto and I'm trying to create recipe for Jool network
translator package. Tried to compile this package in manually and I'm able
to compile with following steps.
*Manual Steps:*

./autogen.sh
./configure
make
make install

*Yocto Receipe: *

DESCRIPTION = "Jool is an Open Source IPv4/IPv6 Translator"
SECTION = "networking"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"

SRCREV = "v4.0.1"
SRC_URI = "git://github.com/NICMx/Jool.git;protocol=http"

DEPENDS = "libnl iptables"

S = "${WORKDIR}/git"

inherit autotools module

Getting following error message */bin/bash: line 20: cd: src/mod: No such
file or directory       *But, the src/mod is present in the source
directory. Help me resolve this issue.

*Yocto Build Error:*

ERROR: jool-4.0.1-r0 do_compile: oe_runmake failed
ERROR: jool-4.0.1-r0 do_compile: Function failed: do_compile (log file is
located at
/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/temp/log.do_compile.58423)
ERROR: Logfile of failure stored in:
/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/temp/log.do_compile.58423
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function do_compile
| NOTE: make -j 6
KERNEL_SRC=/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-source
KERNEL_PATH=/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-source
KERNEL_VERSION=5.0.7-yocto-standard CC=arm-enigma-linux-gnueabi-gcc
 -mno-thumb-interwork -marm -fuse-ld=bfd
-fmacro-prefix-map=/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0=/usr/src/debug/jool/4.0.1-r0

 -fdebug-prefix-map=/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0=/usr/src/debug/jool/4.0.1-r0

 -fdebug-prefix-map=/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/recipe-sysroot=

 -fdebug-prefix-map=/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/recipe-sysroot-native=
 -fdebug-prefix-map=/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-source=/usr/src/kernel
LD=arm-enigma-linux-gnueabi-ld.bfd   AR=arm-enigma-linux-gnueabi-ar
 O=/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-build-artifacts
KBUILD_EXTRA_SYMBOLS=
| Making all in src/mod
| /bin/bash: line 20: cd: src/mod: No such file or directory
| Makefile:343: recipe for target 'all-recursive' failed
| make: *** [all-recursive] Error 1
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/temp/log.do_compile.58423)
ERROR: Task (/home/graj/poky/meta-enigma/recipes-example/jool/jool_4.0.1.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 570 tasks of which 563 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:
  /home/graj/poky/meta-enigma/recipes-example/jool/jool_4.0.1.bb:do_compile
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

Source git link: *https://github.com/NICMx/Jool
<https://github.com/NICMx/Jool>*

Help me in fixing this issue.

Regards,
Gokul Raj K

--00000000000091330c058aaa2d3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>I&#39;m new to yocto=
 and I&#39;m trying to create recipe for Jool network translator package. T=
ried to compile this package in manually and I&#39;m able to compile with f=
ollowing steps.</div><div><font size=3D"4"><b>Manual Steps:</b></font><br><=
/div><div><span style=3D"background-color:rgb(0,255,0)"><br></span></div><d=
iv><span style=3D"background-color:rgb(0,255,0)">./autogen.sh</span></div><=
div><span style=3D"background-color:rgb(0,255,0)">./configure</span></div><=
div><span style=3D"background-color:rgb(0,255,0)">make</span></div><div><sp=
an style=3D"background-color:rgb(0,255,0)">make install</span><br></div><di=
v><br></div><div><font size=3D"4"><b>Yocto Receipe: </b></font><br></div><d=
iv><br></div><div><span style=3D"background-color:rgb(0,255,0)">DESCRIPTION=
 =3D &quot;Jool is an Open Source IPv4/IPv6 Translator&quot;<br>SECTION =3D=
 &quot;networking&quot;<br>LICENSE =3D &quot;GPLv2&quot;<br>LIC_FILES_CHKSU=
M =3D &quot;file://COPYING;md5=3Db234ee4d69f5fce4486a80fdaf4a4263&quot;<br>=
<br>SRCREV =3D &quot;v4.0.1&quot;<br>SRC_URI =3D &quot;git://<a href=3D"htt=
p://github.com/NICMx/Jool.git;protocol=3Dhttp">github.com/NICMx/Jool.git;pr=
otocol=3Dhttp</a>&quot;<br><br>DEPENDS =3D &quot;libnl iptables&quot;<br><b=
r>S =3D &quot;${WORKDIR}/git&quot;<br><br>inherit autotools module</span></=
div><div><br></div><div>Getting following error message <span style=3D"back=
ground-color:rgb(255,255,0)"><b><span style=3D"background-color:rgb(255,0,0=
)">/bin/bash: line 20: cd: src/mod: No such file or directory=C2=A0=C2=A0=
=C2=A0=C2=A0 </span><span style=3D"background-color:rgb(243,243,243)"><span=
 style=3D""><span style=3D"background-color:rgb(255,255,255)">=C2=A0 </span=
></span></span></b><span style=3D"background-color:rgb(243,243,243)"><span =
style=3D""><span style=3D"background-color:rgb(255,255,255)">But, the src/m=
od is present in the source directory. Help me resolve this issue.</span></=
span></span></span></div><div><span style=3D"background-color:rgb(255,255,0=
)"><span style=3D"background-color:rgb(243,243,243)"><span style=3D""><span=
 style=3D"background-color:rgb(255,255,255)"><br></span></span></span></spa=
n></div><div><font size=3D"4"><b><span style=3D"background-color:rgb(255,25=
5,0)"><span style=3D"background-color:rgb(243,243,243)"><span><span style=
=3D"background-color:rgb(255,255,255)">Yocto Build Error:</span></span></sp=
an></span></b></font></div><div><font size=3D"4"><b><span style=3D"backgrou=
nd-color:rgb(255,255,0)"><span style=3D"background-color:rgb(243,243,243)">=
<span><span style=3D"background-color:rgb(255,255,255)"><br></span></span><=
/span></span></b></font></div><div><span style=3D"background-color:rgb(255,=
255,0)"><span style=3D"">ERROR: jool-4.0.1-r0 do_compile: oe_runmake failed=
<br>ERROR: jool-4.0.1-r0 do_compile: Function failed: do_compile (log file =
is located at /home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/j=
ool/4.0.1-r0/temp/log.do_compile.58423)<br>ERROR: Logfile of failure stored=
 in: /home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1=
-r0/temp/log.do_compile.58423<br>Log data follows:<br>| DEBUG: SITE files [=
&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-common&#39;, &#39;arm-3=
2&#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;=
, &#39;arm-linux-gnueabi&#39;, &#39;common&#39;]<br>| DEBUG: Executing shel=
l function do_compile<br>| NOTE: make -j 6 KERNEL_SRC=3D/home/graj/poky/bui=
ld/tmp/work-shared/qemuarm/kernel-source KERNEL_PATH=3D/home/graj/poky/buil=
d/tmp/work-shared/qemuarm/kernel-source KERNEL_VERSION=3D5.0.7-yocto-standa=
rd CC=3Darm-enigma-linux-gnueabi-gcc =C2=A0-mno-thumb-interwork -marm -fuse=
-ld=3Dbfd -fmacro-prefix-map=3D/home/graj/poky/build/tmp/work/qemuarm-enigm=
a-linux-gnueabi/jool/4.0.1-r0=3D/usr/src/debug/jool/4.0.1-r0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-fdebug-prefi=
x-map=3D/home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.=
0.1-r0=3D/usr/src/debug/jool/4.0.1-r0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/graj/po=
ky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/recipe-sysroot=
=3D =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0-fdebug-prefix-map=3D/home/graj/poky/build/tmp/work/qemuarm-enigma-li=
nux-gnueabi/jool/4.0.1-r0/recipe-sysroot-native=3D =C2=A0-fdebug-prefix-map=
=3D/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-source=3D/usr/src/k=
ernel LD=3Darm-enigma-linux-gnueabi-ld.bfd =C2=A0 AR=3Darm-enigma-linux-gnu=
eabi-ar =C2=A0O=3D/home/graj/poky/build/tmp/work-shared/qemuarm/kernel-buil=
d-artifacts KBUILD_EXTRA_SYMBOLS=3D<br>| Making all in src/mod<br>| /bin/ba=
sh: line 20: cd: src/mod: No such file or directory<br>| Makefile:343: reci=
pe for target &#39;all-recursive&#39; failed<br>| make: *** [all-recursive]=
 Error 1<br>| ERROR: oe_runmake failed<br>| WARNING: exit code 1 from a she=
ll command.<br>| ERROR: Function failed: do_compile (log file is located at=
 /home/graj/poky/build/tmp/work/qemuarm-enigma-linux-gnueabi/jool/4.0.1-r0/=
temp/log.do_compile.58423)<br>ERROR: Task (/home/graj/poky/meta-enigma/reci=
pes-example/jool/jool_4.0.1.bb:do_compile) failed with exit code &#39;1&#39=
;<br>NOTE: Tasks Summary: Attempted 570 tasks of which 563 didn&#39;t need =
to be rerun and 1 failed.<br><br>Summary: 1 task failed:<br>=C2=A0 /home/gr=
aj/poky/meta-enigma/recipes-example/jool/jool_4.0.1.bb:do_compile<br>Summar=
y: There were 2 ERROR messages shown, returning a non-zero exit code.</span=
></span></div><div><span style=3D"background-color:rgb(255,255,0)"><span st=
yle=3D"background-color:rgb(243,243,243)"><span style=3D""><span style=3D"b=
ackground-color:rgb(255,255,255)"><br></span></span></span></span></div><di=
v><span style=3D"background-color:rgb(255,255,0)"><span style=3D"background=
-color:rgb(243,243,243)"><span style=3D""><span style=3D"background-color:r=
gb(255,255,255)">Source git link: <u><b><a href=3D"https://github.com/NICMx=
/Jool">https://github.com/NICMx/Jool</a></b></u></span></span></span></span=
></div><div><span style=3D"background-color:rgb(255,255,0)"><span style=3D"=
background-color:rgb(243,243,243)"><span style=3D""><span style=3D"backgrou=
nd-color:rgb(255,255,255)"><u><b><br></b></u></span></span></span></span></=
div><div><span style=3D"background-color:rgb(255,255,0)"><span style=3D"bac=
kground-color:rgb(243,243,243)"><span style=3D""><span style=3D"background-=
color:rgb(255,255,255)">Help me in fixing this issue.</span></span></span><=
/span></div><div><span style=3D"background-color:rgb(255,255,0)"><span styl=
e=3D"background-color:rgb(243,243,243)"><span style=3D""><span style=3D"bac=
kground-color:rgb(255,255,255)"><u><b><br></b></u></span></span></span></sp=
an></div><div><span style=3D"background-color:rgb(255,255,0)"><span style=
=3D"background-color:rgb(243,243,243)"><span style=3D""><span style=3D"back=
ground-color:rgb(255,255,255)">Regards,</span></span></span></span></div><d=
iv><span style=3D"background-color:rgb(255,255,0)"><span style=3D"backgroun=
d-color:rgb(243,243,243)"><span style=3D""><span style=3D"background-color:=
rgb(255,255,255)">Gokul Raj K<u><b><br></b></u></span></span></span></span>=
</div><div><span style=3D"background-color:rgb(255,255,0)"><span style=3D"b=
ackground-color:rgb(243,243,243)"><span style=3D""><span style=3D"backgroun=
d-color:rgb(255,255,255)"><u><b><br></b></u></span></span></span></span></d=
iv></div>

--00000000000091330c058aaa2d3b--
