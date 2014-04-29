Return-Path: <vaduvajanalexandru@yahoo.com>
Received: from nm3-vm1.bullet.mail.ne1.yahoo.com
	(nm3-vm1.bullet.mail.ne1.yahoo.com [98.138.91.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DFA4E00C16
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 06:29:55 -0700 (PDT)
Received: from [98.138.101.130] by nm3.bullet.mail.ne1.yahoo.com with NNFMP;
	29 Apr 2014 13:29:55 -0000
Received: from [98.138.101.183] by tm18.bullet.mail.ne1.yahoo.com with NNFMP;
	29 Apr 2014 13:29:55 -0000
Received: from [127.0.0.1] by omp1094.mail.ne1.yahoo.com with NNFMP;
	29 Apr 2014 13:29:55 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 126363.41739.bm@omp1094.mail.ne1.yahoo.com
Received: (qmail 97753 invoked by uid 60001); 29 Apr 2014 13:29:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1398778195; bh=nLSN6pdyanJLL6xCDZf2XPA1o0WsyjevXuYGN3ILqNg=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=NIYUYSn/YtJq2QsBgKmSpR+FTCWcwHdLPj1CeIld1RdaVwKL9ybk6cms/wkyHwak2N/+W3gk9kAVUEJW3YcKWXRwQmpi2THuV0wBzSonaWCxpRbxKWSwBnFxGijKdksD8mnbMWBHWbbIrZ3fgTZMwwmd64k3jxFwIoEp1H18IR0=
X-YMail-OSG: qRNs7ZQVM1kJ3yiLE2TBbEUOefboo9R09r0eFKrD3fbLNyt
	H8fTU8uGVZtbCNu10ToLosqJZ78c09qD_iIrLthLiCsTtMF.gAgpB.PQV9i1
	FFJQEELhswzCQksUK1Q8ZjD2f5EcV8y7RRkFrpaCdb.HZW.DU_Nz0ON7.Rul
	Z8MPr8p.zhH.K9AHIC9gkzI4ibuLZOivJC43pv2IswCSryjxu6yKwnRv4zkh
	exuhbgZMS2cH6IW.xfZI9jX2nyg0Q7RdOP1GIFuCpuwoSXsVs9aizRsf9PwX
	PZDtigL.BHtJIi2JebnB0IUild.cn4T_ibM0H78V.c1F5XWrLNUw16vL0hqa
	JhtjNyme2JqmnVQ9x35yO.UcjMW3HP2MRGB1esblXBhw.x3OPaDeVSwOUrCi
	OU3ysC3LHr4wwTNYWiaC9INLOTs6TW4pmGiICzvqqHkjOHoy_aZxn33e5iS0
	HuAYhNBsg4Zx1VMTY0GXeaK7s1QmRrgZ47CJDCO4OuF8UUK27lFCqZ8Yxon9
	n3NPFxryjFQdE7K4GTUmnTHoAK8qoJyrORM32vTPPW8_0mgEXpxJzPPr6Mbq
	kbanYlV2TlpSr9w_MgFv_ygninMEVQS9Mkah5ZFgAmfVGetYeKZEGI.g19hD
	n0uIGhxMqPjPNdS3Nj78CEbc5sApw2vb.9GxXTcdbhmiCjS.NVLZd_Fo35jj
	6eAndhqY18zYb6SgAcUNthtM1mDPbEMUH8nwSwcmW6pBxwz54h5c6V2fQ8vi
	j16R1FH0fiZ7p6KD5jofjO0maGq0PdHaf9jhndcaK5LYO4xm6vpxwgR4kMmb
	dSIp1a2i7Awf4T5hCDtUYHLMVGjH9bVbm0Zo-
Received: from [193.202.22.66] by web122503.mail.ne1.yahoo.com via HTTP;
	Tue, 29 Apr 2014 06:29:54 PDT
X-Rocket-MIMEInfo: 002.001,
	QW5vdGhlciBzb2x1dGlvbiBpcyBwb2ludCB0aGUgbG9jYXRpb24gb2YgdGhlIG5lY2Vzc2FyeSBoZWFkZXJzIHRvIHRoZSBjb21waWxlciBvciB0aGUgbmVjZXNzYXJ5IHRhc2suCkkgYmVsaWV2ZSBkb19jb25maWd1cmUoKSBvbmUuCgoKT24gLCBWYWR1dmEgYWxleGFuZHJ1IDx2YWR1dmFqYW5hbGV4YW5kcnVAeWFob28uY29tPiB3cm90ZToKIApZb3UgbWF5IHRyeSBhbmTCoCBmaW5kIHRoZSBoZWFkZXJzIGNvbnRhaW5pbmcgdGhvc2UgdW5kZWZpbmVkIGZ1bmN0aW9ucyBhbmQgaW5jbHVkZSB0aGVtIGludG8BMAEBAQE-
X-Mailer: YahooMailWebService/0.8.185.657
References: <OFE6AAA3CB.F2E905AC-ONC1257CC5.0035C1A6-C1257CC5.003C7A9B@retarus.de>
	<OF92054C10.827CF0FE-ONC1257CC9.003ED681-C1257CC9.003FD0E4@retarus.de>
	<1398773448.15060.YahooMailNeo@web122505.mail.ne1.yahoo.com>
	<OFAE2C0624.001BA3F1-ONC1257CC9.0046DD9A-C1257CC9.00470BDF@retarus.de>
	<1398777987.71235.YahooMailNeo@web122504.mail.ne1.yahoo.com>
Message-ID: <1398778194.91361.YahooMailNeo@web122503.mail.ne1.yahoo.com>
Date: Tue, 29 Apr 2014 06:29:54 -0700 (PDT)
From: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
To: Felix01 Fischer <felix01.fischer@iav.de>
In-Reply-To: <1398777987.71235.YahooMailNeo@web122504.mail.ne1.yahoo.com>
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
X-List-Received-Date: Tue, 29 Apr 2014 13:29:58 -0000
Content-Type: multipart/alternative;
	boundary="592913864-1645918549-1398778194=:91361"

--592913864-1645918549-1398778194=:91361
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Another solution is point the location of the necessary headers to the comp=
iler or the necessary task.=0AI believe do_configure() one.=0A=0A=0AOn , Va=
duva alexandru <vaduvajanalexandru@yahoo.com> wrote:=0A =0AYou may try and=
=A0 find the headers containing those undefined functions and include them =
into rootfs, more exaclty into usr/include or similar.=0A=0A=0AOn Tuesday, =
April 29, 2014 3:56 PM, Felix01 Fischer <felix01.fischer@iav.de> wrote:=0A =
=0AUnfortunately there is no library. After=0Aeither "bitbake -c compile us=
erland" or "bitbake userland"=0Athere are the source files (*.h *.c) and on=
e named "*.c.o" but=0Ano *.o file exists =0A=0AVaduva alexandru <vaduvajana=
lexandru@yahoo.com>=0Aschrieb am 29.04.2014 14:10:48:=0A=0A=0A> Von: Vaduva=
 alexandru <vaduvajanalexandru@yahoo.com>=0A=0A> An: Felix01 Fischer <felix=
01.fischer@iav.de>, =0A> "yocto@yoctoproject.org" <yocto@yoctoproject.org>,=
  =0A> Datum: 29.04.2014 14:11 =0A> Betreff: Re: [yocto] building qtbase fo=
r raspberry=0Api fails =0A> =0A> Did you tried copying the glxx library int=
o the rootfs lib directory? =0A> =0A> On Tuesday, April 29, 2014 2:38 PM, F=
elix01 Fischer =0A> <felix01.fischer@iav.de> wrote: =0A> I've been able to =
narrow my problem futher down:=0A> =0A> the meta-raspberrypi layer contains=
 a bb called "userland_git.bb" =0A> (meta-raspberrypi/recipes-graphics/user=
land/userland_git.bb). =0A> the source for this layer is github.com/raspber=
rypi/userland.git.=0AI =0A> cloned this repository and searched for the und=
efined references.=0A> =0A> This repository contains the source code for th=
e ARM side libraries =0A> used on Raspberry Pi. These typically are install=
ed in /opt/vc/lib =0A> and includes source for the ARM side code to interfa=
ce to: EGL, =0A> mmal, GLESv2, vcos, openmaxil, vchiq_arm, bcm_host, WFC, O=
penVG. =0A> =0A> I had success! All my undefined references are defined in =
userland/=0A> interface/khronos/glxx/glxx_client.(h|c).=0A> =0A> But still =
I haven't figured out how to get this build correctly so =0A> qtbase can fi=
nd and use it. =0A> =0A> Any suggestions?=0A> =0A> Felix=0A> =0A> =0A> yoct=
o-bounces@yoctoproject.org schrieb am 25.04.2014 13:00:38: =0A> =0A> > Von:=
 Felix01 Fischer <felix01.fischer@iav.de> =0A> =0A> > An: yocto@yoctoprojec=
t.org, =0A> > Datum: 25.04.2014 15:33 =0A> > Betreff: [yocto] building qtba=
se for raspberry pi fails =0A> > Gesendet von: yocto-bounces@yoctoproject.o=
rg =0A> > =0A> > Hello everybody, =0A> > first, I hope I have choosen the r=
ight mailing list for my problem. =0A> > If not, please tell me.=0A> > =0A>=
 > I have problems getting Qt5 building and running on a raspberry=0Api =0A=
> > (512 Mb Version).=0A> > I'm using today's master branch from yocto & me=
ta-raspberrypi=0A( =0A> > git.yoctoproject.org ) and meta-qt5 ( github.com/=
meta-qt5/meta-qt5=0A).=0A> > Building without a change in qtbase doesn't wo=
rk because the=0AOpenGL =0A> > Test fails ( the raspberry pi only suppports=
 GLESv2). =0A> > When building with a qtbase_X.Y.Z.bbappend and =0A> > "PAC=
KAGECCONFIG_append =3D " gles2" in order to=0Ause eglfs the mess beginns.=
=0A> > First, building qtbase fails because qtbase-opensource-src-5.2.1/=0A=
> > config.tests/qpa/egl/egl.cpp cannot find "vcos_types.h"=0A> > After inc=
luding this manually in "meta-qt5/recipes-qt/qt5/=0A> > qtbase.inc" by addi=
ng the last line to configure =0A> > do_configure() { =0A> > =A0 =0A> > [..=
...........] =0A> > =0A> > =A0 =A0 ${S}/configure -v \ =0A> > -I${STAGING_D=
IR_TARGET}/usr/include/interface/vcos/pthreads/=0A\ =0A> > =0A> > [........=
.....] =0A> > =0A> > } =0A> > =0A> > =A0 =A0 =0A> > the next error is the f=
ollowing: =0A> > | EGL auto-detection... () =0A> > | arm-poky-linux-gnueabi=
-g++ =A0-march=3Darmv6 -mthumb-interwork=0A-=0A> > mfloat-abi=3Dsoftfp =A0-=
mfpu=3Dvfp --sysroot=3D/media/yocto_build/qt5-raspb/=0A> > build/tmp/sysroo=
ts/raspberrypi -c -pipe =A0-O2 -pipe -g -feliminate-=0A> > unused-debug-typ=
es -fvisibility-inlines-hidden -O2 -Wall -W -fPIE=0A=A0-=0A> > I../../../..=
/qtbase-opensource-src-5.2.1/mkspecs/linux-oe-g++=0A-=0A> > I../../../../qt=
base-opensource-src-5.2.1/config.tests/qpa/egl=0A-=0A> > I../../../../../..=
/../../sysroots/raspberrypi/usr/include/interface/=0A> > vcos/pthreads -I. =
-o egl.o ../../../../qtbase-opensource-src-5.2.1/=0A> > config.tests/qpa/eg=
l/egl.cpp =0A> > | ../../../../qtbase-opensource-src-5.2.1/config.tests/qpa=
/egl/=0A> > egl.cpp: In function 'int main(int, char**)': =0A> > | ../../..=
/../qtbase-opensource-src-5.2.1/config.tests/qpa/egl/=0A> > egl.cpp:46:12: =
warning: unused variable 'x' [-Wunused-variable] =0A> > | =A0 =A0 =A0EGLint=
 x =3D 0; =0A> > | =A0 =A0 =A0 =A0 =A0 =A0 ^ =0A> > | arm-poky-linux-gnueab=
i-g++ =A0-march=3Darmv6 -mthumb-interwork=0A-=0A> > mfloat-abi=3Dsoftfp =A0=
-mfpu=3Dvfp --sysroot=3D/media/yocto_build/qt5-raspb/=0A> > build/tmp/sysro=
ots/raspberrypi -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--=0A> > as-needed -Wl,-=
O1 -o egl egl.o =A0 -lEGL =0A> > | /media/yocto_build/qt5-raspb/build/tmp/s=
ysroots/raspberrypi/usr/=0A> > lib/libEGL.so: undefined reference to =0A> `=
glxx_client_GetRenderbufferParameteriv'=0A> > | /media/yocto_build/qt5-rasp=
b/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/libEGL.so: undefined refere=
nce to `gl20_client_state_init' =0A> > | /media/yocto_build/qt5-raspb/build=
/tmp/sysroots/raspberrypi/usr/=0A> > lib/libEGL.so: undefined reference to =
`gl11_client_state_init' =0A> > | /media/yocto_build/qt5-raspb/build/tmp/sy=
sroots/raspberrypi/usr/=0A> > lib/libEGL.so: undefined reference to `glintA=
ttribPointer' =0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/rasp=
berrypi/usr/=0A> > lib/libEGL.so: undefined reference to `glxx_client_GenFr=
amebuffers' =0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspbe=
rrypi/usr/=0A> > lib/libEGL.so: undefined reference to `glxx_buffer_info_ge=
t' =0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr=
/=0A> > lib/libEGL.so: undefined reference to `glDiscardFramebufferEXT' =0A=
> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> =
> lib/libEGL.so: undefined reference to `glxx_client_FramebufferTexture2D' =
=0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=
=0A> > lib/libEGL.so: undefined reference to `glxx_client_IsRenderbuffer' =
=0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=
=0A> > lib/libEGL.so: undefined reference to `glxx_set_error' =0A> > | /med=
ia/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/libE=
GL.so: undefined reference to `glxx_client_BindFramebuffer' =0A> > | /media=
/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/libEGL=
.so: undefined reference to `glxx_client_GenRenderbuffers' =0A> > | /media/=
yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/libEGL.=
so: undefined reference to `glxx_set_error_api' =0A> > | /media/yocto_build=
/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/libEGL.so: undefin=
ed reference to `glxx_client_BindRenderbuffer' =0A> > | /media/yocto_build/=
qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/libEGL.so: undefine=
d reference to `glBufferSubData' =0A> > | /media/yocto_build/qt5-raspb/buil=
d/tmp/sysroots/raspberrypi/usr/=0A> > lib/libEGL.so: undefined reference to=
 =0A> > `glxx_client_GetFramebufferAttachmentParameteriv' =0A> > | /media/y=
octo_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/libEGL.s=
o: undefined reference to `glxx_client_CheckFramebufferStatus' =0A> > | /me=
dia/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/lib=
EGL.so: undefined reference to `glxx_client_FramebufferRenderbuffer' =0A> >=
 | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > l=
ib/libEGL.so: undefined reference to `glxx_client_RenderbufferStorage' =0A>=
 > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> >=
 lib/libEGL.so: undefined reference to `glxx_client_DeleteRenderbuffers' =
=0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=
=0A> > lib/libEGL.so: undefined reference to `glxx_client_GenerateMipmap' =
=0A> > | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=
=0A> > lib/libEGL.so: undefined reference to `glxx_buffer_info_set' =0A> > =
| /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > li=
b/libEGL.so: undefined reference to `glPointSizePointerOES' =0A> > | /media=
/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/libEGL=
.so: undefined reference to `glxx_client_DeleteFramebuffers' =0A> > | /medi=
a/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/libEG=
L.so: undefined reference to `glxx_client_IsFramebuffer' =0A> > | /media/yo=
cto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/=0A> > lib/libEGL.so=
: undefined reference to `glxx_client_state_free' =0A> > | collect2: error:=
 ld returned 1 exit status =0A> > | make: *** [egl] Error 1 =0A> > | EGL di=
sabled.=0A> > =0A> > =0A> > If I bypass this test (by modifyingqtbase-opens=
ource-src-5.2.1/=0A> > config.tests/qpa/egl/egl.cpp so it does nothing and =
always returns =0A> > 0) the build works fine and I can boot the resulting =
Image. =0A> > Unfortunately Qt Programms will abort with =0A> > "eglfs: Cou=
ld not create the egl surface: error =3D 0x300b" =0A> > I tried a lot of st=
uff but I' cant get ether of the two errors =0A> > "fixed". Any help apprec=
iated. =0A> > Thank you for your time,=0A> > =0A> > Felix Fischer=0A> > =0A=
> > Student Employee (VC-I42)=0A> > Vehicle Cockpit - HMI Software and Code=
 generation=0A> > =0A> > IAV GmbH=0A> > Carnotstr. 1=0A> > 10587 BERLIN=0A>=
 > GERMANY=0A> > =0A> > Phone: +49 30 3997-89540=0A> > Fax: =A0 =A0 =A0 +49=
 30 3997-89411=0A> > E-Mail: =A0<mailto:felix01.fischer@iav.de>=0A> > Inter=
net: http://www.iav.com=0A> > =0A> > Sitz/Registered Office: Berlin, =0A> >=
 Registergericht/Registration Court: Amtsgericht Charlottenburg, =0A> > Reg=
isternummer/Company Registration Number: HRB 21 280, =0A> > Gesch=E4ftsf=FC=
hrer/Managing Directors: Kurt Blumenr=F6der, Michael =0A> > Schubert, Dr. R=
=FCdiger Goyk=0A> > Vorsitzender des Aufsichtsrates/Chairman of the Supervi=
sory Board: =0A> > Dr. Harald Ludanek-- =0A> > ____________________________=
___________________=0A> > yocto mailing list=0A> > yocto@yoctoproject.org=
=0A> > https://lists.yoctoproject.org/listinfo/yocto =0A> =0A> -- =0A> ____=
___________________________________________=0A> yocto mailing list=0A> yoct=
o@yoctoproject.org=0A> https://lists.yoctoproject.org/listinfo/yocto =0A> 

--592913864-1645918549-1398778194=:91361
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12pt">Another solution is point the location of the necessary heade=
rs to the compiler or the necessary task.<br>I believe do_configure() one.<=
br><div><span><br></span></div><div style=3D"display: block;" class=3D"yaho=
o_quoted"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvet=
ica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div style=3D"fon=
t-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, s=
ans-serif; font-size: 12pt;"> <div dir=3D"ltr"> <font face=3D"Arial" size=
=3D"2"> On , Vaduva alexandru &lt;vaduvajanalexandru@yahoo.com&gt; wrote:<b=
r> </font> </div>  <div class=3D"y_msg_container"><div id=3D"yiv4219334526"=
><div><div style=3D"color:#000;background-color:#fff;font-family:HelveticaN=
eue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:=
12pt;">You may
 try and&nbsp; find the headers containing those undefined functions and in=
clude them into rootfs, more exaclty into usr/include or similar.<br clear=
=3D"none"><div><span><br clear=3D"none"></span></div><div class=3D"yiv42193=
34526yqt2919517173" id=3D"yiv4219334526yqt24803"><div class=3D"yiv421933452=
6yahoo_quoted" style=3D"display:block;"> <div style=3D"font-family:Helvetic=
aNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-siz=
e:12pt;"> <div style=3D"font-family:HelveticaNeue, Helvetica Neue, Helvetic=
a, Arial, Lucida Grande, sans-serif;font-size:12pt;"> <div dir=3D"ltr"> <fo=
nt face=3D"Arial" size=3D"2"> On Tuesday, April 29, 2014 3:56 PM, Felix01 F=
ischer &lt;felix01.fischer@iav.de&gt; wrote:<br clear=3D"none"> </font> </d=
iv>  <div class=3D"yiv4219334526y_msg_container"><div id=3D"yiv4219334526">=
<div><font face=3D"sans-serif" size=3D"2">Unfortunately there is no library=
. After=0Aeither "bitbake -c compile userland" or "bitbake userland"=0Ather=
e are the source files (*.h *.c) and one named "*.c.o" but=0Ano *.o file ex=
ists</font>=0A<br clear=3D"none">=0A<br clear=3D"none"><tt><font size=3D"2"=
>Vaduva alexandru &lt;vaduvajanalexandru@yahoo.com&gt;=0Aschrieb am 29.04.2=
014 14:10:48:<br clear=3D"none">=0A</font></tt><div class=3D"yiv4219334526y=
qt0500280278" id=3D"yiv4219334526yqtfd55760"><tt><br clear=3D"none">=0A&gt;=
 Von: Vaduva alexandru &lt;vaduvajanalexandru@yahoo.com&gt;</tt></div><tt><=
/tt><div class=3D"yiv4219334526yqt0500280278" id=3D"yiv4219334526yqtfd24039=
">=0A<br clear=3D"none"><tt><font size=3D"2">&gt; An: Felix01 Fischer &lt;f=
elix01.fischer@iav.de&gt;,=0A<br clear=3D"none">=0A&gt; "yocto@yoctoproject=
.org" &lt;yocto@yoctoproject.org&gt;,=0A</font></tt>=0A<br clear=3D"none"><=
tt><font size=3D"2">&gt; Datum: 29.04.2014 14:11</font></tt>=0A<br clear=3D=
"none"><tt><font size=3D"2">&gt; Betreff: Re: [yocto] building qtbase for r=
aspberry=0Api fails</font></tt>=0A<br clear=3D"none"><tt><font size=3D"2">&=
gt; <br clear=3D"none">=0A&gt; Did you tried copying the glxx library into =
the rootfs lib directory?</font></tt>=0A<br clear=3D"none"><tt><font size=
=3D"2">&gt; <br clear=3D"none">=0A&gt; On Tuesday, April 29, 2014 2:38 PM, =
Felix01 Fischer <br clear=3D"none">=0A&gt; &lt;felix01.fischer@iav.de&gt; w=
rote:</font></tt>=0A<br clear=3D"none"><tt><font size=3D"2">&gt; I've been =
able to narrow my problem futher down:<br clear=3D"none">=0A&gt; <br clear=
=3D"none">=0A&gt; the meta-raspberrypi layer contains a bb called "userland=
_git.bb"=0A<br clear=3D"none">=0A&gt; (meta-raspberrypi/recipes-graphics/us=
erland/userland_git.bb). <br clear=3D"none">=0A&gt; the source for this lay=
er is github.com/raspberrypi/userland.git.=0AI <br clear=3D"none">=0A&gt; c=
loned this repository and searched for the undefined references.<br clear=
=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; This repository contains the s=
ource code for the ARM side libraries=0A<br clear=3D"none">=0A&gt; used on =
Raspberry Pi. These typically are installed in /opt/vc/lib=0A<br clear=3D"n=
one">=0A&gt; and includes source for the ARM side code to interface to: EGL=
, <br clear=3D"none">=0A&gt; mmal, GLESv2, vcos, openmaxil, vchiq_arm, bcm_=
host, WFC, OpenVG. <br clear=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; I =
had success! All my undefined references are defined in userland/<br clear=
=3D"none">=0A&gt; interface/khronos/glxx/glxx_client.(h|c).<br clear=3D"non=
e">=0A&gt; <br clear=3D"none">=0A&gt; But still I haven't figured out how t=
o get this build correctly so=0A<br clear=3D"none">=0A&gt; qtbase can find =
and use it. <br clear=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; Any sugge=
stions?<br clear=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; Felix<br clear=
=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; <br clear=3D"none">=0A&gt; yoc=
to-bounces@yoctoproject.org schrieb am 25.04.2014 13:00:38:</font></tt>=0A<=
br clear=3D"none"><tt><font size=3D"2">&gt; <br clear=3D"none">=0A&gt; &gt;=
 Von: Felix01 Fischer &lt;felix01.fischer@iav.de&gt;</font></tt>=0A<br clea=
r=3D"none"><tt><font size=3D"2">&gt; <br clear=3D"none">=0A&gt; &gt; An: yo=
cto@yoctoproject.org, <br clear=3D"none">=0A&gt; &gt; Datum: 25.04.2014 15:=
33 <br clear=3D"none">=0A&gt; &gt; Betreff: [yocto] building qtbase for ras=
pberry pi fails <br clear=3D"none">=0A&gt; &gt; Gesendet von: yocto-bounces=
@yoctoproject.org <br clear=3D"none">=0A&gt; &gt; <br clear=3D"none">=0A&gt=
; &gt; Hello everybody, <br clear=3D"none">=0A&gt; &gt; first, I hope I hav=
e choosen the right mailing list for my problem.=0A<br clear=3D"none">=0A&g=
t; &gt; If not, please tell me.<br clear=3D"none">=0A&gt; &gt; <br clear=3D=
"none">=0A&gt; &gt; I have problems getting Qt5 building and running on a r=
aspberry=0Api <br clear=3D"none">=0A&gt; &gt; (512 Mb Version).<br clear=3D=
"none">=0A&gt; &gt; I'm using today's master branch from yocto &amp; meta-r=
aspberrypi=0A( <br clear=3D"none">=0A&gt; &gt; git.yoctoproject.org ) and m=
eta-qt5 ( github.com/meta-qt5/meta-qt5=0A).<br clear=3D"none">=0A&gt; &gt; =
Building without a change in qtbase doesn't work because the=0AOpenGL <br c=
lear=3D"none">=0A&gt; &gt; Test fails ( the raspberry pi only suppports GLE=
Sv2). <br clear=3D"none">=0A&gt; &gt; When building with a qtbase_X.Y.Z.bba=
ppend and <br clear=3D"none">=0A&gt; &gt; "PACKAGECCONFIG_append =3D " gles=
2" in order to=0Ause eglfs the mess beginns.<br clear=3D"none">=0A&gt; &gt;=
 First, building qtbase fails because qtbase-opensource-src-5.2.1/<br clear=
=3D"none">=0A&gt; &gt; config.tests/qpa/egl/egl.cpp cannot find "vcos_types=
.h"<br clear=3D"none">=0A&gt; &gt; After including this manually in "meta-q=
t5/recipes-qt/qt5/<br clear=3D"none">=0A&gt; &gt; qtbase.inc" by adding the=
 last line to configure <br clear=3D"none">=0A&gt; &gt; do_configure() { <b=
r clear=3D"none">=0A&gt; &gt; &nbsp; <br clear=3D"none">=0A&gt; &gt; [.....=
........] <br clear=3D"none">=0A&gt; &gt; <br clear=3D"none">=0A&gt; &gt; &=
nbsp; &nbsp; ${S}/configure -v \ <br clear=3D"none">=0A&gt; &gt; -I${STAGIN=
G_DIR_TARGET}/usr/include/interface/vcos/pthreads/=0A\ <br clear=3D"none">=
=0A&gt; &gt; <br clear=3D"none">=0A&gt; &gt; [.............] <br clear=3D"n=
one">=0A&gt; &gt; <br clear=3D"none">=0A&gt; &gt; } <br clear=3D"none">=0A&=
gt; &gt; <br clear=3D"none">=0A&gt; &gt; &nbsp; &nbsp; <br clear=3D"none">=
=0A&gt; &gt; the next error is the following: <br clear=3D"none">=0A&gt; &g=
t; | EGL auto-detection... () <br clear=3D"none">=0A&gt; &gt; | arm-poky-li=
nux-gnueabi-g++ &nbsp;-march=3Darmv6 -mthumb-interwork=0A-<br clear=3D"none=
">=0A&gt; &gt; mfloat-abi=3Dsoftfp &nbsp;-mfpu=3Dvfp --sysroot=3D/media/yoc=
to_build/qt5-raspb/<br clear=3D"none">=0A&gt; &gt; build/tmp/sysroots/raspb=
errypi -c -pipe &nbsp;-O2 -pipe -g -feliminate-<br clear=3D"none">=0A&gt; &=
gt; unused-debug-types -fvisibility-inlines-hidden -O2 -Wall -W -fPIE=0A&nb=
sp;-<br clear=3D"none">=0A&gt; &gt; I../../../../qtbase-opensource-src-5.2.=
1/mkspecs/linux-oe-g++=0A-<br clear=3D"none">=0A&gt; &gt; I../../../../qtba=
se-opensource-src-5.2.1/config.tests/qpa/egl=0A-<br clear=3D"none">=0A&gt; =
&gt; I../../../../../../../../sysroots/raspberrypi/usr/include/interface/<b=
r clear=3D"none">=0A&gt; &gt; vcos/pthreads -I. -o egl.o ../../../../qtbase=
-opensource-src-5.2.1/<br clear=3D"none">=0A&gt; &gt; config.tests/qpa/egl/=
egl.cpp <br clear=3D"none">=0A&gt; &gt; | ../../../../qtbase-opensource-src=
-5.2.1/config.tests/qpa/egl/<br clear=3D"none">=0A&gt; &gt; egl.cpp: In fun=
ction 'int main(int, char**)': <br clear=3D"none">=0A&gt; &gt; | ../../../.=
./qtbase-opensource-src-5.2.1/config.tests/qpa/egl/<br clear=3D"none">=0A&g=
t; &gt; egl.cpp:46:12: warning: unused variable 'x' [-Wunused-variable]=0A<=
br clear=3D"none">=0A&gt; &gt; | &nbsp; &nbsp; &nbsp;EGLint x =3D 0; <br cl=
ear=3D"none">=0A&gt; &gt; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^ <br=
 clear=3D"none">=0A&gt; &gt; | arm-poky-linux-gnueabi-g++ &nbsp;-march=3Dar=
mv6 -mthumb-interwork=0A-<br clear=3D"none">=0A&gt; &gt; mfloat-abi=3Dsoftf=
p &nbsp;-mfpu=3Dvfp --sysroot=3D/media/yocto_build/qt5-raspb/<br clear=3D"n=
one">=0A&gt; &gt; build/tmp/sysroots/raspberrypi -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--<br clear=3D"none">=0A&gt; &gt; as-needed -Wl,-O1 -o egl egl.o=
 &nbsp; -lEGL <br clear=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-rasp=
b/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/li=
bEGL.so: undefined reference to <br clear=3D"none">=0A&gt; `glxx_client_Get=
RenderbufferParameteriv'<br clear=3D"none">=0A&gt; &gt; | /media/yocto_buil=
d/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &=
gt; lib/libEGL.so: undefined reference to `gl20_client_state_init'=0A<br cl=
ear=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots=
/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined r=
eference to `gl11_client_state_init'=0A<br clear=3D"none">=0A&gt; &gt; | /m=
edia/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"=
none">=0A&gt; &gt; lib/libEGL.so: undefined reference to `glintAttribPointe=
r' <br clear=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp=
/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: un=
defined reference to `glxx_client_GenFramebuffers'=0A<br clear=3D"none">=0A=
&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr=
/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined reference to `glx=
x_buffer_info_get'=0A<br clear=3D"none">=0A&gt; &gt; | /media/yocto_build/q=
t5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt;=
 lib/libEGL.so: undefined reference to `glDiscardFramebufferEXT'=0A<br clea=
r=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/r=
aspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined ref=
erence to `glxx_client_FramebufferTexture2D'=0A<br clear=3D"none">=0A&gt; &=
gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br c=
lear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined reference to `glxx_clie=
nt_IsRenderbuffer'=0A<br clear=3D"none">=0A&gt; &gt; | /media/yocto_build/q=
t5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt;=
 lib/libEGL.so: undefined reference to `glxx_set_error' <br clear=3D"none">=
=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/=
usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined reference to `=
glxx_client_BindFramebuffer'=0A<br clear=3D"none">=0A&gt; &gt; | /media/yoc=
to_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=
=0A&gt; &gt; lib/libEGL.so: undefined reference to `glxx_client_GenRenderbu=
ffers'=0A<br clear=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/bui=
ld/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.=
so: undefined reference to `glxx_set_error_api' <br clear=3D"none">=0A&gt; =
&gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br =
clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined reference to `glxx_cli=
ent_BindRenderbuffer'=0A<br clear=3D"none">=0A&gt; &gt; | /media/yocto_buil=
d/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &=
gt; lib/libEGL.so: undefined reference to `glBufferSubData' <br clear=3D"no=
ne">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberr=
ypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined reference =
to <br clear=3D"none">=0A&gt; &gt; `glxx_client_GetFramebufferAttachmentPar=
ameteriv' <br clear=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/bu=
ild/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL=
.so: undefined reference to `glxx_client_CheckFramebufferStatus'=0A<br clea=
r=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/r=
aspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined ref=
erence to `glxx_client_FramebufferRenderbuffer'=0A<br clear=3D"none">=0A&gt=
; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<b=
r clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined reference to `glxx_c=
lient_RenderbufferStorage'=0A<br clear=3D"none">=0A&gt; &gt; | /media/yocto=
_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&=
gt; &gt; lib/libEGL.so: undefined reference to `glxx_client_DeleteRenderbuf=
fers'=0A<br clear=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/buil=
d/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.s=
o: undefined reference to `glxx_client_GenerateMipmap'=0A<br clear=3D"none"=
>=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi=
/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined reference to =
`glxx_buffer_info_set'=0A<br clear=3D"none">=0A&gt; &gt; | /media/yocto_bui=
ld/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; =
&gt; lib/libEGL.so: undefined reference to `glPointSizePointerOES'=0A<br cl=
ear=3D"none">=0A&gt; &gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots=
/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined r=
eference to `glxx_client_DeleteFramebuffers'=0A<br clear=3D"none">=0A&gt; &=
gt; | /media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/<br c=
lear=3D"none">=0A&gt; &gt; lib/libEGL.so: undefined reference to `glxx_clie=
nt_IsFramebuffer'=0A<br clear=3D"none">=0A&gt; &gt; | /media/yocto_build/qt=
5-raspb/build/tmp/sysroots/raspberrypi/usr/<br clear=3D"none">=0A&gt; &gt; =
lib/libEGL.so: undefined reference to `glxx_client_state_free'=0A<br clear=
=3D"none">=0A&gt; &gt; | collect2: error: ld returned 1 exit status <br cle=
ar=3D"none">=0A&gt; &gt; | make: *** [egl] Error 1 <br clear=3D"none">=0A&g=
t; &gt; | EGL disabled.<br clear=3D"none">=0A&gt; &gt; <br clear=3D"none">=
=0A&gt; &gt; <br clear=3D"none">=0A&gt; &gt; If I bypass this test (by modi=
fyingqtbase-opensource-src-5.2.1/<br clear=3D"none">=0A&gt; &gt; config.tes=
ts/qpa/egl/egl.cpp so it does nothing and always returns=0A<br clear=3D"non=
e">=0A&gt; &gt; 0) the build works fine and I can boot the resulting Image.=
 <br clear=3D"none">=0A&gt; &gt; Unfortunately Qt Programms will abort with=
 <br clear=3D"none">=0A&gt; &gt; "eglfs: Could not create the egl surface: =
error =3D 0x300b"=0A<br clear=3D"none">=0A&gt; &gt; I tried a lot of stuff =
but I' cant get ether of the two errors=0A<br clear=3D"none">=0A&gt; &gt; "=
fixed". Any help appreciated. <br clear=3D"none">=0A&gt; &gt; Thank you for=
 your time,<br clear=3D"none">=0A&gt; &gt; <br clear=3D"none">=0A&gt; &gt; =
Felix Fischer<br clear=3D"none">=0A&gt; &gt; <br clear=3D"none">=0A&gt; &gt=
; Student Employee (VC-I42)<br clear=3D"none">=0A&gt; &gt; Vehicle Cockpit =
- HMI Software and Code generation<br clear=3D"none">=0A&gt; &gt; <br clear=
=3D"none">=0A&gt; &gt; IAV GmbH<br clear=3D"none">=0A&gt; &gt; Carnotstr. 1=
<br clear=3D"none">=0A&gt; &gt; 10587 BERLIN<br clear=3D"none">=0A&gt; &gt;=
 GERMANY<br clear=3D"none">=0A&gt; &gt; <br clear=3D"none">=0A&gt; &gt; Pho=
ne: +49 30 3997-89540<br clear=3D"none">=0A&gt; &gt; Fax: &nbsp; &nbsp; &nb=
sp; +49 30 3997-89411<br clear=3D"none">=0A&gt; &gt; E-Mail: &nbsp;&lt;</fo=
nt></tt><a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:felix01.fische=
r@iav.de" target=3D"_blank" href=3D"mailto:felix01.fischer@iav.de"><tt><fon=
t size=3D"2">mailto:felix01.fischer@iav.de</font></tt></a><tt><font size=3D=
"2">&gt;<br clear=3D"none">=0A&gt; &gt; Internet: </font></tt><a rel=3D"nof=
ollow" shape=3D"rect" target=3D"_blank" href=3D"http://www.iav.com/"><tt><f=
ont size=3D"2">http://www.iav.com</font></tt></a><tt><font size=3D"2"><br c=
lear=3D"none">=0A&gt; &gt; <br clear=3D"none">=0A&gt; &gt; Sitz/Registered =
Office: Berlin, <br clear=3D"none">=0A&gt; &gt; Registergericht/Registratio=
n Court: Amtsgericht Charlottenburg,=0A<br clear=3D"none">=0A&gt; &gt; Regi=
sternummer/Company Registration Number: HRB 21 280, <br clear=3D"none">=0A&=
gt; &gt; Gesch=E4ftsf=FChrer/Managing Directors: Kurt Blumenr=F6der, Michae=
l=0A<br clear=3D"none">=0A&gt; &gt; Schubert, Dr. R=FCdiger Goyk<br clear=
=3D"none">=0A&gt; &gt; Vorsitzender des Aufsichtsrates/Chairman of the Supe=
rvisory Board:=0A<br clear=3D"none">=0A&gt; &gt; Dr. Harald Ludanek-- <br c=
lear=3D"none">=0A&gt; &gt; _______________________________________________<=
br clear=3D"none">=0A&gt; &gt; yocto mailing list<br clear=3D"none">=0A&gt;=
 &gt; yocto@yoctoproject.org<br clear=3D"none">=0A&gt; &gt; </font></tt><a =
rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"https://lists.yoc=
toproject.org/listinfo/yocto"><tt><font size=3D"2">https://lists.yoctoproje=
ct.org/listinfo/yocto</font></tt></a>=0A<br clear=3D"none"><tt><font size=
=3D"2">&gt; <br clear=3D"none">=0A&gt; -- <br clear=3D"none">=0A&gt; ______=
_________________________________________<br clear=3D"none">=0A&gt; yocto m=
ailing list<br clear=3D"none">=0A&gt; yocto@yoctoproject.org<br clear=3D"no=
ne">=0A&gt; </font></tt><a rel=3D"nofollow" shape=3D"rect" target=3D"_blank=
" href=3D"https://lists.yoctoproject.org/listinfo/yocto"><tt><font size=3D"=
2">https://lists.yoctoproject.org/listinfo/yocto</font></tt></a>=0A<br clea=
r=3D"none"><tt><font size=3D"2">&gt; <br clear=3D"none">=0A</font></tt></di=
v></div></div><br clear=3D"none"><br clear=3D"none"></div>  </div> </div>  =
</div></div> </div></div></div><br><br></div>  </div> </div>  </div> </div>=
</body></html>

--592913864-1645918549-1398778194=:91361--
