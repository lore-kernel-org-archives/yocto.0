Return-Path: <mailinglist@teleschirm.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF9E7E00A38; Wed, 14 Oct 2015 01:47:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,XPRIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.237.132.209 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 XPRIO Has X-Priority header
X-Greylist: delayed 1081 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Oct 2015 01:47:52 PDT
Received: from wp202.webpack.hosteurope.de (wp202.webpack.hosteurope.de
	[80.237.132.209])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 276A5E00A38
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 01:47:52 -0700 (PDT)
Received: from app04.ox.hosteurope.de ([92.51.170.11]); authenticated
	by wp202.webpack.hosteurope.de running ExIM with esmtpsa
	(TLS1.0:RSA_ARCFOUR_MD5:16)
	id 1ZmHRV-0004GJ-OE; Wed, 14 Oct 2015 10:29:49 +0200
Date: Wed, 14 Oct 2015 10:29:49 +0200 (CEST)
From: wp1174786-mailinglist <mailinglist@teleschirm.org>
To: yocto@yoctoproject.org
Message-ID: <718188389.624179.1444811389748.JavaMail.open-xchange@app04.ox.hosteurope.de>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.6.2-Rev32
X-Originating-Client: com.openexchange.ox.gui.dhtml
X-bounce-key: webpack.hosteurope.de; mailinglist@teleschirm.org; 1444812474;
	acdc5667; 
Subject: CMake missing header-files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: wp1174786-mailinglist <mailinglist@teleschirm.org>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 14 Oct 2015 08:47:55 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_624178_1106681931.1444811389677"

------=_Part_624178_1106681931.1444811389677
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi there,
 
I noticed a curious problem when trying to build a cmake based recipe. During
configuration phase pthead.h is found.
 

> 

?space?--cmake
/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src
-DCMAKE_INSTALL_PREFIX:PATH=/usr -DCMAKE_INSTALL_BINDIR:PATH=/usr/bin
-DCMAKE_INSTALL_SBINDIR:PATH=/usr/sbin
-DCMAKE_INSTALL_LIBEXECDIR:PATH=/usr/lib/vs100k
-DCMAKE_INSTALL_SYSCONFDIR:PATH=/etc -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=/com
-DCMAKE_INSTALL_LOCALSTATEDIR:PATH=/var -DCMAKE_INSTALL_LIBDIR:PATH=/usr/lib
-DCMAKE_INSTALL_INCLUDEDIR:PATH=/usr/include
-DCMAKE_INSTALL_DATAROOTDIR:PATH=/usr/share -DCMAKE_INSTALL_SO_NO_EXE=0
-DCMAKE_TOOLCHAIN_FILE=/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/toolchain.cmake
-DCMAKE_VERBOSE_MAKEFILE=1 -Wno-dev
-- The C compiler identification is GNU 5.2.0
-- The CXX compiler identification is GNU 5.2.0
-- Check for working C compiler:
/opt/ZX3/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
-- Check for working C compiler:
/opt/ZX3/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
-- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Check for working CXX compiler:
/opt/ZX3/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++
-- Check for working CXX compiler:
/opt/ZX3/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++
-- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Looking for include file pthread.h
-- Looking for include file pthread.h - found
-- Looking for pthread_create

 
But during build phase some header files can not be found?!
 

/opt/ZX3/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++
   -lrt
-I/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/build
-I/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/.
-I/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/log
-I/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/fpga
   -o CMakeFiles/vs100k.dir/log/Log.cpp.o -c
/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/log/Log.cpp
In file included from
/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/VS100K.cpp:8:0:
/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/VS100K.h:4:21:
fatal error: pthread.h: No such file or directory
make[2]: *** [CMakeFiles/vs100k.dir/log/LogToSyslog.cpp.o] Error 1
make[2]: *** Waiting for unfinished jobs....
compilation terminated.

 
Also socket.h can not be found.
My receipe is very rudimentary:


#SECTION = "package"
LICENSE = "CLOSED"
PR = "r0"
PV = "0.1"
DEPENDS = "cmake-native"
S = "${WORKDIR}/src"
inherit pkgconfig cmake
SRC_URI = " file://CMakeLists.txt \
            file://src/fpga/VS100K.h \
            file://src/log/LogToConsole.h \
            file://src/log/LogIf.h \
            file://src/log/LogToSyslog.h \
            file://src/fpga/Fpga.h \
            file://src/main.cpp \
            file://src/fpga/VS100K.cpp \
            file://src/log/LogToSyslog.cpp \
            file://src/log/LogToConsole.cpp \
            file://src/fpga/Fpga.cpp \
             "
do_install() {
    install -m 0755 -d ${D}${bindir}
    install -m 0755 vs100k ${D}${bindir}
}

 
Any idea how to resolve this?
Building the same application using Yocto Eclipse plugins works properly.
 
regards,
Martin

------=_Part_624178_1106681931.1444811389677
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org=
/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns=3D"http://www.w3.org/1999/xhtml"><head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
"/>
 <style type=3D"text/css">.mceResizeHandle {position: absolute;border: 1px =
solid black;background: #FFF;width: 5px;height: 5px;z-index: 10000}.mceResi=
zeHandle:hover {background: #000}img[data-mce-selected] {outline: 1px solid=
 black}img.mceClonedResizable, table.mceClonedResizable {position: absolute=
;outline: 1px dashed black;opacity: .5;z-index: 10000}
</style></head><body style=3D""><div><span>Hi there,</span></div>
<div>&#160;</div>
<div>I noticed a curious problem when trying to build a cmake based recipe.=
 During configuration phase pthead.h is found.</div>
<div>&#160;</div>
<blockquote></blockquote>
<blockquote>&#160;cmake /opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neo=
n-poky-linux-gnueabi/vs100k/0.1-r0/src -DCMAKE_INSTALL_PREFIX:PATH=3D/usr -=
DCMAKE_INSTALL_BINDIR:PATH=3D/usr/bin -DCMAKE_INSTALL_SBINDIR:PATH=3D/usr/s=
bin -DCMAKE_INSTALL_LIBEXECDIR:PATH=3D/usr/lib/vs100k -DCMAKE_INSTALL_SYSCO=
NFDIR:PATH=3D/etc -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=3D/com -DCMAKE_INSTAL=
L_LOCALSTATEDIR:PATH=3D/var -DCMAKE_INSTALL_LIBDIR:PATH=3D/usr/lib -DCMAKE_=
INSTALL_INCLUDEDIR:PATH=3D/usr/include -DCMAKE_INSTALL_DATAROOTDIR:PATH=3D/=
usr/share -DCMAKE_INSTALL_SO_NO_EXE=3D0 -DCMAKE_TOOLCHAIN_FILE=3D/opt/ZX3/y=
octo/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0=
/toolchain.cmake -DCMAKE_VERBOSE_MAKEFILE=3D1 -Wno-dev<br>-- The C compiler=
 identification is GNU 5.2.0<br>-- The CXX compiler identification is GNU 5=
.2.0<br>-- Check for working C compiler: /opt/ZX3/yocto/poky/build/tmp/sysr=
oots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc=
<br>-- Check for working C compiler: /opt/ZX3/yocto/poky/build/tmp/sysroots=
/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc -- =
works<br>-- Detecting C compiler ABI info<br>-- Detecting C compiler ABI in=
fo - done<br>-- Detecting C compile features<br>-- Detecting C compile feat=
ures - done<br>-- Check for working CXX compiler: /opt/ZX3/yocto/poky/build=
/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gn=
ueabi-g++<br>-- Check for working CXX compiler: /opt/ZX3/yocto/poky/build/t=
mp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnue=
abi-g++ -- works<br>-- Detecting CXX compiler ABI info<br>-- Detecting CXX =
compiler ABI info - done<br>-- Detecting CXX compile features<br>-- Detecti=
ng CXX compile features - done<br>-- Looking for include file pthread.h<br>=
-- Looking for include file pthread.h - found<br>-- Looking for pthread_cre=
ate</blockquote>
<div>&#160;</div>
<div>But during build phase some header files can not be found?!</div>
<div>&#160;</div>
<div>
<blockquote>/opt/ZX3/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/arm=
-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++ &#160; &#160;-lrt -I/opt/ZX3=
/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-=
r0/build -I/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-=
gnueabi/vs100k/0.1-r0/src/. -I/opt/ZX3/yocto/poky/build/tmp/work/cortexa9-v=
fp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/log -I/opt/ZX3/yocto/poky/buil=
d/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/fpga &#16=
0; &#160;-o CMakeFiles/vs100k.dir/log/Log.cpp.o -c /opt/ZX3/yocto/poky/buil=
d/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/log/Log.c=
pp<br>In file included from /opt/ZX3/yocto/poky/build/tmp/work/cortexa9-vfp=
-neon-poky-linux-gnueabi/vs100k/0.1-r0/src/VS100K.cpp:8:0:<br>/opt/ZX3/yoct=
o/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/vs100k/0.1-r0/sr=
c/VS100K.h:4:21: fatal error: pthread.h: No such file or directory<br>make[=
2]: *** [CMakeFiles/vs100k.dir/log/LogToSyslog.cpp.o] Error 1<br>make[2]: *=
** Waiting for unfinished jobs....<br>compilation terminated.</blockquote>
<div>&#160;</div>
</div>
<div><span>Also socket.h can not be found.</span><br><span>My receipe is ve=
ry rudimentary:</span></div>
<div>
<blockquote><br><br>#SECTION =3D &#34;package&#34;<br>LICENSE =3D &#34;CLOS=
ED&#34;<br>PR =3D &#34;r0&#34;<br>PV =3D &#34;0.1&#34;<br>DEPENDS =3D &#34;=
cmake-native&#34;<br>S =3D &#34;${WORKDIR}/src&#34;<br>inherit pkgconfig cm=
ake<br>SRC_URI =3D &#34; file://CMakeLists.txt \<br>&#160; &#160; &#160; &#=
160; &#160; &#160; file://src/fpga/VS100K.h \<br>&#160; &#160; &#160; &#160=
; &#160; &#160; file://src/log/LogToConsole.h \<br>&#160; &#160; &#160; &#1=
60; &#160; &#160; file://src/log/LogIf.h \<br>&#160; &#160; &#160; &#160; &=
#160; &#160; file://src/log/LogToSyslog.h \<br>&#160; &#160; &#160; &#160; =
&#160; &#160; file://src/fpga/Fpga.h \<br>&#160; &#160; &#160; &#160; &#160=
; &#160; file://src/main.cpp \<br>&#160; &#160; &#160; &#160; &#160; &#160;=
 file://src/fpga/VS100K.cpp \<br>&#160; &#160; &#160; &#160; &#160; &#160; =
file://src/log/LogToSyslog.cpp \<br>&#160; &#160; &#160; &#160; &#160; &#16=
0; file://src/log/LogToConsole.cpp \<br>&#160; &#160; &#160; &#160; &#160; =
&#160; file://src/fpga/Fpga.cpp \<br>&#160; &#160; &#160; &#160; &#160; &#1=
60; &#160;&#34;<br>do_install() {<br>&#160; &#160; install -m 0755 -d ${D}$=
{bindir}<br>&#160; &#160; install -m 0755 vs100k ${D}${bindir}<br>}</blockq=
uote>
<div>&#160;</div>
</div>
<div>Any idea how to resolve this?</div>
<div>Building the same application using Yocto Eclipse plugins works proper=
ly.</div>
<div>&#160;</div>
<div>regards,</div>
<div>Martin</div></body></html>

------=_Part_624178_1106681931.1444811389677--
