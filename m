Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54C46E00E06; Tue, 16 Aug 2016 23:49:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14510E00D02
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 23:49:10 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: A386058F:B9202DAA-C1258012:00240ACD;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OFA386058F.B9202DAA-ONC1258012.00240ACD-C1258012.00257505@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Wed, 17 Aug 2016 08:49:07 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 17.08.2016 08:49:11,
	Serialize complete at 17.08.2016 08:49:11
Subject: How to generate a debug version of a single application and deploy it into the image?
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
X-List-Received-Date: Wed, 17 Aug 2016 06:49:13 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00257505C1258012_="

--=_alternative 00257505C1258012_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

Some software can be only tested on the final system. For that it would be =

usefull to start with a debug version of that app and change it later to=20
release.

In my case I have a software which do logging. The amount of the logs=20
depends on type of the build (Release skips all debug messages). Let's=20
assume that my recipe for the software(myApp) is called myApp.bb. It is=20
downloaded from an external git source and build through cmake.

Some idea how to do that?

Below the pseudo recipe as a starting point:
### myApp.bb ###
SUMMARY =3D "my App"
SECTION =3D "my"
LICENSE =3D "CLOSED"

inherit cmake

DEPENDS =3D "libconfig libg3log"

SRCREV =3D "${AUTOREV}"
SRC=5FURI =3D "gitsm://myGitSrv/myApp;protocol=3Dhttp;branch=3Ddevelop"

PVBASE :=3D "${PV}"
PV =3D "${PVBASE}.${SRCPV}"

S =3D "${WORKDIR}/git/"

BBCLASSEXTEND =3D "native nativesdk"
################

Regads!

Stefan Jaritz

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

--=_alternative 00257505C1258012_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Some software can be only tested on
the final system. For that it would be usefull to start with a debug version
of that app and change it later to release.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">In my case I have a software which do
logging. The amount of the logs depends on type of the build (Release skips
all debug messages). Let's assume that my recipe for the software(myApp)
is called myApp.bb. It is downloaded from an external git source and build
through cmake.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Some idea how to do that?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Below the pseudo recipe as a starting
point:</font>
<br><font size=3D2 face=3D"sans-serif">### myApp.bb ###</font>
<br><font size=3D2 face=3D"sans-serif">SUMMARY =3D &quot;my App&quot;</font>
<br><font size=3D2 face=3D"sans-serif">SECTION =3D &quot;my&quot;</font>
<br><font size=3D2 face=3D"sans-serif">LICENSE =3D &quot;CLOSED&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">inherit cmake</font>
<br>
<br><font size=3D2 face=3D"sans-serif">DEPENDS =3D &quot;libconfig libg3log=
&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">SRCREV =3D &quot;${AUTOREV}&quot;</f=
ont>
<br><font size=3D2 face=3D"sans-serif">SRC=5FURI =3D &quot;gitsm://myGitSrv=
/myApp;protocol=3Dhttp;branch=3Ddevelop&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">PVBASE :=3D &quot;${PV}&quot;</font>
<br><font size=3D2 face=3D"sans-serif">PV =3D &quot;${PVBASE}.${SRCPV}&quot=
;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">S =3D &quot;${WORKDIR}/git/&quot;</f=
ont>
<br>
<br><font size=3D2 face=3D"sans-serif">BBCLASSEXTEND =3D &quot;native nativ=
esdk&quot;</font>
<br><font size=3D2 face=3D"sans-serif">################</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Regads!</font>
<br><font size=3D2 face=3D"sans-serif"><br>
Stefan Jaritz<br>
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

--=_alternative 00257505C1258012_=--
