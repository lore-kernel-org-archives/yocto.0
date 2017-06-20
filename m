Return-Path: <charmi.suchak@volansystech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9169BE00B05; Tue, 20 Jun 2017 03:51:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E986FE009A0
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 03:51:10 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id g184so16927733ita.0
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 03:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=volansystech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=oc+fJCp0g6oXHeeEnY9pJagBCfq7HDLYCYdIjTvS6q4=;
	b=e5j/aulVSn23nwfLwLv2G4A822Bvucz8SCBrFEPl1eaHmcylLSX6xbH66Xrrcs670t
	NDfm5AxOaJjzRcJaLZ0jaxb2O/OQsdjPc8FiMx4AOTKARvZKZHDdweco+WRV1nXzRr5M
	vouWVbYRNzcA+5UWdq7AIypqtYzyiza3u+Sdpmawn/jmKFLBIXtlxBQ9VAF/fjYUPMHQ
	iU4ODCdS+x2CNDblHSp2E+0dwGSwqMw8t+THN1SH7mbqN5GotpjNx1OmFwYFItEPZpkR
	n70tb+jGhwbauW5Z0TeukKSeaTAgByqu3TidFvBdNma+Ypy8rk7Vr42c8Z/DmVtxrQNV
	ZX6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=oc+fJCp0g6oXHeeEnY9pJagBCfq7HDLYCYdIjTvS6q4=;
	b=m9lY3DeiCg26xU+cWA3y1rJ+liMtuKpy6YS+aot0GGdVV+UVSkbYqxM8HogWt3nyxT
	e18SLjdhHfOhLzdyjhd0r1o05IBqXdCntvczHletNzHn6+W6Hk7ce9i+a28i6T3oUO2K
	7lS2YxhCb+xn8YRrSMSpkk3KbBr2SSVuZQQktRaSJJQ9v43SwGi7B2Oc9elM9GUSvJ17
	MbrS5eSBl3A3srBs95/hVM5JIaL0k6NSMVeTF2UDsvAYyXknENDOryAg4pm7xlwpoAww
	P9PoCf1crnVWDYs9C01nOt+2bU2i//xcdZdBMxQIXMIk3UXOV0qG5lHq7XWshRdsqaYT
	ongA==
X-Gm-Message-State: AKS2vOzcZRLoxYHuMdY/hO8zPHKKr7afODDTOGIm8zJ7xy+Q9hIwoOfI
	bnwRvLA2sbx3NgAAfR8pjaTGlrAnOMxK6TA=
X-Received: by 10.36.46.210 with SMTP id i201mr2849971ita.77.1497955869053;
	Tue, 20 Jun 2017 03:51:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.124.76 with HTTP; Tue, 20 Jun 2017 03:51:08 -0700 (PDT)
From: Charmi Suchak <charmi.suchak@volansystech.com>
Date: Tue, 20 Jun 2017 16:21:08 +0530
Message-ID: <CAAGWnH2PSjSAVwF4EeREG482T-fU136VSdPjeNP5j-g01zZdkQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Errors while building imx6qsabresd using fsl-community-bsp repo
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
X-List-Received-Date: Tue, 20 Jun 2017 10:51:13 -0000
Content-Type: multipart/alternative; boundary="001a114a9b087728e7055262071e"

--001a114a9b087728e7055262071e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am new to yocto training and I am trying to build a linux for imx series
target from NXP. I got the bsp layer along with poky using the following:

repo init -u https://github.com/Freescale/fsl-community-bsp-platform -b
daisy
repo sync

Now when I try to build core-image-minimal I get the following errors:

Parsing recipes: 100%
|##########################################################################=
##############################|
Time: 00:01:23
Parsing of 1398 .bb files complete (0 cached, 1398 parsed). 1826 targets,
101 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        =3D "1.22.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-14.04"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "imx6qsabresd"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.6.3"
TUNE_FEATURES     =3D "armv7a vfp neon callconvention-hard cortexa9"
TARGET_FPU        =3D "vfp-neon"
meta
meta-yocto        =3D "(nobranch):39ec0738d4bdc566eca2724dc35c557955042242"
meta-oe           =3D "(nobranch):d3d14d3fcca7fcde362cf0b31411dc4eea6d20aa"
meta-fsl-arm      =3D "(nobranch):0c4de80867c3ab4e9682dd7802d3fd907d1e1a23"
meta-fsl-arm-extra =3D "(nobranch):c95f3f8b5b347f1b3e77d2d11063207ddb7dc5ec=
"
meta-fsl-demos    =3D "(nobranch):f141c7d1158b8addbd6f1ed047a1b47c2ed85f8f"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: Checksum failure encountered with download of
http://downloads.yoctoproject.org/releases/gnu-config/gnu-config-20120814.t=
ar.bz2
- will attempt other sources if available
WARNING: Renaming
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/downloads/=
gnu-config-20120814.tar.bz2
to
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/downloads/=
gnu-config-20120814.tar.bz2_bad-checksum_550a1f90200546416f8d12b878edfb50
WARNING: Checksum failure encountered with download of
http://download.savannah.gnu.org/releases/quilt/quilt-0.61.tar.gz - will
attempt other sources if available
WARNING: Renaming
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/downloads/=
quilt-0.61.tar.gz
to
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/downloads/=
quilt-0.61.tar.gz_bad-checksum_edff525cc95ce8932e66c2e2bfeabdbf
WARNING: Checksum failure encountered with download of
ftp://ftp.gnu.org/gnu/automake/automake-1.14.tar.gz - will attempt other
sources if available
WARNING: Renaming
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/downloads/=
automake-1.14.tar.gz
to
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/downloads/=
automake-1.14.tar.gz_bad-checksum_1ada9887dbde94d6fbda52bd91543738
WARNING: Checksum failure encountered with download of
ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz - will attempt other
sources if available
WARNING: Renaming
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/downloads/=
libtool-2.4.2.tar.gz
to
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/downloads/=
libtool-2.4.2.tar.gz_bad-checksum_9546fcbc4c15aada3464891bfe3f484b
WARNING: Failed to fetch URL
http://download.gna.org/cryptodev-linux/cryptodev-linux-1.6.tar.gz,
attempting MIRRORS if available
WARNING: Failed to fetch URL
http://gnome-build-stage-1.googlecode.com/files/uuid-1.6.2.tar.gz,
attempting MIRRORS if available
WARNING: Checksum failure encountered with download of
http://download.oracle.com/berkeley-db/db-5.3.21.tar.gz - will attempt
other sources if available
WARNING: Renaming
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/downloads/=
db-5.3.21.tar.gz
to
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/downloads/=
db-5.3.21.tar.gz_bad-checksum_49429d4ac8880348db65209c82fd2549
WARNING: Failed to fetch URL http://zlib.net/pigz/pigz-2.3.1.tar.gz,
attempting MIRRORS if available
WARNING: Failed to fetch URL
http://downloads.sourceforge.net/libusb/libusb-1.0.9.tar.bz2, attempting
MIRRORS if available
WARNING: Failed to fetch URL git://
git.freescale.com/imx/linux-2.6-imx.git;branch=3Dimx_3.10.17_1.0.1_ga,
attempting MIRRORS if available


*ERROR: Fetcher failure: Fetch command failed with exit code 128,
output:fatal: Not a git repository (or any of the parent directories): .git=
*


*ERROR: Function failed: Fetcher failure for URL:
'git://git.freescale.com/imx/linux-2.6-imx.git;branch=3Dimx_3.10.17_1.0.1_g=
a
<http://git.freescale.com/imx/linux-2.6-imx.git;branch=3Dimx_3.10.17_1.0.1_=
ga>'.
Unable to fetch URL from any source.ERROR: Logfile of failure stored in:
/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/build/tmp/=
work/imx6qsabresd-poky-linux-gnueabi/linux-imx/3.10.17-r0/temp/log.do_fetch=
.17316ERROR:
Task 70
(/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/sources/m=
eta-fsl-arm/recipes-kernel/linux/linux-imx_3.10.17.bb
<http://linux-imx_3.10.17.bb>, do_fetch) failed with exit code '1'*
NOTE: Tasks Summary: Attempted 624 tasks of which 13 didn't need to be
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:

/home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/sources/me=
ta-fsl-arm/recipes-kernel/linux/
linux-imx_3.10.17.bb, do_fetch
Summary: There were 15 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.


Can anyone please help me resolve this?
--=20

Regards
*Charmi Suchak*
*Associate Engineer*
=E1=90=A7
=E1=90=A7

--001a114a9b087728e7055262071e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br></div>I am new to yocto training and =
I am trying to build a linux for imx series target from NXP. I got the bsp =
layer along with poky using the following:<br><br>repo init -u <a href=3D"h=
ttps://github.com/Freescale/fsl-community-bsp-platform">https://github.com/=
Freescale/fsl-community-bsp-platform</a> -b daisy<br>repo sync<br><br></div=
>Now when I try to build core-image-minimal I get the following errors:<br>=
<br>Parsing recipes: 100% |################################################=
########################################################| Time: 00:01:23<br=
>Parsing of 1398 .bb files complete (0 cached, 1398 parsed). 1826 targets, =
101 skipped, 0 masked, 0 errors.<br>NOTE: Resolving any missing task queue =
dependencies<br><br>Build Configuration:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.22.0&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTR=
ING=C2=A0=C2=A0 =3D &quot;Ubuntu-14.04&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>MACHI=
NE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;im=
x6qsabresd&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0=
 =3D &quot;1.6.3&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;a=
rmv7a vfp neon callconvention-hard cortexa9&quot;<br>TARGET_FPU=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;vfp-neon&quot;<br>meta=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta=
-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;(nobranch):39ec0=
738d4bdc566eca2724dc35c557955042242&quot;<br>meta-oe=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;(nobranch):d3d14d3fcca7fc=
de362cf0b31411dc4eea6d20aa&quot;<br>meta-fsl-arm=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;(nobranch):0c4de80867c3ab4e9682dd7802d3fd907d1e1a23&quot;<br>=
meta-fsl-arm-extra =3D &quot;(nobranch):c95f3f8b5b347f1b3e77d2d11063207ddb7=
dc5ec&quot;<br>meta-fsl-demos=C2=A0=C2=A0=C2=A0 =3D &quot;(nobranch):f141c7=
d1158b8addbd6f1ed047a1b47c2ed85f8f&quot;<br><br>NOTE: Preparing runqueue<br=
>NOTE: Executing SetScene Tasks<br>NOTE: Executing RunQueue Tasks<br>WARNIN=
G: Checksum failure encountered with download of <a href=3D"http://download=
s.yoctoproject.org/releases/gnu-config/gnu-config-20120814.tar.bz2">http://=
downloads.yoctoproject.org/releases/gnu-config/gnu-config-20120814.tar.bz2<=
/a> - will attempt other sources if available<br>WARNING: Renaming /home/ch=
armi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/downloads/gnu-conf=
ig-20120814.tar.bz2 to /home/charmi/charmi/charmi/Training/yocto/imx6/fsl-c=
ommunity-bsp/downloads/gnu-config-20120814.tar.bz2_bad-checksum_550a1f90200=
546416f8d12b878edfb50<br>WARNING: Checksum failure encountered with downloa=
d of <a href=3D"http://download.savannah.gnu.org/releases/quilt/quilt-0.61.=
tar.gz">http://download.savannah.gnu.org/releases/quilt/quilt-0.61.tar.gz</=
a> - will attempt other sources if available<br>WARNING: Renaming /home/cha=
rmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/downloads/quilt-0.6=
1.tar.gz to /home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bs=
p/downloads/quilt-0.61.tar.gz_bad-checksum_edff525cc95ce8932e66c2e2bfeabdbf=
<br>WARNING: Checksum failure encountered with download of <a href=3D"ftp:/=
/ftp.gnu.org/gnu/automake/automake-1.14.tar.gz">ftp://ftp.gnu.org/gnu/autom=
ake/automake-1.14.tar.gz</a> - will attempt other sources if available<br>W=
ARNING: Renaming /home/charmi/charmi/charmi/Training/yocto/imx6/fsl-communi=
ty-bsp/downloads/automake-1.14.tar.gz to /home/charmi/charmi/charmi/Trainin=
g/yocto/imx6/fsl-community-bsp/downloads/automake-1.14.tar.gz_bad-checksum_=
1ada9887dbde94d6fbda52bd91543738<br>WARNING: Checksum failure encountered w=
ith download of <a href=3D"ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.=
gz">ftp://ftp.gnu.org/gnu/libtool/libtool-2.4.2.tar.gz</a> - will attempt o=
ther sources if available<br>WARNING: Renaming /home/charmi/charmi/charmi/T=
raining/yocto/imx6/fsl-community-bsp/downloads/libtool-2.4.2.tar.gz to /hom=
e/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/downloads/libt=
ool-2.4.2.tar.gz_bad-checksum_9546fcbc4c15aada3464891bfe3f484b<br>WARNING: =
Failed to fetch URL <a href=3D"http://download.gna.org/cryptodev-linux/cryp=
todev-linux-1.6.tar.gz">http://download.gna.org/cryptodev-linux/cryptodev-l=
inux-1.6.tar.gz</a>, attempting MIRRORS if available<br>WARNING: Failed to =
fetch URL <a href=3D"http://gnome-build-stage-1.googlecode.com/files/uuid-1=
.6.2.tar.gz">http://gnome-build-stage-1.googlecode.com/files/uuid-1.6.2.tar=
.gz</a>, attempting MIRRORS if available<br>WARNING: Checksum failure encou=
ntered with download of <a href=3D"http://download.oracle.com/berkeley-db/d=
b-5.3.21.tar.gz">http://download.oracle.com/berkeley-db/db-5.3.21.tar.gz</a=
> - will attempt other sources if available<br>WARNING: Renaming /home/char=
mi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/downloads/db-5.3.21.=
tar.gz to /home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/=
downloads/db-5.3.21.tar.gz_bad-checksum_49429d4ac8880348db65209c82fd2549<br=
>WARNING: Failed to fetch URL <a href=3D"http://zlib.net/pigz/pigz-2.3.1.ta=
r.gz">http://zlib.net/pigz/pigz-2.3.1.tar.gz</a>, attempting MIRRORS if ava=
ilable<br>WARNING: Failed to fetch URL <a href=3D"http://downloads.sourcefo=
rge.net/libusb/libusb-1.0.9.tar.bz2">http://downloads.sourceforge.net/libus=
b/libusb-1.0.9.tar.bz2</a>, attempting MIRRORS if available<br>WARNING: Fai=
led to fetch URL git://<a href=3D"http://git.freescale.com/imx/linux-2.6-im=
x.git;branch=3Dimx_3.10.17_1.0.1_ga">git.freescale.com/imx/linux-2.6-imx.gi=
t;branch=3Dimx_3.10.17_1.0.1_ga</a>, attempting MIRRORS if available<br><b>=
ERROR: Fetcher failure: Fetch command failed with exit code 128, output:<br=
>fatal: Not a git repository (or any of the parent directories): .git<br></=
b><br><b>ERROR: Function failed: Fetcher failure for URL: &#39;git://<a hre=
f=3D"http://git.freescale.com/imx/linux-2.6-imx.git;branch=3Dimx_3.10.17_1.=
0.1_ga">git.freescale.com/imx/linux-2.6-imx.git;branch=3Dimx_3.10.17_1.0.1_=
ga</a>&#39;. Unable to fetch URL from any source.<br>ERROR: Logfile of fail=
ure stored in: /home/charmi/charmi/charmi/Training/yocto/imx6/fsl-community=
-bsp/build/tmp/work/imx6qsabresd-poky-linux-gnueabi/linux-imx/3.10.17-r0/te=
mp/log.do_fetch.17316<br>ERROR: Task 70 (/home/charmi/charmi/charmi/Trainin=
g/yocto/imx6/fsl-community-bsp/sources/meta-fsl-arm/recipes-kernel/linux/<a=
 href=3D"http://linux-imx_3.10.17.bb">linux-imx_3.10.17.bb</a>, do_fetch) f=
ailed with exit code &#39;1&#39;</b><br>NOTE: Tasks Summary: Attempted 624 =
tasks of which 13 didn&#39;t need to be rerun and 1 failed.<br>Waiting for =
0 running tasks to finish:<br><br>Summary: 1 task failed:<br>=C2=A0 /home/c=
harmi/charmi/charmi/Training/yocto/imx6/fsl-community-bsp/sources/meta-fsl-=
arm/recipes-kernel/linux/<a href=3D"http://linux-imx_3.10.17.bb">linux-imx_=
3.10.17.bb</a>, do_fetch<br>Summary: There were 15 WARNING messages shown.<=
br>Summary: There were 2 ERROR messages shown, returning a non-zero exit co=
de.<br><br clear=3D"all"><div><div><div><br></div><div>Can anyone please he=
lp me resolve this?<br></div><div>-- <br><div class=3D"gmail_signature"><di=
v dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><span><=
div style=3D"color:rgb(136,136,136)"><font color=3D"#0b5394" face=3D"verdan=
a, sans-serif"><br><span style=3D"color:rgb(61,133,198)">Regards</span></fo=
nt></div><div><div style=3D"color:rgb(100,100,100);font-size:14px;backgroun=
d-color:rgb(254,254,254)"><font face=3D"arial, helvetica, sans-serif"><b>Ch=
armi Suchak</b></font></div><div style=3D"font-size:13px;padding:5px 0px;ba=
ckground-color:rgb(254,254,254)"><font color=3D"#6fa8dc" face=3D"arial, hel=
vetica, sans-serif"><b>Associate Engineer</b></font></div>
<div hspace=3D"streak-pt-mark" style=3D"color:rgb(136,136,136);max-height:1=
px"><img style=3D"width: 0px; max-height: 0px; overflow: hidden;" src=3D"ht=
tps://mailfoogae.appspot.com/t?sender=3DaYW5raXQuZ3VwdGFAdm9sYW5zeXN0ZWNoLm=
NvbQ%3D%3D&amp;type=3Dzerocontent&amp;guid=3D1118fde9-681a-416b-943d-cf03f7=
614c79"><font color=3D"#ffffff" size=3D"1">=E1=90=A7</font></div></div></sp=
an><span><font color=3D"#888888">
<div hspace=3D"streak-pt-mark" style=3D"max-height:1px"><img style=3D"width=
: 0px; max-height: 0px;" src=3D"https://mailfoogae.appspot.com/t?sender=3Da=
YXNoaXNoLmFncmF2YWxAdm9sYW5zeXN0ZWNoLmNvbQ%3D%3D&amp;type=3Dzerocontent&amp=
;guid=3Daed9b798-700c-4d52-93bc-d92be133ec96"><font color=3D"#ffffff" size=
=3D"1">=E1=90=A7</font></div></font></span></div></div></div></div></div></=
div></div></div></div></div></div>
</div></div></div></div>

--001a114a9b087728e7055262071e--
