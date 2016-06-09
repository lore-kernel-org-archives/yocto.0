Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22D18E00D02; Thu,  9 Jun 2016 02:00:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98557E00C10
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2016 02:00:10 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 631D75D9:DBAD0BFE-C1257FCD:0030963E;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF631D75D9.DBAD0BFE-ONC1257FCD.0030963E-C1257FCD.00317358@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Thu, 9 Jun 2016 11:00:07 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 09.06.2016 11:00:12,
	Serialize complete at 09.06.2016 11:00:12
Subject: Problems with do_rootfs when changing the user password
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
X-List-Received-Date: Thu, 09 Jun 2016 09:00:16 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00317358C1257FCD_="

--=_alternative 00317358C1257FCD_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

I want to change the root password. For that I create the recipe=20
"myNewPassword.bb" with:
################
SUMMARY =3D "my new password"
SECTION =3D "new"
LICENSE =3D "CLOSED"

inherit extrausers

EXTRA=5FUSERS=5FPARAMS =3D "\
        usermod -P xyz root; \
"
################

compiling and packaging works fine.

In my layer I add at the layer.conf:
################
IMAGE=5FINSTALL=5Fappend=3D" myNewPassword"
################

When do=5Frootfs (core-image-minimal) the package could not be found. A=20
deb(ug) Package was created.

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

--=_alternative 00317358C1257FCD_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I want to change the root password.
For that I create the recipe &quot;myNewPassword.bb&quot; with:</font>
<br><font size=3D2 face=3D"sans-serif">################</font>
<br><font size=3D2 face=3D"sans-serif">SUMMARY =3D &quot;my new password&qu=
ot;</font>
<br><font size=3D2 face=3D"sans-serif">SECTION =3D &quot;new&quot;</font>
<br><font size=3D2 face=3D"sans-serif">LICENSE =3D &quot;CLOSED&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">inherit extrausers</font>
<br>
<br><font size=3D2 face=3D"sans-serif">EXTRA=5FUSERS=5FPARAMS =3D &quot;\</=
font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; usermod
-P xyz root; \</font>
<br><font size=3D2 face=3D"sans-serif">&quot;</font>
<br><font size=3D2 face=3D"sans-serif">################</font>
<br>
<br><font size=3D2 face=3D"sans-serif">compiling and packaging works fine.<=
/font>
<br>
<br><font size=3D2 face=3D"sans-serif">In my layer I add at the layer.conf:=
</font>
<br><font size=3D2 face=3D"sans-serif">################</font>
<br><font size=3D2 face=3D"sans-serif">IMAGE=5FINSTALL=5Fappend=3D&quot; my=
NewPassword&quot;</font>
<br><font size=3D2 face=3D"sans-serif">################</font>
<br>
<br><font size=3D2 face=3D"sans-serif">When do=5Frootfs (core-image-minimal)
the package could not be found. A deb(ug) Package was created.</font>
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

--=_alternative 00317358C1257FCD_=--
