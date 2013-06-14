Return-Path: <djnass_18@hotmail.com>
Received: from dub0-omc3-s25.dub0.hotmail.com (dub0-omc3-s25.dub0.hotmail.com
	[157.55.2.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDAAAE013A8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 10:13:13 -0700 (PDT)
Received: from DUB116-W136 ([157.55.2.8]) by dub0-omc3-s25.dub0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 14 Jun 2013 10:13:11 -0700
X-TMN: [t8936sGUQVhh+uy0FDHWR+uq2PmeTYetim6yjAVtAcM=]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB116-W136485E174295132673564498800@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 14 Jun 2013 17:13:11 +0000
Importance: Normal
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C3B0A6@ORSMSX103.amr.corp.intel.com>
References: <DUB116-W9038BE05D96B60298CC60C98800@phx.gbl>,
	<C6510F6D410BB64A8C15398EDC6B847C73C3B0A6@ORSMSX103.amr.corp.intel.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 14 Jun 2013 17:13:11.0396 (UTC)
	FILETIME=[72AB5A40:01CE6922]
Subject: Re: Can not build (configure) a simple Hello world program in eclipse with ADT
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
X-List-Received-Date: Fri, 14 Jun 2013 17:13:14 -0000
Content-Type: multipart/alternative;
	boundary="_10103af7-af8c-41b9-bcea-42bb88fd1d1a_"

--_10103af7-af8c-41b9-bcea-42bb88fd1d1a_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Jessica=2C
well I selected the toolchain from build dir and pointed both paths (toolch=
ain and sysroots) to
/home/<user>/<yocto_root>/build/tmp/

The rest is appended automatically I guess.=20
The target showed up  correctly in the dropdown box ( armv7a-vfp-neon-poky-=
linux-gnueabi ) .

Following your advice=2C I changed the toolchain and sysroots to point to /=
opt/poky/1.4.1/ (changed the radio button to point to "standalone prebuilt =
toolchain" - i bitbaked from the same build the meta-toolchain-sdk as well.=
=20

I then recreated the hello world autotools example and the problem persists=
.....

Thank you for your help!
Tanassis

From: jessica.zhang@intel.com
To: djnass_18@hotmail.com=3B yocto@yoctoproject.org
Subject: RE: [yocto] Can not build (configure) a simple Hello world program=
 in eclipse with ADT
Date: Fri=2C 14 Jun 2013 16:36:59 +0000

=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
Hi Thanassis=2C=0A=
 =0A=
How did you configure your toolchain and sysroot=2C in the windows->prefere=
nce for ADT? I noticed from the commandling that your sysroot is sysroot=3D=
/home/nass/yocto/build/tmp/sysroots/imx6qsabrelite=0A=
 =0A=
Typically we=92d advise people not to directly use the sysroot under the bu=
ild environment.  If you follow the ADT manual there=92re couple ways for y=
ou to setup=0A=
 sysroot=2C either extract from image rootfs or use adt_installer.=0A=
 =0A=
Thanks=2C=0A=
Jessica=0A=
 =0A=
=0A=
=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
]=0A=
On Behalf Of Thanassis Silis
=0A=
Sent: Friday=2C June 14=2C 2013 9:20 AM
=0A=
To: yocto@yoctoproject.org
=0A=
Subject: [yocto] Can not build (configure) a simple Hello world program in =
eclipse with ADT=0A=
=0A=
=0A=
 =0A=
=0A=
hello everyone=2C
=0A=
I am following the yocto Project Devel Manual ( =0A=
http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#adt-eclipse=
 ) to set up eclipse for use with an embedded target . I am stuck in sectio=
n 4.2.2.2 trying to make a simple autotools hello world application. The bu=
ild fails at configure stage=0A=
=0A=
checking for style of include used by make... GNU
=0A=
checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc  -mar=
ch=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon --sysroot=
=3D/home/nass/yocto/build/tmp/sysroots/imx6qsabrelite
=0A=
checking whether the C compiler works... no
=0A=
configure: error: in `/home/nass/eclipse/adt_hello/':
=0A=
configure: error: in `/home/nass/eclipse/adt_hello/':
=0A=
configure: error: C compiler cannot create executables
=0A=
configure: error: C compiler cannot create executables
=0A=
See `config.log' for more details
=0A=

=0A=
Configuration failed with error=0A=

=0A=
config.log looks fairly similar to this post: =0A=
https://lists.yoctoproject.org/pipermail/yocto/2013-January/013860.html
=0A=

=0A=
I have configured to use the toolchain from the build directory. In fact th=
e paths to the toolchain and sysroots are (both):=0A=

=0A=
"/home/nass/yocto/build/tmp/" .
=0A=

=0A=
I went on to try the slightly more manual in CLI :  =0A=
http://www.yoctoproject.org/docs/1.4/adt-manual/adt-manual.html#creating-an=
d-running-a-project-based-on-gnu-autotools=0A=

=0A=

=0A=
again at configure  stage=2C I get:
=0A=
 =0A=
checking for gcc... arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-in=
terwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon --sysroot=3D/home/nass/yocto/buil=
d/tmp/sysroots/imx6qsabrelite
=0A=
checking whether the C compiler works... yes
=0A=
checking for C compiler default output file name... a.out
=0A=
checking for suffix of executables...=0A=

=0A=
checking whether we are cross compiling... configure: error: in `/home/nass=
/appz/dev/yoctauto':
=0A=
configure: error: cannot run C compiled programs.
=0A=
If you meant to cross compile=2C use `--host'.
=0A=
See `config.log' for more details=0A=

=0A=
Should I really use --host? Wouldn't it be in the plugin setup options alre=
ady if that was necessary? OR wouldn't the environment-setup* file contain =
the necessary declarations?
=0A=

=0A=
Any ideas how to avert it?
=0A=

=0A=
Thank you for your help! =0A=
=0A=
 		 	   		  =

--_10103af7-af8c-41b9-bcea-42bb88fd1d1a_
Content-Type: text/html; charset="Windows-1252"
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
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi Jessica=2C<br>well I selected=
 the toolchain from build dir and pointed both paths (toolchain and sysroot=
s) to<br>/home/&lt=3Buser&gt=3B/&lt=3Byocto_root&gt=3B/build/tmp/<br><br>Th=
e rest is appended automatically I guess. <br>The target showed up&nbsp=3B =
correctly in the dropdown box ( armv7a-vfp-neon-poky-linux-gnueabi ) .<br><=
br>Following your advice=2C I changed the toolchain and sysroots to point t=
o /opt/poky/1.4.1/ (changed the radio button to point to "standalone prebui=
lt toolchain" - i bitbaked from the same build the meta-toolchain-sdk as we=
ll. <br><br>I then recreated the hello world autotools example and the prob=
lem persists.....<br><br>Thank you for your help!<br>Tanassis<br><br><div><=
hr id=3D"stopSpelling">From: jessica.zhang@intel.com<br>To: djnass_18@hotma=
il.com=3B yocto@yoctoproject.org<br>Subject: RE: [yocto] Can not build (con=
figure) a simple Hello world program in eclipse with ADT<br>Date: Fri=2C 14=
 Jun 2013 16:36:59 +0000<br><br>=0A=
=0A=
=0A=
=0A=
<style><!--=0A=
.ExternalClass p.ecxMsoNormal=2C .ExternalClass li.ecxMsoNormal=2C .Externa=
lClass div.ecxMsoNormal {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2C"serif"=3B=0A=
}=0A=
=0A=
.ExternalClass a:link=2C .ExternalClass span.ecxMsoHyperlink {=0A=
color:blue=3B=0A=
text-decoration:underline=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxMsoHyperlinkFollowed {=0A=
color:purple=3B=0A=
text-decoration:underline=3B=0A=
}=0A=
=0A=
.ExternalClass p {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2C"serif"=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxEmailStyle18 {=0A=
font-family:"Calibri"=2C"sans-serif"=3B=0A=
color:#1F497D=3B=0A=
}=0A=
=0A=
.ExternalClass .ecxMsoChpDefault {=0A=
font-size:10.0pt=3B=0A=
}=0A=
=0A=
.ExternalClass div.ecxWordSection1 {=0A=
}=0A=
=0A=
--></style>=0A=
=0A=
=0A=
<div class=3D"ecxWordSection1">=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">Hi Th=
anassis=2C</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">&nbsp=
=3B</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">How d=
id you configure your toolchain and sysroot=2C in the windows-&gt=3Bprefere=
nce for ADT? I noticed from the commandling that your sysroot is sysroot=3D=
/home/nass/yocto/build/tmp/sysroots/imx6qsabrelite</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">&nbsp=
=3B</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">Typic=
ally we=92d advise people not to directly use the sysroot under the build e=
nvironment.&nbsp=3B If you follow the ADT manual there=92re couple ways for=
 you to setup=0A=
 sysroot=2C either extract from image rootfs or use adt_installer.</span></=
p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">&nbsp=
=3B</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">Thank=
s=2C</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">Jessi=
ca</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">&nbsp=
=3B</span></p>=0A=
<div>=0A=
<div style=3D"border:none=3Bborder-top:solid #B5C4DF 1.0pt=3Bpadding:3.0pt =
0cm 0cm 0cm=3B">=0A=
<p class=3D"ecxMsoNormal"><b><span style=3D"font-size:10.0pt=3Bfont-family:=
&quot=3BTahoma&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B">From:</span></b><sp=
an style=3D"font-size:10.0pt=3Bfont-family:&quot=3BTahoma&quot=3B=2C&quot=
=3Bsans-serif&quot=3B=3B"> yocto-bounces@yoctoproject.org [mailto:yocto-bou=
nces@yoctoproject.org]=0A=
<b>On Behalf Of </b>Thanassis Silis<br>=0A=
<b>Sent:</b> Friday=2C June 14=2C 2013 9:20 AM<br>=0A=
<b>To:</b> yocto@yoctoproject.org<br>=0A=
<b>Subject:</b> [yocto] Can not build (configure) a simple Hello world prog=
ram in eclipse with ADT</span></p>=0A=
</div>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal">&nbsp=3B</p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal" style=3D""><span style=3D"font-family:&quot=3BCal=
ibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B">hello everyone=2C<br>=0A=
I am following the yocto Project Devel Manual ( <a href=3D"http://www.yocto=
project.org/docs/1.4/dev-manual/dev-manual.html#adt-eclipse" target=3D"_bla=
nk">=0A=
http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#adt-eclipse=
</a> ) to set up eclipse for use with an embedded target . I am stuck in se=
ction 4.2.2.2 trying to make a simple autotools hello world application. Th=
e build fails at configure stage=0A=
</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:10.0pt=3Bfont-family:&qu=
ot=3BCourier New&quot=3B=3B">checking for style of include used by make... =
GNU</span><span style=3D"font-family:&quot=3BCourier New&quot=3B=3B"><br>=
=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi=
-gcc&nbsp=3B -march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=
=3Dneon --sysroot=3D/home/nass/yocto/build/tmp/sysroots/imx6qsabrelite</spa=
n><span style=3D"font-family:&quot=3BCourier New&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">checking whether the C compiler works... no</span><span style=3D"=
font-family:&quot=3BCourier New&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">configure: error: in `/home/nass/eclipse/adt_hello/':</span><span=
 style=3D"font-family:&quot=3BCourier New&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">configure: error: in `/home/nass/eclipse/adt_hello/':</span><span=
 style=3D"font-family:&quot=3BCourier New&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">configure: error: C compiler cannot create executables</span><spa=
n style=3D"font-family:&quot=3BCourier New&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">configure: error: C compiler cannot create executables</span><spa=
n style=3D"font-family:&quot=3BCourier New&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">See `config.log' for more details</span><span style=3D"font-famil=
y:&quot=3BCourier New&quot=3B=3B"><br>=0A=
<br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">Configuration failed with error</span><span style=3D"font-family:=
&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
config.log looks fairly similar to this post: <a href=3D"https://lists.yoct=
oproject.org/pipermail/yocto/2013-January/013860.html" target=3D"_blank">=
=0A=
https://lists.yoctoproject.org/pipermail/yocto/2013-January/013860.html</a>=
<br>=0A=
<br>=0A=
I have configured to use the toolchain from the build directory. In fact th=
e paths to the toolchain and sysroots are (both):=0A=
<br>=0A=
"/home/nass/yocto/build/tmp/" .<br>=0A=
<br>=0A=
I went on to try the slightly more manual in CLI :&nbsp=3B <a href=3D"http:=
//www.yoctoproject.org/docs/1.4/adt-manual/adt-manual.html#creating-and-run=
ning-a-project-based-on-gnu-autotools" target=3D"_blank">=0A=
http://www.yoctoproject.org/docs/1.4/adt-manual/adt-manual.html#creating-an=
d-running-a-project-based-on-gnu-autotools</a>=0A=
<br>=0A=
<br>=0A=
again at configure&nbsp=3B stage=2C I get:<br>=0A=
&nbsp=3B</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:10.0pt=3Bfont-family:&qu=
ot=3BCourier New&quot=3B=3B">checking for gcc... arm-poky-linux-gnueabi-gcc=
&nbsp=3B -march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dne=
on --sysroot=3D/home/nass/yocto/build/tmp/sysroots/imx6qsabrelite</span><sp=
an style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=
=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">checking whether the C compiler works... yes</span><span style=3D=
"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=
=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">checking for C compiler default output file name... a.out</span><=
span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=
=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">checking for suffix of executables...=0A=
</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-se=
rif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">checking whether we are cross compiling... configure: error: in `=
/home/nass/appz/dev/yoctauto':</span><span style=3D"font-family:&quot=3BCal=
ibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">configure: error: cannot run C compiled programs.</span><span sty=
le=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B">=
<br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">If you meant to cross compile=2C use `--host'.</span><span style=
=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"><b=
r>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">See `config.log' for more details</span><span style=3D"font-famil=
y:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
Should I really use --host? Wouldn't it be in the plugin setup options alre=
ady if that was necessary? OR wouldn't the environment-setup* file contain =
the necessary declarations?<br>=0A=
<br>=0A=
Any ideas how to avert it?<br>=0A=
<br>=0A=
Thank you for your help! </span></p>=0A=
</div>=0A=
</div></div> 		 	   		  </div></body>
</html>=

--_10103af7-af8c-41b9-bcea-42bb88fd1d1a_--
