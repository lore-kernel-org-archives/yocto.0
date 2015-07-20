Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BD8DE00A70; Mon, 20 Jul 2015 08:07:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [98.138.91.114 listed in list.dnswl.org]
Received: from nm21-vm6.bullet.mail.ne1.yahoo.com
	(nm21-vm6.bullet.mail.ne1.yahoo.com [98.138.91.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCBDDE009F0
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 08:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1437404797; bh=MbGOk2rLJn1GiX6ZnbHd3K1LS/wS/dtODGDdeTEqOmk=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=Qd6vDlz9KwTEEcmaQmKpbGRjdMc1dKcWllzk0+a+gFoMVWKY8OXkB4eqiYNjqXCOHowIe9/WAVMVRceYKFmR9oiUJaFpBG6xutSswDG3n/xUDlMFSY0GRuFJ6Xm8SPu886dDaBDOzaT7JDjFbt0Iiw9ZaBXXKQn8dM9qPXoQukteHSbzMZ0l3fLL+j4iZVycr6e1Z68+kNpF4UkVeMIl0THZ3/PUxZHzSHEqFE1DUaLgdmXX5zuNd8BvgiYi9a+S3to72gukqYhk1qPiMybP/KKl1P7UIasuhThE/zExIo2YPI+tGzk4tw6BxK93TNEcSO8fuVr06mg02NurSe/ZVA==
Received: from [98.138.226.179] by nm21.bullet.mail.ne1.yahoo.com with NNFMP;
	20 Jul 2015 15:06:37 -0000
Received: from [98.138.87.5] by tm14.bullet.mail.ne1.yahoo.com with NNFMP;
	20 Jul 2015 15:06:37 -0000
Received: from [127.0.0.1] by omp1005.mail.ne1.yahoo.com with NNFMP;
	20 Jul 2015 15:06:37 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 407705.68528.bm@omp1005.mail.ne1.yahoo.com
X-YMail-OSG: VdjxEYcVM1nh9fdv_GUZ7mljybe0wtwKt4oMKIU6VHWwvOJFIoa58yLfCPAp0gV
	oG0X_6i84oPQ6_uxZLPXmZHPlhoJDFne8EM_2kl8v32dk1OLHI1QqmcRZ88DnDyxJ.Gp7rmijDSH
	T_bCy.3CV4GkT9lljE88cwk7Vh9AyadwOZUuZrc5cVI_sV1hu9CqhKsTOBApLkkoIbBVp3TKqeCH
	iOCcFhxjcAh0yHgloMpkEPMOc2q73CYtYxen8y6XDiPYKnAJwfDrJOXJJaxFLGuadyT9GbgTHCQa
	m3TwkertIi1oWYkeGCZuaQO1BV9g0Q.FeWVORnd2IQ5qsdbbNXtPDrqkGWICksNXrK3J9UawVUz3
	tyLAUhCv6OW8U526CAsrBbG8LwHND3y23mTe9SGKGHYRo.1sPozY6W4QEPqxDs_cXvYD8O72ypaB
	_UqlmZBXvZn36iEBwSwGKW9x.d7X8YyVtmvdOv8T2SpPSm9aDqOtA_UN828WgOhtWdo4rCWtwu2I
	fKVwpm_1Bu_fz08.iu89cHUpjN5hIlMo-
Received: by 98.138.101.176; Mon, 20 Jul 2015 15:06:36 +0000 
Date: Mon, 20 Jul 2015 15:06:36 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <567276616.902145.1437404796303.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: RaspberryPi 2
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 20 Jul 2015 15:07:06 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_902144_56737451.1437404796294"

------=_Part_902144_56737451.1437404796294
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,It has been a while since I built any Yocto images.=C2=A0 I have been=
 trying to learn Hardware Description Language HDL.I have a raspberry worki=
ng with Debian.=C2=A0 I am using a couple of products from http://www.xess.=
com/=C2=A0 XESS XulA2-LX9, StickIt-MB which combines a Spartan 6 with a Ras=
pberry Pi.=C2=A0 I have MyHDL (generates HDL & co-simulation) , Iverilog (c=
o-simulator), GTKWAVE (viewing of FPGA signals), GNURadio, OpenCV (with 2 C=
920 cameras doing face detection), many Python libs (numpy, scipy, matplotl=
ib) and git,=C2=A0 This makes a great development platform for FPGA work.I =
am following the instructions at =C2=A0 http://www.cnx-software.com/2015/02=
/27/yocto-project-raspberry-pi-2-board-minimal-image/
=C2=A0I have modified the local.conf. bblayers.conf, and poky.conf filesdif=
f local.conf.orig poky/raspberrypi2/conf/local.conf
37c37diff bblayers.conf.orig poky/raspberrypi2/conf/bblayers.conf
15a16
>=C2=A0=C2=A0 /home/vidal/wkg/yocto/RaspberryPi2/poky/meta-raspberrypi \,39
< MACHINE ??=3D "qemux86"
---
> #MACHINE ??=3D "qemux86"
> MACHINE ?=3D "raspberrypi2"
> GPU_MEM =3D "16"
diff poky.conf.orig poky/meta-yocto/conf/distro/poky.conf
74a75
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 U=
buntu-12.04 \n \

 bitbake rpi-basic-image
sudo apt-get installdiffstatsudo apt-get installtexinf cd wkg/
 tar xfzpi/SDL2-2.0.3.tar.gz=20
 cd SDL2-2.0.3/
 ./configure=20
 make
 sudo make install
sudo ldconfig
I continue to get the following error.bitbake rpi-basic-image
ERROR:=C2=A0 OE-core's config sanity checker detected a potential misconfig=
uration.
=C2=A0=C2=A0=C2=A0 Either fix the cause of this error or at your own risk d=
isable the checker (see sanity.conf).
=C2=A0=C2=A0=C2=A0 Following is the list of potential problems / advisories=
:

=C2=A0=C2=A0=C2=A0 Please set a valid MACHINE in your local.conf or environ=
ment
libsdl-native is set to be ASSUME_PROVIDED but sdl-config can't be found in=
 PATH. Please either install it, or configure qemu not to require sdl.

Summary: There was 1 ERROR message shown, returning a non-zero exit code.
Any and all=C2=A0 help is appreciated.If you have any questions feel free t=
o contact me.Regards.


Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613

------=_Part_902144_56737451.1437404796294
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1437391077889_36260"><span>Hello,</sp=
an></div><div id=3D"yui_3_16_0_1_1437391077889_36375" dir=3D"ltr"><span id=
=3D"yui_3_16_0_1_1437391077889_36374">It has been a while since I built any=
 Yocto images.&nbsp; I have been trying to learn Hardware Description Langu=
age HDL.</span></div><div id=3D"yui_3_16_0_1_1437391077889_36323" dir=3D"lt=
r"><span id=3D"yui_3_16_0_1_1437391077889_36441">I have a raspberry working=
 with Debian.&nbsp; I am using a couple of products from <a id=3D"yui_3_16_=
0_1_1437391077889_36875" href=3D"http://www.xess.com/">http://www.xess.com/=
</a>&nbsp; XESS XulA2-LX9, StickIt-MB which combines a Spartan 6 with a Ras=
pberry Pi.&nbsp; I have MyHDL (generates HDL &amp; co-simulation) , Iverilo=
g (co-simulator), GTKWAVE (viewing of FPGA signals), GNURadio, OpenCV (with=
 2 C920 cameras doing face detection), many Python libs (numpy, scipy, matp=
lotlib) and git,&nbsp; This makes a great development platform for FPGA wor=
k.</span></div><div id=3D"yui_3_16_0_1_1437391077889_36555" dir=3D"ltr"><sp=
an id=3D"yui_3_16_0_1_1437391077889_36441">I am following the instructions =
at &nbsp; <a id=3D"yui_3_16_0_1_1437391077889_36554" href=3D"http://www.cnx=
-software.com/2015/02/27/yocto-project-raspberry-pi-2-board-minimal-image/"=
>http://www.cnx-software.com/2015/02/27/yocto-project-raspberry-pi-2-board-=
minimal-image/</a></span></div><div id=3D"yui_3_16_0_1_1437391077889_36555"=
><br></div><div id=3D"yui_3_16_0_1_1437391077889_36235"><div>&nbsp;I have m=
odified the local.conf. bblayers.conf, and poky.conf files</div><div dir=3D=
"ltr" id=3D"yui_3_16_0_1_1437391077889_36629">diff local.conf.orig poky/ras=
pberrypi2/conf/local.conf<br class=3D"">37c37diff bblayers.conf.orig poky/r=
aspberrypi2/conf/bblayers.conf<br class=3D"">15a16<br class=3D"">&gt;&nbsp;=
&nbsp; /home/vidal/wkg/yocto/RaspberryPi2/poky/meta-raspberrypi \,39<br cla=
ss=3D"">&lt; MACHINE ??=3D "qemux86"<br class=3D"">---<br class=3D"">&gt; #=
MACHINE ??=3D "qemux86"<br class=3D"">&gt; MACHINE ?=3D "raspberrypi2"<br c=
lass=3D"">&gt; GPU_MEM =3D "16"</div><div id=3D"yui_3_16_0_1_1437391077889_=
36683" dir=3D"ltr"><br></div><div dir=3D"ltr">diff poky.conf.orig poky/meta=
-yocto/conf/distro/poky.conf<br class=3D"">74a75<br class=3D"">&gt;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ubuntu-12.=
04 \n \<br class=3D""></div><div id=3D"yui_3_16_0_1_1437391077889_36701" di=
r=3D"ltr"><br></div><div class=3D"" id=3D"yui_3_16_0_1_1437391077889_36718"=
 dir=3D"ltr">


=09
=09
=09
=09


</div><div class=3D"" style=3D"margin-bottom: 0cm">bitbake rpi-basic-image<=
/div>
<div class=3D"" style=3D"margin-bottom: 0cm"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-bottom: 0cm">sudo apt-get install
diffstat</div>
<div class=3D"" style=3D"margin-bottom: 0cm">sudo apt-get install
texinf</div>
<div class=3D"" style=3D"margin-bottom: 0cm">  cd wkg/</div>
<div class=3D"" style=3D"margin-bottom: 0cm"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-bottom: 0cm">  tar xfz
pi/SDL2-2.0.3.tar.gz=20
</div>
<div class=3D"" style=3D"margin-bottom: 0cm"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-bottom: 0cm"> cd SDL2-2.0.3/</div>
<div class=3D"" style=3D"margin-bottom: 0cm"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-bottom: 0cm">  ./configure=20
</div>
<div class=3D"" style=3D"margin-bottom: 0cm"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-bottom: 0cm">  make</div>
<div class=3D"" style=3D"margin-bottom: 0cm"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-bottom: 0cm"> sudo make install</div>
<div class=3D"" style=3D"margin-bottom: 0cm"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-bottom: 0cm">sudo ldconfig</div><div dir=3D=
"ltr">

</div><div id=3D"yui_3_16_0_1_1437391077889_36766" dir=3D"ltr"><br></div><d=
iv dir=3D"ltr">I continue to get the following error.</div><div id=3D"yui_3=
_16_0_1_1437391077889_36804" dir=3D"ltr">bitbake rpi-basic-image<br class=
=3D"">ERROR:&nbsp; OE-core's config sanity checker detected a potential mis=
configuration.<br class=3D"">&nbsp;&nbsp;&nbsp; Either fix the cause of thi=
s error or at your own risk disable the checker (see sanity.conf).<br class=
=3D"">&nbsp;&nbsp;&nbsp; Following is the list of potential problems / advi=
sories:<br class=3D""><br class=3D"">&nbsp;&nbsp;&nbsp; Please set a valid =
MACHINE in your local.conf or environment<br class=3D"">libsdl-native is se=
t to be ASSUME_PROVIDED but sdl-config can't be found in PATH. Please eithe=
r install it, or configure qemu not to require sdl.<br class=3D""><br class=
=3D"">Summary: There was 1 ERROR message shown, returning a non-zero exit c=
ode.<br class=3D""></div><div dir=3D"ltr">Any and all&nbsp; help is appreci=
ated.</div><div dir=3D"ltr">If you have any questions feel free to contact =
me.</div><div dir=3D"ltr">Regards.</div><div dir=3D"ltr"><br class=3D""></d=
iv><div id=3D"yui_3_16_0_1_1437391077889_36658" dir=3D"ltr"><br></div><div =
dir=3D"ltr"><br></div></div><div><div>Edward Vidal Jr.<br>e-mail develone@s=
bcglobal.net<br>915-595-1613</div></div></div></body></html>

------=_Part_902144_56737451.1437404796294--
