Return-Path: <felix01.fischer@iav.de>
Received: from mailout04.rmx.de (mailout04.rmx.de [94.199.90.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62249E00B67
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 04:37:40 -0700 (PDT)
Received: from cryptout02.retarus.com ([172.19.21.79])
	by mailout04.rmx.de (8.14.4/8.14.5/retarus.custom) with ESMTP id
	s3TBbYg3030202
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 13:37:35 +0200
Received: from cryptout02 (localhost [127.0.0.1])
	by cryptout02.retarus.com (Postfix) with ESMTP id C6ED0203C17
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 13:37:35 +0200 (CEST)
Received: from mailcc07.retarus.de (mailcc07.retarus.de [172.19.21.7])
	by cryptout02.retarus.com (Postfix) with SMTP id 7DF6E203C19
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 13:37:35 +0200 (CEST)
In-Reply-To: <OFE6AAA3CB.F2E905AC-ONC1257CC5.0035C1A6-C1257CC5.003C7A9B@retarus.de>
References: <OFE6AAA3CB.F2E905AC-ONC1257CC5.0035C1A6-C1257CC5.003C7A9B@retarus.de>
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 92054C10:827CF0FE-C1257CC9:003ED681;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF39 May 13, 2013
From: Felix01 Fischer <felix01.fischer@iav.de>
Message-ID: <OF92054C10.827CF0FE-ONC1257CC9.003ED681-C1257CC9.003FD0E4@retarus.de>
Date: Tue, 29 Apr 2014 13:37:04 +0200
X-RouteServers: CN=SRVB02M/O=IAV;CN=SRVHUB1/O=IAV
X-MIMETrack: Serialize by Router on jaja/RetarusMail(Release 8.5.3FP3|November
	15, 2012) at 04/29/2014 13:37:22,
	Serialize complete at 04/29/2014 13:37:22
X-RMX-ID: 20140429-133722-s3TBbMHl013478-0@kdin02
X-RMX-TRACE: 2014-04-29 13:37:23 KdIn2013@kdin02/mailcc05 [0.2s]
	20140429-133722-s3TBbMHl013478-0@kdin02 0:00:00
X-RMX-TRACE: 2014-04-29 13:37:23 RmxMSO@kdin02/mailcc04 [0.0s]
	20140429-133722-s3TBbMHl013478-0@kdin02 0:00:01
Subject: Re: building qtbase for raspberry pi fails
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
X-List-Received-Date: Tue, 29 Apr 2014 11:37:44 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 003FD0E2C1257CC9_="

--=_alternative 003FD0E2C1257CC9_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

I've been able to narrow my problem futher down:

the meta-raspberrypi layer contains a bb called "userland=5Fgit.bb"=20
(meta-raspberrypi/recipes-graphics/userland/userland=5Fgit.bb).
the source for this layer is github.com/raspberrypi/userland.git. I cloned =

this repository and searched for the undefined references.

This repository contains the source code for the ARM side libraries used=20
on Raspberry Pi. These typically are installed in /opt/vc/lib and includes =

source for the ARM side code to interface to: EGL, mmal, GLESv2, vcos,=20
openmaxil, vchiq=5Farm, bcm=5Fhost, WFC, OpenVG.=20

I had success! All my undefined references are defined in=20
userland/interface/khronos/glxx/glxx=5Fclient.(h|c).

But still I haven't figured out how to get this build correctly so qtbase=20
can find and use it.

Any suggestions?

Felix


yocto-bounces@yoctoproject.org schrieb am 25.04.2014 13:00:38:

> Von: Felix01 Fischer <felix01.fischer@iav.de>
> An: yocto@yoctoproject.org,=20
> Datum: 25.04.2014 15:33
> Betreff: [yocto] building qtbase for raspberry pi fails
> Gesendet von: yocto-bounces@yoctoproject.org
>=20
> Hello everybody,=20
> first, I hope I have choosen the right mailing list for my problem.=20
> If not, please tell me.
>=20
> I have problems getting Qt5 building and running on a raspberry pi=20
> (512 Mb Version).
> I'm using today's master branch from yocto & meta-raspberrypi (=20
> git.yoctoproject.org ) and meta-qt5 ( github.com/meta-qt5/meta-qt5 ).
> Building without a change in qtbase doesn't work because the OpenGL=20
> Test fails ( the raspberry pi only suppports GLESv2).=20
> When building with a qtbase=5FX.Y.Z.bbappend and=20
> "PACKAGECCONFIG=5Fappend =3D " gles2" in order to use eglfs the mess=20
beginns.
> First, building qtbase fails because qtbase-opensource-src-5.2.1/
> config.tests/qpa/egl/egl.cpp cannot find "vcos=5Ftypes.h"
> After including this manually in "meta-qt5/recipes-qt/qt5/
> qtbase.inc" by adding the last line to configure=20
> do=5Fconfigure() {=20
>=20
> [.............]=20
>=20
>     ${S}/configure -v \=20
> -I${STAGING=5FDIR=5FTARGET}/usr/include/interface/vcos/pthreads/ \=20
>=20
> [.............]=20
>=20
> }=20
>=20
>=20
> the next error is the following:=20
> | EGL auto-detection... ()=20
> | arm-poky-linux-gnueabi-g++  -march=3Darmv6 -mthumb-interwork -
> mfloat-abi=3Dsoftfp  -mfpu=3Dvfp --sysroot=3D/media/yocto=5Fbuild/qt5-ras=
pb/
> build/tmp/sysroots/raspberrypi -c -pipe  -O2 -pipe -g -feliminate-
> unused-debug-types -fvisibility-inlines-hidden -O2 -Wall -W -fPIE  -
> I../../../../qtbase-opensource-src-5.2.1/mkspecs/linux-oe-g++ -
> I../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl -
> I../../../../../../../../sysroots/raspberrypi/usr/include/interface/
> vcos/pthreads -I. -o egl.o ../../../../qtbase-opensource-src-5.2.1/
> config.tests/qpa/egl/egl.cpp=20
> | ../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl/
> egl.cpp: In function 'int main(int, char**)':=20
> | ../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl/
> egl.cpp:46:12: warning: unused variable 'x' [-Wunused-variable]=20
> |      EGLint x =3D 0;=20
> |             ^=20
> | arm-poky-linux-gnueabi-g++  -march=3Darmv6 -mthumb-interwork -
> mfloat-abi=3Dsoftfp  -mfpu=3Dvfp --sysroot=3D/media/yocto=5Fbuild/qt5-ras=
pb/
> build/tmp/sysroots/raspberrypi -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--
> as-needed -Wl,-O1 -o egl egl.o   -lEGL=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to=20
`glxx=5Fclient=5FGetRenderbufferParameteriv'
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `gl20=5Fclient=5Fstate=5Finit'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `gl11=5Fclient=5Fstate=5Finit'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glintAttribPointer'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glxx=5Fclient=5FGenFramebuffers'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glxx=5Fbuffer=5Finfo=5Fget'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glDiscardFramebufferEXT'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glxx=5Fclient=5FFramebufferTexture=
2D'=20

> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glxx=5Fclient=5FIsRenderbuffer'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glxx=5Fset=5Ferror'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glxx=5Fclient=5FBindFramebuffer'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glxx=5Fclient=5FGenRenderbuffers' =

> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glxx=5Fset=5Ferror=5Fapi'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glxx=5Fclient=5FBindRenderbuffer' =

> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glBufferSubData'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to=20
> `glxx=5Fclient=5FGetFramebufferAttachmentParameteriv'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to=20
`glxx=5Fclient=5FCheckFramebufferStatus'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to=20
`glxx=5Fclient=5FFramebufferRenderbuffer'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glxx=5Fclient=5FRenderbufferStorag=
e'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glxx=5Fclient=5FDeleteRenderbuffer=
s'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glxx=5Fclient=5FGenerateMipmap'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glxx=5Fbuffer=5Finfo=5Fset'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glPointSizePointerOES'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glxx=5Fclient=5FDeleteFramebuffers=
'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glxx=5Fclient=5FIsFramebuffer'=20
> | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> lib/libEGL.so: undefined reference to `glxx=5Fclient=5Fstate=5Ffree'=20
> | collect2: error: ld returned 1 exit status=20
> | make: *** [egl] Error 1=20
> | EGL disabled.
>=20
>=20
> If I bypass this test (by modifyingqtbase-opensource-src-5.2.1/
> config.tests/qpa/egl/egl.cpp so it does nothing and always returns=20
> 0) the build works fine and I can boot the resulting Image.
> Unfortunately Qt Programms will abort with=20
> "eglfs: Could not create the egl surface: error =3D 0x300b"
> I tried a lot of stuff but I' cant get ether of the two errors=20
> "fixed". Any help appreciated.=20
> Thank you for your time,
>=20
> Felix Fischer
>=20
> Student Employee (VC-I42)
> Vehicle Cockpit - HMI Software and Code generation
>=20
> IAV GmbH
> Carnotstr. 1
> 10587 BERLIN
> GERMANY
>=20
> Phone: +49 30 3997-89540
> Fax:       +49 30 3997-89411
> E-Mail:  <mailto:felix01.fischer@iav.de>
> Internet: http://www.iav.com
>=20
> Sitz/Registered Office: Berlin,=20
> Registergericht/Registration Court: Amtsgericht Charlottenburg,=20
> Registernummer/Company Registration Number: HRB 21 280,=20
> Gesch=E4ftsf=FChrer/Managing Directors: Kurt Blumenr=F6der, Michael=20
> Schubert, Dr. R=FCdiger Goyk
> Vorsitzender des Aufsichtsrates/Chairman of the Supervisory Board:=20
> Dr. Harald Ludanek--=20
> =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=_alternative 003FD0E2C1257CC9_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<tt><font size=3D2>I've been able to narrow my problem futher down:<br>
<br>
the meta-raspberrypi layer contains a bb called &quot;userland=5Fgit.bb&quo=
t;
(meta-raspberrypi/recipes-graphics/userland/userland=5Fgit.bb).</font></tt>
<br><tt><font size=3D2>the source for this layer is github.com/raspberrypi/=
userland.git.
I cloned this repository and searched for the undefined references.<br>
<br>
This repository contains the source code for the ARM side libraries used
on Raspberry Pi. These typically are installed in /opt/vc/lib and includes
source for the ARM side code to interface to: EGL, mmal, GLESv2, vcos,
openmaxil, vchiq=5Farm, bcm=5Fhost, WFC, OpenVG. <br>
<br>
I had success! All my undefined references are defined in userland/interfac=
e/khronos/glxx/glxx=5Fclient.(h|c).<br>
<br>
But still I haven't figured out how to get this build correctly so qtbase
can find and use it.</font></tt>
<br><tt><font size=3D2><br>
Any suggestions?<br>
<br>
Felix<br>
<br>
<br>
yocto-bounces@yoctoproject.org schrieb am 25.04.2014 13:00:38:<br>
<br>
&gt; Von: Felix01 Fischer &lt;felix01.fischer@iav.de&gt;</font></tt>
<br><tt><font size=3D2>&gt; An: yocto@yoctoproject.org, </font></tt>
<br><tt><font size=3D2>&gt; Datum: 25.04.2014 15:33</font></tt>
<br><tt><font size=3D2>&gt; Betreff: [yocto] building qtbase for raspberry
pi fails</font></tt>
<br><tt><font size=3D2>&gt; Gesendet von: yocto-bounces@yoctoproject.org</f=
ont></tt>
<br><tt><font size=3D2>&gt; <br>
&gt; Hello everybody, <br>
&gt; first, I hope I have choosen the right mailing list for my problem.
<br>
&gt; If not, please tell me.<br>
&gt; <br>
&gt; I have problems getting Qt5 building and running on a raspberry pi
<br>
&gt; (512 Mb Version).<br>
&gt; I'm using today's master branch from yocto &amp; meta-raspberrypi
( <br>
&gt; git.yoctoproject.org ) and meta-qt5 ( github.com/meta-qt5/meta-qt5
).<br>
&gt; Building without a change in qtbase doesn't work because the OpenGL
<br>
&gt; Test fails ( the raspberry pi only suppports GLESv2). </font></tt>
<br><tt><font size=3D2>&gt; When building with a qtbase=5FX.Y.Z.bbappend and
<br>
&gt; &quot;PACKAGECCONFIG=5Fappend =3D &quot; gles2&quot; in order to use e=
glfs
the mess beginns.<br>
&gt; First, building qtbase fails because qtbase-opensource-src-5.2.1/<br>
&gt; config.tests/qpa/egl/egl.cpp cannot find &quot;vcos=5Ftypes.h&quot;<br>
&gt; After including this manually in &quot;meta-qt5/recipes-qt/qt5/<br>
&gt; qtbase.inc&quot; by adding the last line to configure </font></tt>
<br><tt><font size=3D2>&gt; do=5Fconfigure() { </font></tt>
<br><tt><font size=3D2>&gt; &nbsp; <br>
&gt; [.............] <br>
&gt; <br>
&gt; &nbsp; &nbsp; ${S}/configure -v \ <br>
&gt; -I${STAGING=5FDIR=5FTARGET}/usr/include/interface/vcos/pthreads/ \ <br>
&gt; <br>
&gt; [.............] <br>
&gt; <br>
&gt; } <br>
&gt; <br>
&gt; &nbsp; &nbsp; <br>
&gt; the next error is the following: </font></tt>
<br><tt><font size=3D2>&gt; | EGL auto-detection... () </font></tt>
<br><tt><font size=3D2>&gt; | arm-poky-linux-gnueabi-g++ &nbsp;-march=3Darm=
v6
-mthumb-interwork -<br>
&gt; mfloat-abi=3Dsoftfp &nbsp;-mfpu=3Dvfp --sysroot=3D/media/yocto=5Fbuild=
/qt5-raspb/<br>
&gt; build/tmp/sysroots/raspberrypi -c -pipe &nbsp;-O2 -pipe -g -feliminate=
-<br>
&gt; unused-debug-types -fvisibility-inlines-hidden -O2 -Wall -W -fPIE
&nbsp;-<br>
&gt; I../../../../qtbase-opensource-src-5.2.1/mkspecs/linux-oe-g++ -<br>
&gt; I../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl -<br>
&gt; I../../../../../../../../sysroots/raspberrypi/usr/include/interface/<b=
r>
&gt; vcos/pthreads -I. -o egl.o ../../../../qtbase-opensource-src-5.2.1/<br>
&gt; config.tests/qpa/egl/egl.cpp <br>
&gt; | ../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl/<br>
&gt; egl.cpp: In function 'int main(int, char**)': <br>
&gt; | ../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl/<br>
&gt; egl.cpp:46:12: warning: unused variable 'x' [-Wunused-variable] <br>
&gt; | &nbsp; &nbsp; &nbsp;EGLint x =3D 0; <br>
&gt; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^ <br>
&gt; | arm-poky-linux-gnueabi-g++ &nbsp;-march=3Darmv6 -mthumb-interwork
-<br>
&gt; mfloat-abi=3Dsoftfp &nbsp;-mfpu=3Dvfp --sysroot=3D/media/yocto=5Fbuild=
/qt5-raspb/<br>
&gt; build/tmp/sysroots/raspberrypi -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--<b=
r>
&gt; as-needed -Wl,-O1 -o egl egl.o &nbsp; -lEGL <br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FGetRenderbuffer=
Parameteriv'<br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `gl20=5Fclient=5Fstate=5Finit' <=
br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `gl11=5Fclient=5Fstate=5Finit' <=
br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glintAttribPointer' <br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FGenFramebuffers'
<br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fbuffer=5Finfo=5Fget' <br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glDiscardFramebufferEXT' <br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FFramebufferText=
ure2D'
<br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FIsRenderbuffer'
<br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fset=5Ferror' <br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FBindFramebuffer'
<br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FGenRenderbuffer=
s'
<br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fset=5Ferror=5Fapi' <br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FBindRenderbuffe=
r'
<br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glBufferSubData' <br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to <br>
&gt; `glxx=5Fclient=5FGetFramebufferAttachmentParameteriv' <br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FCheckFramebuffe=
rStatus'
<br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FFramebufferRend=
erbuffer'
<br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FRenderbufferSto=
rage'
<br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FDeleteRenderbuf=
fers'
<br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FGenerateMipmap'
<br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fbuffer=5Finfo=5Fset' <br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glPointSizePointerOES' <br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FDeleteFramebuff=
ers'
<br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FIsFramebuffer'
<br>
&gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r>
&gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5Fstate=5Ffree' <=
br>
&gt; | collect2: error: ld returned 1 exit status <br>
&gt; | make: *** [egl] Error 1 <br>
&gt; | EGL disabled.<br>
&gt; <br>
&gt; <br>
&gt; If I bypass this test (by modifyingqtbase-opensource-src-5.2.1/<br>
&gt; config.tests/qpa/egl/egl.cpp so it does nothing and always returns
<br>
&gt; 0) the build works fine and I can boot the resulting Image.</font></tt>
<br><tt><font size=3D2>&gt; Unfortunately Qt Programms will abort with </fo=
nt></tt>
<br><tt><font size=3D2>&gt; &quot;eglfs: Could not create the egl surface:
error =3D 0x300b&quot;</font></tt>
<br><tt><font size=3D2>&gt; I tried a lot of stuff but I' cant get ether
of the two errors <br>
&gt; &quot;fixed&quot;. Any help appreciated. <br>
&gt; Thank you for your time,<br>
&gt; <br>
&gt; Felix Fischer<br>
&gt; <br>
&gt; Student Employee (VC-I42)<br>
&gt; Vehicle Cockpit - HMI Software and Code generation<br>
&gt; <br>
&gt; IAV GmbH<br>
&gt; Carnotstr. 1<br>
&gt; 10587 BERLIN<br>
&gt; GERMANY<br>
&gt; <br>
&gt; Phone: +49 30 3997-89540<br>
&gt; Fax: &nbsp; &nbsp; &nbsp; +49 30 3997-89411<br>
&gt; E-Mail: &nbsp;&lt;</font></tt><a href=3Dmailto:felix01.fischer@iav.de>=
<tt><font size=3D2>mailto:felix01.fischer@iav.de</font></tt></a><tt><font s=
ize=3D2>&gt;<br>
&gt; Internet: </font></tt><a href=3Dhttp://www.iav.com/><tt><font size=3D2=
>http://www.iav.com</font></tt></a><tt><font size=3D2><br>
&gt; <br>
&gt; Sitz/Registered Office: Berlin, <br>
&gt; Registergericht/Registration Court: Amtsgericht Charlottenburg, <br>
&gt; Registernummer/Company Registration Number: HRB 21 280, <br>
&gt; Gesch=E4ftsf=FChrer/Managing Directors: Kurt Blumenr=F6der, Michael <b=
r>
&gt; Schubert, Dr. R=FCdiger Goyk<br>
&gt; Vorsitzender des Aufsichtsrates/Chairman of the Supervisory Board:
<br>
&gt; Dr. Harald Ludanek-- <br>
&gt; =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; </font></tt><a href=3Dhttps://lists.yoctoproject.org/listinfo/yocto><t=
t><font size=3D2>https://lists.yoctoproject.org/listinfo/yocto</font></tt><=
/a><tt><font size=3D2><br>
</font></tt>

--=_alternative 003FD0E2C1257CC9_=--
