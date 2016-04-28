Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06C78E00DA7; Thu, 28 Apr 2016 02:50:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DA69E00DA2
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 02:50:07 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: CE91FA1F:8F1BAE31-C1257FA3:0034C745;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Thu, 28 Apr 2016 11:50:04 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 28.04.2016 11:50:08,
	Serialize complete at 28.04.2016 11:50:08
Subject: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Thu, 28 Apr 2016 09:50:11 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00360637C1257FA3_="

--=_alternative 00360637C1257FA3_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

I like to include the hiredis library. I created a recipe and modified the =

EXTRA=5FOEMAKE. The compilation works (in the git directory object, "so" an=
d=20
"a" files are generated). But the generated files are not placed into=20
packages.

Any ideas?

below there is the "libhiredis.bb" file:
#########
SUMMARY =3D "libhiredis"
SECTION =3D "sek4"
LICENSE =3D "COPYING"
LIC=5FFILES=5FCHKSUM =3D "file://$
{WORKDIR}/git/COPYING;md5=3Dd84d659a35c666d23233e54503aaea51"

# 0.13.3
# SRCREV =3D "010756025e8cefd1bc66c6d4ed3b1648ef6f1f95"
SRC=5FURI =3D "git://github.com/redis/hiredis.git;rev=3Dv0.13.3"

S =3D "${WORKDIR}/git/"

# we need to pass the Cxx parameter extra to the make call
EXTRA=5FOEMAKE =3D "'CC=3D${CC}' 'RANLIB=3D${RANLIB}' 'AR=3D${AR}' 'CFLAGS=
=3D${CFLAGS}=20
-I${S}/include' 'BUILDDIR=3D${S}'"
#########

Regards!
Stefan

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

--=_alternative 00360637C1257FA3_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I like to include the hiredis librar=
y.
I created a recipe and modified the EXTRA=5FOEMAKE. The compilation works
(in the git directory object, &quot;so&quot; and &quot;a&quot; files are
generated). But the generated files are not placed into packages.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Any ideas?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">below there is the &quot;libhiredis.=
bb&quot;
file:</font>
<br><font size=3D2 face=3D"sans-serif">#########</font>
<br><font size=3D2 face=3D"sans-serif">SUMMARY =3D &quot;libhiredis&quot;</=
font>
<br><font size=3D2 face=3D"sans-serif">SECTION =3D &quot;sek4&quot;</font>
<br><font size=3D2 face=3D"sans-serif">LICENSE =3D &quot;COPYING&quot;</fon=
t>
<br><font size=3D2 face=3D"sans-serif">LIC=5FFILES=5FCHKSUM =3D &quot;</fon=
t><a href=3Dfile://$/><font size=3D2 color=3Dblue face=3D"sans-serif">file:=
//$</font></a><font size=3D2 face=3D"sans-serif">{WORKDIR}/git/COPYING;md5=
=3Dd84d659a35c666d23233e54503aaea51&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif"># 0.13.3</font>
<br><font size=3D2 face=3D"sans-serif"># SRCREV =3D &quot;010756025e8cefd1b=
c66c6d4ed3b1648ef6f1f95&quot;</font>
<br><font size=3D2 face=3D"sans-serif">SRC=5FURI =3D &quot;git://github.com=
/redis/hiredis.git;rev=3Dv0.13.3&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">S =3D &quot;${WORKDIR}/git/&quot;</f=
ont>
<br>
<br><font size=3D2 face=3D"sans-serif"># we need to pass the Cxx parameter
extra to the make call</font>
<br><font size=3D2 face=3D"sans-serif">EXTRA=5FOEMAKE =3D &quot;'CC=3D${CC}=
' 'RANLIB=3D${RANLIB}'
'AR=3D${AR}' 'CFLAGS=3D${CFLAGS} -I${S}/include' 'BUILDDIR=3D${S}'&quot;</f=
ont>
<br><font size=3D2 face=3D"sans-serif">#########</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Regards!</font>
<br><font size=3D2 face=3D"sans-serif">Stefan</font>
<br><font size=3D2 face=3D"sans-serif"><br>
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

--=_alternative 00360637C1257FA3_=--
