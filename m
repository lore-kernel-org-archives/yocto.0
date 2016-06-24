Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89762E00D08; Fri, 24 Jun 2016 03:04:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C0AFE00756
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 03:04:25 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 5655FC7E:05CF4F10-C1257FDC:003605DC;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF5655FC7E.05CF4F10-ONC1257FDC.003605DC-C1257FDC.0037551C@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Fri, 24 Jun 2016 12:04:22 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 24.06.2016 12:04:26,
	Serialize complete at 24.06.2016 12:04:26
Subject: problem with installation pathes of recipes useing cmake + cpack
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
X-List-Received-Date: Fri, 24 Jun 2016 10:04:29 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0037551CC1257FDC_="

--=_alternative 0037551CC1257FDC_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

I have several recipes which are based on cmake.  At cmake is the "make=20
package" enabled. It is based on CPack(debian).

I am using the predefined GNU installation dirs by=20
"include(GNUInstallDirs)" and its variables like CMAKE=5FINSTALL=5FFULL=5FB=
INDIR=20
etc.
(https://cmake.org/cmake/help/v3.0/module/GNUInstallDirs.html)

CMAKE=5FINSTALL=5FFULL=5FBINDIR is set to /usr/local/bin by default, when=20
building the package on my development machine outside of Yocto. That is=20
fine.

When building the same project in Yocto the CMAKE=5FINSTALL=5FFULL=5FBINDIR=
 is=20
set to usr/bin. Seems that the prefix is set by Yocto.

Any ideas how to fix that problem?

Regards

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

--=_alternative 0037551CC1257FDC_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I have several recipes which are bas=
ed
on cmake. &nbsp;At cmake is the &quot;make package&quot; enabled. It is
based on CPack(debian).</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I am using the predefined GNU instal=
lation
dirs by &quot;include(GNUInstallDirs)&quot; and its variables like CMAKE=5F=
INSTALL=5FFULL=5FBINDIR
etc.</font>
<br><font size=3D2 face=3D"sans-serif">(</font><a href=3Dhttps://cmake.org/=
cmake/help/v3.0/module/GNUInstallDirs.html><font size=3D2 color=3Dblue face=
=3D"sans-serif">https://cmake.org/cmake/help/v3.0/module/GNUInstallDirs.htm=
l</font></a><font size=3D2 face=3D"sans-serif">)</font>
<br>
<br><font size=3D2 face=3D"sans-serif">CMAKE=5FINSTALL=5FFULL=5FBINDIR is s=
et to
/usr/local/bin by default, when building the package on my development
machine outside of Yocto. That is fine.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">When building the same project in Yo=
cto
the CMAKE=5FINSTALL=5FFULL=5FBINDIR is set to usr/bin. Seems that the prefix
is set by Yocto.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Any ideas how to fix that problem?</=
font>
<br>
<br><font size=3D2 face=3D"sans-serif">Regards</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Stefan<br>
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

--=_alternative 0037551CC1257FDC_=--
