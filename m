Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09F16E00C37; Tue, 26 Apr 2016 01:04:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF3F0E00C37
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 01:04:31 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: FCA9FD4C:003E7E4C-C1257FA1:002BA274;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OFFCA9FD4C.003E7E4C-ONC1257FA1.002BA274-C1257FA1.002C5AF6@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Tue, 26 Apr 2016 10:04:28 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 26.04.2016 10:04:32,
	Serialize complete at 26.04.2016 10:04:32
Subject: problems with cmake finding the c++ includes
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
X-List-Received-Date: Tue, 26 Apr 2016 08:04:35 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 002C5AF4C1257FA1_="

--=_alternative 002C5AF4C1257FA1_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej,

I am new to yocto. I like to create an recipe for the g3log library. I=20
managed to get the git sources and start the cmake compile. But it stops=20
when it tries to compile "#include <string>". Do you have an idea how to=20
fix that?

Below there is the content of the "g3log.bb":
################################
SUMMARY =3D "g3log"
SECTION =3D "sek4"
LICENSE =3D "MIT"
LIC=5FFILES=5FCHKSUM =3D "file://$
{COMMON=5FLICENSE=5FDIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302"

DEPENDS =3D"boost"

SRC=5FURI[md5sum] =3D "0dd4767bd072159e64ad69052bb1dbba"
SRC=5FURI[sha256sum] =3D=20
"4fbcc9afe24f6d8b5b90ff04481e88dd0b34f6a797825dab02cd88f129d3ccb7"

SRC=5FURI =3D "git://github.com/KjellKod/g3log.git;rev=3D1.2"

S =3D "${WORKDIR}/git"

inherit pkgconfig cmake
################################
=20

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

--=_alternative 002C5AF4C1257FA1_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej,</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I am new to yocto. I like to create
an recipe for the g3log library. I managed to get the git sources and start
the cmake compile. But it stops when it tries to compile &quot;#include
&lt;string&gt;&quot;. Do you have an idea how to fix that?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Below there is the content of the &q=
uot;g3log.bb&quot;:</font>
<br><font size=3D2 face=3D"sans-serif">################################</fo=
nt>
<br><font size=3D2 face=3D"sans-serif">SUMMARY =3D &quot;g3log&quot;</font>
<br><font size=3D2 face=3D"sans-serif">SECTION =3D &quot;sek4&quot;</font>
<br><font size=3D2 face=3D"sans-serif">LICENSE =3D &quot;MIT&quot;</font>
<br><font size=3D2 face=3D"sans-serif">LIC=5FFILES=5FCHKSUM =3D &quot;</fon=
t><a href=3Dfile://$/><font size=3D2 color=3Dblue face=3D"sans-serif">file:=
//$</font></a><font size=3D2 face=3D"sans-serif">{COMMON=5FLICENSE=5FDIR}/M=
IT;md5=3D0835ade698e0bcf8506ecda2f7b4f302&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">DEPENDS =3D&quot;boost&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">SRC=5FURI[md5sum] =3D &quot;0dd4767b=
d072159e64ad69052bb1dbba&quot;</font>
<br><font size=3D2 face=3D"sans-serif">SRC=5FURI[sha256sum] =3D &quot;4fbcc=
9afe24f6d8b5b90ff04481e88dd0b34f6a797825dab02cd88f129d3ccb7&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">SRC=5FURI =3D &quot;git://github.com=
/KjellKod/g3log.git;rev=3D1.2&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">S =3D &quot;${WORKDIR}/git&quot;</fo=
nt>
<br>
<br><font size=3D2 face=3D"sans-serif">inherit pkgconfig cmake</font>
<br><font size=3D2 face=3D"sans-serif">################################</fo=
nt>
<br><font size=3D2 face=3D"sans-serif">&nbsp;</font>
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

--=_alternative 002C5AF4C1257FA1_=--
