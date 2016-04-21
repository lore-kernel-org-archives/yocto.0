Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 062E1E00DA3; Thu, 21 Apr 2016 08:17:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 480 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Apr 2016 08:17:37 PDT
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AAE2E0077F
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 08:17:36 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 0C6F089D:524ED2DE-C1257F9C:0052415B;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF0C6F089D.524ED2DE-ONC1257F9C.0052415B-C1257F9C.00534696@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Thu, 21 Apr 2016 17:09:35 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 21.04.2016 17:17:37,
	Serialize complete at 21.04.2016 17:17:37
Subject: Binary Configuration Support
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
X-List-Received-Date: Thu, 21 Apr 2016 15:17:39 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00534695C1257F9C_="

--=_alternative 00534695C1257F9C_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej,

I read that there is a way to the binary configuration (
https://wiki.yoctoproject.org/wiki/Binary=5Fconfiguration=5Fsupport). It is=
=20
described jow this internally works. But I am missing an example how to=20
use it praticaly.

My learning system is a SAMA5D3x Eval board from Atmel. For that I am=20
using the meta-atmel layer to generate an kernel + rootfs. Now I want to=20
configure the network to static IPs etc. For me the binary support seems=20
designed for that.

Can you explain me, how to use it?

http://stackoverflow.com/questions/36764613/how-to-configurate-yocto-builds=
-by-useing-the-binary-configuration

Kind regards!

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

--=_alternative 00534695C1257F9C_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej,</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I read that there is a way to the bi=
nary
configuration (</font><a href=3Dhttps://wiki.yoctoproject.org/wiki/Binary=
=5Fconfiguration=5Fsupport><font size=3D2 color=3Dblue face=3D"sans-serif">=
https://wiki.yoctoproject.org/wiki/Binary=5Fconfiguration=5Fsupport</font><=
/a><font size=3D2 face=3D"sans-serif">).
It is described jow this internally works. But I am missing an example
how to use it praticaly.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">My learning system is a SAMA5D3x Eval
board from Atmel. For that I am using the meta-atmel layer to generate
an kernel + rootfs. Now I want to configure the network to static IPs etc.
For me the binary support seems designed for that.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Can you explain me, how to use it?</=
font>
<br>
<br><a href=3D"http://stackoverflow.com/questions/36764613/how-to-configura=
te-yocto-builds-by-useing-the-binary-configuration"><font size=3D2 color=3D=
blue face=3D"sans-serif">http://stackoverflow.com/questions/36764613/how-to=
-configurate-yocto-builds-by-useing-the-binary-configuration</font></a>
<br>
<br><font size=3D2 face=3D"sans-serif">Kind regards!<br>
<br>
Stefan Jaritz<br>
<br>
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

--=_alternative 00534695C1257F9C_=--
