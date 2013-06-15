Return-Path: <djnass_18@hotmail.com>
Received: from dub0-omc3-s31.dub0.hotmail.com (dub0-omc3-s31.dub0.hotmail.com
	[157.55.2.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3737AE006E2
	for <yocto@yoctoproject.org>; Sat, 15 Jun 2013 08:50:03 -0700 (PDT)
Received: from DUB116-W83 ([157.55.2.7]) by dub0-omc3-s31.dub0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Sat, 15 Jun 2013 08:50:01 -0700
X-TMN: [sDIgZXtNztFFWbXR/viZbg1pBWkDJgPc]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB116-W836EC26234F96510430D8398810@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Sat, 15 Jun 2013 15:50:01 +0000
Importance: Normal
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C3B188@ORSMSX103.amr.corp.intel.com>
References: <DUB116-W9038BE05D96B60298CC60C98800@phx.gbl>,
	<C6510F6D410BB64A8C15398EDC6B847C73C3B0A6@ORSMSX103.amr.corp.intel.com>,
	<DUB116-W136485E174295132673564498800@phx.gbl>,
	<C6510F6D410BB64A8C15398EDC6B847C73C3B188@ORSMSX103.amr.corp.intel.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 15 Jun 2013 15:50:01.0940 (UTC)
	FILETIME=[FF228940:01CE69DF]
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
X-List-Received-Date: Sat, 15 Jun 2013 15:50:04 -0000
Content-Type: multipart/alternative;
	boundary="_e22c1822-505e-4966-bc06-4bb1892ac99b_"

--_e22c1822-505e-4966-bc06-4bb1892ac99b_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Jessica=2Cthank you for the info=2C I extracted the rootfs using runqemy=
-extract-sdk and so now ADT global preferences (from window->preferences) h=
as the following info
-prebuilt standalone toolchain: /opt/poky/1.4.1/ (choosing the the toolchai=
n from the build directory  and pointing to dir : <yocto_root>/build/tmp/ =
=2C didn=3Bt work. I'd get a msg stating that no toolchain is found on the =
specifiec path. If on the other hand=2C I kept the same path but chose the =
pre-built option the path was accepted!)-sysroot: <extracted_rootfsdir_imag=
e-gui-sdk>
I then recreated the project and it built fine.=20
Only one question: Why pointing the toolchain from the build dir (and choos=
ing accordingly the radio button just above) does not work?
Thank you for your help
From: jessica.zhang@intel.com
To: djnass_18@hotmail.com=3B yocto@yoctoproject.org
Subject: RE: [yocto] Can not build (configure) a simple Hello world program=
 in eclipse with ADT
Date: Fri=2C 14 Jun 2013 17:35:44 +0000

=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
Hi Tanassis=2C=0A=
 =0A=
Can you install your sysroot setup by following the steps of ADT manual=2C =
either download a prebuild image.tar.gz file and use runqemu-extract-sdk to=
 extract=0A=
 it under /home/user/sysroot_*** directory=2C or use adt_installer to set i=
t up?  Any of the sysroot that you got by building  toolchain is just too m=
inimum and we typically advise people to setup their sysroot base on target=
 image rootfs.=0A=
 =0A=
Thanks=2C=0A=
Jessica=0A=
 =0A=
=0A=
=0A=
From: Thanassis Silis [mailto:djnass_18@hotmail.com]=0A=

=0A=
Sent: Friday=2C June 14=2C 2013 10:13 AM
=0A=
To: Zhang=2C Jessica=3B yocto@yoctoproject.org
=0A=
Subject: RE: [yocto] Can not build (configure) a simple Hello world program=
 in eclipse with ADT=0A=
=0A=
=0A=
 =0A=
=0A=
Hi Jessica=2C
=0A=
well I selected the toolchain from build dir and pointed both paths (toolch=
ain and sysroots) to
=0A=
/home/<user>/<yocto_root>/build/tmp/
=0A=

=0A=
The rest is appended automatically I guess.=20
=0A=
The target showed up  correctly in the dropdown box ( armv7a-vfp-neon-poky-=
linux-gnueabi ) .
=0A=

=0A=
Following your advice=2C I changed the toolchain and sysroots to point to /=
opt/poky/1.4.1/ (changed the radio button to point to "standalone prebuilt =
toolchain" - i bitbaked from the same build the meta-toolchain-sdk as well.=
=0A=

=0A=

=0A=
I then recreated the hello world autotools example and the problem persists=
.....
=0A=

=0A=
Thank you for your help!
=0A=
Tanassis=0A=
=0A=
=0A=
=0A=
=0A=
From:=0A=
jessica.zhang@intel.com
=0A=
To: djnass_18@hotmail.com=3B =0A=
yocto@yoctoproject.org
=0A=
Subject: RE: [yocto] Can not build (configure) a simple Hello world program=
 in eclipse with ADT
=0A=
Date: Fri=2C 14 Jun 2013 16:36:59 +0000=0A=
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
From:=0A=
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]=0A=
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
=0A=
=0A=
=0A=
 		 	   		  =

--_e22c1822-505e-4966-bc06-4bb1892ac99b_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi Jessica=2C<div>thank you for =
the info=2C I extracted the rootfs using runqemy-extract-sdk and so now ADT=
 global preferences (from window-&gt=3Bpreferences) has the following info<=
/div><div><br></div><div>-prebuilt standalone toolchain: /opt/poky/1.4.1/&n=
bsp=3B</div><div>(choosing the the toolchain from the build directory &nbsp=
=3Band pointing to dir : &lt=3Byocto_root&gt=3B/build/tmp/ =2C didn=3Bt wor=
k. I'd get a msg stating that no toolchain is found on the specifiec path. =
If on the other hand=2C I kept the same path but chose the pre-built option=
 the path was accepted!)</div><div>-sysroot: &lt=3Bextracted_rootfsdir_imag=
e-gui-sdk&gt=3B</div><div><br></div><div>I then recreated the project and i=
t built fine.&nbsp=3B</div><div><br></div><div>Only one question: Why point=
ing the toolchain from the build dir (and choosing accordingly the radio bu=
tton just above) does not work?</div><div><br></div><div>Thank you for your=
 help</div><div><br></div><div><div><hr id=3D"stopSpelling">From: jessica.z=
hang@intel.com<br>To: djnass_18@hotmail.com=3B yocto@yoctoproject.org<br>Su=
bject: RE: [yocto] Can not build (configure) a simple Hello world program i=
n eclipse with ADT<br>Date: Fri=2C 14 Jun 2013 17:35:44 +0000<br><br>=0A=
=0A=
=0A=
=0A=
<style><!--=0A=
.ExternalClass .ecxshape {=0A=
}=0A=
--></style><style><!--=0A=
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
.ExternalClass p.ecxMsoAcetate=2C .ExternalClass li.ecxMsoAcetate=2C .Exter=
nalClass div.ecxMsoAcetate {=0A=
font-size:8.0pt=3B=0A=
font-family:"Tahoma"=2C"sans-serif"=3B=0A=
}=0A=
=0A=
.ExternalClass p.ecxmsonormal=2C .ExternalClass li.ecxmsonormal=2C .Externa=
lClass div.ecxmsonormal {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2C"serif"=3B=0A=
}=0A=
=0A=
.ExternalClass p.ecxmsochpdefault=2C .ExternalClass li.ecxmsochpdefault=2C =
.ExternalClass div.ecxmsochpdefault {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2C"serif"=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxmsohyperlink {=0A=
}=0A=
=0A=
.ExternalClass span.ecxmsohyperlinkfollowed {=0A=
}=0A=
=0A=
.ExternalClass span.ecxemailstyle18 {=0A=
}=0A=
=0A=
.ExternalClass p.ecxmsonormal1=2C .ExternalClass li.ecxmsonormal1=2C .Exter=
nalClass div.ecxmsonormal1 {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2C"serif"=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxmsohyperlink1 {=0A=
color:blue=3B=0A=
text-decoration:underline=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxmsohyperlinkfollowed1 {=0A=
color:purple=3B=0A=
text-decoration:underline=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxemailstyle181 {=0A=
font-family:"Calibri"=2C"sans-serif"=3B=0A=
color:#1F497D=3B=0A=
}=0A=
=0A=
.ExternalClass p.ecxmsochpdefault1=2C .ExternalClass li.ecxmsochpdefault1=
=2C .ExternalClass div.ecxmsochpdefault1 {=0A=
font-size:10.0pt=3B=0A=
font-family:"Times New Roman"=2C"serif"=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxBalloonTextChar {=0A=
font-family:"Tahoma"=2C"sans-serif"=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxEmailStyle30 {=0A=
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
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">Hi Ta=
nassis=2C</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">&nbsp=
=3B</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">Can y=
ou install your sysroot setup by following the steps of ADT manual=2C eithe=
r download a prebuild image.tar.gz file and use runqemu-extract-sdk to extr=
act=0A=
 it under /home/user/sysroot_*** directory=2C or use adt_installer to set i=
t up?&nbsp=3B Any of the sysroot that you got by building&nbsp=3B toolchain=
 is just too minimum and we typically advise people to setup their sysroot =
base on target image rootfs.</span></p>=0A=
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
=3Bsans-serif&quot=3B=3B"> Thanassis Silis [mailto:djnass_18@hotmail.com]=
=0A=
<br>=0A=
<b>Sent:</b> Friday=2C June 14=2C 2013 10:13 AM<br>=0A=
<b>To:</b> Zhang=2C Jessica=3B yocto@yoctoproject.org<br>=0A=
<b>Subject:</b> RE: [yocto] Can not build (configure) a simple Hello world =
program in eclipse with ADT</span></p>=0A=
</div>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal">&nbsp=3B</p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal" style=3D""><span style=3D"font-family:&quot=3BCal=
ibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B">Hi Jessica=2C<br>=0A=
well I selected the toolchain from build dir and pointed both paths (toolch=
ain and sysroots) to<br>=0A=
/home/&lt=3Buser&gt=3B/&lt=3Byocto_root&gt=3B/build/tmp/<br>=0A=
<br>=0A=
The rest is appended automatically I guess. <br>=0A=
The target showed up&nbsp=3B correctly in the dropdown box ( armv7a-vfp-neo=
n-poky-linux-gnueabi ) .<br>=0A=
<br>=0A=
Following your advice=2C I changed the toolchain and sysroots to point to /=
opt/poky/1.4.1/ (changed the radio button to point to "standalone prebuilt =
toolchain" - i bitbaked from the same build the meta-toolchain-sdk as well.=
=0A=
<br>=0A=
<br>=0A=
I then recreated the hello world autotools example and the problem persists=
.....<br>=0A=
<br>=0A=
Thank you for your help!<br>=0A=
Tanassis</span></p>=0A=
<div>=0A=
<div class=3D"ecxMsoNormal" align=3D"center" style=3D"text-align:center=3B"=
><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&qu=
ot=3B=3B">=0A=
<hr size=3D"2" width=3D"100%" align=3D"center" id=3D"ecxstopSpelling">=0A=
</span></div>=0A=
<p class=3D"ecxMsoNormal" style=3D""><span style=3D"font-family:&quot=3BCal=
ibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B">From:=0A=
<a href=3D"mailto:jessica.zhang@intel.com">jessica.zhang@intel.com</a><br>=
=0A=
To: <a href=3D"mailto:djnass_18@hotmail.com">djnass_18@hotmail.com</a>=3B <=
a href=3D"mailto:yocto@yoctoproject.org">=0A=
yocto@yoctoproject.org</a><br>=0A=
Subject: RE: [yocto] Can not build (configure) a simple Hello world program=
 in eclipse with ADT<br>=0A=
Date: Fri=2C 14 Jun 2013 16:36:59 +0000</span></p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">Hi Th=
anassis=2C</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=
=3Bsans-serif&quot=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">&nbsp=
=3B</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans=
-serif&quot=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">How d=
id you configure your toolchain and sysroot=2C in the windows-&gt=3Bprefere=
nce for ADT? I noticed from the commandling that your sysroot is sysroot=3D=
/home/nass/yocto/build/tmp/sysroots/imx6qsabrelite</span><span style=3D"fon=
t-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"></span></=
p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">&nbsp=
=3B</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans=
-serif&quot=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">Typic=
ally we=92d advise people not to directly use the sysroot under the build e=
nvironment.&nbsp=3B If you follow the ADT manual there=92re couple ways for=
 you to setup=0A=
 sysroot=2C either extract from image rootfs or use adt_installer.</span><s=
pan style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=
=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">&nbsp=
=3B</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans=
-serif&quot=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">Thank=
s=2C</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsan=
s-serif&quot=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">Jessi=
ca</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-=
serif&quot=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">&nbsp=
=3B</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans=
-serif&quot=3B=3B"></span></p>=0A=
<div>=0A=
<div style=3D"border:none=3Bborder-top:solid #B5C4DF 1.0pt=3Bpadding:3.0pt =
0cm 0cm 0cm=3B">=0A=
<p class=3D"ecxMsoNormal"><b><span style=3D"font-size:10.0pt=3Bfont-family:=
&quot=3BTahoma&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B">From:</span></b><sp=
an style=3D"font-size:10.0pt=3Bfont-family:&quot=3BTahoma&quot=3B=2C&quot=
=3Bsans-serif&quot=3B=3B">=0A=
<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoprojec=
t.org</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-b=
ounces@yoctoproject.org</a>]=0A=
<b>On Behalf Of </b>Thanassis Silis<br>=0A=
<b>Sent:</b> Friday=2C June 14=2C 2013 9:20 AM<br>=0A=
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>=0A=
<b>Subject:</b> [yocto] Can not build (configure) a simple Hello world prog=
ram in eclipse with ADT</span><span style=3D"font-family:&quot=3BCalibri&qu=
ot=3B=2C&quot=3Bsans-serif&quot=3B=3B"></span></p>=0A=
</div>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2C&quot=3Bsans-serif&quot=3B=3B">&nbsp=3B</span></p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2C&quot=3Bsans-serif&quot=3B=3B">hello everyone=2C<br>=0A=
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
</div>=0A=
</div>=0A=
</div>=0A=
</div></div></div> 		 	   		  </div></body>
</html>=

--_e22c1822-505e-4966-bc06-4bb1892ac99b_--
