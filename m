Return-Path: <felix01.fischer@iav.de>
Received: from mailout04.rmx.de (mailout04.rmx.de [94.199.90.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 747B0E00C15
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 05:56:41 -0700 (PDT)
Received: from cryptout01.retarus.com ([172.19.21.78])
	by mailout04.rmx.de (8.14.4/8.14.5/retarus.custom) with ESMTP id
	s3TCucVF004266
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 14:56:38 +0200
Received: from cryptout01 (localhost [127.0.0.1])
	by cryptout01.retarus.com (Postfix) with ESMTP id 4CF383704C9
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 14:56:38 +0200 (CEST)
Received: from mailcc10.retarus.de (mailcc10.retarus.de [172.19.21.10])
	by cryptout01.retarus.com (Postfix) with SMTP id 278CB3704C9
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 14:56:38 +0200 (CEST)
In-Reply-To: <1398773448.15060.YahooMailNeo@web122505.mail.ne1.yahoo.com>
References: <OFE6AAA3CB.F2E905AC-ONC1257CC5.0035C1A6-C1257CC5.003C7A9B@retarus.de>
	<OF92054C10.827CF0FE-ONC1257CC9.003ED681-C1257CC9.003FD0E4@retarus.de>
	<1398773448.15060.YahooMailNeo@web122505.mail.ne1.yahoo.com>
To: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
MIME-Version: 1.0
X-KeepSent: AE2C0624:001BA3F1-C1257CC9:0046DD9A;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF39 May 13, 2013
From: Felix01 Fischer <felix01.fischer@iav.de>
Message-ID: <OFAE2C0624.001BA3F1-ONC1257CC9.0046DD9A-C1257CC9.00470BDF@retarus.de>
Date: Tue, 29 Apr 2014 14:56:02 +0200
X-RouteServers: CN=SRVB02M/O=IAV;CN=SRVHUB1/O=IAV
X-MIMETrack: Serialize by Router on jaja/RetarusMail(Release 8.5.3FP3|November
	15, 2012) at 04/29/2014 14:56:29,
	Serialize complete at 04/29/2014 14:56:29
X-RMX-ID: 20140429-145630-s3TCuTF5008535-0@kdin01
X-RMX-TRACE: 2014-04-29 14:56:30 KdIn2013@kdin01/mailcc10 [0.2s]
	20140429-145630-s3TCuTF5008535-0@kdin01 0:00:00
X-RMX-TRACE: 2014-04-29 14:56:30 RmxMSO@kdin01/mailcc05 [0.1s]
	20140429-145630-s3TCuTF5008535-0@kdin01 0:00:00
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Antwort: Re: building qtbase for raspberry pi fails
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
X-List-Received-Date: Tue, 29 Apr 2014 12:56:43 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00470BDFC1257CC9_="

--=_alternative 00470BDFC1257CC9_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Unfortunately there is no library. After either "bitbake -c compile=20
userland" or "bitbake userland" there are the source files (*.h *.c) and=20
one named "*.c.o" but no *.o file exists

Vaduva alexandru <vaduvajanalexandru@yahoo.com> schrieb am 29.04.2014=20
14:10:48:

> Von: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
> An: Felix01 Fischer <felix01.fischer@iav.de>,=20
> "yocto@yoctoproject.org" <yocto@yoctoproject.org>,=20
> Datum: 29.04.2014 14:11
> Betreff: Re: [yocto] building qtbase for raspberry pi fails
>=20
> Did you tried copying the glxx library into the rootfs lib directory?
>=20
> On Tuesday, April 29, 2014 2:38 PM, Felix01 Fischer=20
> <felix01.fischer@iav.de> wrote:
> I've been able to narrow my problem futher down:
>=20
> the meta-raspberrypi layer contains a bb called "userland=5Fgit.bb"=20
> (meta-raspberrypi/recipes-graphics/userland/userland=5Fgit.bb).=20
> the source for this layer is github.com/raspberrypi/userland.git. I=20
> cloned this repository and searched for the undefined references.
>=20
> This repository contains the source code for the ARM side libraries=20
> used on Raspberry Pi. These typically are installed in /opt/vc/lib=20
> and includes source for the ARM side code to interface to: EGL,=20
> mmal, GLESv2, vcos, openmaxil, vchiq=5Farm, bcm=5Fhost, WFC, OpenVG.=20
>=20
> I had success! All my undefined references are defined in userland/
> interface/khronos/glxx/glxx=5Fclient.(h|c).
>=20
> But still I haven't figured out how to get this build correctly so=20
> qtbase can find and use it.=20
>=20
> Any suggestions?
>=20
> Felix
>=20
>=20
> yocto-bounces@yoctoproject.org schrieb am 25.04.2014 13:00:38:
>=20
> > Von: Felix01 Fischer <felix01.fischer@iav.de>
>=20
> > An: yocto@yoctoproject.org,=20
> > Datum: 25.04.2014 15:33=20
> > Betreff: [yocto] building qtbase for raspberry pi fails=20
> > Gesendet von: yocto-bounces@yoctoproject.org=20
> >=20
> > Hello everybody,=20
> > first, I hope I have choosen the right mailing list for my problem.=20
> > If not, please tell me.
> >=20
> > I have problems getting Qt5 building and running on a raspberry pi=20
> > (512 Mb Version).
> > I'm using today's master branch from yocto & meta-raspberrypi (=20
> > git.yoctoproject.org ) and meta-qt5 ( github.com/meta-qt5/meta-qt5 ).
> > Building without a change in qtbase doesn't work because the OpenGL=20
> > Test fails ( the raspberry pi only suppports GLESv2).=20
> > When building with a qtbase=5FX.Y.Z.bbappend and=20
> > "PACKAGECCONFIG=5Fappend =3D " gles2" in order to use eglfs the mess=20
beginns.
> > First, building qtbase fails because qtbase-opensource-src-5.2.1/
> > config.tests/qpa/egl/egl.cpp cannot find "vcos=5Ftypes.h"
> > After including this manually in "meta-qt5/recipes-qt/qt5/
> > qtbase.inc" by adding the last line to configure=20
> > do=5Fconfigure() {=20
> >=20
> > [.............]=20
> >=20
> >     ${S}/configure -v \=20
> > -I${STAGING=5FDIR=5FTARGET}/usr/include/interface/vcos/pthreads/ \=20
> >=20
> > [.............]=20
> >=20
> > }=20
> >=20
> >=20
> > the next error is the following:=20
> > | EGL auto-detection... ()=20
> > | arm-poky-linux-gnueabi-g++  -march=3Darmv6 -mthumb-interwork -
> > mfloat-abi=3Dsoftfp  -mfpu=3Dvfp --sysroot=3D/media/yocto=5Fbuild/qt5-r=
aspb/
> > build/tmp/sysroots/raspberrypi -c -pipe  -O2 -pipe -g -feliminate-
> > unused-debug-types -fvisibility-inlines-hidden -O2 -Wall -W -fPIE  -
> > I../../../../qtbase-opensource-src-5.2.1/mkspecs/linux-oe-g++ -
> > I../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl -
> > I../../../../../../../../sysroots/raspberrypi/usr/include/interface/
> > vcos/pthreads -I. -o egl.o ../../../../qtbase-opensource-src-5.2.1/
> > config.tests/qpa/egl/egl.cpp=20
> > | ../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl/
> > egl.cpp: In function 'int main(int, char**)':=20
> > | ../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl/
> > egl.cpp:46:12: warning: unused variable 'x' [-Wunused-variable]=20
> > |      EGLint x =3D 0;=20
> > |             ^=20
> > | arm-poky-linux-gnueabi-g++  -march=3Darmv6 -mthumb-interwork -
> > mfloat-abi=3Dsoftfp  -mfpu=3Dvfp --sysroot=3D/media/yocto=5Fbuild/qt5-r=
aspb/
> > build/tmp/sysroots/raspberrypi -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--
> > as-needed -Wl,-O1 -o egl egl.o   -lEGL=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to=20
> `glxx=5Fclient=5FGetRenderbufferParameteriv'
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `gl20=5Fclient=5Fstate=5Finit'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `gl11=5Fclient=5Fstate=5Finit'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `glintAttribPointer'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `glxx=5Fclient=5FGenFramebuffers'=
=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `glxx=5Fbuffer=5Finfo=5Fget'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `glDiscardFramebufferEXT'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to=20
`glxx=5Fclient=5FFramebufferTexture2D'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `glxx=5Fclient=5FIsRenderbuffer' =

> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `glxx=5Fset=5Ferror'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `glxx=5Fclient=5FBindFramebuffer'=
=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `glxx=5Fclient=5FGenRenderbuffers=
'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `glxx=5Fset=5Ferror=5Fapi'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `glxx=5Fclient=5FBindRenderbuffer=
'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `glBufferSubData'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to=20
> > `glxx=5Fclient=5FGetFramebufferAttachmentParameteriv'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to=20
`glxx=5Fclient=5FCheckFramebufferStatus'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to=20
`glxx=5Fclient=5FFramebufferRenderbuffer'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to=20
`glxx=5Fclient=5FRenderbufferStorage'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to=20
`glxx=5Fclient=5FDeleteRenderbuffers'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `glxx=5Fclient=5FGenerateMipmap' =

> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `glxx=5Fbuffer=5Finfo=5Fset'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `glPointSizePointerOES'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `glxx=5Fclient=5FDeleteFramebuffe=
rs'=20

> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `glxx=5Fclient=5FIsFramebuffer'=20
> > | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/
> > lib/libEGL.so: undefined reference to `glxx=5Fclient=5Fstate=5Ffree'=20
> > | collect2: error: ld returned 1 exit status=20
> > | make: *** [egl] Error 1=20
> > | EGL disabled.
> >=20
> >=20
> > If I bypass this test (by modifyingqtbase-opensource-src-5.2.1/
> > config.tests/qpa/egl/egl.cpp so it does nothing and always returns=20
> > 0) the build works fine and I can boot the resulting Image.=20
> > Unfortunately Qt Programms will abort with=20
> > "eglfs: Could not create the egl surface: error =3D 0x300b"=20
> > I tried a lot of stuff but I' cant get ether of the two errors=20
> > "fixed". Any help appreciated.=20
> > Thank you for your time,
> >=20
> > Felix Fischer
> >=20
> > Student Employee (VC-I42)
> > Vehicle Cockpit - HMI Software and Code generation
> >=20
> > IAV GmbH
> > Carnotstr. 1
> > 10587 BERLIN
> > GERMANY
> >=20
> > Phone: +49 30 3997-89540
> > Fax:       +49 30 3997-89411
> > E-Mail:  <mailto:felix01.fischer@iav.de>
> > Internet: http://www.iav.com
> >=20
> > Sitz/Registered Office: Berlin,=20
> > Registergericht/Registration Court: Amtsgericht Charlottenburg,=20
> > Registernummer/Company Registration Number: HRB 21 280,=20
> > Gesch=E4ftsf=FChrer/Managing Directors: Kurt Blumenr=F6der, Michael=20
> > Schubert, Dr. R=FCdiger Goyk
> > Vorsitzender des Aufsichtsrates/Chairman of the Supervisory Board:=20
> > Dr. Harald Ludanek--=20
> > =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
> --=20
> =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20

--=_alternative 00470BDFC1257CC9_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Unfortunately there is no library. After
either &quot;bitbake -c compile userland&quot; or &quot;bitbake userland&qu=
ot;
there are the source files (*.h *.c) and one named &quot;*.c.o&quot; but
no *.o file exists</font>
<br>
<br><tt><font size=3D2>Vaduva alexandru &lt;vaduvajanalexandru@yahoo.com&gt;
schrieb am 29.04.2014 14:10:48:<br>
<br>
&gt; Von: Vaduva alexandru &lt;vaduvajanalexandru@yahoo.com&gt;</font></tt>
<br><tt><font size=3D2>&gt; An: Felix01 Fischer &lt;felix01.fischer@iav.de&=
gt;,
<br>
&gt; &quot;yocto@yoctoproject.org&quot; &lt;yocto@yoctoproject.org&gt;,
</font></tt>
<br><tt><font size=3D2>&gt; Datum: 29.04.2014 14:11</font></tt>
<br><tt><font size=3D2>&gt; Betreff: Re: [yocto] building qtbase for raspbe=
rry
pi fails</font></tt>
<br><tt><font size=3D2>&gt; <br>
&gt; Did you tried copying the glxx library into the rootfs lib directory?<=
/font></tt>
<br><tt><font size=3D2>&gt; <br>
&gt; On Tuesday, April 29, 2014 2:38 PM, Felix01 Fischer <br>
&gt; &lt;felix01.fischer@iav.de&gt; wrote:</font></tt>
<br><tt><font size=3D2>&gt; I've been able to narrow my problem futher down=
:<br>
&gt; <br>
&gt; the meta-raspberrypi layer contains a bb called &quot;userland=5Fgit.b=
b&quot;
<br>
&gt; (meta-raspberrypi/recipes-graphics/userland/userland=5Fgit.bb). <br>
&gt; the source for this layer is github.com/raspberrypi/userland.git.
I <br>
&gt; cloned this repository and searched for the undefined references.<br>
&gt; <br>
&gt; This repository contains the source code for the ARM side libraries
<br>
&gt; used on Raspberry Pi. These typically are installed in /opt/vc/lib
<br>
&gt; and includes source for the ARM side code to interface to: EGL, <br>
&gt; mmal, GLESv2, vcos, openmaxil, vchiq=5Farm, bcm=5Fhost, WFC, OpenVG. <=
br>
&gt; <br>
&gt; I had success! All my undefined references are defined in userland/<br>
&gt; interface/khronos/glxx/glxx=5Fclient.(h|c).<br>
&gt; <br>
&gt; But still I haven't figured out how to get this build correctly so
<br>
&gt; qtbase can find and use it. <br>
&gt; <br>
&gt; Any suggestions?<br>
&gt; <br>
&gt; Felix<br>
&gt; <br>
&gt; <br>
&gt; yocto-bounces@yoctoproject.org schrieb am 25.04.2014 13:00:38:</font><=
/tt>
<br><tt><font size=3D2>&gt; <br>
&gt; &gt; Von: Felix01 Fischer &lt;felix01.fischer@iav.de&gt;</font></tt>
<br><tt><font size=3D2>&gt; <br>
&gt; &gt; An: yocto@yoctoproject.org, <br>
&gt; &gt; Datum: 25.04.2014 15:33 <br>
&gt; &gt; Betreff: [yocto] building qtbase for raspberry pi fails <br>
&gt; &gt; Gesendet von: yocto-bounces@yoctoproject.org <br>
&gt; &gt; <br>
&gt; &gt; Hello everybody, <br>
&gt; &gt; first, I hope I have choosen the right mailing list for my proble=
m.
<br>
&gt; &gt; If not, please tell me.<br>
&gt; &gt; <br>
&gt; &gt; I have problems getting Qt5 building and running on a raspberry
pi <br>
&gt; &gt; (512 Mb Version).<br>
&gt; &gt; I'm using today's master branch from yocto &amp; meta-raspberrypi
( <br>
&gt; &gt; git.yoctoproject.org ) and meta-qt5 ( github.com/meta-qt5/meta-qt5
).<br>
&gt; &gt; Building without a change in qtbase doesn't work because the
OpenGL <br>
&gt; &gt; Test fails ( the raspberry pi only suppports GLESv2). <br>
&gt; &gt; When building with a qtbase=5FX.Y.Z.bbappend and <br>
&gt; &gt; &quot;PACKAGECCONFIG=5Fappend =3D &quot; gles2&quot; in order to
use eglfs the mess beginns.<br>
&gt; &gt; First, building qtbase fails because qtbase-opensource-src-5.2.1/=
<br>
&gt; &gt; config.tests/qpa/egl/egl.cpp cannot find &quot;vcos=5Ftypes.h&quo=
t;<br>
&gt; &gt; After including this manually in &quot;meta-qt5/recipes-qt/qt5/<b=
r>
&gt; &gt; qtbase.inc&quot; by adding the last line to configure <br>
&gt; &gt; do=5Fconfigure() { <br>
&gt; &gt; &nbsp; <br>
&gt; &gt; [.............] <br>
&gt; &gt; <br>
&gt; &gt; &nbsp; &nbsp; ${S}/configure -v \ <br>
&gt; &gt; -I${STAGING=5FDIR=5FTARGET}/usr/include/interface/vcos/pthreads/
\ <br>
&gt; &gt; <br>
&gt; &gt; [.............] <br>
&gt; &gt; <br>
&gt; &gt; } <br>
&gt; &gt; <br>
&gt; &gt; &nbsp; &nbsp; <br>
&gt; &gt; the next error is the following: <br>
&gt; &gt; | EGL auto-detection... () <br>
&gt; &gt; | arm-poky-linux-gnueabi-g++ &nbsp;-march=3Darmv6 -mthumb-interwo=
rk
-<br>
&gt; &gt; mfloat-abi=3Dsoftfp &nbsp;-mfpu=3Dvfp --sysroot=3D/media/yocto=5F=
build/qt5-raspb/<br>
&gt; &gt; build/tmp/sysroots/raspberrypi -c -pipe &nbsp;-O2 -pipe -g -felim=
inate-<br>
&gt; &gt; unused-debug-types -fvisibility-inlines-hidden -O2 -Wall -W -fPIE
&nbsp;-<br>
&gt; &gt; I../../../../qtbase-opensource-src-5.2.1/mkspecs/linux-oe-g++
-<br>
&gt; &gt; I../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl
-<br>
&gt; &gt; I../../../../../../../../sysroots/raspberrypi/usr/include/interfa=
ce/<br>
&gt; &gt; vcos/pthreads -I. -o egl.o ../../../../qtbase-opensource-src-5.2.=
1/<br>
&gt; &gt; config.tests/qpa/egl/egl.cpp <br>
&gt; &gt; | ../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl/<b=
r>
&gt; &gt; egl.cpp: In function 'int main(int, char**)': <br>
&gt; &gt; | ../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl/<b=
r>
&gt; &gt; egl.cpp:46:12: warning: unused variable 'x' [-Wunused-variable]
<br>
&gt; &gt; | &nbsp; &nbsp; &nbsp;EGLint x =3D 0; <br>
&gt; &gt; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^ <br>
&gt; &gt; | arm-poky-linux-gnueabi-g++ &nbsp;-march=3Darmv6 -mthumb-interwo=
rk
-<br>
&gt; &gt; mfloat-abi=3Dsoftfp &nbsp;-mfpu=3Dvfp --sysroot=3D/media/yocto=5F=
build/qt5-raspb/<br>
&gt; &gt; build/tmp/sysroots/raspberrypi -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl=
,--<br>
&gt; &gt; as-needed -Wl,-O1 -o egl egl.o &nbsp; -lEGL <br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to <br>
&gt; `glxx=5Fclient=5FGetRenderbufferParameteriv'<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `gl20=5Fclient=5Fstate=5Fin=
it'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `gl11=5Fclient=5Fstate=5Fin=
it'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glintAttribPointer' <br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FGenFramebu=
ffers'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fbuffer=5Finfo=5Fget'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glDiscardFramebufferEXT'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FFramebuffe=
rTexture2D'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FIsRenderbu=
ffer'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fset=5Ferror' <br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FBindFrameb=
uffer'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FGenRenderb=
uffers'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fset=5Ferror=5Fapi' =
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FBindRender=
buffer'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glBufferSubData' <br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to <br>
&gt; &gt; `glxx=5Fclient=5FGetFramebufferAttachmentParameteriv' <br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FCheckFrame=
bufferStatus'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FFramebuffe=
rRenderbuffer'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FRenderbuff=
erStorage'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FDeleteRend=
erbuffers'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FGenerateMi=
pmap'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fbuffer=5Finfo=5Fset'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glPointSizePointerOES'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FDeleteFram=
ebuffers'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5FIsFramebuf=
fer'
<br>
&gt; &gt; | /media/yocto=5Fbuild/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/<br>
&gt; &gt; lib/libEGL.so: undefined reference to `glxx=5Fclient=5Fstate=5Ffr=
ee'
<br>
&gt; &gt; | collect2: error: ld returned 1 exit status <br>
&gt; &gt; | make: *** [egl] Error 1 <br>
&gt; &gt; | EGL disabled.<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; If I bypass this test (by modifyingqtbase-opensource-src-5.2.1/<b=
r>
&gt; &gt; config.tests/qpa/egl/egl.cpp so it does nothing and always returns
<br>
&gt; &gt; 0) the build works fine and I can boot the resulting Image. <br>
&gt; &gt; Unfortunately Qt Programms will abort with <br>
&gt; &gt; &quot;eglfs: Could not create the egl surface: error =3D 0x300b&q=
uot;
<br>
&gt; &gt; I tried a lot of stuff but I' cant get ether of the two errors
<br>
&gt; &gt; &quot;fixed&quot;. Any help appreciated. <br>
&gt; &gt; Thank you for your time,<br>
&gt; &gt; <br>
&gt; &gt; Felix Fischer<br>
&gt; &gt; <br>
&gt; &gt; Student Employee (VC-I42)<br>
&gt; &gt; Vehicle Cockpit - HMI Software and Code generation<br>
&gt; &gt; <br>
&gt; &gt; IAV GmbH<br>
&gt; &gt; Carnotstr. 1<br>
&gt; &gt; 10587 BERLIN<br>
&gt; &gt; GERMANY<br>
&gt; &gt; <br>
&gt; &gt; Phone: +49 30 3997-89540<br>
&gt; &gt; Fax: &nbsp; &nbsp; &nbsp; +49 30 3997-89411<br>
&gt; &gt; E-Mail: &nbsp;&lt;</font></tt><a href=3Dmailto:felix01.fischer@ia=
v.de><tt><font size=3D2>mailto:felix01.fischer@iav.de</font></tt></a><tt><f=
ont size=3D2>&gt;<br>
&gt; &gt; Internet: </font></tt><a href=3Dhttp://www.iav.com/><tt><font siz=
e=3D2>http://www.iav.com</font></tt></a><tt><font size=3D2><br>
&gt; &gt; <br>
&gt; &gt; Sitz/Registered Office: Berlin, <br>
&gt; &gt; Registergericht/Registration Court: Amtsgericht Charlottenburg,
<br>
&gt; &gt; Registernummer/Company Registration Number: HRB 21 280, <br>
&gt; &gt; Gesch=E4ftsf=FChrer/Managing Directors: Kurt Blumenr=F6der, Micha=
el
<br>
&gt; &gt; Schubert, Dr. R=FCdiger Goyk<br>
&gt; &gt; Vorsitzender des Aufsichtsrates/Chairman of the Supervisory Board:
<br>
&gt; &gt; Dr. Harald Ludanek-- <br>
&gt; &gt; =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; yocto@yoctoproject.org<br>
&gt; &gt; </font></tt><a href=3Dhttps://lists.yoctoproject.org/listinfo/yoc=
to><tt><font size=3D2>https://lists.yoctoproject.org/listinfo/yocto</font><=
/tt></a>
<br><tt><font size=3D2>&gt; <br>
&gt; -- <br>
&gt; =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; </font></tt><a href=3Dhttps://lists.yoctoproject.org/listinfo/yocto><t=
t><font size=3D2>https://lists.yoctoproject.org/listinfo/yocto</font></tt><=
/a>
<br><tt><font size=3D2>&gt; <br>
</font></tt>

--=_alternative 00470BDFC1257CC9_=--
