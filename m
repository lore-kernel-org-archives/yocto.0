Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41150E01541;
	Tue, 18 Jun 2013 08:24:04 -0700 (PDT)
Received: by mail-pd0-f171.google.com with SMTP id y14so4066588pdi.16
	for <multiple recipients>; Tue, 18 Jun 2013 08:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:mime-version:in-reply-to:content-type
	:content-transfer-encoding:message-id:cc:x-mailer:from:subject:date
	:to; bh=oRo2ZBGYpXg8oB8CK7x0YcUzoo9KUq80qW4dii9wKns=;
	b=kQfOA6cKK+DAMkQY0ddjaD6W6YacMckiqTqW08/tfgwpFEzYD0o2QJCZUq/b3Zen35
	D/kt3vL4D6qh9EJ2Hk7ksk5dH+F9S5dcXMKOkS2Ov47jsx6ZkNCVSNXUHLLDnBcHsxPB
	Aj3B3+u8o02Qmk72P1ArzQAI+WfxJeQ0OeW2EGyczwGSmiMGv7G81hC41G7Sh7AVh76v
	MjxXqWZbeioiMbbNgbWRhCKXLdaiVbr+HUzndM5EVtIIEwVTuayKKBgJC6jCV2oD3Xk7
	xqr7ulXzGd1WW9aZL3vjKc93UL4haG7dt7h3wIwFKKX8GrylJ9ykUmX3Avk3RP6MMvpO
	W1vw==
X-Received: by 10.68.235.103 with SMTP id ul7mr9823358pbc.14.1371569044169;
	Tue, 18 Jun 2013 08:24:04 -0700 (PDT)
Received: from [192.168.0.6] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209]) by mx.google.com with ESMTPSA id
	ix3sm18689465pbc.37.2013.06.18.08.24.02 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 18 Jun 2013 08:24:03 -0700 (PDT)
References: <DUB116-W138390BF0B4871C803B01A5988C0@phx.gbl>
Mime-Version: 1.0 (1.0)
In-Reply-To: <DUB116-W138390BF0B4871C803B01A5988C0@phx.gbl>
Message-Id: <C25AF55E-9B30-43AC-B8BF-A648E791F298@gmail.com>
X-Mailer: iPad Mail (10B329)
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 18 Jun 2013 08:24:04 -0700
To: Thanassis Silis <djnass_18@hotmail.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: cannot bitbake/build.compile tcf-agent for use with fsl-image-gui-sdk
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
X-List-Received-Date: Tue, 18 Jun 2013 15:24:05 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-4B65D39C-284E-4F9A-91B0-4BEE3BA55E4B
Content-Transfer-Encoding: 7bit

--Apple-Mail-4B65D39C-284E-4F9A-91B0-4BEE3BA55E4B
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable



On Jun 18, 2013, at 6:55 AM, Thanassis Silis <djnass_18@hotmail.com> wrote:

> Hello everyone,
> it seems tcf-agent is not provided. Not even in the -sdk image I created. A=
nd that is where my problems start:
>=20
> using this in my local.conf: IMAGE_INSTALL_append =3D " tcf-agent"
> I expected to be able to automate the process of generating the tcf-agent a=
nd deploying it in my image with command:
> bitbake fsl-image-gui-sdk
>=20
> this fails with:
> | Reading package lists...
> | Building dependency tree...
> | Reading state information...
> | Some packages could not be installed. This may mean that you have
> | requested an impossible situation or if you are using the unstable
> | distribution that some required packages have not yet been created
> | or been moved out of Incoming.
> | The following information may help to resolve the situation:
> |=20
> | The following packages have unmet dependencies:
> |  packagegroup-core-x11-base : Depends: packagegroup-core-x11-utils but i=
t is not going to be installed
> | W: Ignoring Provides line with DepCompareOp for package pkgconfig__pkg-c=
onfig__
> | W: You may want to run apt-get update to correct these problems
> | E: Unable to correct problems, you have held broken packages.
> | ERROR: Function failed: do_rootfs (see /home/nass/yocto/build/tmp/work/i=
mx6qsabrelite-poky-linux-gnueabi/fsl-image-gui-sdk/1.0-r0/temp/log.do_rootfs=
.26945 for further information)
> ERROR: Task 7 (/home/nass/yocto/sources/meta-fsl-demos/recipes-fsl/images/=
fsl-image-gui-sdk.bb, do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 7418 tasks of which 7417 didn't need to be r=
erun and 1 failed.
> No currently running tasks (7417 of 7419)
>=20
> Summary: 1 task failed:
>   /home/nass/yocto/sources/meta-fsl-demos/recipes-fsl/images/fsl-image-gui=
-sdk.bb, do_rootfs
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>=20
>=20
> I then went on to try and compile it manually:
> bitbake fsl-image-gui-sdk -c compile tcf-agent
> bitbake fsl-image-gui-sdk -c deploy
>=20
> this fails with:
> ERROR: Task do_deploy does not exist for target fsl-image-gui-sdk
>=20
> Then I tried compiling it manually using this info http://www.yoctoproject=
.org/docs/current/adt-manual/adt-manual.html#getting-the-images , by sourcin=
g my toolchain from /opt/poky/1.4.1/env* file, and then
> runnning 'make' in org.eclipse.tcf.agent/agent/ . I explicitly assign the $=
MACHINE variable to be 'arm' in the beginning of the Makefile.inc.
>=20
> this fails with
> arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dsoftfp -mfpu=3Dneon --sysroot=3D/opt/poky/1.4.1/sysroots/armv7a-vfp-neon-=
poky-linux-gnueabi  -O2 -pipe -g -feliminate-unused-debug-types -g -D_FILE_O=
FFSET_BITS=3D64 -Wall -Wmissing-prototypes -I./. -I./system/GNU/Linux -I./ma=
chine/arm -o obj/GNU/Linux/arm/Debug/tcf/framework/channel_tcp.o -c tcf/fram=
ework/channel_tcp.c
> tcf/framework/channel_tcp.c:38:27: fatal error: openssl/ssl.h: No such fil=
e or directory
> compilation terminated.
>=20


Seems a missing dep on OpenSSL btw does tcf-agent work on anything other tha=
n x86 ?

> =20
> At this point I have run out of ideas about how to prepare tcf-agent to in=
stall on my sabrelite fsl-image-gui-sdk rootfs....
> Any help would be most welcome.
>=20
> for example in the 1st case how could I run apt-get as is suggested in a m=
anner that would be appropriate to update yocto sources?
>=20
> Thank you.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-4B65D39C-284E-4F9A-91B0-4BEE3BA55E4B
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div><br></div><div><br>On Jun 18, 2013, at=
 6:55 AM, Thanassis Silis &lt;<a href=3D"mailto:djnass_18@hotmail.com">djnas=
s_18@hotmail.com</a>&gt; wrote:<br><br></div><blockquote type=3D"cite"><div>=


<style><!--
.hmmessage P
{
margin:0px;
padding:0px
}
body.hmmessage
{
font-size: 12pt;
font-family:Calibri
}
--></style>
<div dir=3D"ltr">Hello everyone,<br>it seems tcf-agent is not provided. Not e=
ven in the -sdk image I created. And that is where my problems start:<br><br=
>using this in my local.conf: IMAGE_INSTALL_append =3D " tcf-agent"<br>I exp=
ected to be able to automate the process of generating the tcf-agent and dep=
loying it in my image with command:<br><blockquote><font style=3D"font-size:=
 10pt;" face=3D"Courier New" size=3D"2">bitbake fsl-image-gui-sdk</font><fon=
t style=3D"font-size: 10pt;" face=3D"Courier New" size=3D"2"><br></font></bl=
ockquote><br>this fails with:<br><blockquote><font style=3D"font-size: 10pt;=
" face=3D"Courier New" size=3D"2">| Reading package lists...</font><br><font=
 style=3D"font-size: 10pt;" face=3D"Courier New" size=3D"2">| Building depen=
dency tree...</font><br><font style=3D"font-size: 10pt;" face=3D"Courier New=
" size=3D"2">| Reading state information...</font><br><font style=3D"font-si=
ze: 10pt;" face=3D"Courier New" size=3D"2">| Some packages could not be inst=
alled. This may mean that you have</font><br><font style=3D"font-size: 10pt;=
" face=3D"Courier New" size=3D"2">| requested an impossible situation or if y=
ou are using the unstable</font><br><font style=3D"font-size: 10pt;" face=3D=
"Courier New" size=3D"2">| distribution that some required packages have not=
 yet been created</font><br><font style=3D"font-size: 10pt;" face=3D"Courier=
 New" size=3D"2">| or been moved out of Incoming.</font><br><font style=3D"f=
ont-size: 10pt;" face=3D"Courier New" size=3D"2">| The following information=
 may help to resolve the situation:</font><br><font style=3D"font-size: 10pt=
;" face=3D"Courier New" size=3D"2">| </font><br><font style=3D"font-size: 10=
pt;" face=3D"Courier New" size=3D"2">| The following packages have unmet dep=
endencies:</font><br><font style=3D"font-size: 10pt;" face=3D"Courier New" s=
ize=3D"2">|&nbsp; packagegroup-core-x11-base : Depends: packagegroup-core-x1=
1-utils but it is not going to be installed</font><br><font style=3D"font-si=
ze: 10pt;" face=3D"Courier New" size=3D"2">| W: Ignoring Provides line with D=
epCompareOp for package pkgconfig__pkg-config__</font><br><font style=3D"fon=
t-size: 10pt;" face=3D"Courier New" size=3D"2">| W: You may want to run apt-=
get update to correct these problems</font><br><font style=3D"font-size: 10p=
t;" face=3D"Courier New" size=3D"2">| E: Unable to correct problems, you hav=
e held broken packages.</font><br><font style=3D"font-size: 10pt;" face=3D"C=
ourier New" size=3D"2">| ERROR: Function failed: do_rootfs (see /home/nass/y=
octo/build/tmp/work/imx6qsabrelite-poky-linux-gnueabi/fsl-image-gui-sdk/1.0-=
r0/temp/log.do_rootfs.26945 for further information)</font><br><font style=3D=
"font-size: 10pt;" face=3D"Courier New" size=3D"2">ERROR: Task 7 (/home/nass=
/yocto/sources/meta-fsl-demos/recipes-fsl/images/fsl-image-gui-sdk.bb, do_ro=
otfs) failed with exit code '1'</font><br><font style=3D"font-size: 10pt;" f=
ace=3D"Courier New" size=3D"2">NOTE: Tasks Summary: Attempted 7418 tasks of w=
hich 7417 didn't need to be rerun and 1 failed.</font><br><font style=3D"fon=
t-size: 10pt;" face=3D"Courier New" size=3D"2">No currently running tasks (7=
417 of 7419)</font><br><br><font style=3D"font-size: 10pt;" face=3D"Courier N=
ew" size=3D"2">Summary: 1 task failed:</font><br><font style=3D"font-size: 1=
0pt;" face=3D"Courier New" size=3D"2">&nbsp; /home/nass/yocto/sources/meta-f=
sl-demos/recipes-fsl/images/fsl-image-gui-sdk.bb, do_rootfs</font><br><font s=
tyle=3D"font-size: 10pt;" face=3D"Courier New" size=3D"2">Summary: There was=
 1 ERROR message shown, returning a non-zero exit code.</font><br></blockquo=
te><br><br>I then went on to try and compile it manually:<br><blockquote><fo=
nt style=3D"font-size: 10pt;" face=3D"Courier New" size=3D"2">bitbake fsl-im=
age-gui-sdk -c compile tcf-agent</font><font style=3D"font-size: 10pt;" size=
=3D"2"><br></font><font style=3D"font-size: 10pt;" face=3D"Courier New" size=
=3D"2">bitbake fsl-image-gui-sdk -c deploy</font><font style=3D"font-size: 1=
0pt;" size=3D"2"><br></font></blockquote><br>this fails with:<br><blockquote=
><font style=3D"font-size: 10pt;" face=3D"Courier New" size=3D"2">ERROR: Tas=
k do_deploy does not exist for target fsl-image-gui-sdk</font><font style=3D=
"font-size: 10pt;" face=3D"Courier New" size=3D"2"><br><br></font></blockquo=
te>Then I tried compiling it manually using this info <a href=3D"http://www.=
yoctoproject.org/docs/current/adt-manual/adt-manual.html#getting-the-images"=
 target=3D"_blank">http://www.yoctoproject.org/docs/current/adt-manual/adt-m=
anual.html#getting-the-images</a> , by sourcing my toolchain from /opt/poky/=
1.4.1/env* file, and then<br>runnning 'make' in org.eclipse.tcf.agent/agent/=
 . I explicitly assign the $MACHINE variable to be 'arm' in the beginning of=
 the Makefile.inc.<br><br>this fails with<br><blockquote><font style=3D"font=
-size: 10pt;" face=3D"Courier New" size=3D"2">arm-poky-linux-gnueabi-gcc&nbs=
p; -march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dsoftfp -mfpu=3Dneon --sy=
sroot=3D/opt/poky/1.4.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi&nbsp; -O=
2 -pipe -g -feliminate-unused-debug-types -g -D_FILE_OFFSET_BITS=3D64 -Wall -=
Wmissing-prototypes -I./. -I./system/GNU/Linux -I./machine/arm -o obj/GNU/Li=
nux/arm/Debug/tcf/framework/channel_tcp.o -c tcf/framework/channel_tcp.c</fo=
nt><br><font style=3D"font-size: 10pt;" face=3D"Courier New" size=3D"2">tcf/=
framework/channel_tcp.c:38:27: fatal error: openssl/ssl.h: No such file or d=
irectory</font><br><font style=3D"font-size: 10pt;" face=3D"Courier New" siz=
e=3D"2">compilation terminated.</font><br><br></blockquote></div></div></blo=
ckquote><div><br></div><div><br></div>Seems a missing dep on OpenSSL btw doe=
s tcf-agent work on anything other than x86 ?<div><br><div><blockquote type=3D=
"cite"><div><div dir=3D"ltr"><font style=3D"" face=3D"Calibri">&nbsp;</font>=
<font style=3D"" face=3D"Calibri"><br></font>At this point I have run out of=
 ideas about how to prepare tcf-agent to install on my sabrelite fsl-image-g=
ui-sdk rootfs....<br>Any help would be most welcome.<br><br>for example in t=
he 1st case how could I run apt-get as is suggested in a manner that would b=
e appropriate to update yocto sources?<br><br>Thank you.<br> 		 =
	   		  </div>
</div></blockquote><blockquote type=3D"cite"><div><span>____________________=
___________________________</span><br><span>yocto mailing list</span><br><sp=
an><a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a></spa=
n><br><span><a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https:=
//lists.yoctoproject.org/listinfo/yocto</a></span><br></div></blockquote></d=
iv></div></body></html>=

--Apple-Mail-4B65D39C-284E-4F9A-91B0-4BEE3BA55E4B--
