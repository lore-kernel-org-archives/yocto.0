Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51F7AE0071C; Wed,  2 Nov 2016 04:00:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [185.141.66.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FB06E006E9
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 04:00:02 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 7A9E9AB2:7016D687-C125805F:003A9ACA;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF7A9E9AB2.7016D687-ONC125805F.003A9ACA-C125805F.003C6CCA@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Wed, 2 Nov 2016 11:59:59 +0100
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 02.11.2016 12:00:03,
	Serialize complete at 02.11.2016 12:00:03
Subject: How to create an user bsp based on a other meta bsp layer?
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
X-List-Received-Date: Wed, 02 Nov 2016 11:00:07 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 003C6CC9C125805F_="

--=_alternative 003C6CC9C125805F_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

I want to create an own meta-bsp package for my custom mainboard based on=20
an ATMEL SAMA5D35 SoC. For that I checked the documentation=20
http://www.yoctoproject.org/docs/2.2/bsp-guide/bsp-guide.html#using-the-yoc=
to-projects-bsp-tools
.

For me it is not clear how to create a bsp package based on the meta-atmel =

package. My goal is:

1.) use the SAMA5D35 SoC -> MACHINE ??=3D "sama5d3xek"
2.) append the device tree by adding: "mySAMA.dts" and "mySAMAmb.dtsi"=20
(they use the dts files like #include "sama5d3.dtsi" from meta-atmel)
3.) adding my own defconfig for the kernel build
4.) change the configuration "at91bootstrap" which comes with the=20
meta-atmel
5.) add some own SW packages

I created a working meta-mySAMA layer. It has grown over the time into=20
some kind of meta-bsp. Think it would be nice to round everthing up by=20
creating an own meta-bsp - to make it beautiful.

Is there a tutorial for that? Or can someone explan the steps form using=20
"yocto-bsp create mySAMA xxxx"?

Regads!

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

--=_alternative 003C6CC9C125805F_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I want to create an own meta-bsp pac=
kage
for my custom mainboard based on an ATMEL SAMA5D35 SoC. For that I checked
the documentation </font><a href=3D"http://www.yoctoproject.org/docs/2.2/bs=
p-guide/bsp-guide.html#using-the-yocto-projects-bsp-tools"><font size=3D2 c=
olor=3Dblue face=3D"sans-serif">http://www.yoctoproject.org/docs/2.2/bsp-gu=
ide/bsp-guide.html#using-the-yocto-projects-bsp-tools</font></a><font size=
=3D2 face=3D"sans-serif">.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">For me it is not clear how to create
a bsp package based on the meta-atmel package. My goal is:</font>
<br>
<br><font size=3D2 face=3D"sans-serif">1.) use the SAMA5D35 SoC -&gt; MACHI=
NE
??=3D &quot;sama5d3xek&quot;</font>
<br><font size=3D2 face=3D"sans-serif">2.) append the device tree by adding:
&quot;mySAMA.dts&quot; and &quot;mySAMAmb.dtsi&quot; (they use the dts
files like #include &quot;sama5d3.dtsi&quot; from meta-atmel)</font>
<br><font size=3D2 face=3D"sans-serif">3.) adding my own defconfig for the
kernel build</font>
<br><font size=3D2 face=3D"sans-serif">4.) change the configuration &quot;a=
t91bootstrap&quot;
which comes with the meta-atmel</font>
<br><font size=3D2 face=3D"sans-serif">5.) add some own SW packages</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I created a working meta-mySAMA laye=
r.
It has grown over the time into some kind of meta-bsp. Think it would be
nice to round everthing up by creating an own meta-bsp - to make it beautif=
ul.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Is there a tutorial for that? Or can
someone explan the steps form using &quot;yocto-bsp create mySAMA xxxx&quot=
;?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Regads!<br>
<br>
Stefan<br>
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

--=_alternative 003C6CC9C125805F_=--
