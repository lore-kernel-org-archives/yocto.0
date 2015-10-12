Return-Path: <djnass_18@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 043E1E00957; Mon, 12 Oct 2015 12:04:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (djnass_18[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.0.225 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 Oct 2015 12:03:57 PDT
Received: from DUB004-OMC1S26.hotmail.com (dub004-omc1s26.hotmail.com
	[157.55.0.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3B57E00957
	for <yocto@yoctoproject.org>; Mon, 12 Oct 2015 12:03:57 -0700 (PDT)
Received: from DUB128-W75 ([157.55.0.239]) by DUB004-OMC1S26.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Mon, 12 Oct 2015 12:02:55 -0700
X-TMN: [ndaoD6SYeW3Jg2MUcS1KACLuwzK3n1lr]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB128-W75D018E784AB715F2EE5C798310@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: Christopher Larson <clarson@kergoth.com>
Date: Mon, 12 Oct 2015 19:02:55 +0000
Importance: Normal
In-Reply-To: <CABcZANmyWji+iYZ8zoBBEbQ9c=t0xBUd0fgGXGE_1kU5i4xXJA@mail.gmail.com>
References: <DUB128-W3890E99CA3478F4E8A991D98310@phx.gbl>,
	<DUB128-W14F5A73F31F2C4FA1E3DB798310@phx.gbl>,
	<CABcZANmyWji+iYZ8zoBBEbQ9c=t0xBUd0fgGXGE_1kU5i4xXJA@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 12 Oct 2015 19:02:55.0614 (UTC)
	FILETIME=[9A4AC9E0:01D10520]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FW: packages are compiled but not included in the final image
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
X-List-Received-Date: Mon, 12 Oct 2015 19:04:01 -0000
Content-Type: multipart/alternative;
	boundary="_c802d020-e79e-42fb-a081-eb99f6b78158_"

--_c802d020-e79e-42fb-a081-eb99f6b78158_
Content-Type: text/plain; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

=0A=
=0A=
=0A=
Hi Christopher=2C
thank you for the quick response. may I ask the following as well:

i am attempting to include "lmsensors"  as well as a CORE_IMAGE_EXTRA_INSTA=
LL.=20
I get errors while do_rootfs() runs

Error: lmsensors not found in the base feeds (imx6qsabrelite armv7a-vfp-neo=
n armv7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e armv5-vfp armv5 armv4=
 arm noarch any all).
| ERROR: Function failed: do_rootfs (see /mnt/hd/nassdata/yocto/fsl-communi=
ty-bsp/build/tmp/work/imx6qsabrelite-poky-linux-gnueabi/fsl-image-test/1.0-=
r0/temp/log.do_rootfs.16989 for further information)
ERROR: Task 7 (/mnt/hd/nassdata/yocto/fsl-community-bsp/sources/meta-fsl-de=
mos/recipes-fsl/images/fsl-image-test.bb=2C do_rootfs) failed with exit cod=
e '1'
NOTE: Tasks Summary: Attempted 5692 tasks of which 5690 didn't need to be r=
erun and 1 failed.
No currently running tasks (5691 of 5693)

it doesn't seem to be accepted but the log is not particularly informative.=
=20
In other cases that i googled it seemed that setting

ALLOW_EMPTY_${PN}-dbg =3D "1"
ALLOW_EMPTY_${PN}-dev =3D "1"

in sources/poky/meta/conf/bitbake.conf solved their issues. But these are a=
lready set in my case.



From: clarson@kergoth.com
Date: Mon=2C 12 Oct 2015 11:06:32 -0700
Subject: Re: [yocto] FW: packages are compiled but not included in the fina=
l image
To: djnass_18@hotmail.com
CC: yocto@yoctoproject.org


On Mon=2C Oct 12=2C 2015 at 10:08 AM=2C Thanassis Silis <djnass_18@hotmail.=
com> wrote:
From: djnass_18@hotmail.com
To: yocto-bounces@yoctoproject.org
Subject: [yocto] packages are compiled but not included in the final image
Date: Mon=2C 12 Oct 2015 16:53:51 +0000

=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
Hi all=2C
I am attempting to add a few executables that are not there by default in a=
 "core-image-base" image.

so my conf/local.conf looks like

MACHINE ??=3D 'imx6qsabrelite'
#after version 1.5=2C use
#MACHINE ??=3D 'nitrogen6x'

DISTRO ?=3D 'poky'
PACKAGE_CLASSES ?=3D "package_rpm package_ipk package_deb"

#dev see http://www.yoctoproject.org/docs/1.8/mega-manual/mega-manual.html
EXTRA_IMAGE_FEATURES =3D " debug-tweaks "
EXTRA_IMAGE_FEATURES +=3D " package-management  "
EXTRA_IMAGE_FEATURES +=3D " ssh-server-openssh lmsensors "

USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
PATCHRESOLVE =3D "noop"
BB_DISKMON_DIRS =3D "\
    STOPTASKS=2C${TMPDIR}=2C1G=2C100K \
    STOPTASKS=2C${DL_DIR}=2C1G=2C100K \
    STOPTASKS=2C${SSTATE_DIR}=2C1G=2C100K \
    ABORT=2C${TMPDIR}=2C100M=2C1K \
    ABORT=2C${DL_DIR}=2C100M=2C1K \
    ABORT=2C${SSTATE_DIR}=2C100M=2C1K"=20
CONF_VERSION =3D "1"

BB_NUMBER_THREADS =3D '2'
PARALLEL_MAKE =3D '-j 2'
ACCEPT_FSL_EULA =3D ""


#webserver
CORE_IMAGE_EXTRA_INSTALL +=3D " apache2 php "

CORE_IMAGE_EXTRA_INSTALL +=3D " rrdtool bc screen ntp minicom  "

The image has been created but I have the following problems.

while ntpd has been installed on the image and works fine=2C the executable=
 ntpdate is NOT there.
bash is also missing from core-image-base . is that to be expected? Should =
I add it as a CORE_IMAGE_EXTRA_INSTALL or as an EXTRA_IMAGE_FEATURE ?
Yes=2C that's expected=2C busybox is used by default. Add bash yourself if =
you want it=2C or use a different image.
For ntpdate=2C it's split out into its own package=2C so add 'ntpdate' to C=
ORE_IMAGE_EXTRA_INSTALL as well if you want that.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake=2C OpenEmbedded=2C OpenZaurus
Maintainer - Tslib
Senior Software Engineer=2C Mentor Graphics=0A=
=0A=
 		 	   		  =

--_c802d020-e79e-42fb-a081-eb99f6b78158_
Content-Type: text/html; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
</head>
<body class=3D'hmmessage'><div dir=3D'ltr'>=0A=
=0A=
<style><!--=0A=
.hmmessage P=0A=
{=0A=
margin:0px=3B=0A=
padding:0px=0A=
}=0A=
body.hmmessage=0A=
{=0A=
font-size: 12pt=3B=0A=
font-family:Calibri=0A=
}=0A=
--></style>=0A=
<div dir=3D"ltr">Hi Christopher=2C<br>thank you for the quick response. may=
 I ask the following as well:<br><br>i am attempting to include "lmsensors"=
&nbsp=3B as well as a CORE_IMAGE_EXTRA_INSTALL. <br>I get errors while do_r=
ootfs() runs<br><br>Error: lmsensors not found in the base feeds (imx6qsabr=
elite armv7a-vfp-neon armv7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e a=
rmv5-vfp armv5 armv4 arm noarch any all).<br>| ERROR: Function failed: do_r=
ootfs (see /mnt/hd/nassdata/yocto/fsl-community-bsp/build/tmp/work/imx6qsab=
relite-poky-linux-gnueabi/fsl-image-test/1.0-r0/temp/log.do_rootfs.16989 fo=
r further information)<br>ERROR: Task 7 (/mnt/hd/nassdata/yocto/fsl-communi=
ty-bsp/sources/meta-fsl-demos/recipes-fsl/images/fsl-image-test.bb=2C do_ro=
otfs) failed with exit code '1'<br>NOTE: Tasks Summary: Attempted 5692 task=
s of which 5690 didn't need to be rerun and 1 failed.<br>No currently runni=
ng tasks (5691 of 5693)<br><br>it doesn't seem to be accepted but the log i=
s not particularly informative. <br>In other cases that i googled it seemed=
 that setting<br><br>ALLOW_EMPTY_${PN}-dbg =3D "1"<br>ALLOW_EMPTY_${PN}-dev=
 =3D "1"<br><br>in sources/poky/meta/conf/bitbake.conf solved their issues.=
 But these are already set in my case.<br><br><br><br><div><hr id=3D"stopSp=
elling">From: clarson@kergoth.com<br>Date: Mon=2C 12 Oct 2015 11:06:32 -070=
0<br>Subject: Re: [yocto] FW: packages are compiled but not included in the=
 final image<br>To: djnass_18@hotmail.com<br>CC: yocto@yoctoproject.org<br>=
<br><div dir=3D"ltr"><div class=3D"ecxgmail_extra"><br><div class=3D"ecxgma=
il_quote">On Mon=2C Oct 12=2C 2015 at 10:08 AM=2C Thanassis Silis <span dir=
=3D"ltr">&lt=3B<a href=3D"mailto:djnass_18@hotmail.com" target=3D"_blank">d=
jnass_18@hotmail.com</a>&gt=3B</span> wrote:<br><blockquote class=3D"ecxgma=
il_quote" style=3D"border-left:1px #ccc solid=3Bpadding-left:1ex=3B"><div>F=
rom: <a href=3D"mailto:djnass_18@hotmail.com" target=3D"_blank">djnass_18@h=
otmail.com</a><br>To: <a href=3D"mailto:yocto-bounces@yoctoproject.org" tar=
get=3D"_blank">yocto-bounces@yoctoproject.org</a><br>Subject: [yocto] packa=
ges are compiled but not included in the final image<br>Date: Mon=2C 12 Oct=
 2015 16:53:51 +0000<br><br>=0A=
=0A=
=0A=
<div dir=3D"ltr">=0A=
=0A=
=0A=
<div dir=3D"ltr">Hi all=2C<br>I am attempting to add a few executables that=
 are not there by default in a "core-image-base" image.<br><br>so my conf/l=
ocal.conf looks like<br><br><blockquote><font face=3D"Courier New=2Csans-se=
rif">MACHINE ??=3D 'imx6qsabrelite'</font><font face=3D"Courier New=2Csans-=
serif"><br></font><font face=3D"Courier New=2Csans-serif">#after version 1.=
5=2C use</font><font face=3D"Courier New=2Csans-serif"><br></font><font fac=
e=3D"Courier New=2Csans-serif">#MACHINE ??=3D 'nitrogen6x'</font><font face=
=3D"Courier New=2Csans-serif"><br></font><font face=3D"Courier New=2Csans-s=
erif"><br></font><font face=3D"Courier New=2Csans-serif">DISTRO ?=3D 'poky'=
</font><font face=3D"Courier New=2Csans-serif"><br></font><font face=3D"Cou=
rier New=2Csans-serif">PACKAGE_CLASSES ?=3D "package_rpm package_ipk packag=
e_deb"</font><font face=3D"Courier New=2Csans-serif"><br></font><font face=
=3D"Courier New=2Csans-serif"><br></font><font face=3D"Courier New=2Csans-s=
erif">#dev see <a href=3D"http://www.yoctoproject.org/docs/1.8/mega-manual/=
mega-manual.html" target=3D"_blank">http://www.yoctoproject.org/docs/1.8/me=
ga-manual/mega-manual.html</a></font><font face=3D"Courier New=2Csans-serif=
"><br></font><font face=3D"Courier New=2Csans-serif">EXTRA_IMAGE_FEATURES =
=3D " debug-tweaks "</font><font face=3D"Courier New=2Csans-serif"><br></fo=
nt><font face=3D"Courier New=2Csans-serif">EXTRA_IMAGE_FEATURES +=3D " pack=
age-management&nbsp=3B "</font><font face=3D"Courier New=2Csans-serif"><br>=
</font><font face=3D"Courier New=2Csans-serif">EXTRA_IMAGE_FEATURES +=3D " =
ssh-server-openssh </font><font face=3D"Courier New=2Csans-serif"><font fac=
e=3D"Courier New=2Csans-serif"><font face=3D"Courier New=2Csans-serif">lmse=
nsors</font></font> "</font><font face=3D"Courier New=2Csans-serif"><br></f=
ont><font face=3D"Courier New=2Csans-serif"><br></font><font face=3D"Courie=
r New=2Csans-serif">USER_CLASSES ?=3D "buildstats image-mklibs image-prelin=
k"</font><font face=3D"Courier New=2Csans-serif"><br></font><font face=3D"C=
ourier New=2Csans-serif">PATCHRESOLVE =3D "noop"</font><font face=3D"Courie=
r New=2Csans-serif"><br></font><font face=3D"Courier New=2Csans-serif">BB_D=
ISKMON_DIRS =3D "\</font><font face=3D"Courier New=2Csans-serif"><br></font=
><font face=3D"Courier New=2Csans-serif">&nbsp=3B&nbsp=3B&nbsp=3B STOPTASKS=
=2C${TMPDIR}=2C1G=2C100K \</font><font face=3D"Courier New=2Csans-serif"><b=
r></font><font face=3D"Courier New=2Csans-serif">&nbsp=3B&nbsp=3B&nbsp=3B S=
TOPTASKS=2C${DL_DIR}=2C1G=2C100K \</font><font face=3D"Courier New=2Csans-s=
erif"><br></font><font face=3D"Courier New=2Csans-serif">&nbsp=3B&nbsp=3B&n=
bsp=3B STOPTASKS=2C${SSTATE_DIR}=2C1G=2C100K \</font><font face=3D"Courier =
New=2Csans-serif"><br></font><font face=3D"Courier New=2Csans-serif">&nbsp=
=3B&nbsp=3B&nbsp=3B ABORT=2C${TMPDIR}=2C100M=2C1K \</font><font face=3D"Cou=
rier New=2Csans-serif"><br></font><font face=3D"Courier New=2Csans-serif">&=
nbsp=3B&nbsp=3B&nbsp=3B ABORT=2C${DL_DIR}=2C100M=2C1K \</font><font face=3D=
"Courier New=2Csans-serif"><br></font><font face=3D"Courier New=2Csans-seri=
f">&nbsp=3B&nbsp=3B&nbsp=3B ABORT=2C${SSTATE_DIR}=2C100M=2C1K" </font><font=
 face=3D"Courier New=2Csans-serif"><br></font><font face=3D"Courier New=2Cs=
ans-serif">CONF_VERSION =3D "1"</font><font face=3D"Courier New=2Csans-seri=
f"><br></font><font face=3D"Courier New=2Csans-serif"><br></font><font face=
=3D"Courier New=2Csans-serif">BB_NUMBER_THREADS =3D '2'</font><font face=3D=
"Courier New=2Csans-serif"><br></font><font face=3D"Courier New=2Csans-seri=
f">PARALLEL_MAKE =3D '-j 2'</font><font face=3D"Courier New=2Csans-serif"><=
br></font><font face=3D"Courier New=2Csans-serif">ACCEPT_FSL_EULA =3D ""</f=
ont><font face=3D"Courier New=2Csans-serif"><br></font><font face=3D"Courie=
r New=2Csans-serif"><br></font><font face=3D"Courier New=2Csans-serif"><br>=
</font><font face=3D"Courier New=2Csans-serif">#webserver</font><font face=
=3D"Courier New=2Csans-serif"><br></font><font face=3D"Courier New=2Csans-s=
erif">CORE_IMAGE_EXTRA_INSTALL +=3D " apache2 php "</font><font face=3D"Cou=
rier New=2Csans-serif"><br></font><font face=3D"Courier New=2Csans-serif"><=
br></font><font face=3D"Courier New=2Csans-serif">CORE_IMAGE_EXTRA_INSTALL =
+=3D " rrdtool bc screen ntp minicom&nbsp=3B</font><font face=3D"Courier Ne=
w=2Csans-serif"><font face=3D"Courier New=2Csans-serif"> </font>"</font><br=
><br></blockquote>The image has been created but I have the following probl=
ems.<br><br>while ntpd has been installed on the image and works fine=2C th=
e executable ntpdate is NOT there.<br>bash is also missing from core-image-=
base . is that to be expected? Should I add it as a CORE_IMAGE_EXTRA_INSTAL=
L or as an EXTRA_IMAGE_FEATURE ?</div></div></div></blockquote></div><br>Ye=
s=2C that's expected=2C busybox is used by default. Add bash yourself if yo=
u want it=2C or use a different image.</div><div class=3D"ecxgmail_extra"><=
br></div><div class=3D"ecxgmail_extra">For ntpdate=2C it's split out into i=
ts own package=2C so add 'ntpdate' to CORE_IMAGE_EXTRA_INSTALL as well if y=
ou want that.<br>-- <br><div class=3D"ecxgmail_signature">Christopher Larso=
n<br>clarson at kergoth dot com<br>Founder - BitBake=2C OpenEmbedded=2C Ope=
nZaurus<br>Maintainer - Tslib<br>Senior Software Engineer=2C Mentor Graphic=
s</div>=0A=
</div></div></div></div>=0A=
 		 	   		  </div></body>
</html>=

--_c802d020-e79e-42fb-a081-eb99f6b78158_--
