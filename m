Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50E12E00D00; Fri,  5 Aug 2016 00:24:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CEACE00CF9
	for <yocto@yoctoproject.org>; Fri,  5 Aug 2016 00:24:22 -0700 (PDT)
In-Reply-To: <47ea7f13-1abc-f969-c928-1da2e0075b36@gmail.com>
References: <OF371096A6.242D0E60-ONC1258006.0025F610-C1258006.0026E5CC@esa-grimma.de>
	<47ea7f13-1abc-f969-c928-1da2e0075b36@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
MIME-Version: 1.0
X-KeepSent: 66EF9F5A:E44F4404-C1258006:00282195;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF66EF9F5A.E44F4404-ONC1258006.00282195-C1258006.0028AE4A@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Fri, 5 Aug 2016 09:24:20 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 05.08.2016 09:24:23,
	Serialize complete at 05.08.2016 09:24:23
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Antwort: Re: How to set the sysroot toolchain to hard float
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
X-List-Received-Date: Fri, 05 Aug 2016 07:24:25 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0028AE48C1258006_="

--=_alternative 0028AE48C1258006_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

hej

@find out:
transfer a build package into the evalboard and try to install it. I am=20
using deb packages. dpkg gives me an error  because of architecture.

@print configuration output:
###########
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
###########

@TOOLCHAIN=5FOPTIONS: Where these are set in custom layers(like meta-atmel)?

regards

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



Von:    Khem Raj <raj.khem@gmail.com>
An:     S.Jaritz@esa-grimma.de, Yocto Project <yocto@yoctoproject.org>
Datum:  05.08.2016 09:16
Betreff:        Re: [yocto] How to set the sysroot toolchain to hard float





On 8/5/16 12:04 AM, S.Jaritz@esa-grimma.de wrote:
> Hej
>=20
> I am building for the Atmel Evalbaord SAMA5D3x a Yocto Image. It works
> fine, but sysroot toolchain is set to soft float instead of hard float.
> How can I set the sysroot toolchain to hard float?
>=20
> My actual configuration:
> 1.) use meta-atmel layer
> 2.) in /build/conf/layer.conf -> MACHINE ??=3D "sama5d3xek"
>=20
> @meta-atmel:
> /conf/machine/sama5d3xek.conf includes sama5d3.inc
> in this file:
> SOC=5FFAMILY =3D "sama5:sama5d3"
> DEFAULTTUNE =3D "cortexa5thf"
>=20
> I am not understanding why for the sysroot the default tune is not used.
> Any ideas are welcome.

How did you find that out ? can you send your build configuration output
that bitbake prints when starting the build ?
secondly, TOOLCHAIN=5FOPTIONS is what decides this ABI
so when you use CC and CXX and friends, the right thing happens since it
will be appending TOOLCHAIN=5FOPTIONS to these vars. but if you use bare
cross compiler that will default to soft-float

>=20
>=20
> Regards!
>=20
> Stefan Jaritz
> ------------------------------------------------------------
> ESA Elektroschaltanlagen Grimma GmbH
> Broner Ring 30
> 04668 Grimma
> Telefon: +49 3437 9211 176
> Telefax: +49 3437 9211 26
> E-Mail: s.jaritz@esa-grimma.de
> Internet: www.esa-grimma.de
>=20
>=20
> Gesch=E4ftsf=FChrer:
> Dipl.-Ing. J=F6rg Gaitzsch
> J=F6rg Reinker
>=20
> Sitz der Gesellschaft: Grimma
> Ust.-ID: DE 141784437
> Amtsgericht: Leipzig, HRB 5159
> Steuernummer: 238/108/00755
>=20
>=20
> Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte
> Informationen.
> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich
> erhalten
> haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
> Mail
> ist nicht gestattet.
>=20
> This e-mail may contain confidential and/or privileged information. If
> you are
> not the intended recipient (or have received this e-mail in error)=20
please
> notify the sender immediately and destroy this e-mail. Any unauthorized
> copying, disclosure or distribution of the material in this e-mail is
> strictly
> forbidden.
>=20
>=20


--=_alternative 0028AE48C1258006_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">@find out:</font>
<br><font size=3D2 face=3D"sans-serif">transfer a build package into the ev=
alboard
and try to install it. I am using deb packages. dpkg gives me an error
&nbsp;because of architecture.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">@print configuration output:</font>
<br><font size=3D2 face=3D"sans-serif">###########</font>
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
<br><font size=3D2 face=3D"sans-serif">###########</font>
<br>
<br><font size=3D2 face=3D"sans-serif">@TOOLCHAIN=5FOPTIONS: Where these are
set in custom layers(like meta-atmel)?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">regards<br>
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
<br>
<br>
<br>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Von: &nbsp; &nbsp; &=
nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">Khem Raj &lt;raj.khem@gmail=
.com&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">An: &nbsp; &nbsp; &n=
bsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">S.Jaritz@esa-grimma.de,
Yocto Project &lt;yocto@yoctoproject.org&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">05.08.2016 09:16</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: [yocto]
How to set the sysroot toolchain to hard float</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=3D2><br>
<br>
On 8/5/16 12:04 AM, S.Jaritz@esa-grimma.de wrote:<br>
&gt; Hej<br>
&gt; <br>
&gt; I am building for the Atmel Evalbaord SAMA5D3x a Yocto Image. It works=
<br>
&gt; fine, but sysroot toolchain is set to soft float instead of hard float=
.<br>
&gt; How can I set the sysroot toolchain to hard float?<br>
&gt; <br>
&gt; My actual configuration:<br>
&gt; 1.) use meta-atmel layer<br>
&gt; 2.) in /build/conf/layer.conf -&gt; MACHINE ??=3D &quot;sama5d3xek&quo=
t;<br>
&gt; <br>
&gt; @meta-atmel:<br>
&gt; /conf/machine/sama5d3xek.conf includes sama5d3.inc<br>
&gt; in this file:<br>
&gt; SOC=5FFAMILY =3D &quot;sama5:sama5d3&quot;<br>
&gt; DEFAULTTUNE =3D &quot;cortexa5thf&quot;<br>
&gt; <br>
&gt; I am not understanding why for the sysroot the default tune is not
used.<br>
&gt; Any ideas are welcome.<br>
<br>
How did you find that out ? can you send your build configuration output<br>
that bitbake prints when starting the build ?<br>
secondly, TOOLCHAIN=5FOPTIONS is what decides this ABI<br>
so when you use CC and CXX and friends, the right thing happens since it<br>
will be appending TOOLCHAIN=5FOPTIONS to these vars. but if you use bare<br>
cross compiler that will default to soft-float<br>
<br>
&gt; <br>
&gt; <br>
&gt; Regards!<br>
&gt; <br>
&gt; Stefan Jaritz<br>
&gt; ------------------------------------------------------------<br>
&gt; ESA Elektroschaltanlagen Grimma GmbH<br>
&gt; Broner Ring 30<br>
&gt; 04668 Grimma<br>
&gt; Telefon: +49 3437 9211 176<br>
&gt; Telefax: +49 3437 9211 26<br>
&gt; E-Mail: s.jaritz@esa-grimma.de<br>
&gt; Internet: </font></tt><a href=3D"www.esa-grimma.de"><tt><font size=3D2=
>www.esa-grimma.de</font></tt></a><tt><font size=3D2><br>
&gt; <br>
&gt; <br>
&gt; Gesch=E4ftsf=FChrer:<br>
&gt; Dipl.-Ing. J=F6rg Gaitzsch<br>
&gt; J=F6rg Reinker<br>
&gt; <br>
&gt; Sitz der Gesellschaft: Grimma<br>
&gt; Ust.-ID: DE 141784437<br>
&gt; Amtsgericht: Leipzig, HRB 5159<br>
&gt; Steuernummer: 238/108/00755<br>
&gt; <br>
&gt; <br>
&gt; Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte<br>
&gt; Informationen.<br>
&gt; Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmli=
ch<br>
&gt; erhalten<br>
&gt; haben, informieren Sie bitte sofort den Absender und l=F6schen Sie die=
se<br>
&gt; Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe
dieser<br>
&gt; Mail<br>
&gt; ist nicht gestattet.<br>
&gt; <br>
&gt; This e-mail may contain confidential and/or privileged information.
If<br>
&gt; you are<br>
&gt; not the intended recipient (or have received this e-mail in error)
please<br>
&gt; notify the sender immediately and destroy this e-mail. Any unauthorize=
d<br>
&gt; copying, disclosure or distribution of the material in this e-mail
is<br>
&gt; strictly<br>
&gt; forbidden.<br>
&gt; <br>
&gt; <br>
</font></tt>
<br>

--=_alternative 0028AE48C1258006_=--
