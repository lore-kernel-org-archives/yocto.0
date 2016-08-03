Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79C46E00D34; Wed,  3 Aug 2016 07:17:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCCD9E00CA5
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2016 07:17:00 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 706C7B7F:CF34FCD2-C1258004:004CF8A1;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF706C7B7F.CF34FCD2-ONC1258004.004CF8A1-C1258004.004E74D0@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Wed, 3 Aug 2016 16:16:57 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 03.08.2016 16:17:01,
	Serialize complete at 03.08.2016 16:17:01
Subject: problem with package architecture
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
X-List-Received-Date: Wed, 03 Aug 2016 14:17:04 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 004E74CEC1258004_="

--=_alternative 004E74CEC1258004_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

I am using the actual Yocto version. A Yocto Linux I is build based on the =

meta-atmel layer. The system seems to be "armel" but the packages are for=20
"armhf". When running bitbake it shows:
##########
Build Configuration:
BB=5FVERSION        =3D "1.30.0"
BUILD=5FSYS         =3D "x86=5F64-linux"
NATIVELSBSTRING   =3D "universal"
TARGET=5FSYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "sama5d3xek"
DISTRO            =3D "poky-atmel"
DISTRO=5FVERSION    =3D "2.1.1"
TUNE=5FFEATURES     =3D "arm armv7a vfp thumb            callconvention-har=
d  =20
      cortexa5"
TARGET=5FFPU        =3D "hard"
meta=20
meta-poky=20
meta-yocto-bsp    =3D "krogoth:f5da2a5913319ad6ac2141438ba1aa17576326ab"
meta-atmel        =3D "krogoth:784a6a7fe94e6939325f60f4dd2cc24987ff090d"
meta-skeleton     =3D "krogoth:f5da2a5913319ad6ac2141438ba1aa17576326ab"
meta-oe=20
meta-networking=20
meta-python       =3D "krogoth:247b1267bbe95719cd4877d2d3cfbaf2a2f4865a"
##########
When entering: dpkg -i mylib1=5F1.0.0+47f1cc5ce1-r0=5Farmhf.deb
I got:
##########
dpkg: error processing archive mylib1=5F1.0.0+47f1cc5ce1-r0=5Farmhf.deb=20
(--install):
 package architecture (armhf) does not match system (armel)
Errors were encountered while processing:
mylib1=5F1.0.0+47f1cc5ce1-r0=5Farmhf.deb
##########

For me it seems that the architecture is not rightfully set. I have no=20
idea how to fix this problem. Any ideas for that?

I am patching the kernel by inserting an own devicetree file and kernel=20
config in my own meta-layer. Maybee I got problems because of that?:
@meta-atmel->layer.conf=20
BBFILE=5FPRIORITY=5Fatmel =3D "10"
@meta=5Fmylayer
BBFILE=5FPRIORITY=5Fmylayer =3D "6"

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

--=_alternative 004E74CEC1258004_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I am using the actual Yocto version.
A Yocto Linux I is build based on the meta-atmel layer. The system seems
to be &quot;armel&quot; but the packages are for &quot;armhf&quot;. When
running bitbake it shows:</font>
<br><font size=3D2 face=3D"sans-serif">##########</font>
<br><font size=3D2 face=3D"sans-serif">Build Configuration:</font>
<br><font size=3D2 face=3D"sans-serif">BB=5FVERSION &nbsp; &nbsp; &nbsp; &n=
bsp;=3D
&quot;1.30.0&quot;</font>
<br><font size=3D2 face=3D"sans-serif">BUILD=5FSYS &nbsp; &nbsp; &nbsp; &nb=
sp;
=3D &quot;x86=5F64-linux&quot;</font>
<br><font size=3D2 face=3D"sans-serif">NATIVELSBSTRING &nbsp; =3D &quot;uni=
versal&quot;</font>
<br><font size=3D2 face=3D"sans-serif">TARGET=5FSYS &nbsp; &nbsp; &nbsp; &n=
bsp;=3D
&quot;arm-poky-linux-gnueabi&quot;</font>
<br><font size=3D2 face=3D"sans-serif">MACHINE &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; =3D &quot;sama5d3xek&quot;</font>
<br><font size=3D2 face=3D"sans-serif">DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;
&nbsp;=3D &quot;poky-atmel&quot;</font>
<br><font size=3D2 face=3D"sans-serif">DISTRO=5FVERSION &nbsp; &nbsp;=3D &q=
uot;2.1.1&quot;</font>
<br><font size=3D2 face=3D"sans-serif">TUNE=5FFEATURES &nbsp; &nbsp; =3D &q=
uot;arm
armv7a vfp thumb &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;callconvention-ha=
rd
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;cortexa5&quot;</font>
<br><font size=3D2 face=3D"sans-serif">TARGET=5FFPU &nbsp; &nbsp; &nbsp; &n=
bsp;=3D
&quot;hard&quot;</font>
<br><font size=3D2 face=3D"sans-serif">meta &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;
&nbsp; &nbsp;</font>
<br><font size=3D2 face=3D"sans-serif">meta-poky &nbsp; &nbsp; &nbsp; &nbsp;
</font>
<br><font size=3D2 face=3D"sans-serif">meta-yocto-bsp &nbsp; &nbsp;=3D &quo=
t;krogoth:f5da2a5913319ad6ac2141438ba1aa17576326ab&quot;</font>
<br><font size=3D2 face=3D"sans-serif">meta-atmel &nbsp; &nbsp; &nbsp; &nbs=
p;=3D
&quot;krogoth:784a6a7fe94e6939325f60f4dd2cc24987ff090d&quot;</font>
<br><font size=3D2 face=3D"sans-serif">meta-skeleton &nbsp; &nbsp; =3D &quo=
t;krogoth:f5da2a5913319ad6ac2141438ba1aa17576326ab&quot;</font>
<br><font size=3D2 face=3D"sans-serif">meta-oe &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; </font>
<br><font size=3D2 face=3D"sans-serif">meta-networking &nbsp; </font>
<br><font size=3D2 face=3D"sans-serif">meta-python &nbsp; &nbsp; &nbsp; =3D=
 &quot;krogoth:247b1267bbe95719cd4877d2d3cfbaf2a2f4865a&quot;</font>
<br><font size=3D2 face=3D"sans-serif">##########</font>
<br><font size=3D2 face=3D"sans-serif">When entering: dpkg -i mylib1=5F1.0.=
0+47f1cc5ce1-r0=5Farmhf.deb</font>
<br><font size=3D2 face=3D"sans-serif">I got:</font>
<br><font size=3D2 face=3D"sans-serif">##########</font>
<br><font size=3D2 face=3D"sans-serif">dpkg: error processing archive mylib=
1=5F1.0.0+47f1cc5ce1-r0=5Farmhf.deb
(--install):</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp;package architecture (armhf) d=
oes
not match system (armel)</font>
<br><font size=3D2 face=3D"sans-serif">Errors were encountered while proces=
sing:</font>
<br><font size=3D2 face=3D"sans-serif">mylib1=5F1.0.0+47f1cc5ce1-r0=5Farmhf=
.deb</font>
<br><font size=3D2 face=3D"sans-serif">##########</font>
<br>
<br><font size=3D2 face=3D"sans-serif">For me it seems that the architecture
is not rightfully set. I have no idea how to fix this problem. Any ideas
for that?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I am patching the kernel by inserting
an own devicetree file and kernel config in my own meta-layer. Maybee I
got problems because of that?:</font>
<br><font size=3D2 face=3D"sans-serif">@meta-atmel-&gt;layer.conf </font>
<br><font size=3D2 face=3D"sans-serif">BBFILE=5FPRIORITY=5Fatmel =3D &quot;=
10&quot;</font>
<br><font size=3D2 face=3D"sans-serif">@meta=5Fmylayer</font>
<br><font size=3D2 face=3D"sans-serif">BBFILE=5FPRIORITY=5Fmylayer =3D &quo=
t;6&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Regards!</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Stefan Jaritz<br>
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

--=_alternative 004E74CEC1258004_=--
