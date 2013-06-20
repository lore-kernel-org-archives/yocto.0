Return-Path: <djnass_18@hotmail.com>
Received: from dub0-omc3-s14.dub0.hotmail.com (dub0-omc3-s14.dub0.hotmail.com
	[157.55.2.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C76E4E00348
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 10:48:59 -0700 (PDT)
Received: from DUB116-W119 ([157.55.2.9]) by dub0-omc3-s14.dub0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 20 Jun 2013 10:48:58 -0700
X-TMN: [TLTkIR+fnlCtL9zW5Trd3V8Ox6/NB0cbtXr8yuuaUy8=]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB116-W11924FDD6C4599DA3B9E831988E0@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 20 Jun 2013 17:48:58 +0000
Importance: Normal
In-Reply-To: <DUB116-W44BD641BF261A178D1E9E6988E0@phx.gbl>
References: <DUB116-W138390BF0B4871C803B01A5988C0@phx.gbl>,
	<C6510F6D410BB64A8C15398EDC6B847C73C4628B@ORSMSX103.amr.corp.intel.com>,
	<DUB116-W44BD641BF261A178D1E9E6988E0@phx.gbl>
MIME-Version: 1.0
X-OriginalArrivalTime: 20 Jun 2013 17:48:58.0590 (UTC)
	FILETIME=[70F9A7E0:01CE6DDE]
Subject: FW: cannot bitbake/build.compile tcf-agent for use with fsl-image-gui-sdk
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
X-List-Received-Date: Thu, 20 Jun 2013 17:49:03 -0000
Content-Type: multipart/alternative;
	boundary="_aa2a76ae-76bb-4331-9453-c7438709cac6_"

--_aa2a76ae-76bb-4331-9453-c7438709cac6_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable



From: djnass_18@hotmail.com
To: jessica.zhang@intel.com
Subject: RE: [yocto] cannot bitbake/build.compile tcf-agent for use with fs=
l-image-gui-sdk
Date: Thu=2C 20 Jun 2013 17:48:14 +0000

=0A=
=0A=
=0A=
Hi jessica=2C
I will try with SSH too=2C
but for now it seems there are some bugs with "packages_deb " being the pri=
mary packaging scheme.
so apart from adding=20
    IMAGE_INSTALL_append =3D " tcf-agent"

moving "packages_rpm" to be the primary scheme ended up succeeding in makin=
g an image that had tcf-agent included.

Thank you for your help.
I will post back when I generate an image with openssh (I have dropbear ena=
bled ATM).=20

From: jessica.zhang@intel.com
To: djnass_18@hotmail.com=3B meta-freescale@yoctoproject.org=3B yocto@yocto=
project.org
Subject: RE: [yocto] cannot bitbake/build.compile tcf-agent for use with fs=
l-image-gui-sdk
Date: Wed=2C 19 Jun 2013 16:25:03 +0000

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
I don=92t know why tcf-agent  is not included in your sdk image.  But you a=
lso can use ssh to create a rse remote connection that allows you to do rem=
ote interaction.=0A=
  When you create remote connection=2C instead of choosing tcf=2C use ssh. =
 You=92ll need openssh in your target image for this to work.=0A=
 =0A=
Cheers=2C=0A=
Jessica=0A=
 =0A=
=0A=
=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
]=0A=
On Behalf Of Thanassis Silis
=0A=
Sent: Tuesday=2C June 18=2C 2013 6:56 AM
=0A=
To: meta-freescale@yoctoproject.org=3B yocto@yoctoproject.org
=0A=
Subject: [yocto] cannot bitbake/build.compile tcf-agent for use with fsl-im=
age-gui-sdk=0A=
=0A=
=0A=
 =0A=
=0A=
Hello everyone=2C
=0A=
it seems tcf-agent is not provided. Not even in the -sdk image I created. A=
nd that is where my problems start:
=0A=

=0A=
using this in my local.conf: IMAGE_INSTALL_append =3D " tcf-agent"
=0A=
I expected to be able to automate the process of generating the tcf-agent a=
nd deploying it in my image with command:=0A=
bitbake fsl-image-gui-sdk=0A=

=0A=
this fails with:=0A=
| Reading package lists...
=0A=
| Building dependency tree...
=0A=
| Reading state information...
=0A=
| Some packages could not be installed. This may mean that you have
=0A=
| requested an impossible situation or if you are using the unstable
=0A=
| distribution that some required packages have not yet been created
=0A=
| or been moved out of Incoming.
=0A=
| The following information may help to resolve the situation:
=0A=
|=20
=0A=
| The following packages have unmet dependencies:
=0A=
|  packagegroup-core-x11-base : Depends: packagegroup-core-x11-utils but it=
 is not going to be installed
=0A=
| W: Ignoring Provides line with DepCompareOp for package pkgconfig__pkg-co=
nfig__
=0A=
| W: You may want to run apt-get update to correct these problems
=0A=
| E: Unable to correct problems=2C you have held broken packages.
=0A=
| ERROR: Function failed: do_rootfs (see /home/nass/yocto/build/tmp/work/im=
x6qsabrelite-poky-linux-gnueabi/fsl-image-gui-sdk/1.0-r0/temp/log.do_rootfs=
.26945 for further information)
=0A=
ERROR: Task 7 (/home/nass/yocto/sources/meta-fsl-demos/recipes-fsl/images/f=
sl-image-gui-sdk.bb=2C do_rootfs) failed with exit code '1'
=0A=
NOTE: Tasks Summary: Attempted 7418 tasks of which 7417 didn't need to be r=
erun and 1 failed.
=0A=
No currently running tasks (7417 of 7419)
=0A=

=0A=
Summary: 1 task failed:
=0A=
  /home/nass/yocto/sources/meta-fsl-demos/recipes-fsl/images/fsl-image-gui-=
sdk.bb=2C do_rootfs
=0A=
Summary: There was 1 ERROR message shown=2C returning a non-zero exit code.=
=0A=

=0A=

=0A=
I then went on to try and compile it manually:=0A=
bitbake fsl-image-gui-sdk -c compile tcf-agent
=0A=
bitbake fsl-image-gui-sdk -c deploy=0A=

=0A=
this fails with:=0A=
ERROR: Task do_deploy does not exist for target fsl-image-gui-sdk=0A=
Then I tried compiling it manually using this info=0A=
=0A=
http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#getting=
-the-images =2C by sourcing my toolchain from /opt/poky/1.4.1/env* file=2C =
and then
=0A=
runnning 'make' in org.eclipse.tcf.agent/agent/ . I explicitly assign the $=
MACHINE variable to be 'arm' in the beginning of the Makefile.inc.
=0A=

=0A=
this fails with=0A=
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dsoftfp -mfpu=3Dneon --sysroot=3D/opt/poky/1.4.1/sysroots/armv7a-vfp-neon=
-poky-linux-gnueabi =0A=
 -O2 -pipe -g -feliminate-unused-debug-types -g -D_FILE_OFFSET_BITS=3D64 -W=
all -Wmissing-prototypes -I./. -I./system/GNU/Linux -I./machine/arm -o obj/=
GNU/Linux/arm/Debug/tcf/framework/channel_tcp.o -c tcf/framework/channel_tc=
p.c
=0A=
tcf/framework/channel_tcp.c:38:27: fatal error: openssl/ssl.h: No such file=
 or directory
=0A=
compilation terminated.=0A=
=20
=0A=
At this point I have run out of ideas about how to prepare tcf-agent to ins=
tall on my sabrelite fsl-image-gui-sdk rootfs....
=0A=
Any help would be most welcome.
=0A=

=0A=
for example in the 1st case how could I run apt-get as is suggested in a ma=
nner that would be appropriate to update yocto sources?
=0A=

=0A=
Thank you.=0A=
=0A=
 		 	   		   		 	   		  =

--_aa2a76ae-76bb-4331-9453-c7438709cac6_
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
<body class=3D'hmmessage'><div dir=3D'ltr'><br><br><div><hr id=3D"stopSpell=
ing">From: djnass_18@hotmail.com<br>To: jessica.zhang@intel.com<br>Subject:=
 RE: [yocto] cannot bitbake/build.compile tcf-agent for use with fsl-image-=
gui-sdk<br>Date: Thu=2C 20 Jun 2013 17:48:14 +0000<br><br>=0A=
=0A=
<style><!--=0A=
.ExternalClass .ecxhmmessage P {=0A=
padding:0px=3B=0A=
}=0A=
=0A=
.ExternalClass body.ecxhmmessage {=0A=
font-size:12pt=3B=0A=
font-family:Calibri=3B=0A=
}=0A=
=0A=
--></style>=0A=
<div dir=3D"ltr">Hi jessica=2C<br>I will try with SSH too=2C<br>but for now=
 it seems there are some bugs with "packages_deb " being the primary packag=
ing scheme.<br>so apart from adding <br>&nbsp=3B&nbsp=3B&nbsp=3B IMAGE_INST=
ALL_append =3D " tcf-agent"<br><br>moving "packages_rpm" to be the primary =
scheme ended up succeeding in making an image that had tcf-agent included.<=
br><br>Thank you for your help.<br>I will post back when I generate an imag=
e with openssh (I have dropbear enabled ATM). <br><br><div><hr id=3D"ecxsto=
pSpelling">From: jessica.zhang@intel.com<br>To: djnass_18@hotmail.com=3B me=
ta-freescale@yoctoproject.org=3B yocto@yoctoproject.org<br>Subject: RE: [yo=
cto] cannot bitbake/build.compile tcf-agent for use with fsl-image-gui-sdk<=
br>Date: Wed=2C 19 Jun 2013 16:25:03 +0000<br><br>=0A=
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
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">I don=
=92t know why tcf-agent&nbsp=3B is not included in your sdk image.&nbsp=3B =
But you also can use ssh to create a rse remote connection that allows you =
to do remote interaction.=0A=
 &nbsp=3BWhen you create remote connection=2C instead of choosing tcf=2C us=
e ssh.&nbsp=3B You=92ll need openssh in your target image for this to work.=
</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">&nbsp=
=3B</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bcolor:#1F497D=3B">Cheer=
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
<b>Sent:</b> Tuesday=2C June 18=2C 2013 6:56 AM<br>=0A=
<b>To:</b> meta-freescale@yoctoproject.org=3B yocto@yoctoproject.org<br>=0A=
<b>Subject:</b> [yocto] cannot bitbake/build.compile tcf-agent for use with=
 fsl-image-gui-sdk</span></p>=0A=
</div>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal">&nbsp=3B</p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2C&quot=3Bsans-serif&quot=3B=3B">Hello everyone=2C<br>=0A=
it seems tcf-agent is not provided. Not even in the -sdk image I created. A=
nd that is where my problems start:<br>=0A=
<br>=0A=
using this in my local.conf: IMAGE_INSTALL_append =3D " tcf-agent"<br>=0A=
I expected to be able to automate the process of generating the tcf-agent a=
nd deploying it in my image with command:</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:10.0pt=3Bfont-family:&qu=
ot=3BCourier New&quot=3B=3B">bitbake fsl-image-gui-sdk</span><span style=3D=
"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"></spa=
n></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
this fails with:</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:10.0pt=3Bfont-family:&qu=
ot=3BCourier New&quot=3B=3B">| Reading package lists...</span><span style=
=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"><b=
r>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">| Building dependency tree...</span><span style=3D"font-family:&q=
uot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">| Reading state information...</span><span style=3D"font-family:&=
quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">| Some packages could not be installed. This may mean that you ha=
ve</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-=
serif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">| requested an impossible situation or if you are using the unsta=
ble</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans=
-serif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">| distribution that some required packages have not yet been crea=
ted</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans=
-serif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">| or been moved out of Incoming.</span><span style=3D"font-family=
:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">| The following information may help to resolve the situation:</s=
pan><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif=
&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">| </span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&qu=
ot=3Bsans-serif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">| The following packages have unmet dependencies:</span><span sty=
le=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B">=
<br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">|&nbsp=3B packagegroup-core-x11-base : Depends: packagegroup-core=
-x11-utils but it is not going to be installed</span><span style=3D"font-fa=
mily:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">| W: Ignoring Provides line with DepCompareOp for package pkgconf=
ig__pkg-config__</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=
=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">| W: You may want to run apt-get update to correct these problems=
</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-se=
rif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">| E: Unable to correct problems=2C you have held broken packages.=
</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-se=
rif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">| ERROR: Function failed: do_rootfs (see /home/nass/yocto/build/t=
mp/work/imx6qsabrelite-poky-linux-gnueabi/fsl-image-gui-sdk/1.0-r0/temp/log=
.do_rootfs.26945 for further information)</span><span style=3D"font-family:=
&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">ERROR: Task 7 (/home/nass/yocto/sources/meta-fsl-demos/recipes-fs=
l/images/fsl-image-gui-sdk.bb=2C do_rootfs) failed with exit code '1'</span=
><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&qu=
ot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">NOTE: Tasks Summary: Attempted 7418 tasks of which 7417 didn't ne=
ed to be rerun and 1 failed.</span><span style=3D"font-family:&quot=3BCalib=
ri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">No currently running tasks (7417 of 7419)</span><span style=3D"fo=
nt-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
<br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">Summary: 1 task failed:</span><span style=3D"font-family:&quot=3B=
Calibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">&nbsp=3B /home/nass/yocto/sources/meta-fsl-demos/recipes-fsl/imag=
es/fsl-image-gui-sdk.bb=2C do_rootfs</span><span style=3D"font-family:&quot=
=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">Summary: There was 1 ERROR message shown=2C returning a non-zero =
exit code.</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=
=3Bsans-serif&quot=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
<br>=0A=
I then went on to try and compile it manually:</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:10.0pt=3Bfont-family:&qu=
ot=3BCourier New&quot=3B=3B">bitbake fsl-image-gui-sdk -c compile tcf-agent=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCalibri&quot=
=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">bitbake fsl-image-gui-sdk -c deploy</span><span style=3D"font-fam=
ily:&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
this fails with:</span></p>=0A=
<p class=3D"ecxMsoNormal" style=3D""><span style=3D"font-size:10.0pt=3Bfont=
-family:&quot=3BCourier New&quot=3B=3B">ERROR: Task do_deploy does not exis=
t for target fsl-image-gui-sdk</span><span style=3D"font-family:&quot=3BCal=
ibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2C&quot=3Bsans-serif&quot=3B=3B">Then I tried compiling it manually usi=
ng this info=0A=
<a href=3D"http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.h=
tml#getting-the-images" target=3D"_blank">=0A=
http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#getting=
-the-images</a> =2C by sourcing my toolchain from /opt/poky/1.4.1/env* file=
=2C and then<br>=0A=
runnning 'make' in org.eclipse.tcf.agent/agent/ . I explicitly assign the $=
MACHINE variable to be 'arm' in the beginning of the Makefile.inc.<br>=0A=
<br>=0A=
this fails with</span></p>=0A=
<p class=3D"ecxMsoNormal" style=3D""><span style=3D"font-size:10.0pt=3Bfont=
-family:&quot=3BCourier New&quot=3B=3B">arm-poky-linux-gnueabi-gcc&nbsp=3B =
-march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon --sysr=
oot=3D/opt/poky/1.4.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi&nbsp=3B=
=0A=
 -O2 -pipe -g -feliminate-unused-debug-types -g -D_FILE_OFFSET_BITS=3D64 -W=
all -Wmissing-prototypes -I./. -I./system/GNU/Linux -I./machine/arm -o obj/=
GNU/Linux/arm/Debug/tcf/framework/channel_tcp.o -c tcf/framework/channel_tc=
p.c</span><span style=3D"font-family:&quot=3BCalibri&quot=3B=2C&quot=3Bsans=
-serif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">tcf/framework/channel_tcp.c:38:27: fatal error: openssl/ssl.h: No=
 such file or directory</span><span style=3D"font-family:&quot=3BCalibri&qu=
ot=3B=2C&quot=3Bsans-serif&quot=3B=3B"><br>=0A=
</span><span style=3D"font-size:10.0pt=3Bfont-family:&quot=3BCourier New&qu=
ot=3B=3B">compilation terminated.</span><span style=3D"font-family:&quot=3B=
Calibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3B"></span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2C&quot=3Bsans-serif&quot=3B=3B">&nbsp=3B<br>=0A=
At this point I have run out of ideas about how to prepare tcf-agent to ins=
tall on my sabrelite fsl-image-gui-sdk rootfs....<br>=0A=
Any help would be most welcome.<br>=0A=
<br>=0A=
for example in the 1st case how could I run apt-get as is suggested in a ma=
nner that would be appropriate to update yocto sources?<br>=0A=
<br>=0A=
Thank you.</span></p>=0A=
</div>=0A=
</div></div> 		 	   		  </div></div> 		 	   		  </div></body>
</html>=

--_aa2a76ae-76bb-4331-9453-c7438709cac6_--
