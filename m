Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C52DBE00CFA; Fri, 13 May 2016 07:21:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82C1CE00CEA
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 07:21:46 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: C36EA607:02D6E8DD-C1257FB2:004DE08A;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OFC36EA607.02D6E8DD-ONC1257FB2.004DE08A-C1257FB2.004EE4C4@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Fri, 13 May 2016 16:21:43 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 13.05.2016 16:21:47,
	Serialize complete at 13.05.2016 16:21:47
Subject: autotools error when building libdbus-c++; autoreconf "possibly undefined macro: AC_DEFINE"
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
X-List-Received-Date: Fri, 13 May 2016 14:21:51 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 004EE4C4C1257FB2_="

--=_alternative 004EE4C4C1257FB2_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

I try to build the libdbus-c++ libary. The build process is based on=20
autotools. When compiling it  do=5Fconfigure throws an error. The macro=20
"AC=5FDEFINE" is not found. Any idea how to make autoreconf run?

Below I listed to recipe and after the Error plot

######### libdbus-c++=5F0.9.bb ###########
SUMMARY =3D "libdbus-c++"
SECTION =3D "ccc"
LICENSE =3D "GPLv2+"
LIC=5FFILES=5FCHKSUM =3D "file://COPYING;md5=3Dfbc093901857fcd118f065f90098=
2c24"

inherit autotools

SRC=5FURI[md5sum] =3D "e752116f523fa88ef041e63d3dee4de2"
SRC=5FURI[sha256sum] =3D=20
"bc11ac297b3cb010be904c72789695543ee3fdf3d75cdc8225fd371385af4e61"
SRC=5FURI =3D "
https://sourceforge.net/projects/dbus-cplusplus/files/dbus-c++/0.9.0/libdbu=
s-c++-0.9.0.tar.gz
"

S =3D "${WORKDIR}/libdbus-c++-0.9.0"

BBCLASSEXTEND +=3D "native"
####################

######### Error ###########
| autoreconf: Entering directory `.'
| autoreconf: configure.ac: not using Gettext
| autoreconf: running: aclocal=20
--system-acdir=3D/home/user/myTC/poky/build/tmp/work/cortexa5hf-vfp-poky-li=
nux-gnueabi/libdbus-c++/0.9-r0/build/aclocal-copy/=20
-I=20
/home/user/myTC/poky/build/tmp/work/cortexa5hf-vfp-poky-linux-gnueabi/libdb=
us-c++/0.9-r0/libdbus-c++-0.9.0/m4/=20
-I=20
/home/user/myTC/poky/build/tmp/work/cortexa5hf-vfp-poky-linux-gnueabi/libdb=
us-c++/0.9-r0/libdbus-c++-0.9.0/m4/=20
--force -I m4
| autoreconf: configure.ac: tracing
| autoreconf: running: libtoolize --copy --force
| libtoolize: putting auxiliary files in '.'.
| libtoolize: copying file './ltmain.sh'
| libtoolize: putting macros in AC=5FCONFIG=5FMACRO=5FDIRS, 'm4'.
| libtoolize: copying file 'm4/libtool.m4'
| libtoolize: copying file 'm4/ltoptions.m4'
| libtoolize: copying file 'm4/ltsugar.m4'
| libtoolize: copying file 'm4/ltversion.m4'
| libtoolize: copying file 'm4/lt~obsolete.m4'
| autoreconf: running:=20
/home/user/myTC/poky/build/tmp/sysroots/x86=5F64-linux/usr/bin/autoconf=20
--include=3D/home/user/myTC/poky/build/tmp/work/cortexa5hf-vfp-poky-linux-g=
nueabi/libdbus-c++/0.9-r0/libdbus-c++-0.9.0/m4/=20
--force
| configure.ac:54: error: possibly undefined macro: AC=5FDEFINE
|       If this token and others are legitimate, please use=20
m4=5Fpattern=5Fallow.
|       See the Autoconf documentation.
| autoreconf:=20
/home/user/myTC/poky/build/tmp/sysroots/x86=5F64-linux/usr/bin/autoconf=20
failed with exit status: 1
####################

Mit freundlichen Gr=FC=DFen

Stefan Jaritz
Entwickler

------------------------------------------------------------
ESA Elektroschaltanlagen Grimma GmbH
Broner Ring 30
04668 Grimma
Telefon: +49 3437 9211 176
Telefax: +49 3437 9211 26
E-Mail: s.jaritz@esa-grimma.de
Internet: www.esa-grimma.de


Gesch=E4ftsf=FChrer:
Dipl.-Ing. J=F6rg Gaitzsch
J=F6rg Reinker

Sitz der Gesellschaft: Grimma
Ust.-ID: DE 141784437
Amtsgericht: Leipzig, HRB 5159
Steuernummer: 238/108/00755


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte=20
Informationen.=20
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich=20
erhalten=20
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese=20
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser=20
Mail=20
ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =

are=20
not the intended recipient (or have received this e-mail in error) please=20
notify the sender immediately and destroy this e-mail. Any unauthorized=20
copying, disclosure or distribution of the material in this e-mail is=20
strictly=20
forbidden.

--=_alternative 004EE4C4C1257FB2_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I try to build the libdbus-c++ libar=
y.
The build process is based on autotools. When compiling it &nbsp;do=5Fconfi=
gure
throws an error. The macro &quot;AC=5FDEFINE&quot; is not found. Any idea
how to make autoreconf run?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Below I listed to recipe and after t=
he
Error plot</font>
<br>
<br><font size=3D2 face=3D"sans-serif">######### libdbus-c++=5F0.9.bb #####=
######</font>
<br><font size=3D2 face=3D"sans-serif">SUMMARY =3D &quot;libdbus-c++&quot;<=
/font>
<br><font size=3D2 face=3D"sans-serif">SECTION =3D &quot;ccc&quot;</font>
<br><font size=3D2 face=3D"sans-serif">LICENSE =3D &quot;GPLv2+&quot;</font>
<br><font size=3D2 face=3D"sans-serif">LIC=5FFILES=5FCHKSUM =3D &quot;</fon=
t><a href=3D"file://COPYING;md5=3Dfbc093901857fcd118f065f900982c24/"><font =
size=3D2 face=3D"sans-serif">file://COPYING;md5=3Dfbc093901857fcd118f065f90=
0982c24</font></a><font size=3D2 face=3D"sans-serif">&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">inherit autotools</font>
<br>
<br><font size=3D2 face=3D"sans-serif">SRC=5FURI[md5sum] =3D &quot;e752116f=
523fa88ef041e63d3dee4de2&quot;</font>
<br><font size=3D2 face=3D"sans-serif">SRC=5FURI[sha256sum] =3D &quot;bc11a=
c297b3cb010be904c72789695543ee3fdf3d75cdc8225fd371385af4e61&quot;</font>
<br><font size=3D2 face=3D"sans-serif">SRC=5FURI =3D &quot;</font><a href=
=3D"https://sourceforge.net/projects/dbus-cplusplus/files/dbus-c++/0.9.0/li=
bdbus-c++-0.9.0.tar.gz"><font size=3D2 face=3D"sans-serif">https://sourcefo=
rge.net/projects/dbus-cplusplus/files/dbus-c++/0.9.0/libdbus-c++-0.9.0.tar.=
gz</font></a><font size=3D2 face=3D"sans-serif">&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">S =3D &quot;${WORKDIR}/libdbus-c++-0=
.9.0&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">BBCLASSEXTEND +=3D &quot;native&quot=
;</font>
<br><font size=3D2 face=3D"sans-serif">####################</font>
<br>
<br><font size=3D2 face=3D"sans-serif">######### Error ###########</font>
<br><font size=3D2 face=3D"sans-serif">| autoreconf: Entering directory `.'=
</font>
<br><font size=3D2 face=3D"sans-serif">| autoreconf: configure.ac: not using
Gettext</font>
<br><font size=3D2 face=3D"sans-serif">| autoreconf: running: aclocal --sys=
tem-acdir=3D/home/user/myTC/poky/build/tmp/work/cortexa5hf-vfp-poky-linux-g=
nueabi/libdbus-c++/0.9-r0/build/aclocal-copy/
-I /home/user/myTC/poky/build/tmp/work/cortexa5hf-vfp-poky-linux-gnueabi/li=
bdbus-c++/0.9-r0/libdbus-c++-0.9.0/m4/
-I /home/user/myTC/poky/build/tmp/work/cortexa5hf-vfp-poky-linux-gnueabi/li=
bdbus-c++/0.9-r0/libdbus-c++-0.9.0/m4/
--force -I m4</font>
<br><font size=3D2 face=3D"sans-serif">| autoreconf: configure.ac: tracing<=
/font>
<br><font size=3D2 face=3D"sans-serif">| autoreconf: running: libtoolize --=
copy
--force</font>
<br><font size=3D2 face=3D"sans-serif">| libtoolize: putting auxiliary files
in '.'.</font>
<br><font size=3D2 face=3D"sans-serif">| libtoolize: copying file './ltmain=
.sh'</font>
<br><font size=3D2 face=3D"sans-serif">| libtoolize: putting macros in AC=
=5FCONFIG=5FMACRO=5FDIRS,
'm4'.</font>
<br><font size=3D2 face=3D"sans-serif">| libtoolize: copying file 'm4/libto=
ol.m4'</font>
<br><font size=3D2 face=3D"sans-serif">| libtoolize: copying file 'm4/ltopt=
ions.m4'</font>
<br><font size=3D2 face=3D"sans-serif">| libtoolize: copying file 'm4/ltsug=
ar.m4'</font>
<br><font size=3D2 face=3D"sans-serif">| libtoolize: copying file 'm4/ltver=
sion.m4'</font>
<br><font size=3D2 face=3D"sans-serif">| libtoolize: copying file 'm4/lt~ob=
solete.m4'</font>
<br><font size=3D2 face=3D"sans-serif">| autoreconf: running: /home/user/my=
TC/poky/build/tmp/sysroots/x86=5F64-linux/usr/bin/autoconf
--include=3D/home/user/myTC/poky/build/tmp/work/cortexa5hf-vfp-poky-linux-g=
nueabi/libdbus-c++/0.9-r0/libdbus-c++-0.9.0/m4/
--force</font>
<br><font size=3D2 face=3D"sans-serif">| configure.ac:54: error: possibly u=
ndefined
macro: AC=5FDEFINE</font>
<br><font size=3D2 face=3D"sans-serif">| &nbsp; &nbsp; &nbsp; If this token
and others are legitimate, please use m4=5Fpattern=5Fallow.</font>
<br><font size=3D2 face=3D"sans-serif">| &nbsp; &nbsp; &nbsp; See the Autoc=
onf
documentation.</font>
<br><font size=3D2 face=3D"sans-serif">| autoreconf: /home/user/myTC/poky/b=
uild/tmp/sysroots/x86=5F64-linux/usr/bin/autoconf
failed with exit status: 1</font>
<br><font size=3D2 face=3D"sans-serif">####################</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Mit freundlichen Gr=FC=DFen<br>
<br>
Stefan Jaritz<br>
Entwickler<br>
<br>
------------------------------------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: +49 3437 9211 176<br>
Telefax: +49 3437 9211 26<br>
E-Mail: s.jaritz@esa-grimma.de<br>
Internet: </font><a href=3D"www.esa-grimma.de"><font size=3D2 face=3D"sans-=
serif">www.esa-grimma.de</font></a><font size=3D2 face=3D"sans-serif"><br>
<br>
<br>
Gesch=E4ftsf=FChrer:<br>
Dipl.-Ing. J=F6rg Gaitzsch<br>
J=F6rg Reinker<br>
<br>
Sitz der Gesellschaft: Grimma<br>
Ust.-ID: DE 141784437<br>
Amtsgericht: Leipzig, HRB 5159<br>
Steuernummer: 238/108/00755<br>
<br>
<br>
Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen.
<br>
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich
erhalten <br>
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
<br>
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
Mail <br>
ist nicht gestattet.<br>
<br>
This e-mail may contain confidential and/or privileged information. If
you are <br>
not the intended recipient (or have received this e-mail in error) please
<br>
notify the sender immediately and destroy this e-mail. Any unauthorized
<br>
copying, disclosure or distribution of the material in this e-mail is stric=
tly
<br>
forbidden.</font>

--=_alternative 004EE4C4C1257FB2_=--
