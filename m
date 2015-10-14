Return-Path: <martin.kiepfer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8764E00BAB; Wed, 14 Oct 2015 01:14:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.kiepfer[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12D89E00AC5
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 01:14:53 -0700 (PDT)
Received: by igbhv6 with SMTP id hv6so11576593igb.0
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 01:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=7njQSkiOJNo0+MccZrLI3zL0ZU01PMaW0TPorrSqWP0=;
	b=eDbc7sF/wWTx5Sast7wr1hsF5OUqREOj+bEasWITGs1aw8f6pqCn1NpaqaO3P+1Fm9
	AuHo48FvCX4Ku8FDoqSZLO4HXBbqXplVExwz1IXPB8ejXNlgI+HqzWNyOWV0bIoThr1R
	jXR2ZnBgu6PnNOO8DGr8iwEUqMKtg8aWODDimZpIvM+lnYTxByoYJP9WKhSwzYYfeyGT
	UJ0Nx/VqmIpV2ud07h8a4N6poj6DY00OCq8j1w2NQhasmDWQ/MoMoDf0k1wTxn1GOnss
	XVdmIoAcBO5PGNGJ8ZYDmYIDN1KRc38XYsJZHSqgqXd9MXICO/M1WFtKBpXCOj2ftnON
	JO9A==
MIME-Version: 1.0
X-Received: by 10.50.4.65 with SMTP id i1mr2505068igi.0.1444810492779; Wed, 14
	Oct 2015 01:14:52 -0700 (PDT)
Received: by 10.107.21.71 with HTTP; Wed, 14 Oct 2015 01:14:52 -0700 (PDT)
Date: Wed, 14 Oct 2015 10:14:52 +0200
Message-ID: <CAJukfNd6eF0o+nYWxvf70V-KYkgqtiM3VD8KoBGJtMuicm9Nxw@mail.gmail.com>
From: Martin Kiepfer <martin.kiepfer@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 19 Oct 2015 09:31:39 -0700
Subject: CMake issue - missing header files
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
X-List-Received-Date: Wed, 14 Oct 2015 08:14:57 -0000
Content-Type: multipart/alternative; boundary=001a11c2a3a030a4ed05220c28a8

--001a11c2a3a030a4ed05220c28a8
Content-Type: text/plain; charset=UTF-8

Hi there,

I noticed a curious problem when trying to build a cmake based recipe.
During configuration phase pthead.h is found.

 cmake
> /opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src
> -DCMAKE_INSTALL_PREFIX:PATH=/usr -DCMAKE_INSTALL_BINDIR:PATH=/usr/bin
> -DCMAKE_INSTALL_SBINDIR:PATH=/usr/sbin
> -DCMAKE_INSTALL_LIBEXECDIR:PATH=/usr/lib/vs100k
> -DCMAKE_INSTALL_SYSCONFDIR:PATH=/etc
> -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=/com
> -DCMAKE_INSTALL_LOCALSTATEDIR:PATH=/var
> -DCMAKE_INSTALL_LIBDIR:PATH=/usr/lib
> -DCMAKE_INSTALL_INCLUDEDIR:PATH=/usr/include
> -DCMAKE_INSTALL_DATAROOTDIR:PATH=/usr/share -DCMAKE_INSTALL_SO_NO_EXE=0
> -DCMAKE_TOOLCHAIN_FILE=/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/toolchain.cmake
> -DCMAKE_VERBOSE_MAKEFILE=1 -Wno-dev
> -- The C compiler identification is GNU 5.2.0
> -- The CXX compiler identification is GNU 5.2.0
> -- Check for working C compiler:
> /opt/ZX3/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
> -- Check for working C compiler:
> /opt/ZX3/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
> -- works
> -- Detecting C compiler ABI info
> -- Detecting C compiler ABI info - done
> -- Detecting C compile features
> -- Detecting C compile features - done
> -- Check for working CXX compiler:
> /opt/ZX3/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++
> -- Check for working CXX compiler:
> /opt/ZX3/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++
> -- works
> -- Detecting CXX compiler ABI info
> -- Detecting CXX compiler ABI info - done
> -- Detecting CXX compile features
> -- Detecting CXX compile features - done
> -- Looking for include file pthread.h
> -- Looking for include file pthread.h - found
> -- Looking for pthread_create


But during build phase some header files can not be found?!

/opt/ZX3/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++
>    -lrt
> -I/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/build
> -I/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/.
> -I/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/log
> -I/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/fpga
>    -o CMakeFiles/vs100k.dir/log/Log.cpp.o -c
> /opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/log/Log.cpp
> In file included from
> /opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/VS100K.cpp:8:0:
> /opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/VS100K.h:4:21:
> fatal error: pthread.h: No such file or directory
> make[2]: *** [CMakeFiles/vs100k.dir/log/LogToSyslog.cpp.o] Error 1
> make[2]: *** Waiting for unfinished jobs....
> compilation terminated.


Also socket.h can not be found.
My receipe is very rudimentary:

>
>
> #SECTION = "package"
> LICENSE = "CLOSED"
> PR = "r0"
> PV = "0.1"
> DEPENDS = "cmake-native"
> S = "${WORKDIR}/src"
> inherit pkgconfig cmake
> SRC_URI = " file://CMakeLists.txt \
>             file://src/fpga/VS100K.h \
>             file://src/log/LogToConsole.h \
>             file://src/log/LogIf.h \
>             file://src/log/LogToSyslog.h \
>             file://src/fpga/Fpga.h \
>             file://src/main.cpp \
>             file://src/fpga/VS100K.cpp \
>             file://src/log/LogToSyslog.cpp \
>             file://src/log/LogToConsole.cpp \
>             file://src/fpga/Fpga.cpp \
>              "
> do_install() {
>     install -m 0755 -d ${D}${bindir}
>     install -m 0755 vs100k ${D}${bindir}
> }


Any idea how to resolve this?
Building the same application using Yocto Eclipse plugins works properly.

regards,
Martin

--001a11c2a3a030a4ed05220c28a8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi there,<div><br></div><div>I noticed a curious problem w=
hen trying to build a cmake based recipe. During configuration phase pthead=
.h is found.</div><div><br></div><blockquote style=3D"margin:0px 0px 0px 40=
px;border:none;padding:0px"></blockquote><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:r=
gb(204,204,204);border-left-style:solid;padding-left:1ex">=C2=A0cmake /opt/=
ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0=
.1-r0/src -DCMAKE_INSTALL_PREFIX:PATH=3D/usr -DCMAKE_INSTALL_BINDIR:PATH=3D=
/usr/bin -DCMAKE_INSTALL_SBINDIR:PATH=3D/usr/sbin -DCMAKE_INSTALL_LIBEXECDI=
R:PATH=3D/usr/lib/vs100k -DCMAKE_INSTALL_SYSCONFDIR:PATH=3D/etc -DCMAKE_INS=
TALL_SHAREDSTATEDIR:PATH=3D/com -DCMAKE_INSTALL_LOCALSTATEDIR:PATH=3D/var -=
DCMAKE_INSTALL_LIBDIR:PATH=3D/usr/lib -DCMAKE_INSTALL_INCLUDEDIR:PATH=3D/us=
r/include -DCMAKE_INSTALL_DATAROOTDIR:PATH=3D/usr/share -DCMAKE_INSTALL_SO_=
NO_EXE=3D0 -DCMAKE_TOOLCHAIN_FILE=3D/opt/ZX3/yocto/poky/build/tmp/work/cort=
exa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/toolchain.cmake -DCMAKE_VERB=
OSE_MAKEFILE=3D1 -Wno-dev<br>-- The C compiler identification is GNU 5.2.0<=
br>-- The CXX compiler identification is GNU 5.2.0<br>-- Check for working =
C compiler: /opt/ZX3/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm=
-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc<br>-- Check for working C co=
mpiler: /opt/ZX3/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-pok=
y-linux-gnueabi/arm-poky-linux-gnueabi-gcc -- works<br>-- Detecting C compi=
ler ABI info<br>-- Detecting C compiler ABI info - done<br>-- Detecting C c=
ompile features<br>-- Detecting C compile features - done<br>-- Check for w=
orking CXX compiler: /opt/ZX3/yocto/poky/build/tmp/sysroots/x86_64-linux/us=
r/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++<br>-- Check for wor=
king CXX compiler: /opt/ZX3/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/=
bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++ -- works<br>-- Detect=
ing CXX compiler ABI info<br>-- Detecting CXX compiler ABI info - done<br>-=
- Detecting CXX compile features<br>-- Detecting CXX compile features - don=
e<br>-- Looking for include file pthread.h<br>-- Looking for include file p=
thread.h - found<br>-- Looking for pthread_create</blockquote><div><br></di=
v><div>But during build phase some header files can not be found?!</div><di=
v><br></div><div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-l=
eft-style:solid;padding-left:1ex">/opt/ZX3/yocto/poky/build/tmp/sysroots/x8=
6_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++ =C2=A0=
 =C2=A0-lrt -I/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-lin=
ux-gnueabi/vs100k/0.1-r0/build -I/opt/ZX3/yocto/poky/build/tmp/work/cortexa=
9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/. -I/opt/ZX3/yocto/poky/bui=
ld/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/log -I/o=
pt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100=
k/0.1-r0/src/fpga =C2=A0 =C2=A0-o CMakeFiles/vs100k.dir/log/Log.cpp.o -c /o=
pt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100=
k/0.1-r0/src/log/Log.cpp<br>In file included from /opt/ZX3/yocto/poky/build=
/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/VS100K.cpp=
:8:0:<br>/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gn=
ueabi/vs100k/0.1-r0/src/VS100K.h:4:21: fatal error: pthread.h: No such file=
 or directory<br>make[2]: *** [CMakeFiles/vs100k.dir/log/LogToSyslog.cpp.o]=
 Error 1<br>make[2]: *** Waiting for unfinished jobs....<br>compilation ter=
minated.</blockquote><div>=C2=A0</div></div>Also socket.h can not be found.=
<br>My receipe is very rudimentary:<br><div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-colo=
r:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><br><br>#SECTI=
ON =3D &quot;package&quot;<br>LICENSE =3D &quot;CLOSED&quot;<br>PR =3D &quo=
t;r0&quot;<br>PV =3D &quot;0.1&quot;<br>DEPENDS =3D &quot;cmake-native&quot=
;<br>S =3D &quot;${WORKDIR}/src&quot;<br>inherit pkgconfig cmake<br>SRC_URI=
 =3D &quot; file://CMakeLists.txt \<br> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 file://src/fpga/VS100K.h \<br> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 file://src/log/LogToConsole.h \<br> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 file://src/log/LogIf.h \<br> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 file://src/log/LogToSyslog.h \<br> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 file://src/fpga/Fpga.h \<br> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 file://src/main.cpp \<br> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
file://src/fpga/VS100K.cpp \<br> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
file://src/log/LogToSyslog.cpp \<br> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 file://src/log/LogToConsole.cpp \<br> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 file://src/fpga/Fpga.cpp \<br> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0&quot;<br>do_install() {<br>=C2=A0 =C2=A0 install -m 0755 =
-d ${D}${bindir}<br>=C2=A0 =C2=A0 install -m 0755 vs100k ${D}${bindir}<br>}=
</blockquote><div><div><br></div></div></div><div>Any idea how to resolve t=
his?</div><div>Building the same application using Yocto Eclipse plugins wo=
rks properly.</div><div><br></div><div>regards,</div><div>Martin</div></div=
>

--001a11c2a3a030a4ed05220c28a8--
