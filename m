Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28F25E00EEE; Fri,  5 Aug 2016 00:04:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABD01E00D03
	for <yocto@yoctoproject.org>; Fri,  5 Aug 2016 00:04:53 -0700 (PDT)
To: Yocto Project <yocto@yoctoproject.org>
MIME-Version: 1.0
X-KeepSent: 371096A6:242D0E60-C1258006:0025F610;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF371096A6.242D0E60-ONC1258006.0025F610-C1258006.0026E5CC@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Fri, 5 Aug 2016 09:04:52 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 05.08.2016 09:04:54,
	Serialize complete at 05.08.2016 09:04:54
Subject: How to set the sysroot toolchain to hard float
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
X-List-Received-Date: Fri, 05 Aug 2016 07:04:58 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0026E5C8C1258006_="

--=_alternative 0026E5C8C1258006_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

I am building for the Atmel Evalbaord SAMA5D3x a Yocto Image. It works=20
fine, but sysroot toolchain is set to soft float instead of hard float.=20
How can I set the sysroot toolchain to hard float?

My actual configuration:
1.) use meta-atmel layer
2.) in /build/conf/layer.conf -> MACHINE ??=3D "sama5d3xek"

@meta-atmel:
/conf/machine/sama5d3xek.conf includes sama5d3.inc
in this file:
SOC=5FFAMILY =3D "sama5:sama5d3"
DEFAULTTUNE =3D "cortexa5thf"

I am not understanding why for the sysroot the default tune is not used.=20
Any ideas are welcome.


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

--=_alternative 0026E5C8C1258006_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I am building for the Atmel Evalbaord
SAMA5D3x a Yocto Image. It works fine, but sysroot toolchain is set to
soft float instead of hard float. How can I set the sysroot toolchain to
hard float?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">My actual configuration:</font>
<br><font size=3D2 face=3D"sans-serif">1.) use meta-atmel layer</font>
<br><font size=3D2 face=3D"sans-serif">2.) in /build/conf/layer.conf -&gt;
MACHINE ??=3D &quot;sama5d3xek&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">@meta-atmel:</font>
<br><font size=3D2 face=3D"sans-serif">/conf/machine/sama5d3xek.conf includ=
es
sama5d3.inc</font>
<br><font size=3D2 face=3D"sans-serif">in this file:</font>
<br><font size=3D2 face=3D"sans-serif">SOC=5FFAMILY =3D &quot;sama5:sama5d3=
&quot;</font>
<br><font size=3D2 face=3D"sans-serif">DEFAULTTUNE =3D &quot;cortexa5thf&qu=
ot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I am not understanding why for the s=
ysroot
the default tune is not used. Any ideas are welcome.</font>
<br>
<br>
<br><font size=3D2 face=3D"sans-serif">Regards!<br>
<br>
Stefan Jaritz<br>
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

--=_alternative 0026E5C8C1258006_=--
