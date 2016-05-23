Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0637DE00CE6; Mon, 23 May 2016 06:37:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67B17E00CB0
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 06:37:16 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: D3CFEA30:52570675-C1257FBC:0049688D;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OFD3CFEA30.52570675-ONC1257FBC.0049688D-C1257FBC.004AD217@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Mon, 23 May 2016 15:37:14 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 23.05.2016 15:37:18,
	Serialize complete at 23.05.2016 15:37:18
Subject: How can I set a recipe that its binaries become available at cross-compile time?
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
X-List-Received-Date: Mon, 23 May 2016 13:37:20 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 004AD217C1257FBC_="

--=_alternative 004AD217C1257FBC_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

I a cmake based application, some code generation via dbusxx-xml2cpp. It=20
is provided by the dbuss-c++ lib. A recipe can be found under:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/tree/meta-ivi-demo/recip=
es-extended/dbus-c++?id=3Db90c2a20744e1e82b2169a88e68d7677bec907b6

It working and it's compiling & linking, "dbusxx-xml2cpp" is included at=20
the native build.

How can I set a recipe that its binaries become available at cross-compile =

time?

Best regards!

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

--=_alternative 004AD217C1257FBC_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I a cmake based application, some co=
de
generation via dbusxx-xml2cpp. It is provided by the dbuss-c++ lib. A recipe
can be found under:</font>
<br>
<br><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/tree/meta=
-ivi-demo/recipes-extended/dbus-c++?id=3Db90c2a20744e1e82b2169a88e68d7677be=
c907b6"><font size=3D2 color=3Dblue face=3D"sans-serif">http://git.yoctopro=
ject.org/cgit/cgit.cgi/meta-ivi/tree/meta-ivi-demo/recipes-extended/dbus-c+=
+?id=3Db90c2a20744e1e82b2169a88e68d7677bec907b6</font></a>
<br>
<br><font size=3D2 face=3D"sans-serif">It working and it's compiling &amp;
linking, &quot;dbusxx-xml2cpp&quot; is included at the native build.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">How can I set a recipe that its bina=
ries
become available at cross-compile time?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Best regards!<br>
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

--=_alternative 004AD217C1257FBC_=--
