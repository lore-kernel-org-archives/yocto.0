Return-Path: <vaduvajanalexandru@yahoo.com>
Received: from nm16-vm2.bullet.mail.ne1.yahoo.com
	(nm16-vm2.bullet.mail.ne1.yahoo.com [98.138.91.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C90ADE00B67
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 05:10:49 -0700 (PDT)
Received: from [98.138.101.130] by nm16.bullet.mail.ne1.yahoo.com with NNFMP;
	29 Apr 2014 12:10:48 -0000
Received: from [98.138.101.175] by tm18.bullet.mail.ne1.yahoo.com with NNFMP;
	29 Apr 2014 12:10:48 -0000
Received: from [127.0.0.1] by omp1086.mail.ne1.yahoo.com with NNFMP;
	29 Apr 2014 12:10:48 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 399655.618.bm@omp1086.mail.ne1.yahoo.com
Received: (qmail 85408 invoked by uid 60001); 29 Apr 2014 12:10:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1398773448; bh=45l2wEiGTMn2y2muHvDPFNW86TaoNU6fVtr7HZo0ZSA=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=w8iTIiqqn6hfl8ii+L4OgYNIUSW2/TcEaSef+FHAwV/Id5ZnglSlFvnLQnfTCREd3jHITQT9qQ38s6/BQz5BDGvkmbwX2ZZtPH4Y52jH8YQa1Mw6Fy6AAxpd2ZbiFRB8Gf/ZFjX2ALHVpFfYy3Ymb3mB71LL0w38CAsZ3cpYg2Q=
X-YMail-OSG: OA4n.qEVM1nOtRV8QYrTDirdDqQi0d8fgz5p1adaCE4eGxp
	KRw3gflDUJF.c7x5X629y0bIQF59sX6qlUsic7xn5E1CHpUpDaI3jd_20d48
	JWHGKt4d00TDiECukTCvW7l4CuORsOzQ6uq3ztRQJf7aXBDy1AbN1wRcqjJ2
	__lUdcKaz32RIl4UcS34bVsa8_2ju_9x57yNCwSZRih1HBgBqxvweZV50vhv
	p0qK7q9yqTniPNi_KEJ9G._EXHlacswqklsIloejHiILmIK7KbTvBbAg8pqc
	qxcXOFKhaRIWPrdzKZn1_GqXPcEW4uCMgO_r24QtlXRIpooSnkkIotI_bJt5
	p2er_8SY349gSuey9Fc4DTelZmszKRMvg06sjKWk3u939GpMnRM9b_ts4EnA
	DvBoUvz6h8m13YNe7gqJAY0kMJLo9o2UF8ro8Q5xWmGZwGk9LLYtNK.awC1h
	yg9W6XnfmsilCzD3x_LTkZHln4ZzGQDu0yq7ZWQj04K6S7e02IiMhZGUSFJW
	qgOGLPSK4C.0eRKJhfIoD.WTCxKFSUxqKePd8G23Eddz8sAeIS_HbsDhCbHg
	tIbeFYAWHZtnw4DsY6JuLV_MVp5Ata_9n1YnkHM4Qd.dGfDjmsBSRi94DZJ7
	_vJSaXWWAMk4XTvYfeOTxeLFaOxhEzz0pVFH5UYgwGYrexnZtGEo6URJHb6W
	8qviB2IEvqoWI02rUD4gdM43wzURcqaVOdmd9E5wMYoPsN.OdKl6zmpvXihP
	weyeRgXwUwOWCzxbQGACVauD40cetmla7PJnO_4wV_kjR0UprGehtfwTPpZh
	yki9FsSZmG3242b5H.IgXFquJk2gGNUvPrj4-
Received: from [193.202.22.66] by web122505.mail.ne1.yahoo.com via HTTP;
	Tue, 29 Apr 2014 05:10:48 PDT
X-Rocket-MIMEInfo: 002.001,
	RGlkIHlvdSB0cmllZCBjb3B5aW5nIHRoZSBnbHh4IGxpYnJhcnkgaW50byB0aGUgcm9vdGZzIGxpYiBkaXJlY3Rvcnk_CgoKT24gVHVlc2RheSwgQXByaWwgMjksIDIwMTQgMjozOCBQTSwgRmVsaXgwMSBGaXNjaGVyIDxmZWxpeDAxLmZpc2NoZXJAaWF2LmRlPiB3cm90ZToKIApJJ3ZlIGJlZW4gYWJsZSB0byBuYXJyb3cgbXkgcHJvYmxlbSBmdXRoZXIgZG93bjoKCnRoZSBtZXRhLXJhc3BiZXJyeXBpIGxheWVyIGNvbnRhaW5zIGEgYmIgY2FsbGVkICJ1c2VybGFuZF9naXQuYmIiCihtZXRhLXJhc3BiZXJyeXABMAEBAQE-
X-Mailer: YahooMailWebService/0.8.185.657
References: <OFE6AAA3CB.F2E905AC-ONC1257CC5.0035C1A6-C1257CC5.003C7A9B@retarus.de>
	<OF92054C10.827CF0FE-ONC1257CC9.003ED681-C1257CC9.003FD0E4@retarus.de>
Message-ID: <1398773448.15060.YahooMailNeo@web122505.mail.ne1.yahoo.com>
Date: Tue, 29 Apr 2014 05:10:48 -0700 (PDT)
From: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
To: Felix01 Fischer <felix01.fischer@iav.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
In-Reply-To: <OF92054C10.827CF0FE-ONC1257CC9.003ED681-C1257CC9.003FD0E4@retarus.de>
MIME-Version: 1.0
Subject: Re: building qtbase for raspberry pi fails
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 29 Apr 2014 12:10:54 -0000
Content-Type: multipart/alternative;
	boundary="1438449284-915897141-1398773448=:15060"

--1438449284-915897141-1398773448=:15060
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Did you tried copying the glxx library into the rootfs lib directory?=0A=0A=
=0AOn Tuesday, April 29, 2014 2:38 PM, Felix01 Fischer <felix01.fischer@iav=
.de> wrote:=0A =0AI've been able to narrow my problem futher down:=0A=0Athe=
 meta-raspberrypi layer contains a bb called "userland_git.bb"=0A(meta-rasp=
berrypi/recipes-graphics/userland/userland_git.bb). =0Athe source for this =
layer is github.com/raspberrypi/userland.git.=0AI cloned this repository an=
d searched for the undefined references.=0A=0AThis repository contains the =
source code for the ARM side libraries used=0Aon Raspberry Pi. These typica=
lly are installed in /opt/vc/lib and includes=0Asource for the ARM side cod=
e to interface to: EGL, mmal, GLESv2, vcos,=0Aopenmaxil, vchiq_arm, bcm_hos=
t, WFC, OpenVG. =0A=0AI had success! All my undefined references are define=
d in userland/interface/khronos/glxx/glxx_client.(h|c).=0A=0ABut still I ha=
ven't figured out how to get this build correctly so qtbase=0Acan find and =
use it. =0A=0AAny suggestions?=0A=0AFelix=0A=0A=0Ayocto-bounces@yoctoprojec=
t.org schrieb am 25.04.2014 13:00:38:=0A=0A=0A> Von: Felix01 Fischer <felix=
01.fischer@iav.de>=0A=0A> An: yocto@yoctoproject.org,  =0A> Datum: 25.04.20=
14 15:33 =0A> Betreff: [yocto] building qtbase for raspberry=0Api fails =0A=
> Gesendet von: yocto-bounces@yoctoproject.org =0A> =0A> Hello everybody, =
=0A> first, I hope I have choosen the right mailing list for my problem. =
=0A> If not, please tell me.=0A> =0A> I have problems getting Qt5 building =
and running on a raspberry pi =0A> (512 Mb Version).=0A> I'm using today's =
master branch from yocto & meta-raspberrypi=0A( =0A> git.yoctoproject.org )=
 and meta-qt5 ( github.com/meta-qt5/meta-qt5=0A).=0A> Building without a ch=
ange in qtbase doesn't work because the OpenGL =0A> Test fails ( the raspbe=
rry pi only suppports GLESv2).  =0A> When building with a qtbase_X.Y.Z.bbap=
pend and =0A> "PACKAGECCONFIG_append =3D " gles2" in order to use eglfs=0At=
he mess beginns.=0A> First, building qtbase fails because qtbase-opensource=
-src-5.2.1/=0A> config.tests/qpa/egl/egl.cpp cannot find "vcos_types.h"=0A>=
 After including this manually in "meta-qt5/recipes-qt/qt5/=0A> qtbase.inc"=
 by adding the last line to configure  =0A> do_configure() {  =0A> =A0 =0A>=
 [.............] =0A> =0A> =A0 =A0 ${S}/configure -v \ =0A> -I${STAGING_DIR=
_TARGET}/usr/include/interface/vcos/pthreads/ \ =0A> =0A> [.............] =
=0A> =0A> } =0A> =0A> =A0 =A0 =0A> the next error is the following:  =0A> |=
 EGL auto-detection... ()  =0A> | arm-poky-linux-gnueabi-g++ =A0-march=3Dar=
mv6=0A-mthumb-interwork -=0A> mfloat-abi=3Dsoftfp =A0-mfpu=3Dvfp --sysroot=
=3D/media/yocto_build/qt5-raspb/=0A> build/tmp/sysroots/raspberrypi -c -pip=
e =A0-O2 -pipe -g -feliminate-=0A> unused-debug-types -fvisibility-inlines-=
hidden -O2 -Wall -W -fPIE=0A=A0-=0A> I../../../../qtbase-opensource-src-5.2=
.1/mkspecs/linux-oe-g++ -=0A> I../../../../qtbase-opensource-src-5.2.1/conf=
ig.tests/qpa/egl -=0A> I../../../../../../../../sysroots/raspberrypi/usr/in=
clude/interface/=0A> vcos/pthreads -I. -o egl.o ../../../../qtbase-opensour=
ce-src-5.2.1/=0A> config.tests/qpa/egl/egl.cpp =0A> | ../../../../qtbase-op=
ensource-src-5.2.1/config.tests/qpa/egl/=0A> egl.cpp: In function 'int main=
(int, char**)': =0A> | ../../../../qtbase-opensource-src-5.2.1/config.tests=
/qpa/egl/=0A> egl.cpp:46:12: warning: unused variable 'x' [-Wunused-variabl=
e] =0A> | =A0 =A0 =A0EGLint x =3D 0; =0A> | =A0 =A0 =A0 =A0 =A0 =A0 ^ =0A> =
| arm-poky-linux-gnueabi-g++ =A0-march=3Darmv6 -mthumb-interwork=0A-=0A> mf=
loat-abi=3Dsoftfp =A0-mfpu=3Dvfp --sysroot=3D/media/yocto_build/qt5-raspb/=
=0A> build/tmp/sysroots/raspberrypi -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--=
=0A> as-needed -Wl,-O1 -o egl egl.o =A0 -lEGL =0A> | /media/yocto_build/qt5=
-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> lib/libEGL.so: undefined ref=
erence to `glxx_client_GetRenderbufferParameteriv'=0A> | /media/yocto_build=
/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> lib/libEGL.so: undefined=
 reference to `gl20_client_state_init' =0A> | /media/yocto_build/qt5-raspb/=
build/tmp/sysroots/raspberrypi/usr/=0A> lib/libEGL.so: undefined reference =
to `gl11_client_state_init' =0A> | /media/yocto_build/qt5-raspb/build/tmp/s=
ysroots/raspberrypi/usr/=0A> lib/libEGL.so: undefined reference to `glintAt=
tribPointer' =0A> | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspber=
rypi/usr/=0A> lib/libEGL.so: undefined reference to `glxx_client_GenFramebu=
ffers' =0A> | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/=0A> lib/libEGL.so: undefined reference to `glxx_buffer_info_get' =0A> |=
 /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> lib/l=
ibEGL.so: undefined reference to `glDiscardFramebufferEXT' =0A> | /media/yo=
cto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> lib/libEGL.so: =
undefined reference to `glxx_client_FramebufferTexture2D' =0A> | /media/yoc=
to_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> lib/libEGL.so: u=
ndefined reference to `glxx_client_IsRenderbuffer' =0A> | /media/yocto_buil=
d/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> lib/libEGL.so: undefine=
d reference to `glxx_set_error' =0A> | /media/yocto_build/qt5-raspb/build/t=
mp/sysroots/raspberrypi/usr/=0A> lib/libEGL.so: undefined reference to `glx=
x_client_BindFramebuffer' =0A> | /media/yocto_build/qt5-raspb/build/tmp/sys=
roots/raspberrypi/usr/=0A> lib/libEGL.so: undefined reference to `glxx_clie=
nt_GenRenderbuffers' =0A> | /media/yocto_build/qt5-raspb/build/tmp/sysroots=
/raspberrypi/usr/=0A> lib/libEGL.so: undefined reference to `glxx_set_error=
_api' =0A> | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/us=
r/=0A> lib/libEGL.so: undefined reference to `glxx_client_BindRenderbuffer'=
 =0A> | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A=
> lib/libEGL.so: undefined reference to `glBufferSubData' =0A> | /media/yoc=
to_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> lib/libEGL.so: u=
ndefined reference to =0A> `glxx_client_GetFramebufferAttachmentParameteriv=
' =0A> | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=
=0A> lib/libEGL.so: undefined reference to `glxx_client_CheckFramebufferSta=
tus' =0A> | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr=
/=0A> lib/libEGL.so: undefined reference to `glxx_client_FramebufferRenderb=
uffer' =0A> | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/=0A> lib/libEGL.so: undefined reference to `glxx_client_RenderbufferStor=
age' =0A> | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr=
/=0A> lib/libEGL.so: undefined reference to `glxx_client_DeleteRenderbuffer=
s' =0A> | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=
=0A> lib/libEGL.so: undefined reference to `glxx_client_GenerateMipmap' =0A=
> | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> li=
b/libEGL.so: undefined reference to `glxx_buffer_info_set' =0A> | /media/yo=
cto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> lib/libEGL.so: =
undefined reference to `glPointSizePointerOES' =0A> | /media/yocto_build/qt=
5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> lib/libEGL.so: undefined re=
ference to `glxx_client_DeleteFramebuffers' =0A> | /media/yocto_build/qt5-r=
aspb/build/tmp/sysroots/raspberrypi/usr/=0A> lib/libEGL.so: undefined refer=
ence to `glxx_client_IsFramebuffer' =0A> | /media/yocto_build/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/=0A> lib/libEGL.so: undefined reference to =
`glxx_client_state_free' =0A> | collect2: error: ld returned 1 exit status =
=0A> | make: *** [egl] Error 1 =0A> | EGL disabled.=0A> =0A> =0A> If I bypa=
ss this test (by modifyingqtbase-opensource-src-5.2.1/=0A> config.tests/qpa=
/egl/egl.cpp so it does nothing and always returns =0A> 0) the build works =
fine and I can boot the resulting Image. =0A> Unfortunately Qt Programms wi=
ll abort with  =0A> "eglfs: Could not create the egl surface:=0Aerror =3D 0=
x300b" =0A> I tried a lot of stuff but I' cant get ether=0Aof the two error=
s =0A> "fixed". Any help appreciated. =0A> Thank you for your time,=0A> =0A=
> Felix Fischer=0A> =0A> Student Employee (VC-I42)=0A> Vehicle Cockpit - HM=
I Software and Code generation=0A> =0A> IAV GmbH=0A> Carnotstr. 1=0A> 10587=
 BERLIN=0A> GERMANY=0A> =0A> Phone: +49 30 3997-89540=0A> Fax: =A0 =A0 =A0 =
+49 30 3997-89411=0A> E-Mail: =A0<mailto:felix01.fischer@iav.de>=0A> Intern=
et: http://www.iav.com=0A> =0A> Sitz/Registered Office: Berlin, =0A> Regist=
ergericht/Registration Court: Amtsgericht Charlottenburg, =0A> Registernumm=
er/Company Registration Number: HRB 21 280, =0A> Gesch=E4ftsf=FChrer/Managi=
ng Directors: Kurt Blumenr=F6der, Michael =0A> Schubert, Dr. R=FCdiger Goyk=
=0A> Vorsitzender des Aufsichtsrates/Chairman of the Supervisory Board: =0A=
> Dr. Harald Ludanek-- =0A> _______________________________________________=
=0A> yocto mailing list=0A> yocto@yoctoproject.org=0A> https://lists.yoctop=
roject.org/listinfo/yocto=0A=0A=0A-- =0A___________________________________=
____________=0Ayocto mailing list=0Ayocto@yoctoproject.org=0Ahttps://lists.=
yoctoproject.org/listinfo/yocto

--1438449284-915897141-1398773448=:15060
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12pt">Did you tried copying the glxx library into the rootfs lib di=
rectory?<br><div><span><br></span></div><div style=3D"display: block;" clas=
s=3D"yahoo_quoted"> <div style=3D"font-family: HelveticaNeue, Helvetica Neu=
e, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div sty=
le=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida =
Grande, sans-serif; font-size: 12pt;"> <div dir=3D"ltr"> <font face=3D"Aria=
l" size=3D"2"> On Tuesday, April 29, 2014 2:38 PM, Felix01 Fischer &lt;feli=
x01.fischer@iav.de&gt; wrote:<br> </font> </div>  <div class=3D"y_msg_conta=
iner"><div id=3D"yiv2980899260"><div><tt><font size=3D"2">I've been able to=
 narrow my problem futher down:<br clear=3D"none">=0A<br clear=3D"none">=0A=
the meta-raspberrypi layer contains a bb called "userland_git.bb"=0A(meta-r=
aspberrypi/recipes-graphics/userland/userland_git.bb).</font></tt>=0A<br cl=
ear=3D"none"><tt><font size=3D"2">the source for this layer is github.com/r=
aspberrypi/userland.git.=0AI cloned this repository and searched for the un=
defined references.<br clear=3D"none">=0A<br clear=3D"none">=0AThis reposit=
ory contains the source code for the ARM side libraries used=0Aon Raspberry=
 Pi. These typically are installed in /opt/vc/lib and includes=0Asource for=
 the ARM side code to interface to: EGL, mmal, GLESv2, vcos,=0Aopenmaxil, v=
chiq_arm, bcm_host, WFC, OpenVG. <br clear=3D"none">=0A<br clear=3D"none">=
=0AI had success! All my undefined references are defined in userland/inter=
face/khronos/glxx/glxx_client.(h|c).<br clear=3D"none">=0A<br clear=3D"none=
">=0ABut still I haven't figured out how to get this build correctly so qtb=
ase=0Acan find and use it.</font></tt>=0A<br clear=3D"none"><tt><font size=
=3D"2"><br clear=3D"none">=0AAny suggestions?<br clear=3D"none">=0A<br clea=
r=3D"none">=0AFelix<br clear=3D"none">=0A<br clear=3D"none">=0A<br clear=3D=
"none">=0Ayocto-bounces@yoctoproject.org schrieb am 25.04.2014 13:00:38:<br=
 clear=3D"none">=0A<div class=3D"yiv2980899260yqt7616285474" id=3D"yiv29808=
99260yqtfd48524"><br clear=3D"none">=0A&gt; Von: Felix01 Fischer &lt;felix0=
1.fischer@iav.de&gt;</div></font></tt><div class=3D"yiv2980899260yqt7616285=
474" id=3D"yiv2980899260yqtfd46876">=0A<br clear=3D"none"><tt><font size=3D=
"2">&gt; An: yocto@yoctoproject.org, </font></tt>=0A<br clear=3D"none"><tt>=
<font size=3D"2">&gt; Datum: 25.04.2014 15:33</font></tt>=0A<br clear=3D"no=
ne"><tt><font size=3D"2">&gt; Betreff: [yocto] building qtbase for raspberr=
y=0Api fails</font></tt>=0A<br clear=3D"none"><tt><font size=3D"2">&gt; Ges=
endet von: yocto-bounces@yoctoproject.org</font></tt>=0A<br clear=3D"none">=
<tt><font size=3D"2">&gt; <br clear=3D"none">=0A&gt; Hello everybody, <br c=
lear=3D"none">=0A&gt; first, I hope I have choosen the right mailing list f=
or my problem.=0A<br clear=3D"none">=0A&gt; If not, please tell me.<br clea=
r=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; I have problems getting Qt5 b=
uilding and running on a raspberry pi=0A<br clear=3D"none">=0A&gt; (512 Mb =
Version).<br clear=3D"none">=0A&gt; I'm using today's master branch from yo=
cto &amp; meta-raspberrypi=0A( <br clear=3D"none">=0A&gt; git.yoctoproject.=
org ) and meta-qt5 ( github.com/meta-qt5/meta-qt5=0A).<br clear=3D"none">=
=0A&gt; Building without a change in qtbase doesn't work because the OpenGL=
=0A<br clear=3D"none">=0A&gt; Test fails ( the raspberry pi only suppports =
GLESv2). </font></tt>=0A<br clear=3D"none"><tt><font size=3D"2">&gt; When b=
uilding with a qtbase_X.Y.Z.bbappend and=0A<br clear=3D"none">=0A&gt; "PACK=
AGECCONFIG_append =3D " gles2" in order to use eglfs=0Athe mess beginns.<br=
 clear=3D"none">=0A&gt; First, building qtbase fails because qtbase-opensou=
rce-src-5.2.1/<br clear=3D"none">=0A&gt; config.tests/qpa/egl/egl.cpp canno=
t find "vcos_types.h"<br clear=3D"none">=0A&gt; After including this manual=
ly in "meta-qt5/recipes-qt/qt5/<br clear=3D"none">=0A&gt; qtbase.inc" by ad=
ding the last line to configure </font></tt>=0A<br clear=3D"none"><tt><font=
 size=3D"2">&gt; do_configure() { </font></tt>=0A<br clear=3D"none"><tt><fo=
nt size=3D"2">&gt; &nbsp; <br clear=3D"none">=0A&gt; [.............] <br cl=
ear=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; &nbsp; &nbsp; ${S}/configur=
e -v \ <br clear=3D"none">=0A&gt; -I${STAGING_DIR_TARGET}/usr/include/inter=
face/vcos/pthreads/ \ <br clear=3D"none">=0A&gt; <br clear=3D"none">=0A&gt;=
 [.............] <br clear=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; } <b=
r clear=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; &nbsp; &nbsp; <br clear=
=3D"none">=0A&gt; the next error is the following: </font></tt>=0A<br clear=
=3D"none"><tt><font size=3D"2">&gt; | EGL auto-detection... () </font></tt>=
=0A<br clear=3D"none"><tt><font size=3D"2">&gt; | arm-poky-linux-gnueabi-g+=
+ &nbsp;-march=3Darmv6=0A-mthumb-interwork -<br clear=3D"none">=0A&gt; mflo=
at-abi=3Dsoftfp &nbsp;-mfpu=3Dvfp --sysroot=3D/media/yocto_build/qt5-raspb/=
<br clear=3D"none">=0A&gt; build/tmp/sysroots/raspberrypi -c -pipe &nbsp;-O=
2 -pipe -g -feliminate-<br clear=3D"none">=0A&gt; unused-debug-types -fvisi=
bility-inlines-hidden -O2 -Wall -W -fPIE=0A&nbsp;-<br clear=3D"none">=0A&gt=
; I../../../../qtbase-opensource-src-5.2.1/mkspecs/linux-oe-g++ -<br clear=
=3D"none">=0A&gt; I../../../../qtbase-opensource-src-5.2.1/config.tests/qpa=
/egl -<br clear=3D"none">=0A&gt; I../../../../../../../../sysroots/raspberr=
ypi/usr/include/interface/<br clear=3D"none">=0A&gt; vcos/pthreads -I. -o e=
gl.o ../../../../qtbase-opensource-src-5.2.1/<br clear=3D"none">=0A&gt; con=
fig.tests/qpa/egl/egl.cpp <br clear=3D"none">=0A&gt; | ../../../../qtbase-o=
pensource-src-5.2.1/config.tests/qpa/egl/<br clear=3D"none">=0A&gt; egl.cpp=
: In function 'int main(int, char**)': <br clear=3D"none">=0A&gt; | ../../.=
./../qtbase-opensource-src-5.2.1/config.tests/qpa/egl/<br clear=3D"none">=
=0A&gt; egl.cpp:46:12: warning: unused variable 'x' [-Wunused-variable] <br=
 clear=3D"none">=0A&gt; | &nbsp; &nbsp; &nbsp;EGLint x =3D 0; <br clear=3D"=
none">=0A&gt; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^ <br clear=3D"no=
ne">=0A&gt; | arm-poky-linux-gnueabi-g++ &nbsp;-march=3Darmv6 -mthumb-inter=
work=0A-<br clear=3D"none">=0A&gt; mfloat-abi=3Dsoftfp &nbsp;-mfpu=3Dvfp --=
sysroot=3D/media/yocto_build/qt5-raspb/<br clear=3D"none">=0A&gt; build/tmp=
/sysroots/raspberrypi -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--<br clear=3D"non=
e">=0A&gt; as-needed -Wl,-O1 -o egl egl.o &nbsp; -lEGL <br clear=3D"none">=
=0A&gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<=
br clear=3D"none">=0A&gt; lib/libEGL.so: undefined reference to `glxx_clien=
t_GetRenderbufferParameteriv'<br clear=3D"none">=0A&gt; | /media/yocto_buil=
d/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; l=
ib/libEGL.so: undefined reference to `gl20_client_state_init' <br clear=3D"=
none">=0A&gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi=
/usr/<br clear=3D"none">=0A&gt; lib/libEGL.so: undefined reference to `gl11=
_client_state_init' <br clear=3D"none">=0A&gt; | /media/yocto_build/qt5-ras=
pb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; lib/libEGL=
.so: undefined reference to `glintAttribPointer' <br clear=3D"none">=0A&gt;=
 | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clea=
r=3D"none">=0A&gt; lib/libEGL.so: undefined reference to `glxx_client_GenFr=
amebuffers'=0A<br clear=3D"none">=0A&gt; | /media/yocto_build/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; lib/libEGL.so: u=
ndefined reference to `glxx_buffer_info_get' <br clear=3D"none">=0A&gt; | /=
media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D=
"none">=0A&gt; lib/libEGL.so: undefined reference to `glDiscardFramebufferE=
XT' <br clear=3D"none">=0A&gt; | /media/yocto_build/qt5-raspb/build/tmp/sys=
roots/raspberrypi/usr/<br clear=3D"none">=0A&gt; lib/libEGL.so: undefined r=
eference to `glxx_client_FramebufferTexture2D'=0A<br clear=3D"none">=0A&gt;=
 | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clea=
r=3D"none">=0A&gt; lib/libEGL.so: undefined reference to `glxx_client_IsRen=
derbuffer'=0A<br clear=3D"none">=0A&gt; | /media/yocto_build/qt5-raspb/buil=
d/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; lib/libEGL.so: un=
defined reference to `glxx_set_error' <br clear=3D"none">=0A&gt; | /media/y=
octo_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=
=0A&gt; lib/libEGL.so: undefined reference to `glxx_client_BindFramebuffer'=
=0A<br clear=3D"none">=0A&gt; | /media/yocto_build/qt5-raspb/build/tmp/sysr=
oots/raspberrypi/usr/<br clear=3D"none">=0A&gt; lib/libEGL.so: undefined re=
ference to `glxx_client_GenRenderbuffers'=0A<br clear=3D"none">=0A&gt; | /m=
edia/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"=
none">=0A&gt; lib/libEGL.so: undefined reference to `glxx_set_error_api' <b=
r clear=3D"none">=0A&gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/=
raspberrypi/usr/<br clear=3D"none">=0A&gt; lib/libEGL.so: undefined referen=
ce to `glxx_client_BindRenderbuffer'=0A<br clear=3D"none">=0A&gt; | /media/=
yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none"=
>=0A&gt; lib/libEGL.so: undefined reference to `glBufferSubData' <br clear=
=3D"none">=0A&gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspber=
rypi/usr/<br clear=3D"none">=0A&gt; lib/libEGL.so: undefined reference to <=
br clear=3D"none">=0A&gt; `glxx_client_GetFramebufferAttachmentParameteriv'=
 <br clear=3D"none">=0A&gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroo=
ts/raspberrypi/usr/<br clear=3D"none">=0A&gt; lib/libEGL.so: undefined refe=
rence to `glxx_client_CheckFramebufferStatus'=0A<br clear=3D"none">=0A&gt; =
| /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=
=3D"none">=0A&gt; lib/libEGL.so: undefined reference to `glxx_client_Frameb=
ufferRenderbuffer'=0A<br clear=3D"none">=0A&gt; | /media/yocto_build/qt5-ra=
spb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; lib/libEG=
L.so: undefined reference to `glxx_client_RenderbufferStorage'=0A<br clear=
=3D"none">=0A&gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspber=
rypi/usr/<br clear=3D"none">=0A&gt; lib/libEGL.so: undefined reference to `=
glxx_client_DeleteRenderbuffers'=0A<br clear=3D"none">=0A&gt; | /media/yoct=
o_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A=
&gt; lib/libEGL.so: undefined reference to `glxx_client_GenerateMipmap'=0A<=
br clear=3D"none">=0A&gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots=
/raspberrypi/usr/<br clear=3D"none">=0A&gt; lib/libEGL.so: undefined refere=
nce to `glxx_buffer_info_set' <br clear=3D"none">=0A&gt; | /media/yocto_bui=
ld/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; =
lib/libEGL.so: undefined reference to `glPointSizePointerOES' <br clear=3D"=
none">=0A&gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi=
/usr/<br clear=3D"none">=0A&gt; lib/libEGL.so: undefined reference to `glxx=
_client_DeleteFramebuffers'=0A<br clear=3D"none">=0A&gt; | /media/yocto_bui=
ld/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; =
lib/libEGL.so: undefined reference to `glxx_client_IsFramebuffer'=0A<br cle=
ar=3D"none">=0A&gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspb=
errypi/usr/<br clear=3D"none">=0A&gt; lib/libEGL.so: undefined reference to=
 `glxx_client_state_free' <br clear=3D"none">=0A&gt; | collect2: error: ld =
returned 1 exit status <br clear=3D"none">=0A&gt; | make: *** [egl] Error 1=
 <br clear=3D"none">=0A&gt; | EGL disabled.<br clear=3D"none">=0A&gt; <br c=
lear=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; If I bypass this test (by =
modifyingqtbase-opensource-src-5.2.1/<br clear=3D"none">=0A&gt; config.test=
s/qpa/egl/egl.cpp so it does nothing and always returns=0A<br clear=3D"none=
">=0A&gt; 0) the build works fine and I can boot the resulting Image.</font=
></tt>=0A<br clear=3D"none"><tt><font size=3D"2">&gt; Unfortunately Qt Prog=
ramms will abort with </font></tt>=0A<br clear=3D"none"><tt><font size=3D"2=
">&gt; "eglfs: Could not create the egl surface:=0Aerror =3D 0x300b"</font>=
</tt>=0A<br clear=3D"none"><tt><font size=3D"2">&gt; I tried a lot of stuff=
 but I' cant get ether=0Aof the two errors <br clear=3D"none">=0A&gt; "fixe=
d". Any help appreciated. <br clear=3D"none">=0A&gt; Thank you for your tim=
e,<br clear=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; Felix Fischer<br cl=
ear=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; Student Employee (VC-I42)<b=
r clear=3D"none">=0A&gt; Vehicle Cockpit - HMI Software and Code generation=
<br clear=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; IAV GmbH<br clear=3D"=
none">=0A&gt; Carnotstr. 1<br clear=3D"none">=0A&gt; 10587 BERLIN<br clear=
=3D"none">=0A&gt; GERMANY<br clear=3D"none">=0A&gt; <br clear=3D"none">=0A&=
gt; Phone: +49 30 3997-89540<br clear=3D"none">=0A&gt; Fax: &nbsp; &nbsp; &=
nbsp; +49 30 3997-89411<br clear=3D"none">=0A&gt; E-Mail: &nbsp;&lt;</font>=
</tt><a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:felix01.fischer@i=
av.de" target=3D"_blank" href=3D"mailto:felix01.fischer@iav.de"><tt><font s=
ize=3D"2">mailto:felix01.fischer@iav.de</font></tt></a><tt><font size=3D"2"=
>&gt;<br clear=3D"none">=0A&gt; Internet: </font></tt><a rel=3D"nofollow" s=
hape=3D"rect" target=3D"_blank" href=3D"http://www.iav.com/"><tt><font size=
=3D"2">http://www.iav.com</font></tt></a><tt><font size=3D"2"><br clear=3D"=
none">=0A&gt; <br clear=3D"none">=0A&gt; Sitz/Registered Office: Berlin, <b=
r clear=3D"none">=0A&gt; Registergericht/Registration Court: Amtsgericht Ch=
arlottenburg, <br clear=3D"none">=0A&gt; Registernummer/Company Registratio=
n Number: HRB 21 280, <br clear=3D"none">=0A&gt; Gesch=E4ftsf=FChrer/Managi=
ng Directors: Kurt Blumenr=F6der, Michael <br clear=3D"none">=0A&gt; Schube=
rt, Dr. R=FCdiger Goyk<br clear=3D"none">=0A&gt; Vorsitzender des Aufsichts=
rates/Chairman of the Supervisory Board:=0A<br clear=3D"none">=0A&gt; Dr. H=
arald Ludanek-- <br clear=3D"none">=0A&gt; ________________________________=
_______________<br clear=3D"none">=0A&gt; yocto mailing list<br clear=3D"no=
ne">=0A&gt; yocto@yoctoproject.org<br clear=3D"none">=0A&gt; </font></tt><a=
 rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"https://lists.yo=
ctoproject.org/listinfo/yocto"><tt><font size=3D"2">https://lists.yoctoproj=
ect.org/listinfo/yocto</font></tt></a><tt><font size=3D"2"><br clear=3D"non=
e">=0A</font></tt></div></div></div><br><div class=3D"yqt7616285474" id=3D"=
yqtfd32381">-- <br clear=3D"none">_________________________________________=
______<br clear=3D"none">yocto mailing list<br clear=3D"none"><a shape=3D"r=
ect" ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctopr=
oject.org">yocto@yoctoproject.org</a><br clear=3D"none"><a shape=3D"rect" h=
ref=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">htt=
ps://lists.yoctoproject.org/listinfo/yocto</a><br clear=3D"none"></div><br>=
<br></div>  </div> </div>  </div> </div></body></html>

--1438449284-915897141-1398773448=:15060--
