Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1ED2E00E69; Thu, 19 May 2016 07:17:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCB54E00E6B
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 07:17:50 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 0859DF87:3987D4E7-C1257FB8:004CE373;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF0859DF87.3987D4E7-ONC1257FB8.004CE373-C1257FB8.004E88F0@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Thu, 19 May 2016 16:17:48 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 19.05.2016 16:17:52,
	Serialize complete at 19.05.2016 16:17:52
Subject: How to include packages for the cmake build process?
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
X-List-Received-Date: Thu, 19 May 2016 14:17:54 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 004E88EFC1257FB8_="

--=_alternative 004E88EFC1257FB8_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

I have some general question. Actual I am try to build an older software.=20
It is based on cmake. At the build process doxygen, python, sed,=20
dbusxx-xml2cpp are called. They are included via the=20
"findprogram"/"find=5Fpackage" command.

How to include external programs like python, sed etc. in my build=20
toolchain? Do I use DPENDS =3D " python"?

The weak points are in the Makefile.txt when:

find=5Fpackage(PythonInterp REQUIRED)

As example I add a non working recipe for doxygen:

####### doxygen=5F1.8.bb #######
DESCRIPTION =3D "Utilities for generating documentation from source code"
HOMEPAGE =3D "http://www.doxygen.org/"
SECTION =3D "console/utils"
LICENSE =3D "GPLv2"
LIC=5FFILES=5FCHKSUM =3D "file://LICENSE;md5=3Db380c86cea229fa42b9e543fc491=
f5eb"

DEPENDS =3D "flex-native bison-native python-native"

inherit cmake

SRCREV =3D "a6d4f4df45febe588c38de37641513fd576b998f"
SRC=5FURI =3D "git://github.com/doxygen/doxygen.git"

S =3D "${WORKDIR}/git"

#EXTRA=5FOECONF =3D "--prefix ${prefix}"

BBCLASSEXTEND =3D "native"
#####################

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

--=_alternative 004E88EFC1257FB8_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I have some general question. Actual
I am try to build an older software. It is based on cmake. At the build
process doxygen, python, sed, dbusxx-xml2cpp are called. They are included
via the &quot;findprogram&quot;/&quot;find=5Fpackage&quot; command.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">How to include external programs like
python, sed etc. in my build toolchain? Do I use DPENDS =3D &quot; python&q=
uot;?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">The weak points are in the Makefile.=
txt
when:</font>
<br>
<br><font size=3D2 face=3D"sans-serif">find=5Fpackage(PythonInterp REQUIRED=
)</font>
<br>
<br><font size=3D2 face=3D"sans-serif">As example I add a non working recipe
for doxygen:</font>
<br>
<br><font size=3D2 face=3D"sans-serif">####### doxygen=5F1.8.bb #######</fo=
nt>
<br><font size=3D2 face=3D"sans-serif">DESCRIPTION =3D &quot;Utilities for =
generating
documentation from source code&quot;</font>
<br><font size=3D2 face=3D"sans-serif">HOMEPAGE =3D &quot;</font><a href=3D=
http://www.doxygen.org/><font size=3D2 face=3D"sans-serif">http://www.doxyg=
en.org/</font></a><font size=3D2 face=3D"sans-serif">&quot;</font>
<br><font size=3D2 face=3D"sans-serif">SECTION =3D &quot;console/utils&quot=
;</font>
<br><font size=3D2 face=3D"sans-serif">LICENSE =3D &quot;GPLv2&quot;</font>
<br><font size=3D2 face=3D"sans-serif">LIC=5FFILES=5FCHKSUM =3D &quot;</fon=
t><a href=3D"file://LICENSE;md5=3Db380c86cea229fa42b9e543fc491f5eb/"><font =
size=3D2 face=3D"sans-serif">file://LICENSE;md5=3Db380c86cea229fa42b9e543fc=
491f5eb</font></a><font size=3D2 face=3D"sans-serif">&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">DEPENDS =3D &quot;flex-native bison-=
native
python-native&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">inherit cmake</font>
<br>
<br><font size=3D2 face=3D"sans-serif">SRCREV =3D &quot;a6d4f4df45febe588c3=
8de37641513fd576b998f&quot;</font>
<br><font size=3D2 face=3D"sans-serif">SRC=5FURI =3D &quot;git://github.com=
/doxygen/doxygen.git&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">S =3D &quot;${WORKDIR}/git&quot;</fo=
nt>
<br>
<br><font size=3D2 face=3D"sans-serif">#EXTRA=5FOECONF =3D &quot;--prefix $=
{prefix}&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">BBCLASSEXTEND =3D &quot;native&quot;=
</font>
<br><font size=3D2 face=3D"sans-serif">#####################</font>
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

--=_alternative 004E88EFC1257FB8_=--
