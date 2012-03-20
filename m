Return-Path: <navani.srivastava@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9AEAE013A5
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 23:37:58 -0700 (PDT)
Received: by bkcji17 with SMTP id ji17so7346043bkc.35
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 23:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=7KddtfCwkppbUd6iUBWAPNw9xUWTv0nIM9VP8CUbK18=;
	b=ySn8ofOs4QD+hRtgIYfZU6Y2XRNsce6MGtGcLJeIA9LIUK/AquJlm8xsjuTXyLBhcE
	8HlhpQDoGlSnxxYEj19/VrF8K58ihvnOfiExDQpjP1/mfD5GZ4vWfz/2rSGP5WUSHISB
	kDEfJK5c/OZBvJ2NjALXMaWJAJkMYFkMNmLaJLQUabZSz2f/UIIhRpxs794zz+fIne8D
	ZFKU55IPwiLrYO3VWU8ZapCeILSsOrYfnCIlIm+Hcivihyc0TiG/xTvX/Yjr9ooZd5eN
	DErUoVSq/0+bZir5D3VJrPDsyD2sqNpLRoAu1TOUaWu1ppEBTNQX0YyUMDlNQXfflZ8U
	WS0w==
Received: by 10.204.129.71 with SMTP id n7mr5513096bks.91.1332225477520; Mon,
	19 Mar 2012 23:37:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.204.153.193 with HTTP; Mon, 19 Mar 2012 23:37:37 -0700 (PDT)
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Tue, 20 Mar 2012 12:07:37 +0530
Message-ID: <CA+Z6RkU9b9zAobZWXwMs6mRKMtcJEmq65eUxpZVWsABC9ywwQw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 20 Mar 2012 08:03:24 -0700
Cc: Praveen Vk <Praveen.VK@lnties.com>
Subject: Problem in Compiling Qt-4.6.3
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Mar 2012 06:37:59 -0000
Content-Type: multipart/alternative; boundary=0015174783d8592bc604bba6ead2

--0015174783d8592bc604bba6ead2
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am facing difficulty in compiling qt4-embedded_4.6.3.bb. I am compiling
qt for arm1136 arch. I have changed configuration parameters of qt in
qt4.inc as -

" -opensource -embedded arm -confirm-license -release -shared -xmlpatterns
-make libs -nomake docs -nomake demos -nomake tools -qt-gfx-linuxfb
-qt-gfx-directfb -qt-gfx-vnc -qt-gfx-qvfb -qt-gfx-transformed
-qt-gfx-multiscreen -qt-kbd-tty -qt-kbd-linuxinput -qt-kbd-qvfb
-qt-mouse-pc -qt-mouse-linuxinput -no-mouse-linuxtp -qt-mouse-tslib
-qt-mouse-qvfb -depths all -no-sql-sqlite -no-sql-ibase -no-sql-mysql
-no-sql-odbc -no-sql-psql -no-sql-sqlite2 -accessibility -no-qt3support
-no-mmx -no-3dnow -no-sse -no-sse2 -no-neon -no-glib -no-openssl -no-opengl
-no-multimedia -no-audio-backend -no-phonon -no-phonon-backend -no-webkit
-no-cups -no-nis -no-dbus -no-libmng -no-libtiff -no-gif -no-libjpeg
-no-scripttools -exceptions -iconv -largefile "

On issuing " bitbake -v meta-toolchain-qte" command I am getting following
error-


floatmath auto-detection... ()
| compiling floatmath.cpp
| floatmath.cpp:44:5: warning: unused parameter 'argc'
| floatmath.cpp:44:5: warning: unused parameter 'argv'
| linking floatmath
| floatmath enabled.
| zlib auto-detection... ()
| compiling zlib.cpp
| linking zlib
| zlib enabled.
| libpng auto-detection... ()
| compiling libpng.cpp
| linking libpng
| libpng enabled.
| DB2 auto-detection... ()
| compiling db2.cpp
| db2.cpp:42:20: fatal error: sqlcli.h: No such file or directory
| compilation terminated.
| make: *** [db2.o] Error 1
| DB2 disabled.
| OCI auto-detection... ()
| compiling oci.cpp
| oci.cpp:42:17: fatal error: oci.h: No such file or directory
| compilation terminated.
| make: *** [oci.o] Error 1
| OCI disabled.
| unknown SQL driver: sqlite_symbian
| TDS auto-detection... ()
| compiling tds.cpp
| tds.cpp:42:22: fatal error: sybfront.h: No such file or directory
| compilation terminated.
| make: *** [tds.o] Error 1
| TDS disabled.
| EGL (EGL/egl.h) auto-detection... ()
| compiling egl.cpp
| egl.cpp:42:21: fatal error: EGL/egl.h: No such file or directory
| compilation terminated.
| make: *** [egl.o] Error 1
| EGL (EGL/egl.h) disabled.
| EGL (GLES/egl.h) auto-detection... ()
| compiling egl4gles1.cpp
| egl4gles1.cpp:42:22: fatal error: GLES/egl.h: No such file or directory
| compilation terminated.
| make: *** [egl4gles1.o] Error 1
| EGL (GLES/egl.h) disabled.
| DirectFB auto-detection... ()
| compiling directfb.cpp

 Stdint enabled.
| ./configure: line 6403: $(OE_QMAKE_CXX): command not found
| Testing size of pointers ...
(/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnueabi/qt4-embedded-4.6.3-r26.1/qt-everywhere-opensource-src-4.6.3/mkspecs/linux-gnueabi-oe-g++
yes
/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnueabi/qt4-embedded-4.6.3-r26.1/qt-everywhere-opensource-src-4.6.3
/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnueabi/qt4-embedded-4.6.3-r26.1/qt-everywhere-opensource-src-4.6.3)
| rm -f ptrsizetest.o
| rm -f *~ core *.core
| arm-poky-linux-gnueabi-g++ -march=armv6j -mtune=arm1136jf-s
-mfloat-abi=softfp
-mfpu=vfp -mthumb-interwork -mno-thumb
--sysroot=/home/navani/Poky/poky-bernard-5.0/build/tmp/sysroots/EBboard -c
-pipe
-fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb
-feliminate-unused-debug-types -fexpensive-optimizations
-fomit-frame-pointer
-frename-registers -O2 -ggdb -feliminate-unused-debug-types -fpermissive
-fvisibility-inlines-hidden -Wall -W  -I../../../mkspecs/linux-g++ -I. -o
ptrsizetest.o ptrsizetest.cpp
| ptrsizetest.cpp: In function 'int main(int, char**)':
| ptrsizetest.cpp:59:12: error: 'PointerSize' is not a member of
'QPointerSizeTest<4>'
| make: *** [ptrsizetest.o] Error 1
| Pointer size: 4

|
/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnueabi/qt4-embedded-4.6.3-r26.1/qt-everywhere-opensource-src-4.6.3/bin/qmake
-spec
/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnueabi/qt4-embedded-4.6.3-r26.1/qt-everywhere-opensource-src-4.6.3/mkspecs/linux-gnueabi-oe-g++
-o
/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnueabi/qt4-embedded-4.6.3-r26.1/qt-everywhere-opensource-src-4.6.3/./src/phonon
/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnueabi/qt4-embedded-4.6.3-r26.1/qt-everywhere-opensource-src-4.6.3/src/phonon/
phonon.pro
|
| Qt is now configured for building. Just run 'make'.
| Once everything is built, you must run 'make install'.
| Qt will be installed into /usr/
|
| To reconfigure, run 'make confclean' and 'configure'.
|
| sed: can't read
/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnueabi/qt4-embedded-4.6.3-r26.1/qt-everywhere-opensource-src-4.6.3/translations/Makefile:
No such file or directory
| ERROR: Function 'do_configure' failed (see
/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnueabi/qt4-embedded-4.6.3-r26.1/temp/log.do_configure.27870
for further information)
NOTE: package qt4-embedded-4.6.3-r26.1: task do_configure: Failed
ERROR: Task 546
(/home/navani/Poky/poky-bernard-5.0/meta-EB/recipes-qt/qt4/
qt4-embedded_4.6.3.bb, do_configure)
failed with exit code '1'


My question lies here-
>> "db2.cpp:42:20: fatal error: sqlcli.h: No such file or directory"
>> "oci.cpp:42:17: fatal error: oci.h: No such file or directory"

Am I configuring Qt in wrong manner?

>> Stdint enabled.
| ./configure: line 6403: $(OE_QMAKE_CXX): command not found

Not able to understand what error is this.

>> | sed: can't read
/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnueabi/qt4-embedded-4.6.3-r26.1/qt-everywhere-opensource-src-4.6.3/translations/Makefile:
No such file or directory
| ERROR: Function 'do_configure' failed (see
/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnueabi/qt4-embedded-4.6.3-r26.1/temp/log.do_configure.27870
for further information)

On removing
"sed -e '/QMAKE_TARGET /d' -e '/TARGET /d' -i ${S}/translations/Makefile"
from qt-4.6.3.inc and this error got resolved. But I don't think this is
the correct way.

Can you please come up with the correct way to resolve these errors?
Thank You..

--0015174783d8592bc604bba6ead2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I am facing difficulty in compiling <a href=3D"http://qt4-embedd=
ed_4.6.3.bb">qt4-embedded_4.6.3.bb</a>. I am compiling qt for arm1136 arch.=
 I have changed configuration parameters of qt in qt4.inc as -<br><br>&quot=
; -opensource -embedded arm -confirm-license -release -shared -xmlpatterns =
-make libs -nomake docs -nomake demos -nomake tools -qt-gfx-linuxfb -qt-gfx=
-directfb -qt-gfx-vnc -qt-gfx-qvfb -qt-gfx-transformed -qt-gfx-multiscreen =
-qt-kbd-tty -qt-kbd-linuxinput -qt-kbd-qvfb -qt-mouse-pc -qt-mouse-linuxinp=
ut -no-mouse-linuxtp -qt-mouse-tslib -qt-mouse-qvfb -depths all -no-sql-sql=
ite -no-sql-ibase -no-sql-mysql -no-sql-odbc -no-sql-psql -no-sql-sqlite2 -=
accessibility -no-qt3support=A0 -no-mmx -no-3dnow -no-sse -no-sse2 -no-neon=
 -no-glib -no-openssl -no-opengl -no-multimedia -no-audio-backend -no-phono=
n -no-phonon-backend -no-webkit -no-cups -no-nis -no-dbus -no-libmng -no-li=
btiff -no-gif -no-libjpeg -no-scripttools -exceptions -iconv -largefile &qu=
ot;<br>

<br>On issuing &quot; bitbake -v meta-toolchain-qte&quot; command I am gett=
ing following error-<br><br><br>floatmath auto-detection... ()<br>| compili=
ng floatmath.cpp<br>| floatmath.cpp:44:5: warning: unused parameter &#39;ar=
gc&#39;<br>

| floatmath.cpp:44:5: warning: unused parameter &#39;argv&#39;<br>| linking=
 floatmath<br>| floatmath enabled.<br>| zlib auto-detection... ()<br>| comp=
iling zlib.cpp<br>| linking zlib<br>| zlib enabled.<br>| libpng auto-detect=
ion... ()<br>

| compiling libpng.cpp<br>| linking libpng<br>| libpng enabled.<br>| DB2 au=
to-detection... ()<br>| compiling db2.cpp<br>| db2.cpp:42:20: fatal error: =
sqlcli.h: No such file or directory<br>| compilation terminated.<br>| make:=
 *** [db2.o] Error 1<br>

| DB2 disabled.<br>| OCI auto-detection... ()<br>| compiling oci.cpp<br>| o=
ci.cpp:42:17: fatal error: oci.h: No such file or directory<br>| compilatio=
n terminated.<br>| make: *** [oci.o] Error 1<br>| OCI disabled.<br>| unknow=
n SQL driver: sqlite_symbian<br>

| TDS auto-detection... ()<br>| compiling tds.cpp<br>| tds.cpp:42:22: fatal=
 error: sybfront.h: No such file or directory<br>| compilation terminated.<=
br>| make: *** [tds.o] Error 1<br>| TDS disabled.<br>| EGL (EGL/egl.h) auto=
-detection... ()<br>

| compiling egl.cpp<br>| egl.cpp:42:21: fatal error: EGL/egl.h: No such fil=
e or directory<br>| compilation terminated.<br>| make: *** [egl.o] Error 1<=
br>| EGL (EGL/egl.h) disabled.<br>| EGL (GLES/egl.h) auto-detection... ()<b=
r>

| compiling egl4gles1.cpp<br>| egl4gles1.cpp:42:22: fatal error: GLES/egl.h=
: No such file or directory<br>| compilation terminated.<br>| make: *** [eg=
l4gles1.o] Error 1<br>| EGL (GLES/egl.h) disabled.<br>| DirectFB auto-detec=
tion... ()<br>

| compiling directfb.cpp<br><br>=A0Stdint enabled.<br>| ./configure: line 6=
403: $(OE_QMAKE_CXX): command not found<br>| Testing size of pointers ...<b=
r>(/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnuea=
bi/qt4-embedded-4.6.3-r26.1/qt-everywhere-opensource-src-4.6.3/mkspecs/linu=
x-gnueabi-oe-g++<br>

yes<br>/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-g=
nueabi/qt4-embedded-4.6.3-r26.1/qt-everywhere-opensource-src-4.6.3<br>/home=
/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnueabi/qt4-e=
mbedded-4.6.3-r26.1/qt-everywhere-opensource-src-4.6.3)<br>

| rm -f ptrsizetest.o<br>| rm -f *~ core *.core<br>| arm-poky-linux-gnueabi=
-g++ -march=3Darmv6j -mtune=3Darm1136jf-s -mfloat-abi=3Dsoftfp<br>-mfpu=3Dv=
fp -mthumb-interwork -mno-thumb<br>--sysroot=3D/home/navani/Poky/poky-berna=
rd-5.0/build/tmp/sysroots/EBboard -c -pipe<br>

-fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb=
<br>-feliminate-unused-debug-types -fexpensive-optimizations -fomit-frame-p=
ointer<br>-frename-registers -O2 -ggdb -feliminate-unused-debug-types -fper=
missive<br>

-fvisibility-inlines-hidden -Wall -W=A0 -I../../../mkspecs/linux-g++ -I. -o=
<br>ptrsizetest.o ptrsizetest.cpp<br>| ptrsizetest.cpp: In function &#39;in=
t main(int, char**)&#39;:<br>| ptrsizetest.cpp:59:12: error: &#39;PointerSi=
ze&#39; is not a member of<br>

&#39;QPointerSizeTest&lt;4&gt;&#39;<br>| make: *** [ptrsizetest.o] Error 1<=
br>| Pointer size: 4<br><br>|<br>/home/navani/Poky/poky-bernard-5.0/build/t=
mp/work/armv6-poky-linux-gnueabi/qt4-embedded-4.6.3-r26.1/qt-everywhere-ope=
nsource-src-4.6.3/bin/qmake<br>

-spec<br>/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux=
-gnueabi/qt4-embedded-4.6.3-r26.1/qt-everywhere-opensource-src-4.6.3/mkspec=
s/linux-gnueabi-oe-g++<br>-o<br>/home/navani/Poky/poky-bernard-5.0/build/tm=
p/work/armv6-poky-linux-gnueabi/qt4-embedded-4.6.3-r26.1/qt-everywhere-open=
source-src-4.6.3/./src/phonon<br>

/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnueabi/=
qt4-embedded-4.6.3-r26.1/qt-everywhere-opensource-src-4.6.3/src/phonon/<a h=
ref=3D"http://phonon.pro">phonon.pro</a><br>|<br>| Qt is now configured for=
 building. Just run &#39;make&#39;.<br>

| Once everything is built, you must run &#39;make install&#39;.<br>| Qt wi=
ll be installed into /usr/<br>|<br>| To reconfigure, run &#39;make confclea=
n&#39; and &#39;configure&#39;.<br>|<br>| sed: can&#39;t read<br>/home/nava=
ni/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnueabi/qt4-embedd=
ed-4.6.3-r26.1/qt-everywhere-opensource-src-4.6.3/translations/Makefile:<br=
>

No such file or directory<br>| ERROR: Function &#39;do_configure&#39; faile=
d (see<br>/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linu=
x-gnueabi/qt4-embedded-4.6.3-r26.1/temp/log.do_configure.27870<br>for furth=
er information)<br>

NOTE: package qt4-embedded-4.6.3-r26.1: task do_configure: Failed<br>ERROR:=
 Task 546<br>(/home/navani/Poky/poky-bernard-5.0/meta-EB/recipes-qt/qt4/<a =
href=3D"http://qt4-embedded_4.6.3.bb">qt4-embedded_4.6.3.bb</a>, do_configu=
re)<br>

failed with exit code &#39;1&#39;<br><br><br>My question lies here-<br>&gt;=
&gt; &quot;db2.cpp:42:20: fatal error: sqlcli.h: No such file or directory&=
quot; <br>&gt;&gt; &quot;oci.cpp:42:17: fatal error: oci.h: No such file or=
 directory&quot;<br>

<br>Am I configuring Qt in wrong manner?<br><br>&gt;&gt; Stdint enabled.<br=
>| ./configure: line 6403: $(OE_QMAKE_CXX): command not found<br><br>Not ab=
le to understand what error is this.<br><br>&gt;&gt; | sed: can&#39;t read<=
br>

/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnueabi/=
qt4-embedded-4.6.3-r26.1/qt-everywhere-opensource-src-4.6.3/translations/Ma=
kefile:<br>No such file or directory<br>| ERROR: Function &#39;do_configure=
&#39; failed (see<br>

/home/navani/Poky/poky-bernard-5.0/build/tmp/work/armv6-poky-linux-gnueabi/=
qt4-embedded-4.6.3-r26.1/temp/log.do_configure.27870<br>for further informa=
tion)<br><br>On removing <br>&quot;sed -e &#39;/QMAKE_TARGET /d&#39; -e &#3=
9;/TARGET /d&#39; -i ${S}/translations/Makefile&quot; from qt-4.6.3.inc and=
 this error got resolved. But I don&#39;t think this is the correct way.<br=
>

<br>Can you please come up with the correct way to resolve these errors?<br=
>Thank You..<br>

--0015174783d8592bc604bba6ead2--
