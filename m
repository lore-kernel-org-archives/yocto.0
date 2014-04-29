Return-Path: <vaduvajanalexandru@yahoo.com>
Received: from nm35.bullet.mail.ne1.yahoo.com (nm35.bullet.mail.ne1.yahoo.com
	[98.138.229.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9173EE00C15
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 06:29:30 -0700 (PDT)
Received: from [127.0.0.1] by nm35.bullet.mail.ne1.yahoo.com with NNFMP;
	29 Apr 2014 13:29:29 -0000
Received: from [98.138.100.111] by nm35.bullet.mail.ne1.yahoo.com with NNFMP;
	29 Apr 2014 13:26:28 -0000
Received: from [98.138.89.167] by tm100.bullet.mail.ne1.yahoo.com with NNFMP;
	29 Apr 2014 13:26:27 -0000
Received: from [127.0.0.1] by omp1023.mail.ne1.yahoo.com with NNFMP;
	29 Apr 2014 13:26:27 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 965425.58935.bm@omp1023.mail.ne1.yahoo.com
Received: (qmail 31914 invoked by uid 60001); 29 Apr 2014 13:26:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1398777987; bh=pUUFVf+XeaR4Bs/+qqSp+3Ul4k7nvSL5hZEtkfgzYBo=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=CsN5sbYg3I2w7KrQXe69YaXDawffOm/jhXBx+7Zniqtnpp0S3O7HnT25qWeKfQjB6KspJ8U3Iv+FvcmXXRstsXN5vCKRzH2gmVwSpF3UIJIu9GaYUvSesAv9/85KnVYc/FvNLf4NWeuzpq597rqlL+q/rA+90DZ1r6wfpcyD2xE=
X-YMail-OSG: C7M97YwVM1m.jN73XHIaPQ2fIVoo5hYLgLae_OsCTzrQTXE
	gA88ItV8GUkUeCqe8n1j7v8tmiXgr8IVFWtFmGKs.lOmyTbE-
Received: from [193.202.22.66] by web122504.mail.ne1.yahoo.com via HTTP;
	Tue, 29 Apr 2014 06:26:27 PDT
X-Rocket-MIMEInfo: 002.001,
	WW91IG1heSB0cnkgYW5kwqAgZmluZCB0aGUgaGVhZGVycyBjb250YWluaW5nIHRob3NlIHVuZGVmaW5lZCBmdW5jdGlvbnMgYW5kIGluY2x1ZGUgdGhlbSBpbnRvIHJvb3RmcywgbW9yZSBleGFjbHR5IGludG8gdXNyL2luY2x1ZGUgb3Igc2ltaWxhci4KCgpPbiBUdWVzZGF5LCBBcHJpbCAyOSwgMjAxNCAzOjU2IFBNLCBGZWxpeDAxIEZpc2NoZXIgPGZlbGl4MDEuZmlzY2hlckBpYXYuZGU.IHdyb3RlOgogClVuZm9ydHVuYXRlbHkgdGhlcmUgaXMgbm8gbGlicmFyeS4gQWZ0ZXIKZWl0aGVyICJiaXRiYWtlIC0BMAEBAQE-
X-Mailer: YahooMailWebService/0.8.185.657
References: <OFE6AAA3CB.F2E905AC-ONC1257CC5.0035C1A6-C1257CC5.003C7A9B@retarus.de>
	<OF92054C10.827CF0FE-ONC1257CC9.003ED681-C1257CC9.003FD0E4@retarus.de>
	<1398773448.15060.YahooMailNeo@web122505.mail.ne1.yahoo.com>
	<OFAE2C0624.001BA3F1-ONC1257CC9.0046DD9A-C1257CC9.00470BDF@retarus.de>
Message-ID: <1398777987.71235.YahooMailNeo@web122504.mail.ne1.yahoo.com>
Date: Tue, 29 Apr 2014 06:26:27 -0700 (PDT)
From: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
To: Felix01 Fischer <felix01.fischer@iav.de>
In-Reply-To: <OFAE2C0624.001BA3F1-ONC1257CC9.0046DD9A-C1257CC9.00470BDF@retarus.de>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Antwort: Re: building qtbase for raspberry pi fails
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
X-List-Received-Date: Tue, 29 Apr 2014 13:29:35 -0000
Content-Type: multipart/alternative;
	boundary="981719177-1348452701-1398777987=:71235"

--981719177-1348452701-1398777987=:71235
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

You may try and=A0 find the headers containing those undefined functions an=
d include them into rootfs, more exaclty into usr/include or similar.=0A=0A=
=0AOn Tuesday, April 29, 2014 3:56 PM, Felix01 Fischer <felix01.fischer@iav=
.de> wrote:=0A =0AUnfortunately there is no library. After=0Aeither "bitbak=
e -c compile userland" or "bitbake userland"=0Athere are the source files (=
*.h *.c) and one named "*.c.o" but=0Ano *.o file exists =0A=0AVaduva alexan=
dru <vaduvajanalexandru@yahoo.com>=0Aschrieb am 29.04.2014 14:10:48:=0A=0A=
=0A> Von: Vaduva alexandru <vaduvajanalexandru@yahoo.com>=0A=0A> An: Felix0=
1 Fischer <felix01.fischer@iav.de>, =0A> "yocto@yoctoproject.org" <yocto@yo=
ctoproject.org>,  =0A> Datum: 29.04.2014 14:11 =0A> Betreff: Re: [yocto] bu=
ilding qtbase for raspberry=0Api fails =0A> =0A> Did you tried copying the =
glxx library into the rootfs lib directory? =0A> =0A> On Tuesday, April 29,=
 2014 2:38 PM, Felix01 Fischer =0A> <felix01.fischer@iav.de> wrote: =0A> I'=
ve been able to narrow my problem futher down:=0A> =0A> the meta-raspberryp=
i layer contains a bb called "userland_git.bb" =0A> (meta-raspberrypi/recip=
es-graphics/userland/userland_git.bb). =0A> the source for this layer is gi=
thub.com/raspberrypi/userland.git.=0AI =0A> cloned this repository and sear=
ched for the undefined references.=0A> =0A> This repository contains the so=
urce code for the ARM side libraries =0A> used on Raspberry Pi. These typic=
ally are installed in /opt/vc/lib =0A> and includes source for the ARM side=
 code to interface to: EGL, =0A> mmal, GLESv2, vcos, openmaxil, vchiq_arm, =
bcm_host, WFC, OpenVG. =0A> =0A> I had success! All my undefined references=
 are defined in userland/=0A> interface/khronos/glxx/glxx_client.(h|c).=0A>=
 =0A> But still I haven't figured out how to get this build correctly so =
=0A> qtbase can find and use it. =0A> =0A> Any suggestions?=0A> =0A> Felix=
=0A> =0A> =0A> yocto-bounces@yoctoproject.org schrieb am 25.04.2014 13:00:3=
8: =0A> =0A> > Von: Felix01 Fischer <felix01.fischer@iav.de> =0A> =0A> > An=
: yocto@yoctoproject.org, =0A> > Datum: 25.04.2014 15:33 =0A> > Betreff: [y=
octo] building qtbase for raspberry pi fails =0A> > Gesendet von: yocto-bou=
nces@yoctoproject.org =0A> > =0A> > Hello everybody, =0A> > first, I hope I=
 have choosen the right mailing list for my problem. =0A> > If not, please =
tell me.=0A> > =0A> > I have problems getting Qt5 building and running on a=
 raspberry=0Api =0A> > (512 Mb Version).=0A> > I'm using today's master bra=
nch from yocto & meta-raspberrypi=0A( =0A> > git.yoctoproject.org ) and met=
a-qt5 ( github.com/meta-qt5/meta-qt5=0A).=0A> > Building without a change i=
n qtbase doesn't work because the=0AOpenGL =0A> > Test fails ( the raspberr=
y pi only suppports GLESv2). =0A> > When building with a qtbase_X.Y.Z.bbapp=
end and =0A> > "PACKAGECCONFIG_append =3D " gles2" in order to=0Ause eglfs =
the mess beginns.=0A> > First, building qtbase fails because qtbase-opensou=
rce-src-5.2.1/=0A> > config.tests/qpa/egl/egl.cpp cannot find "vcos_types.h=
"=0A> > After including this manually in "meta-qt5/recipes-qt/qt5/=0A> > qt=
base.inc" by adding the last line to configure =0A> > do_configure() { =0A>=
 > =A0 =0A> > [.............] =0A> > =0A> > =A0 =A0 ${S}/configure -v \ =0A=
> > -I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads/=0A\ =0A> >=
 =0A> > [.............] =0A> > =0A> > } =0A> > =0A> > =A0 =A0 =0A> > the ne=
xt error is the following: =0A> > | EGL auto-detection... () =0A> > | arm-p=
oky-linux-gnueabi-g++ =A0-march=3Darmv6 -mthumb-interwork=0A-=0A> > mfloat-=
abi=3Dsoftfp =A0-mfpu=3Dvfp --sysroot=3D/media/yocto_build/qt5-raspb/=0A> >=
 build/tmp/sysroots/raspberrypi -c -pipe =A0-O2 -pipe -g -feliminate-=0A> >=
 unused-debug-types -fvisibility-inlines-hidden -O2 -Wall -W -fPIE=0A=A0-=
=0A> > I../../../../qtbase-opensource-src-5.2.1/mkspecs/linux-oe-g++=0A-=0A=
> > I../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl=0A-=0A> >=
 I../../../../../../../../sysroots/raspberrypi/usr/include/interface/=0A> >=
 vcos/pthreads -I. -o egl.o ../../../../qtbase-opensource-src-5.2.1/=0A> > =
config.tests/qpa/egl/egl.cpp =0A> > | ../../../../qtbase-opensource-src-5.2=
.1/config.tests/qpa/egl/=0A> > egl.cpp: In function 'int main(int, char**)'=
: =0A> > | ../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl/=0A=
> > egl.cpp:46:12: warning: unused variable 'x' [-Wunused-variable] =0A> > =
| =A0 =A0 =A0EGLint x =3D 0; =0A> > | =A0 =A0 =A0 =A0 =A0 =A0 ^ =0A> > | ar=
m-poky-linux-gnueabi-g++ =A0-march=3Darmv6 -mthumb-interwork=0A-=0A> > mflo=
at-abi=3Dsoftfp =A0-mfpu=3Dvfp --sysroot=3D/media/yocto_build/qt5-raspb/=0A=
> > build/tmp/sysroots/raspberrypi -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--=0A=
> > as-needed -Wl,-O1 -o egl egl.o =A0 -lEGL =0A> > | /media/yocto_build/qt=
5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/libEGL.so: undefined =
reference to =0A> `glxx_client_GetRenderbufferParameteriv'=0A> > | /media/y=
octo_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/libEGL.s=
o: undefined reference to `gl20_client_state_init' =0A> > | /media/yocto_bu=
ild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/libEGL.so: unde=
fined reference to `gl11_client_state_init' =0A> > | /media/yocto_build/qt5=
-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/libEGL.so: undefined r=
eference to `glintAttribPointer' =0A> > | /media/yocto_build/qt5-raspb/buil=
d/tmp/sysroots/raspberrypi/usr/=0A> > lib/libEGL.so: undefined reference to=
 `glxx_client_GenFramebuffers' =0A> > | /media/yocto_build/qt5-raspb/build/=
tmp/sysroots/raspberrypi/usr/=0A> > lib/libEGL.so: undefined reference to `=
glxx_buffer_info_get' =0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysro=
ots/raspberrypi/usr/=0A> > lib/libEGL.so: undefined reference to `glDiscard=
FramebufferEXT' =0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/ra=
spberrypi/usr/=0A> > lib/libEGL.so: undefined reference to `glxx_client_Fra=
mebufferTexture2D' =0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots=
/raspberrypi/usr/=0A> > lib/libEGL.so: undefined reference to `glxx_client_=
IsRenderbuffer' =0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/ra=
spberrypi/usr/=0A> > lib/libEGL.so: undefined reference to `glxx_set_error'=
 =0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=
=0A> > lib/libEGL.so: undefined reference to `glxx_client_BindFramebuffer' =
=0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=
=0A> > lib/libEGL.so: undefined reference to `glxx_client_GenRenderbuffers'=
 =0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=
=0A> > lib/libEGL.so: undefined reference to `glxx_set_error_api' =0A> > | =
/media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/=
libEGL.so: undefined reference to `glxx_client_BindRenderbuffer' =0A> > | /=
media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/l=
ibEGL.so: undefined reference to `glBufferSubData' =0A> > | /media/yocto_bu=
ild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/libEGL.so: unde=
fined reference to =0A> > `glxx_client_GetFramebufferAttachmentParameteriv'=
 =0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=
=0A> > lib/libEGL.so: undefined reference to `glxx_client_CheckFramebufferS=
tatus' =0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi=
/usr/=0A> > lib/libEGL.so: undefined reference to `glxx_client_FramebufferR=
enderbuffer' =0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspb=
errypi/usr/=0A> > lib/libEGL.so: undefined reference to `glxx_client_Render=
bufferStorage' =0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/ras=
pberrypi/usr/=0A> > lib/libEGL.so: undefined reference to `glxx_client_Dele=
teRenderbuffers' =0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/r=
aspberrypi/usr/=0A> > lib/libEGL.so: undefined reference to `glxx_client_Ge=
nerateMipmap' =0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/rasp=
berrypi/usr/=0A> > lib/libEGL.so: undefined reference to `glxx_buffer_info_=
set' =0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/u=
sr/=0A> > lib/libEGL.so: undefined reference to `glPointSizePointerOES' =0A=
> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> =
> lib/libEGL.so: undefined reference to `glxx_client_DeleteFramebuffers' =
=0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=
=0A> > lib/libEGL.so: undefined reference to `glxx_client_IsFramebuffer' =
=0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=
=0A> > lib/libEGL.so: undefined reference to `glxx_client_state_free' =0A> =
> | collect2: error: ld returned 1 exit status =0A> > | make: *** [egl] Err=
or 1 =0A> > | EGL disabled.=0A> > =0A> > =0A> > If I bypass this test (by m=
odifyingqtbase-opensource-src-5.2.1/=0A> > config.tests/qpa/egl/egl.cpp so =
it does nothing and always returns =0A> > 0) the build works fine and I can=
 boot the resulting Image. =0A> > Unfortunately Qt Programms will abort wit=
h =0A> > "eglfs: Could not create the egl surface: error =3D 0x300b" =0A> >=
 I tried a lot of stuff but I' cant get ether of the two errors =0A> > "fix=
ed". Any help appreciated. =0A> > Thank you for your time,=0A> > =0A> > Fel=
ix Fischer=0A> > =0A> > Student Employee (VC-I42)=0A> > Vehicle Cockpit - H=
MI Software and Code generation=0A> > =0A> > IAV GmbH=0A> > Carnotstr. 1=0A=
> > 10587 BERLIN=0A> > GERMANY=0A> > =0A> > Phone: +49 30 3997-89540=0A> > =
Fax: =A0 =A0 =A0 +49 30 3997-89411=0A> > E-Mail: =A0<mailto:felix01.fischer=
@iav.de>=0A> > Internet: http://www.iav.com=0A> > =0A> > Sitz/Registered Of=
fice: Berlin, =0A> > Registergericht/Registration Court: Amtsgericht Charlo=
ttenburg, =0A> > Registernummer/Company Registration Number: HRB 21 280, =
=0A> > Gesch=E4ftsf=FChrer/Managing Directors: Kurt Blumenr=F6der, Michael =
=0A> > Schubert, Dr. R=FCdiger Goyk=0A> > Vorsitzender des Aufsichtsrates/C=
hairman of the Supervisory Board: =0A> > Dr. Harald Ludanek-- =0A> > ______=
_________________________________________=0A> > yocto mailing list=0A> > yo=
cto@yoctoproject.org=0A> > https://lists.yoctoproject.org/listinfo/yocto =
=0A> =0A> -- =0A> _______________________________________________=0A> yocto=
 mailing list=0A> yocto@yoctoproject.org=0A> https://lists.yoctoproject.org=
/listinfo/yocto =0A> 

--981719177-1348452701-1398777987=:71235
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12pt">You may try and&nbsp; find the headers containing those undef=
ined functions and include them into rootfs, more exaclty into usr/include =
or similar.<br><div><span><br></span></div><div style=3D"display: block;" c=
lass=3D"yahoo_quoted"> <div style=3D"font-family: HelveticaNeue, Helvetica =
Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div =
style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Luci=
da Grande, sans-serif; font-size: 12pt;"> <div dir=3D"ltr"> <font face=3D"A=
rial" size=3D"2"> On Tuesday, April 29, 2014 3:56 PM, Felix01 Fischer &lt;f=
elix01.fischer@iav.de&gt; wrote:<br> </font> </div>  <div class=3D"y_msg_co=
ntainer"><div id=3D"yiv2366563127"><div><font face=3D"sans-serif" size=3D"2=
">Unfortunately there is no library. After=0Aeither "bitbake -c compile use=
rland" or "bitbake userland"=0Athere are the source files (*.h *.c) and one=
 named "*.c.o" but=0Ano *.o file exists</font>=0A<br clear=3D"none">=0A<br =
clear=3D"none"><tt><font size=3D"2">Vaduva alexandru &lt;vaduvajanalexandru=
@yahoo.com&gt;=0Aschrieb am 29.04.2014 14:10:48:<br clear=3D"none">=0A<div =
class=3D"yiv2366563127yqt0500280278" id=3D"yiv2366563127yqtfd55760"><br cle=
ar=3D"none">=0A&gt; Von: Vaduva alexandru &lt;vaduvajanalexandru@yahoo.com&=
gt;</div></font></tt><div class=3D"yiv2366563127yqt0500280278" id=3D"yiv236=
6563127yqtfd24039">=0A<br clear=3D"none"><tt><font size=3D"2">&gt; An: Feli=
x01 Fischer &lt;felix01.fischer@iav.de&gt;,=0A<br clear=3D"none">=0A&gt; "y=
octo@yoctoproject.org" &lt;yocto@yoctoproject.org&gt;,=0A</font></tt>=0A<br=
 clear=3D"none"><tt><font size=3D"2">&gt; Datum: 29.04.2014 14:11</font></t=
t>=0A<br clear=3D"none"><tt><font size=3D"2">&gt; Betreff: Re: [yocto] buil=
ding qtbase for raspberry=0Api fails</font></tt>=0A<br clear=3D"none"><tt><=
font size=3D"2">&gt; <br clear=3D"none">=0A&gt; Did you tried copying the g=
lxx library into the rootfs lib directory?</font></tt>=0A<br clear=3D"none"=
><tt><font size=3D"2">&gt; <br clear=3D"none">=0A&gt; On Tuesday, April 29,=
 2014 2:38 PM, Felix01 Fischer <br clear=3D"none">=0A&gt; &lt;felix01.fisch=
er@iav.de&gt; wrote:</font></tt>=0A<br clear=3D"none"><tt><font size=3D"2">=
&gt; I've been able to narrow my problem futher down:<br clear=3D"none">=0A=
&gt; <br clear=3D"none">=0A&gt; the meta-raspberrypi layer contains a bb ca=
lled "userland_git.bb"=0A<br clear=3D"none">=0A&gt; (meta-raspberrypi/recip=
es-graphics/userland/userland_git.bb). <br clear=3D"none">=0A&gt; the sourc=
e for this layer is github.com/raspberrypi/userland.git.=0AI <br clear=3D"n=
one">=0A&gt; cloned this repository and searched for the undefined referenc=
es.<br clear=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; This repository co=
ntains the source code for the ARM side libraries=0A<br clear=3D"none">=0A&=
gt; used on Raspberry Pi. These typically are installed in /opt/vc/lib=0A<b=
r clear=3D"none">=0A&gt; and includes source for the ARM side code to inter=
face to: EGL, <br clear=3D"none">=0A&gt; mmal, GLESv2, vcos, openmaxil, vch=
iq_arm, bcm_host, WFC, OpenVG. <br clear=3D"none">=0A&gt; <br clear=3D"none=
">=0A&gt; I had success! All my undefined references are defined in userlan=
d/<br clear=3D"none">=0A&gt; interface/khronos/glxx/glxx_client.(h|c).<br c=
lear=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; But still I haven't figure=
d out how to get this build correctly so=0A<br clear=3D"none">=0A&gt; qtbas=
e can find and use it. <br clear=3D"none">=0A&gt; <br clear=3D"none">=0A&gt=
; Any suggestions?<br clear=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; Fel=
ix<br clear=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; <br clear=3D"none">=
=0A&gt; yocto-bounces@yoctoproject.org schrieb am 25.04.2014 13:00:38:</fon=
t></tt>=0A<br clear=3D"none"><tt><font size=3D"2">&gt; <br clear=3D"none">=
=0A&gt; &gt; Von: Felix01 Fischer &lt;felix01.fischer@iav.de&gt;</font></tt=
>=0A<br clear=3D"none"><tt><font size=3D"2">&gt; <br clear=3D"none">=0A&gt;=
 &gt; An: yocto@yoctoproject.org, <br clear=3D"none">=0A&gt; &gt; Datum: 25=
.04.2014 15:33 <br clear=3D"none">=0A&gt; &gt; Betreff: [yocto] building qt=
base for raspberry pi fails <br clear=3D"none">=0A&gt; &gt; Gesendet von: y=
octo-bounces@yoctoproject.org <br clear=3D"none">=0A&gt; &gt; <br clear=3D"=
none">=0A&gt; &gt; Hello everybody, <br clear=3D"none">=0A&gt; &gt; first, =
I hope I have choosen the right mailing list for my problem.=0A<br clear=3D=
"none">=0A&gt; &gt; If not, please tell me.<br clear=3D"none">=0A&gt; &gt; =
<br clear=3D"none">=0A&gt; &gt; I have problems getting Qt5 building and ru=
nning on a raspberry=0Api <br clear=3D"none">=0A&gt; &gt; (512 Mb Version).=
<br clear=3D"none">=0A&gt; &gt; I'm using today's master branch from yocto =
&amp; meta-raspberrypi=0A( <br clear=3D"none">=0A&gt; &gt; git.yoctoproject=
.org ) and meta-qt5 ( github.com/meta-qt5/meta-qt5=0A).<br clear=3D"none">=
=0A&gt; &gt; Building without a change in qtbase doesn't work because the=
=0AOpenGL <br clear=3D"none">=0A&gt; &gt; Test fails ( the raspberry pi onl=
y suppports GLESv2). <br clear=3D"none">=0A&gt; &gt; When building with a q=
tbase_X.Y.Z.bbappend and <br clear=3D"none">=0A&gt; &gt; "PACKAGECCONFIG_ap=
pend =3D " gles2" in order to=0Ause eglfs the mess beginns.<br clear=3D"non=
e">=0A&gt; &gt; First, building qtbase fails because qtbase-opensource-src-=
5.2.1/<br clear=3D"none">=0A&gt; &gt; config.tests/qpa/egl/egl.cpp cannot f=
ind "vcos_types.h"<br clear=3D"none">=0A&gt; &gt; After including this manu=
ally in "meta-qt5/recipes-qt/qt5/<br clear=3D"none">=0A&gt; &gt; qtbase.inc=
" by adding the last line to configure <br clear=3D"none">=0A&gt; &gt; do_c=
onfigure() { <br clear=3D"none">=0A&gt; &gt; &nbsp; <br clear=3D"none">=0A&=
gt; &gt; [.............] <br clear=3D"none">=0A&gt; &gt; <br clear=3D"none"=
>=0A&gt; &gt; &nbsp; &nbsp; ${S}/configure -v \ <br clear=3D"none">=0A&gt; =
&gt; -I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads/=0A\ <br c=
lear=3D"none">=0A&gt; &gt; <br clear=3D"none">=0A&gt; &gt; [.............] =
<br clear=3D"none">=0A&gt; &gt; <br clear=3D"none">=0A&gt; &gt; } <br clear=
=3D"none">=0A&gt; &gt; <br clear=3D"none">=0A&gt; &gt; &nbsp; &nbsp; <br cl=
ear=3D"none">=0A&gt; &gt; the next error is the following: <br clear=3D"non=
e">=0A&gt; &gt; | EGL auto-detection... () <br clear=3D"none">=0A&gt; &gt; =
| arm-poky-linux-gnueabi-g++ &nbsp;-march=3Darmv6 -mthumb-interwork=0A-<br =
clear=3D"none">=0A&gt; &gt; mfloat-abi=3Dsoftfp &nbsp;-mfpu=3Dvfp --sysroot=
=3D/media/yocto_build/qt5-raspb/<br clear=3D"none">=0A&gt; &gt; build/tmp/s=
ysroots/raspberrypi -c -pipe &nbsp;-O2 -pipe -g -feliminate-<br clear=3D"no=
ne">=0A&gt; &gt; unused-debug-types -fvisibility-inlines-hidden -O2 -Wall -=
W -fPIE=0A&nbsp;-<br clear=3D"none">=0A&gt; &gt; I../../../../qtbase-openso=
urce-src-5.2.1/mkspecs/linux-oe-g++=0A-<br clear=3D"none">=0A&gt; &gt; I../=
../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl=0A-<br clear=3D"n=
one">=0A&gt; &gt; I../../../../../../../../sysroots/raspberrypi/usr/include=
/interface/<br clear=3D"none">=0A&gt; &gt; vcos/pthreads -I. -o egl.o ../..=
/../../qtbase-opensource-src-5.2.1/<br clear=3D"none">=0A&gt; &gt; config.t=
ests/qpa/egl/egl.cpp <br clear=3D"none">=0A&gt; &gt; | ../../../../qtbase-o=
pensource-src-5.2.1/config.tests/qpa/egl/<br clear=3D"none">=0A&gt; &gt; eg=
l.cpp: In function 'int main(int, char**)': <br clear=3D"none">=0A&gt; &gt;=
 | ../../../../qtbase-opensource-src-5.2.1/config.tests/qpa/egl/<br clear=
=3D"none">=0A&gt; &gt; egl.cpp:46:12: warning: unused variable 'x' [-Wunuse=
d-variable]=0A<br clear=3D"none">=0A&gt; &gt; | &nbsp; &nbsp; &nbsp;EGLint =
x =3D 0; <br clear=3D"none">=0A&gt; &gt; | &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; ^ <br clear=3D"none">=0A&gt; &gt; | arm-poky-linux-gnueabi-g++ &n=
bsp;-march=3Darmv6 -mthumb-interwork=0A-<br clear=3D"none">=0A&gt; &gt; mfl=
oat-abi=3Dsoftfp &nbsp;-mfpu=3Dvfp --sysroot=3D/media/yocto_build/qt5-raspb=
/<br clear=3D"none">=0A&gt; &gt; build/tmp/sysroots/raspberrypi -Wl,-O1 -Wl=
,--hash-style=3Dgnu -Wl,--<br clear=3D"none">=0A&gt; &gt; as-needed -Wl,-O1=
 -o egl egl.o &nbsp; -lEGL <br clear=3D"none">=0A&gt; &gt; | /media/yocto_b=
uild/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt=
; &gt; lib/libEGL.so: undefined reference to <br clear=3D"none">=0A&gt; `gl=
xx_client_GetRenderbufferParameteriv'<br clear=3D"none">=0A&gt; &gt; | /med=
ia/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"no=
ne">=0A&gt; &gt; lib/libEGL.so: undefined reference to `gl20_client_state_i=
nit'=0A<br clear=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build=
/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so=
: undefined reference to `gl11_client_state_init'=0A<br clear=3D"none">=0A&=
gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=
<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined reference to `glin=
tAttribPointer' <br clear=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-ra=
spb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/=
libEGL.so: undefined reference to `glxx_client_GenFramebuffers'=0A<br clear=
=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/ra=
spberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined refe=
rence to `glxx_buffer_info_get'=0A<br clear=3D"none">=0A&gt; &gt; | /media/=
yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none"=
>=0A&gt; &gt; lib/libEGL.so: undefined reference to `glDiscardFramebufferEX=
T'=0A<br clear=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/t=
mp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: =
undefined reference to `glxx_client_FramebufferTexture2D'=0A<br clear=3D"no=
ne">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberr=
ypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined reference =
to `glxx_client_IsRenderbuffer'=0A<br clear=3D"none">=0A&gt; &gt; | /media/=
yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none"=
>=0A&gt; &gt; lib/libEGL.so: undefined reference to `glxx_set_error' <br cl=
ear=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots=
/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined r=
eference to `glxx_client_BindFramebuffer'=0A<br clear=3D"none">=0A&gt; &gt;=
 | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clea=
r=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined reference to `glxx_client_=
GenRenderbuffers'=0A<br clear=3D"none">=0A&gt; &gt; | /media/yocto_build/qt=
5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; =
lib/libEGL.so: undefined reference to `glxx_set_error_api' <br clear=3D"non=
e">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberry=
pi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined reference t=
o `glxx_client_BindRenderbuffer'=0A<br clear=3D"none">=0A&gt; &gt; | /media=
/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none=
">=0A&gt; &gt; lib/libEGL.so: undefined reference to `glBufferSubData' <br =
clear=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroo=
ts/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined=
 reference to <br clear=3D"none">=0A&gt; &gt; `glxx_client_GetFramebufferAt=
tachmentParameteriv' <br clear=3D"none">=0A&gt; &gt; | /media/yocto_build/q=
t5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt;=
 lib/libEGL.so: undefined reference to `glxx_client_CheckFramebufferStatus'=
=0A<br clear=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp=
/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: un=
defined reference to `glxx_client_FramebufferRenderbuffer'=0A<br clear=3D"n=
one">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspber=
rypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined reference=
 to `glxx_client_RenderbufferStorage'=0A<br clear=3D"none">=0A&gt; &gt; | /=
media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D=
"none">=0A&gt; &gt; lib/libEGL.so: undefined reference to `glxx_client_Dele=
teRenderbuffers'=0A<br clear=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5=
-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; l=
ib/libEGL.so: undefined reference to `glxx_client_GenerateMipmap'=0A<br cle=
ar=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/=
raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined re=
ference to `glxx_buffer_info_set'=0A<br clear=3D"none">=0A&gt; &gt; | /medi=
a/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"non=
e">=0A&gt; &gt; lib/libEGL.so: undefined reference to `glPointSizePointerOE=
S'=0A<br clear=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/t=
mp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: =
undefined reference to `glxx_client_DeleteFramebuffers'=0A<br clear=3D"none=
">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberryp=
i/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined reference to=
 `glxx_client_IsFramebuffer'=0A<br clear=3D"none">=0A&gt; &gt; | /media/yoc=
to_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=
=0A&gt; &gt; lib/libEGL.so: undefined reference to `glxx_client_state_free'=
=0A<br clear=3D"none">=0A&gt; &gt; | collect2: error: ld returned 1 exit st=
atus <br clear=3D"none">=0A&gt; &gt; | make: *** [egl] Error 1 <br clear=3D=
"none">=0A&gt; &gt; | EGL disabled.<br clear=3D"none">=0A&gt; &gt; <br clea=
r=3D"none">=0A&gt; &gt; <br clear=3D"none">=0A&gt; &gt; If I bypass this te=
st (by modifyingqtbase-opensource-src-5.2.1/<br clear=3D"none">=0A&gt; &gt;=
 config.tests/qpa/egl/egl.cpp so it does nothing and always returns=0A<br c=
lear=3D"none">=0A&gt; &gt; 0) the build works fine and I can boot the resul=
ting Image. <br clear=3D"none">=0A&gt; &gt; Unfortunately Qt Programms will=
 abort with <br clear=3D"none">=0A&gt; &gt; "eglfs: Could not create the eg=
l surface: error =3D 0x300b"=0A<br clear=3D"none">=0A&gt; &gt; I tried a lo=
t of stuff but I' cant get ether of the two errors=0A<br clear=3D"none">=0A=
&gt; &gt; "fixed". Any help appreciated. <br clear=3D"none">=0A&gt; &gt; Th=
ank you for your time,<br clear=3D"none">=0A&gt; &gt; <br clear=3D"none">=
=0A&gt; &gt; Felix Fischer<br clear=3D"none">=0A&gt; &gt; <br clear=3D"none=
">=0A&gt; &gt; Student Employee (VC-I42)<br clear=3D"none">=0A&gt; &gt; Veh=
icle Cockpit - HMI Software and Code generation<br clear=3D"none">=0A&gt; &=
gt; <br clear=3D"none">=0A&gt; &gt; IAV GmbH<br clear=3D"none">=0A&gt; &gt;=
 Carnotstr. 1<br clear=3D"none">=0A&gt; &gt; 10587 BERLIN<br clear=3D"none"=
>=0A&gt; &gt; GERMANY<br clear=3D"none">=0A&gt; &gt; <br clear=3D"none">=0A=
&gt; &gt; Phone: +49 30 3997-89540<br clear=3D"none">=0A&gt; &gt; Fax: &nbs=
p; &nbsp; &nbsp; +49 30 3997-89411<br clear=3D"none">=0A&gt; &gt; E-Mail: &=
nbsp;&lt;</font></tt><a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:f=
elix01.fischer@iav.de" target=3D"_blank" href=3D"mailto:felix01.fischer@iav=
.de"><tt><font size=3D"2">mailto:felix01.fischer@iav.de</font></tt></a><tt>=
<font size=3D"2">&gt;<br clear=3D"none">=0A&gt; &gt; Internet: </font></tt>=
<a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"http://www.iav=
.com/"><tt><font size=3D"2">http://www.iav.com</font></tt></a><tt><font siz=
e=3D"2"><br clear=3D"none">=0A&gt; &gt; <br clear=3D"none">=0A&gt; &gt; Sit=
z/Registered Office: Berlin, <br clear=3D"none">=0A&gt; &gt; Registergerich=
t/Registration Court: Amtsgericht Charlottenburg,=0A<br clear=3D"none">=0A&=
gt; &gt; Registernummer/Company Registration Number: HRB 21 280, <br clear=
=3D"none">=0A&gt; &gt; Gesch=E4ftsf=FChrer/Managing Directors: Kurt Blumenr=
=F6der, Michael=0A<br clear=3D"none">=0A&gt; &gt; Schubert, Dr. R=FCdiger G=
oyk<br clear=3D"none">=0A&gt; &gt; Vorsitzender des Aufsichtsrates/Chairman=
 of the Supervisory Board:=0A<br clear=3D"none">=0A&gt; &gt; Dr. Harald Lud=
anek-- <br clear=3D"none">=0A&gt; &gt; ____________________________________=
___________<br clear=3D"none">=0A&gt; &gt; yocto mailing list<br clear=3D"n=
one">=0A&gt; &gt; yocto@yoctoproject.org<br clear=3D"none">=0A&gt; &gt; </f=
ont></tt><a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"https=
://lists.yoctoproject.org/listinfo/yocto"><tt><font size=3D"2">https://list=
s.yoctoproject.org/listinfo/yocto</font></tt></a>=0A<br clear=3D"none"><tt>=
<font size=3D"2">&gt; <br clear=3D"none">=0A&gt; -- <br clear=3D"none">=0A&=
gt; _______________________________________________<br clear=3D"none">=0A&g=
t; yocto mailing list<br clear=3D"none">=0A&gt; yocto@yoctoproject.org<br c=
lear=3D"none">=0A&gt; </font></tt><a rel=3D"nofollow" shape=3D"rect" target=
=3D"_blank" href=3D"https://lists.yoctoproject.org/listinfo/yocto"><tt><fon=
t size=3D"2">https://lists.yoctoproject.org/listinfo/yocto</font></tt></a>=
=0A<br clear=3D"none"><tt><font size=3D"2">&gt; <br clear=3D"none">=0A</fon=
t></tt></div></div></div><br><br></div>  </div> </div>  </div> </div></body=
></html>

--981719177-1348452701-1398777987=:71235--
