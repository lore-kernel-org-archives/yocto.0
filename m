Return-Path: <lukas.bulwahn@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1025E005B4
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 00:01:49 -0700 (PDT)
Received: from LMUC430092 (lmuc430092.bmw-carit.intra [192.168.101.2])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: lukas.bulwahn)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 9744940077;
	Fri, 23 Aug 2013 08:00:43 +0200 (CEST)
From: "Lukas Bulwahn" <lukas.bulwahn@oss.bmw-carit.de>
To: "'Zafrullah Syed'" <zafrullahmehdi@gmail.com>,
	"'Philip Balister'" <philip@balister.org>
References: <CAAGt+t0w9Rtia4vVJujgjTfmEU709WyhjCYSPP7PThMN+vpOdg@mail.gmail.com>	<CAJTo0LYTB2eby76YsAtj+YM9jfAo1oia4TvRUXgiNU+DKiuOFQ@mail.gmail.com>	<CAAGt+t2gxfmg8cJ+izKmejXcywknPpOvYMrRPUgKN5fHHa-gmw@mail.gmail.com>	<CAAGt+t13OZ88fi_9foDDp+FeD9VOkBDip1RVQYxWkNejmvifeg@mail.gmail.com>	<CAJTo0LYqaCwHTLnxUwPVME_zFNbWEVXHZoJpiWTTw-wBWn5xeQ@mail.gmail.com>	<52161E20.3010800@balister.org>
	<CAAGt+t3Q3GaitOuGTob0faWa4PU1sqmBAwLrdNetMK1PZLDF5Q@mail.gmail.com>
In-Reply-To: <CAAGt+t3Q3GaitOuGTob0faWa4PU1sqmBAwLrdNetMK1PZLDF5Q@mail.gmail.com>
Date: Fri, 23 Aug 2013 09:01:45 +0200
Message-ID: <006301ce9fce$a1ae7f10$e50b7d30$@oss.bmw-carit.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQHiqQ9cPGTfkS5D7CeOHKRE+uR4dQKWQZsSAVPlF0YB1MESmgL+lvHAAeW8i8MCikVET5kQ3JNQ
Cc: 'yocto' <yocto@yoctoproject.org>
Subject: Re: bitbake with cmake recipe
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
X-List-Received-Date: Fri, 23 Aug 2013 07:01:52 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0064_01CE9FDF.653E53F0"
Content-Language: de

------=_NextPart_000_0064_01CE9FDF.653E53F0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit


Everytime I build my system I get this error:

ERROR: Function failed: do_configure (see
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/camera
capture-0.1-r0/temp/log.do_configure.1410 for further information)
ERROR: Logfile of failure stored in:
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/camera
capture-0.1-r0/temp/log.do_configure.1410
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing shell function do_configure
| CMake Error: The source directory
"/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/camer
acapture-0.1-r0/cameracapture-0.1" does not appear to contain
CMakeLists.txt.
| Specify --help for usage, or press the help button on the CMake GUI.
| ERROR: Function failed: do_configure (see
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/camera
capture-0.1-r0/temp/log.do_configure.1410 for further information)
ERROR: Task 579
(/home/siguser/yocto/poky/meta-bebot/recipes-bebot/cameracapture/cameracaptu
re_0.1.bb, do_configure) failed with exit code '1'

I have no clue what I should write in my recipe file. Yocto doesn't have any
tutorial for this.

Can anyone give some hints where I am doing wrong or what should be included
in my recipe?



I believe you must set the S variable in your recipe.

Probably, you must set it to

S = "${WORKDIR}/git"

You just have to look where your sources are located under
"/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/camer
acapture-0.1-r0/cameracapture-0.1", and set this subdirectory:

S = "${WORKDIR}/subdirectory".


Lukas Bulwahn, BMW Car IT GmbH

------=_NextPart_000_0064_01CE9FDF.653E53F0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<META NAME=3D"Generator" CONTENT=3D"MS Exchange Server version =
14.02.5004.000">
<TITLE>AW: [yocto] bitbake with cmake recipe</TITLE>
</HEAD>
<BODY>
<!-- Converted from text/rtf format -->

<P DIR=3DLTR><SPAN LANG=3D"de"></SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de">Everytime I build my system I get this =
error:</SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de"></SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de">ERROR: Function failed: do_configure (see =
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cam=
eracapture-0.1-r0/temp/log.do_configure.1410 for further =
information)</SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de">ERROR: Logfile of failure stored in: =
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cam=
eracapture-0.1-r0/temp/log.do_configure.1410</SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de">Log data follows:</SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de">| DEBUG: Executing python function =
sysroot_cleansstate</SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de">| DEBUG: Python function =
sysroot_cleansstate finished</SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de">| DEBUG: SITE files ['endian-little', =
'bit-32', 'arm-common', 'common-linux', 'common-glibc', 'arm-linux', =
'arm-linux-gnueabi', 'common']</SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de">| DEBUG: Executing shell function =
autotools_preconfigure</SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de">| DEBUG: Shell function =
autotools_preconfigure finished</SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de">| DEBUG: Executing shell function =
do_configure</SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de">| CMake Error: The source directory =
&quot;/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnuea=
bi/cameracapture-0.1-r0/cameracapture-0.1&quot; does not appear to =
contain CMakeLists.txt.</SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de">| Specify --help for usage, or press the =
help button on the CMake GUI.</SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de">| ERROR: Function failed: do_configure =
(see =
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cam=
eracapture-0.1-r0/temp/log.do_configure.1410 for further =
information)</SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de">ERROR: Task 579 =
(/home/siguser/yocto/poky/meta-bebot/recipes-bebot/cameracapture/</SPAN><=
A HREF=3D"http://cameracapture_0.1.bb"><SPAN LANG=3D"de"><U><FONT =
COLOR=3D"#0000FF">cameracapture_0.1.bb</FONT></U></SPAN><SPAN =
LANG=3D"de"></SPAN></A><SPAN LANG=3D"de">, do_configure) failed with =
exit code '1'</SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de"></SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de">I have no clue what I should write in my =
recipe file. Yocto doesn't have any tutorial for this.</SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de"></SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de">Can anyone give some hints where I am =
doing wrong or what should be included in my recipe?</SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de"></SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de"></SPAN><SPAN LANG=3D"de"></SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de"></SPAN><SPAN LANG=3D"de"></SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de"></SPAN><SPAN LANG=3D"de"></SPAN><SPAN =
LANG=3D"de-de"><FONT COLOR=3D"#000000" FACE=3D"Calibri">I believe you =
must set t</FONT><FONT COLOR=3D"#000000" =
FACE=3D"Calibri">he</FONT></SPAN><SPAN LANG=3D"de"></SPAN><SPAN =
LANG=3D"de"></SPAN><SPAN LANG=3D"de-de"> <FONT COLOR=3D"#000000" =
FACE=3D"Calibri">S</FONT></SPAN><SPAN LANG=3D"de"></SPAN><SPAN =
LANG=3D"de"></SPAN><SPAN LANG=3D"de-de"><FONT COLOR=3D"#000000" =
FACE=3D"Calibri"> variable in your recipe.</FONT></SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de-de"><FONT COLOR=3D"#000000" =
FACE=3D"Calibri">Probably, you must set it to</FONT></SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de"></SPAN><SPAN LANG=3D"de"></SPAN><SPAN =
LANG=3D"de-de"></SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de"></SPAN><SPAN LANG=3D"de"></SPAN><SPAN =
LANG=3D"de-de"><FONT COLOR=3D"#000000" FACE=3D"Calibri">S =3D =
&quot;${WORKDIR}/git&quot;</FONT></SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de"></SPAN><SPAN LANG=3D"de"></SPAN><SPAN =
LANG=3D"de-de"><FONT COLOR=3D"#000000" FACE=3D"Calibri">You just have to =
look where your sources are located under</FONT></SPAN><SPAN =
LANG=3D"de"> <FONT =
FACE=3D"Calibri">&quot;/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon=
-poky-linux-gnueabi/cameracapture-0.1-r0/cameracapture-0.1</FONT></SPAN><=
SPAN LANG=3D"de"><FONT FACE=3D"Calibri">&quot;, and set =
th</FONT></SPAN><SPAN LANG=3D"de"><FONT =
FACE=3D"Calibri">is</FONT></SPAN><SPAN LANG=3D"de"><FONT =
FACE=3D"Calibri"> subdirectory</FONT></SPAN><SPAN LANG=3D"de"><FONT =
FACE=3D"Calibri">:</FONT></SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de"><FONT =
FACE=3D"Calibri">S</FONT></SPAN><SPAN LANG=3D"de"><FONT =
FACE=3D"Calibri"> =3D =
&quot;${WORKDIR}/subdirectory&quot;</FONT></SPAN><SPAN LANG=3D"de"><FONT =
FACE=3D"Calibri">.</FONT></SPAN><SPAN LANG=3D"de"></SPAN><SPAN =
LANG=3D"de"></SPAN><SPAN LANG=3D"de-de"></SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de"></SPAN><SPAN LANG=3D"de"></SPAN><SPAN =
LANG=3D"de-de"></SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de"></SPAN><SPAN LANG=3D"de"></SPAN><SPAN =
LANG=3D"de-de"></SPAN></P>

<P DIR=3DLTR><SPAN LANG=3D"de"></SPAN><SPAN LANG=3D"de"></SPAN><SPAN =
LANG=3D"de-de"><FONT COLOR=3D"#000000" FACE=3D"Arial">Lukas =
Bulwahn</FONT></SPAN><SPAN LANG=3D"de"></SPAN><SPAN =
LANG=3D"de"></SPAN><SPAN LANG=3D"de-de"><FONT COLOR=3D"#000000" =
FACE=3D"Arial">,</FONT></SPAN><SPAN LANG=3D"de"></SPAN><SPAN =
LANG=3D"de"></SPAN><SPAN LANG=3D"de-de"> <FONT COLOR=3D"#000000" =
FACE=3D"Arial">BMW Car IT GmbH</FONT></SPAN><SPAN =
LANG=3D"de"></SPAN><SPAN LANG=3D"de"></SPAN></P>

</BODY>
</HTML>

------=_NextPart_000_0064_01CE9FDF.653E53F0--
