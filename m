Return-Path: <djnass_18@hotmail.com>
Received: from dub0-omc3-s4.dub0.hotmail.com (dub0-omc3-s4.dub0.hotmail.com
	[157.55.2.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1ACEE013A8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 09:20:24 -0700 (PDT)
Received: from DUB116-W90 ([157.55.2.9]) by dub0-omc3-s4.dub0.hotmail.com with
	Microsoft SMTPSVC(6.0.3790.4675); Fri, 14 Jun 2013 09:20:23 -0700
X-TMN: [wq/btcOxsAZUZGlvs3AsSSbyTf57shlvlrGmQuP7/8E=]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB116-W9038BE05D96B60298CC60C98800@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 14 Jun 2013 16:20:23 +0000
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 14 Jun 2013 16:20:23.0561 (UTC)
	FILETIME=[127E1790:01CE691B]
Subject: Can not build (configure) a simple Hello world program in eclipse with ADT
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
X-List-Received-Date: Fri, 14 Jun 2013 16:20:26 -0000
Content-Type: multipart/alternative;
	boundary="_4020b2d6-caac-4d13-8bd6-73ea546eee3f_"

--_4020b2d6-caac-4d13-8bd6-73ea546eee3f_
Content-Type: text/plain; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

hello everyone=2C
I am following the yocto Project Devel Manual ( http://www.yoctoproject.org=
/docs/1.4/dev-manual/dev-manual.html#adt-eclipse=0A=
 ) to set up eclipse for use with an embedded target . I am stuck in =0A=
section 4.2.2.2 trying to make a simple autotools hello world =0A=
application. The build fails at configure stage=20

checking for style of include used by make... GNU
checking=0A=
 for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc  =0A=
-march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon =0A=
--sysroot=3D/home/nass/yocto/build/tmp/sysroots/imx6qsabrelite
checking whether the C compiler works... no
configure: error: in `/home/nass/eclipse/adt_hello/':
configure: error: in `/home/nass/eclipse/adt_hello/':
configure: error: C compiler cannot create executables
configure: error: C compiler cannot create executables
See `config.log' for more details

Configuration failed with error

config.log looks fairly similar to this post: https://lists.yoctoproject.or=
g/pipermail/yocto/2013-January/013860.html

I have configured to use the toolchain from the build directory. In fact th=
e paths to the toolchain and sysroots are (both):=20
"/home/nass/yocto/build/tmp/" .

I=0A=
 went on to try the slightly more manual in CLI :  =0A=
http://www.yoctoproject.org/docs/1.4/adt-manual/adt-manual.html#creating-an=
d-running-a-project-based-on-gnu-autotools=0A=
=20

again at configure  stage=2C I get:
=20
checking=0A=
 for gcc... arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork=
=0A=
 -mfloat-abi=3Dsoftfp -mfpu=3Dneon =0A=
--sysroot=3D/home/nass/yocto/build/tmp/sysroots/imx6qsabrelite
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables...=20
checking whether we are cross compiling... configure: error: in `/home/nass=
/appz/dev/yoctauto':
configure: error: cannot run C compiled programs.
If you meant to cross compile=2C use `--host'.
See `config.log' for more details

Should=0A=
 I really use --host? Wouldn't it be in the plugin setup options already=0A=
 if that was necessary? OR wouldn't the environment-setup* file contain =0A=
the necessary declarations?

Any ideas how to avert it?

Thank you for your help! 		 	   		  =

--_4020b2d6-caac-4d13-8bd6-73ea546eee3f_
Content-Type: text/html; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>hello everyone=2C<br>I am follow=
ing the yocto Project Devel Manual ( <a href=3D"http://www.yoctoproject.org=
/docs/1.4/dev-manual/dev-manual.html#adt-eclipse" target=3D"_blank">http://=
www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#adt-eclipse</a>=0A=
 ) to set up eclipse for use with an embedded target . I am stuck in =0A=
section 4.2.2.2 trying to make a simple autotools hello world =0A=
application. The build fails at configure stage <br><br><blockquote><font s=
tyle=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">checking for st=
yle of include used by make... GNU</font><font style=3D"" face=3D"Courier N=
ew"><br></font><font style=3D"font-size: 10pt=3B" face=3D"Courier New" size=
=3D"2">checking=0A=
 for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc&nbsp=3B =0A=
-march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon =0A=
--sysroot=3D/home/nass/yocto/build/tmp/sysroots/imx6qsabrelite</font><font =
style=3D"" face=3D"Courier New"><br></font><font style=3D"font-size: 10pt=
=3B" face=3D"Courier New" size=3D"2">checking whether the C compiler works.=
.. no</font><font style=3D"" face=3D"Courier New"><br></font><font style=3D=
"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">configure: error: in `=
/home/nass/eclipse/adt_hello/':</font><font style=3D"" face=3D"Courier New"=
><br></font><font style=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D=
"2">configure: error: in `/home/nass/eclipse/adt_hello/':</font><font style=
=3D"" face=3D"Courier New"><br></font><font style=3D"font-size: 10pt=3B" fa=
ce=3D"Courier New" size=3D"2">configure: error: C compiler cannot create ex=
ecutables</font><font style=3D"" face=3D"Courier New"><br></font><font styl=
e=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">configure: error: =
C compiler cannot create executables</font><font style=3D"" face=3D"Courier=
 New"><br></font><font style=3D"font-size: 10pt=3B" face=3D"Courier New" si=
ze=3D"2">See `config.log' for more details</font><font style=3D"" face=3D"C=
ourier New"><br></font><font style=3D"" face=3D"Courier New"><br></font><fo=
nt style=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">Configurati=
on failed with error</font><br></blockquote><br>config.log looks fairly sim=
ilar to this post: <a href=3D"https://lists.yoctoproject.org/pipermail/yoct=
o/2013-January/013860.html" target=3D"_blank">https://lists.yoctoproject.or=
g/pipermail/yocto/2013-January/013860.html</a><br><br>I have configured to =
use the toolchain from the build directory. In fact the paths to the toolch=
ain and sysroots are (both): <br>"/home/nass/yocto/build/tmp/" .<br><br>I=
=0A=
 went on to try the slightly more manual in CLI :&nbsp=3B =0A=
http://www.yoctoproject.org/docs/1.4/adt-manual/adt-manual.html#creating-an=
d-running-a-project-based-on-gnu-autotools=0A=
 <br><br>again at configure&nbsp=3B stage=2C I get:<br>&nbsp=3B<br><blockqu=
ote><font style=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">chec=
king=0A=
 for gcc... arm-poky-linux-gnueabi-gcc&nbsp=3B -march=3Darmv7-a -mthumb-int=
erwork=0A=
 -mfloat-abi=3Dsoftfp -mfpu=3Dneon =0A=
--sysroot=3D/home/nass/yocto/build/tmp/sysroots/imx6qsabrelite</font><br><f=
ont style=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">checking w=
hether the C compiler works... yes</font><br><font style=3D"font-size: 10pt=
=3B" face=3D"Courier New" size=3D"2">checking for C compiler default output=
 file name... a.out</font><br><font style=3D"font-size: 10pt=3B" face=3D"Co=
urier New" size=3D"2">checking for suffix of executables... </font><br><fon=
t style=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">checking whe=
ther we are cross compiling... configure: error: in `/home/nass/appz/dev/yo=
ctauto':</font><br><font style=3D"font-size: 10pt=3B" face=3D"Courier New" =
size=3D"2">configure: error: cannot run C compiled programs.</font><br><fon=
t style=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">If you meant=
 to cross compile=2C use `--host'.</font><br><font style=3D"font-size: 10pt=
=3B" face=3D"Courier New" size=3D"2">See `config.log' for more details</fon=
t><br></blockquote><br>Should=0A=
 I really use --host? Wouldn't it be in the plugin setup options already=0A=
 if that was necessary? OR wouldn't the environment-setup* file contain =0A=
the necessary declarations?<br><br>Any ideas how to avert it?<br><br>Thank =
you for your help! 		 	   		  </div></body>
</html>=

--_4020b2d6-caac-4d13-8bd6-73ea546eee3f_--
