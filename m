Return-Path: <djnass_18@hotmail.com>
Received: from dub0-omc3-s4.dub0.hotmail.com (dub0-omc3-s4.dub0.hotmail.com
	[157.55.2.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25611E01541;
	Tue, 18 Jun 2013 06:55:53 -0700 (PDT)
Received: from DUB116-W138 ([157.55.2.8]) by dub0-omc3-s4.dub0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Tue, 18 Jun 2013 06:55:51 -0700
X-TMN: [6R1WZk34SEXfSPa/aRoyxO8I7BiqE8xQHKEVKRQIiYE=]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB116-W138390BF0B4871C803B01A5988C0@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 18 Jun 2013 13:55:51 +0000
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 18 Jun 2013 13:55:51.0844 (UTC)
	FILETIME=[8B661640:01CE6C2B]
Subject: cannot bitbake/build.compile tcf-agent for use with fsl-image-gui-sdk
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
X-List-Received-Date: Tue, 18 Jun 2013 13:55:54 -0000
Content-Type: multipart/alternative;
	boundary="_df91afdd-be7b-4433-a96d-96c690a04aab_"

--_df91afdd-be7b-4433-a96d-96c690a04aab_
Content-Type: text/plain; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

Hello everyone=2C
it seems tcf-agent is not provided. Not even in the -sdk image I created. A=
nd that is where my problems start:

using this in my local.conf: IMAGE_INSTALL_append =3D " tcf-agent"
I expected to be able to automate the process of generating the tcf-agent a=
nd deploying it in my image with command:
bitbake fsl-image-gui-sdk

this fails with:
| Reading package lists...
| Building dependency tree...
| Reading state information...
| Some packages could not be installed. This may mean that you have
| requested an impossible situation or if you are using the unstable
| distribution that some required packages have not yet been created
| or been moved out of Incoming.
| The following information may help to resolve the situation:
|=20
| The following packages have unmet dependencies:
|  packagegroup-core-x11-base : Depends: packagegroup-core-x11-utils but it=
 is not going to be installed
| W: Ignoring Provides line with DepCompareOp for package pkgconfig__pkg-co=
nfig__
| W: You may want to run apt-get update to correct these problems
| E: Unable to correct problems=2C you have held broken packages.
| ERROR: Function failed: do_rootfs (see /home/nass/yocto/build/tmp/work/im=
x6qsabrelite-poky-linux-gnueabi/fsl-image-gui-sdk/1.0-r0/temp/log.do_rootfs=
.26945 for further information)
ERROR: Task 7 (/home/nass/yocto/sources/meta-fsl-demos/recipes-fsl/images/f=
sl-image-gui-sdk.bb=2C do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 7418 tasks of which 7417 didn't need to be r=
erun and 1 failed.
No currently running tasks (7417 of 7419)

Summary: 1 task failed:
  /home/nass/yocto/sources/meta-fsl-demos/recipes-fsl/images/fsl-image-gui-=
sdk.bb=2C do_rootfs
Summary: There was 1 ERROR message shown=2C returning a non-zero exit code.


I then went on to try and compile it manually:
bitbake fsl-image-gui-sdk -c compile tcf-agent
bitbake fsl-image-gui-sdk -c deploy

this fails with:
ERROR: Task do_deploy does not exist for target fsl-image-gui-sdk

Then I tried compiling it manually using this info http://www.yoctoproject.=
org/docs/current/adt-manual/adt-manual.html#getting-the-images =2C by sourc=
ing my toolchain from /opt/poky/1.4.1/env* file=2C and then
runnning 'make' in org.eclipse.tcf.agent/agent/ . I explicitly assign the $=
MACHINE variable to be 'arm' in the beginning of the Makefile.inc.

this fails with
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dsoftfp -mfpu=3Dneon --sysroot=3D/opt/poky/1.4.1/sysroots/armv7a-vfp-neon=
-poky-linux-gnueabi  -O2 -pipe -g -feliminate-unused-debug-types -g -D_FILE=
_OFFSET_BITS=3D64 -Wall -Wmissing-prototypes -I./. -I./system/GNU/Linux -I.=
/machine/arm -o obj/GNU/Linux/arm/Debug/tcf/framework/channel_tcp.o -c tcf/=
framework/channel_tcp.c
tcf/framework/channel_tcp.c:38:27: fatal error: openssl/ssl.h: No such file=
 or directory
compilation terminated.

=20
At this point I have run out of ideas about how to prepare tcf-agent to ins=
tall on my sabrelite fsl-image-gui-sdk rootfs....
Any help would be most welcome.

for example in the 1st case how could I run apt-get as is suggested in a ma=
nner that would be appropriate to update yocto sources?

Thank you.
 		 	   		  =

--_df91afdd-be7b-4433-a96d-96c690a04aab_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>Hello everyone=2C<br>it seems tc=
f-agent is not provided. Not even in the -sdk image I created. And that is =
where my problems start:<br><br>using this in my local.conf: IMAGE_INSTALL_=
append =3D " tcf-agent"<br>I expected to be able to automate the process of=
 generating the tcf-agent and deploying it in my image with command:<br><bl=
ockquote><font style=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2"=
>bitbake fsl-image-gui-sdk</font><font style=3D"font-size: 10pt=3B" face=3D=
"Courier New" size=3D"2"><br></font></blockquote><br>this fails with:<br><b=
lockquote><font style=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2=
">| Reading package lists...</font><br><font style=3D"font-size: 10pt=3B" f=
ace=3D"Courier New" size=3D"2">| Building dependency tree...</font><br><fon=
t style=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">| Reading st=
ate information...</font><br><font style=3D"font-size: 10pt=3B" face=3D"Cou=
rier New" size=3D"2">| Some packages could not be installed. This may mean =
that you have</font><br><font style=3D"font-size: 10pt=3B" face=3D"Courier =
New" size=3D"2">| requested an impossible situation or if you are using the=
 unstable</font><br><font style=3D"font-size: 10pt=3B" face=3D"Courier New"=
 size=3D"2">| distribution that some required packages have not yet been cr=
eated</font><br><font style=3D"font-size: 10pt=3B" face=3D"Courier New" siz=
e=3D"2">| or been moved out of Incoming.</font><br><font style=3D"font-size=
: 10pt=3B" face=3D"Courier New" size=3D"2">| The following information may =
help to resolve the situation:</font><br><font style=3D"font-size: 10pt=3B"=
 face=3D"Courier New" size=3D"2">| </font><br><font style=3D"font-size: 10p=
t=3B" face=3D"Courier New" size=3D"2">| The following packages have unmet d=
ependencies:</font><br><font style=3D"font-size: 10pt=3B" face=3D"Courier N=
ew" size=3D"2">|&nbsp=3B packagegroup-core-x11-base : Depends: packagegroup=
-core-x11-utils but it is not going to be installed</font><br><font style=
=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">| W: Ignoring Provi=
des line with DepCompareOp for package pkgconfig__pkg-config__</font><br><f=
ont style=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">| W: You m=
ay want to run apt-get update to correct these problems</font><br><font sty=
le=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">| E: Unable to co=
rrect problems=2C you have held broken packages.</font><br><font style=3D"f=
ont-size: 10pt=3B" face=3D"Courier New" size=3D"2">| ERROR: Function failed=
: do_rootfs (see /home/nass/yocto/build/tmp/work/imx6qsabrelite-poky-linux-=
gnueabi/fsl-image-gui-sdk/1.0-r0/temp/log.do_rootfs.26945 for further infor=
mation)</font><br><font style=3D"font-size: 10pt=3B" face=3D"Courier New" s=
ize=3D"2">ERROR: Task 7 (/home/nass/yocto/sources/meta-fsl-demos/recipes-fs=
l/images/fsl-image-gui-sdk.bb=2C do_rootfs) failed with exit code '1'</font=
><br><font style=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">NOT=
E: Tasks Summary: Attempted 7418 tasks of which 7417 didn't need to be reru=
n and 1 failed.</font><br><font style=3D"font-size: 10pt=3B" face=3D"Courie=
r New" size=3D"2">No currently running tasks (7417 of 7419)</font><br><br><=
font style=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">Summary: =
1 task failed:</font><br><font style=3D"font-size: 10pt=3B" face=3D"Courier=
 New" size=3D"2">&nbsp=3B /home/nass/yocto/sources/meta-fsl-demos/recipes-f=
sl/images/fsl-image-gui-sdk.bb=2C do_rootfs</font><br><font style=3D"font-s=
ize: 10pt=3B" face=3D"Courier New" size=3D"2">Summary: There was 1 ERROR me=
ssage shown=2C returning a non-zero exit code.</font><br></blockquote><br><=
br>I then went on to try and compile it manually:<br><blockquote><font styl=
e=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">bitbake fsl-image-=
gui-sdk -c compile tcf-agent</font><font style=3D"font-size: 10pt=3B" size=
=3D"2"><br></font><font style=3D"font-size: 10pt=3B" face=3D"Courier New" s=
ize=3D"2">bitbake fsl-image-gui-sdk -c deploy</font><font style=3D"font-siz=
e: 10pt=3B" size=3D"2"><br></font></blockquote><br>this fails with:<br><blo=
ckquote><font style=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">=
ERROR: Task do_deploy does not exist for target fsl-image-gui-sdk</font><fo=
nt style=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2"><br><br></f=
ont></blockquote>Then I tried compiling it manually using this info <a href=
=3D"http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#get=
ting-the-images" target=3D"_blank">http://www.yoctoproject.org/docs/current=
/adt-manual/adt-manual.html#getting-the-images</a> =2C by sourcing my toolc=
hain from /opt/poky/1.4.1/env* file=2C and then<br>runnning 'make' in org.e=
clipse.tcf.agent/agent/ . I explicitly assign the $MACHINE variable to be '=
arm' in the beginning of the Makefile.inc.<br><br>this fails with<br><block=
quote><font style=3D"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">ar=
m-poky-linux-gnueabi-gcc&nbsp=3B -march=3Darmv7-a -mthumb-interwork -mfloat=
-abi=3Dsoftfp -mfpu=3Dneon --sysroot=3D/opt/poky/1.4.1/sysroots/armv7a-vfp-=
neon-poky-linux-gnueabi&nbsp=3B -O2 -pipe -g -feliminate-unused-debug-types=
 -g -D_FILE_OFFSET_BITS=3D64 -Wall -Wmissing-prototypes -I./. -I./system/GN=
U/Linux -I./machine/arm -o obj/GNU/Linux/arm/Debug/tcf/framework/channel_tc=
p.o -c tcf/framework/channel_tcp.c</font><br><font style=3D"font-size: 10pt=
=3B" face=3D"Courier New" size=3D"2">tcf/framework/channel_tcp.c:38:27: fat=
al error: openssl/ssl.h: No such file or directory</font><br><font style=3D=
"font-size: 10pt=3B" face=3D"Courier New" size=3D"2">compilation terminated=
.</font><br><br></blockquote><font style=3D"" face=3D"Calibri">&nbsp=3B</fo=
nt><font style=3D"" face=3D"Calibri"><br></font>At this point I have run ou=
t of ideas about how to prepare tcf-agent to install on my sabrelite fsl-im=
age-gui-sdk rootfs....<br>Any help would be most welcome.<br><br>for exampl=
e in the 1st case how could I run apt-get as is suggested in a manner that =
would be appropriate to update yocto sources?<br><br>Thank you.<br> 		 	   =
		  </div></body>
</html>=

--_df91afdd-be7b-4433-a96d-96c690a04aab_--
