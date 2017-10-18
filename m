Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64968E00D0D; Wed, 18 Oct 2017 02:41:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 377 seconds by postgrey-1.32 at yocto-www;
	Wed, 18 Oct 2017 02:41:41 PDT
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [185.141.66.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC682E00CEC
	for <yocto@yoctoproject.org>; Wed, 18 Oct 2017 02:41:41 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: B7E18F38:86C087C5-C12581BD:003374BC;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OFB7E18F38.86C087C5-ONC12581BD.003374BC-C12581BD.0034AD6C@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Wed, 18 Oct 2017 11:35:22 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 18.10.2017 11:41:43,
	Serialize complete at 18.10.2017 11:41:43
Subject: Where to find the udevadm monitor?
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
X-List-Received-Date: Wed, 18 Oct 2017 09:41:44 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0034AD69C12581BD_="

--=_alternative 0034AD69C12581BD_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej,

Actually I am playing a bit arround with udev rules. For that I like to=20
use the udevadm monitor. The udev is provided by=20

/meta/recipes-core/udev/eudev=5F3.2.2.bb

In this recipe there is no udevadm option. While checking, I saw it was=20
once in udev-utils and been moved to udev.inc.

https://patchwork.openembedded.org/patch/73987/

Since then udev has been replaced with eudev. Seems that udevadm got=20
"lost" by the move from udev to eudev - or it went to an other recipe.

My question is:

Where to find a recipe containing udevadm/what options I need to set to=20
include this program?

Regards

Stefan

------------------------------------------------------------
ESA Elektroschaltanlagen Grimma GmbH
Broner Ring 30
04668 Grimma
Telefon: +49 3437 9211 181
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

--=_alternative 0034AD69C12581BD_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej,</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Actually I am playing a bit arround
with udev rules. For that I like to use the udevadm monitor. The udev is
provided by </font>
<br>
<br><font size=3D2 face=3D"sans-serif">/meta/recipes-core/udev/eudev=5F3.2.=
2.bb</font>
<br>
<br><font size=3D2 face=3D"sans-serif">In this recipe there is no udevadm o=
ption.
While checking, I saw it was once in udev-utils and been moved to udev.inc.=
</font>
<br>
<br><a href=3Dhttps://patchwork.openembedded.org/patch/73987/><font size=3D=
2 color=3Dblue face=3D"sans-serif">https://patchwork.openembedded.org/patch=
/73987/</font></a>
<br>
<br><font size=3D2 face=3D"sans-serif">Since then udev has been replaced wi=
th
eudev. Seems that udevadm got &quot;lost&quot; by the move from udev to
eudev - or it went to an other recipe.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">My question is:</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Where to find a recipe containing ud=
evadm/what
options I need to set to include this program?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Regards</font>
<br><font size=3D2 face=3D"sans-serif"><br>
Stefan<br>
<br>
------------------------------------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: +49 3437 9211 181<br>
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

--=_alternative 0034AD69C12581BD_=--
