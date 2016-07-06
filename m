Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 395BAE00C60; Wed,  6 Jul 2016 07:44:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B8A5E00855
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 07:44:50 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 927BD932:09AFBA11-C1257FE8:00500F45;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF927BD932.09AFBA11-ONC1257FE8.00500F45-C1257FE8.005101E1@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Wed, 6 Jul 2016 16:44:48 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 06.07.2016 16:44:52,
	Serialize complete at 06.07.2016 16:44:52
Subject: How to create a directory for an SD-Card mount?
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
X-List-Received-Date: Wed, 06 Jul 2016 14:44:54 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 005101E1C1257FE8_="

--=_alternative 005101E1C1257FE8_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

I managed to create and install a rule that should mount a sd card to=20
"/media/sd1".  To finish it, I need to create the directory "sd1" in=20
media.
My recipe for the rule looks like:
###################
SUMMARY =3D "the udev rules for the board"
SECTION =3D "rules"
LICENSE =3D "CLOSED"

SRC=5FURI =3D "file://50-mmc.rules \
        "
S =3D "${WORKDIR}"

do=5Finstall () {
        install -d ${D}${sysconfdir}/udev/rules.d
        install -m 0644 ${WORKDIR}/50-mmc.rules=20
${D}${sysconfdir}/udev/rules.d/
}
###################
How to create a dir in do=5Finstall which goes to the package?

By the way:
I was also appending fstab after this article

https://communities.intel.com/thread/49251

Is there an better way to uncomment/modify that one line in fstab?

Regards!

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

--=_alternative 005101E1C1257FE8_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I managed to create and install a ru=
le
that should mount a sd card to &quot;/media/sd1&quot;. &nbsp;To finish
it, I need to create the directory &quot;sd1&quot; in media.</font>
<br><font size=3D2 face=3D"sans-serif">My recipe for the rule looks like:</=
font>
<br><font size=3D2 face=3D"sans-serif">###################</font>
<br><font size=3D2 face=3D"sans-serif">SUMMARY =3D &quot;the udev rules for=
 the
board&quot;</font>
<br><font size=3D2 face=3D"sans-serif">SECTION =3D &quot;rules&quot;</font>
<br><font size=3D2 face=3D"sans-serif">LICENSE =3D &quot;CLOSED&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">SRC=5FURI =3D &quot;</font><a href=
=3D"file://50-mmc.rules/"><font size=3D2 color=3Dblue face=3D"sans-serif">f=
ile://50-mmc.rules</font></a><font size=3D2 face=3D"sans-serif">
\</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &quot;</=
font>
<br><font size=3D2 face=3D"sans-serif">S =3D &quot;${WORKDIR}&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">do=5Finstall () {</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; install
-d ${D}${sysconfdir}/udev/rules.d</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; install
-m 0644 ${WORKDIR}/50-mmc.rules ${D}${sysconfdir}/udev/rules.d/</font>
<br><font size=3D2 face=3D"sans-serif">}</font>
<br><font size=3D2 face=3D"sans-serif">###################</font>
<br><font size=3D2 face=3D"sans-serif">How to create a dir in do=5Finstall =
which
goes to the package?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">By the way:</font>
<br><font size=3D2 face=3D"sans-serif">I was also appending fstab after this
article</font>
<br>
<br><a href=3Dhttps://communities.intel.com/thread/49251><font size=3D2 col=
or=3Dblue face=3D"sans-serif">https://communities.intel.com/thread/49251</f=
ont></a>
<br>
<br><font size=3D2 face=3D"sans-serif">Is there an better way to uncomment/=
modify
that one line in fstab?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Regards!<br>
<br>
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

--=_alternative 005101E1C1257FE8_=--
