Return-Path: <felix01.fischer@iav.de>
Received: from mailout04.rmx.de (mailout04.rmx.de [94.199.90.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E53AE00BDA
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 04:00:59 -0700 (PDT)
Received: from cryptout01.retarus.com ([172.19.21.78])
	by mailout04.rmx.de (8.14.4/8.14.5/retarus.custom) with ESMTP id
	s3PB0soC030224
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 13:00:55 +0200
Received: from cryptout01 (localhost [127.0.0.1])
	by cryptout01.retarus.com (Postfix) with ESMTP id EC3E03704C9
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 13:00:53 +0200 (CEST)
Received: from mailcc10.retarus.de (mailcc10.retarus.de [172.19.21.10])
	by cryptout01.retarus.com (Postfix) with SMTP id B02FA3704CA
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 13:00:53 +0200 (CEST)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: E6AAA3CB:F2E905AC-C1257CC5:0035C1A6;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF39 May 13, 2013
From: Felix01 Fischer <felix01.fischer@iav.de>
Message-ID: <OFE6AAA3CB.F2E905AC-ONC1257CC5.0035C1A6-C1257CC5.003C7A9B@retarus.de>
Date: Fri, 25 Apr 2014 13:00:38 +0200
X-RouteServers: CN=SRVB02M/O=IAV;CN=SRVHUB1/O=IAV
X-MIMETrack: Serialize by Router on jaja/RetarusMail(Release 8.5.3FP3|November
	15, 2012) at 04/25/2014 13:00:42,
	Serialize complete at 04/25/2014 13:00:42
X-RMX-ID: 20140425-130042-s3PB0gKr020898-0@kdin02
X-RMX-TRACE: 2014-04-25 13:00:42 KdIn2013@kdin02/mailcc09 [0.4s]
	20140425-130042-s3PB0gKr020898-0@kdin02 0:00:00
X-RMX-TRACE: 2014-04-25 13:00:43 RmxMSO@kdin02/mailcc08 [0.0s]
	20140425-130042-s3PB0gKr020898-0@kdin02 0:00:01
Subject: building qtbase for raspberry pi fails
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
X-List-Received-Date: Fri, 25 Apr 2014 11:01:02 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 003C7A98C1257CC5_="

--=_alternative 003C7A98C1257CC5_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello everybody,
first, I hope I have choosen the right mailing list for my problem. If=20
not, please tell me.

I have problems getting Qt5 building and running on a raspberry pi (512 Mb =

Version).
I'm using today's master branch from yocto & meta-raspberrypi (=20
git.yoctoproject.org ) and meta-qt5 ( github.com/meta-qt5/meta-qt5 ).
Building without a change in qtbase doesn't work because the OpenGL Test=20
fails ( the raspberry pi only suppports GLESv2).
When building with a qtbase=5FX.Y.Z.bbappend and "PACKAGECCONFIG=5Fappend =
=3D "=20
gles2" in order to use eglfs the mess beginns.
First, building qtbase fails because=20
qtbase-opensource-src-5.2.1/config.tests/qpa/egl/egl.cpp cannot find=20
"vcos=5Ftypes.h"
After including this manually in "meta-qt5/recipes-qt/qt5/qtbase.inc" by=20
adding the last line to configure
do=5Fconfigure() {
=20
[.............]

    ${S}/configure -v \
-I${STAGING=5FDIR=5FTARGET}/usr/include/interface/vcos/pthreads/ \

[.............]

}

=20
the next error is the following:
| EGL auto-detection... ()
| arm-poky-linux-gnueabi-g++  -march=3Darmv6 -mthumb-interwork=20
-mfloat-abi=3Dsoftfp  -mfpu=3Dvfp=20
--sysroot=3D/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi -=
c=20
-pipe  -O2 -pipe -g -feliminate-unused-debug-types=20
-fvisibility-inlines-hidden -O2 -Wall -W -fPIE=20
-I../../../../qtbase-opensource-src-5.2.1/mkspecs/linux-oe-g++=20
-I../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl=20
-I../../../../../../../../sysroots/raspberrypi/usr/include/interface/vcos/p=
threads=20
-I. -o egl.o=20
../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl/egl.cpp
| ../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl/egl.cpp: In =

function 'int main(int, char**)':
|=20
../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl/egl.cpp:46:12:=
=20
warning: unused variable 'x' [-Wunused-variable]
|      EGLint x =3D 0;
|             ^
| arm-poky-linux-gnueabi-g++  -march=3Darmv6 -mthumb-interwork=20
-mfloat-abi=3Dsoftfp  -mfpu=3Dvfp=20
--sysroot=3D/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi=20
-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -Wl,-O1 -o egl egl.o   -lEGL
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fclient=5FGetRenderbufferParameteriv'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `gl20=5Fclient=5Fstate=5Finit'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `gl11=5Fclient=5Fstate=5Finit'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glintAttribPointer'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fclient=5FGenFramebuffers'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fbuffer=5Finfo=5Fget'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glDiscardFramebufferEXT'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fclient=5FFramebufferTexture2D'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fclient=5FIsRenderbuffer'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fset=5Ferror'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fclient=5FBindFramebuffer'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fclient=5FGenRenderbuffers'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fset=5Ferror=5Fapi'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fclient=5FBindRenderbuffer'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glBufferSubData'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fclient=5FGetFramebufferAttachmentParameteriv'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fclient=5FCheckFramebufferStatus'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fclient=5FFramebufferRenderbuffer'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fclient=5FRenderbufferStorage'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fclient=5FDeleteRenderbuffers'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fclient=5FGenerateMipmap'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fbuffer=5Finfo=5Fset'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glPointSizePointerOES'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fclient=5FDeleteFramebuffers'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fclient=5FIsFramebuffer'
|=20
/media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libEG=
L.so:=20
undefined reference to `glxx=5Fclient=5Fstate=5Ffree'
| collect2: error: ld returned 1 exit status
| make: *** [egl] Error 1
| EGL disabled.


If I bypass this test (by=20
modifyingqtbase-opensource-src-5.2.1/config.tests/qpa/egl/egl.cpp so it=20
does nothing and always returns 0) the build works fine and I can boot the =

resulting Image.

Unfortunately Qt Programms will abort with=20
"eglfs: Could not create the egl surface: error =3D 0x300b"

I tried a lot of stuff but I' cant get ether of the two errors "fixed".=20
Any help appreciated.
Thank you for your time,

Felix Fischer

Student Employee (VC-I42)
Vehicle Cockpit - HMI Software and Code generation

IAV GmbH
Carnotstr. 1
10587 BERLIN
GERMANY

Phone: +49 30 3997-89540
Fax:       +49 30 3997-89411
E-Mail:  <mailto:felix01.fischer@iav.de>
Internet: http://www.iav.com

Sitz/Registered Office: Berlin,=20
Registergericht/Registration Court: Amtsgericht Charlottenburg,=20
Registernummer/Company Registration Number: HRB 21 280,=20
Gesch=E4ftsf=FChrer/Managing Directors: Kurt Blumenr=F6der, Michael Schuber=
t,=20
Dr. R=FCdiger Goyk
Vorsitzender des Aufsichtsrates/Chairman of the Supervisory Board: Dr.=20
Harald Ludanek

--=_alternative 003C7A98C1257CC5_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hello everybody,</font>
<br><font size=3D2 face=3D"sans-serif">first, I hope I have choosen the rig=
ht
mailing list for my problem. If not, please tell me.<br>
<br>
I have problems getting Qt5 building and running on a raspberry pi (512
Mb Version).<br>
I'm using today's master branch from yocto &amp; meta-raspberrypi ( git.yoc=
toproject.org
) and meta-qt5 ( github.com/meta-qt5/meta-qt5 ).<br>
Building without a change in qtbase doesn't work because the OpenGL Test
fails ( the raspberry pi only suppports GLESv2).</font>
<p><font size=3D2 face=3D"sans-serif">When building with a qtbase=5FX.Y.Z.b=
bappend
and &quot;PACKAGECCONFIG=5Fappend =3D &quot; gles2&quot; in order to use eg=
lfs
the mess beginns.<br>
First, building qtbase fails because qtbase-opensource-src-5.2.1/config.tes=
ts/qpa/egl/egl.cpp
cannot find &quot;vcos=5Ftypes.h&quot;<br>
After including this manually in &quot;meta-qt5/recipes-qt/qt5/qtbase.inc&q=
uot;
by adding the last line to configure</font>
<p><font size=3D2 face=3D"sans-serif">do=5Fconfigure() {</font>
<p><font size=3D2 face=3D"sans-serif">&nbsp; </font>
<br><font size=3D2 face=3D"sans-serif">[.............]</font>
<br>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; ${S}/configure -v \</f=
ont>
<br><font size=3D2 face=3D"sans-serif">-I${STAGING=5FDIR=5FTARGET}/usr/incl=
ude/interface/vcos/pthreads/
\</font>
<br>
<br><font size=3D2 face=3D"sans-serif">[.............]</font>
<br>
<br><font size=3D2 face=3D"sans-serif">}</font>
<br>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; </font>
<br><font size=3D2 face=3D"sans-serif">the next error is the following:</fo=
nt>
<p><font size=3D2 face=3D"sans-serif">| EGL auto-detection... ()</font>
<p><font size=3D2 face=3D"sans-serif">| arm-poky-linux-gnueabi-g++ &nbsp;-m=
arch=3Darmv6
-mthumb-interwork -mfloat-abi=3Dsoftfp &nbsp;-mfpu=3Dvfp --sysroot=3D/media=
/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi
-c -pipe &nbsp;-O2 -pipe -g -feliminate-unused-debug-types -fvisibility-inl=
ines-hidden
-O2 -Wall -W -fPIE &nbsp;-I../../../../qtbase-opensource-src-5.2.1/mkspecs/=
linux-oe-g++
-I../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl -I../../../.=
./../../../../sysroots/raspberrypi/usr/include/interface/vcos/pthreads
-I. -o egl.o ../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl/e=
gl.cpp</font>
<br><font size=3D2 face=3D"sans-serif">| ../../../../qtbase-opensource-src-=
5.2.1/config.tests/qpa/egl/egl.cpp:
In function 'int main(int, char**)':</font>
<br><font size=3D2 face=3D"sans-serif">| ../../../../qtbase-opensource-src-=
5.2.1/config.tests/qpa/egl/egl.cpp:46:12:
warning: unused variable 'x' [-Wunused-variable]</font>
<br><font size=3D2 face=3D"sans-serif">| &nbsp; &nbsp; &nbsp;EGLint x =3D 0=
;</font>
<br><font size=3D2 face=3D"sans-serif">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; ^</font>
<br><font size=3D2 face=3D"sans-serif">| arm-poky-linux-gnueabi-g++ &nbsp;-=
march=3Darmv6
-mthumb-interwork -mfloat-abi=3Dsoftfp &nbsp;-mfpu=3Dvfp --sysroot=3D/media=
/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi
-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -Wl,-O1 -o egl egl.o &nbsp;
-lEGL</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fclient=5FGetRenderbufferParameteriv'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `gl20=5Fclient=5Fstate=5Finit'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `gl11=5Fclient=5Fstate=5Finit'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glintAttribPointer'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fclient=5FGenFramebuffers'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fbuffer=5Finfo=5Fget'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glDiscardFramebufferEXT'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fclient=5FFramebufferTexture2D'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fclient=5FIsRenderbuffer'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fset=5Ferror'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fclient=5FBindFramebuffer'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fclient=5FGenRenderbuffers'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fset=5Ferror=5Fapi'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fclient=5FBindRenderbuffer'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glBufferSubData'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fclient=5FGetFramebufferAttachmentParameteriv=
'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fclient=5FCheckFramebufferStatus'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fclient=5FFramebufferRenderbuffer'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fclient=5FRenderbufferStorage'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fclient=5FDeleteRenderbuffers'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fclient=5FGenerateMipmap'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fbuffer=5Finfo=5Fset'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glPointSizePointerOES'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fclient=5FDeleteFramebuffers'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fclient=5FIsFramebuffer'</font>
<br><font size=3D2 face=3D"sans-serif">| /media/yocto=5Fbuild/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/lib/libEGL.so:
undefined reference to `glxx=5Fclient=5Fstate=5Ffree'</font>
<br><font size=3D2 face=3D"sans-serif">| collect2: error: ld returned 1 exit
status</font>
<br><font size=3D2 face=3D"sans-serif">| make: *** [egl] Error 1</font>
<br><font size=3D2 face=3D"sans-serif">| EGL disabled.<br>
<br>
</font>
<br><font size=3D2 face=3D"sans-serif">If I bypass this test (by modifyingq=
tbase-opensource-src-5.2.1/config.tests/qpa/egl/egl.cpp
so it does nothing and always returns 0) the build works fine and I can
boot the resulting Image.<br>
</font>
<p><font size=3D2 face=3D"sans-serif">Unfortunately Qt Programms will abort
with</font><font size=3D2 face=3D"MS Reference Sans Serif"> </font>
<p><font size=3D2 face=3D"MS Reference Sans Serif">&quot;<b>eglfs: Could not
create the egl surface: error =3D 0x300b</b>&quot;<br>
</font>
<p><font size=3D2 face=3D"sans-serif">I tried a lot of stuff but I' cant get
ether of the two errors &quot;fixed&quot;. Any help appreciated.</font>
<br><font size=3D2 face=3D"sans-serif">Thank you for your time,<br>
<br>
Felix Fischer<br>
<br>
Student Employee (VC-I42)<br>
Vehicle Cockpit - HMI Software and Code generation<br>
<br>
IAV GmbH<br>
Carnotstr. 1<br>
10587 BERLIN<br>
GERMANY<br>
<br>
Phone: +49 30 3997-89540<br>
Fax: &nbsp; &nbsp; &nbsp; +49 30 3997-89411<br>
E-Mail: &nbsp;&lt;</font><a href=3Dmailto:felix01.fischer@iav.de><font size=
=3D2 face=3D"sans-serif">mailto:felix01.fischer@iav.de</font></a><font size=
=3D2 face=3D"sans-serif">&gt;<br>
Internet: </font><a href=3Dhttp://www.iav.com/><font size=3D2 face=3D"sans-=
serif">http://www.iav.com</font></a><font size=3D2 face=3D"sans-serif"><br>
<br>
Sitz/Registered Office: Berlin, <br>
Registergericht/Registration Court: Amtsgericht Charlottenburg, <br>
Registernummer/Company Registration Number: HRB 21 280, <br>
Gesch=E4ftsf=FChrer/Managing Directors: Kurt Blumenr=F6der, Michael Schuber=
t,
Dr. R=FCdiger Goyk<br>
Vorsitzender des Aufsichtsrates/Chairman of the Supervisory Board: Dr.
Harald Ludanek</font>

--=_alternative 003C7A98C1257CC5_=--
