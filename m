Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84B5FE00CE1; Sun,  7 Aug 2016 23:46:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60C5DE00CB5
	for <yocto@yoctoproject.org>; Sun,  7 Aug 2016 23:46:14 -0700 (PDT)
In-Reply-To: <8f8e112c-ef50-3190-6b33-2ffb28e6b2f1@reliableembeddedsystems.com>
References: <OF371096A6.242D0E60-ONC1258006.0025F610-C1258006.0026E5CC@esa-grimma.de>	<47ea7f13-1abc-f969-c928-1da2e0075b36@gmail.com>
	<OF66EF9F5A.E44F4404-ONC1258006.00282195-C1258006.0028AE4A@esa-grimma.de>
	<8f8e112c-ef50-3190-6b33-2ffb28e6b2f1@reliableembeddedsystems.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: C4CB1189:5391F362-C1258009:0023F284;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OFC4CB1189.5391F362-ONC1258009.0023F284-C1258009.00253060@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Mon, 8 Aug 2016 08:46:12 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 08.08.2016 08:46:16,
	Serialize complete at 08.08.2016 08:46:16
Cc: "robert.berger@gmane" <gmane@reliableembeddedsystems.com>
Subject: Antwort: Re: Antwort: Re: How to set the sysroot toolchain to hard	float
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
X-List-Received-Date: Mon, 08 Aug 2016 06:46:18 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0025305FC1258009_="

--=_alternative 0025305FC1258009_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej ho

Thank you. I already know the files. My question was targeting the way how =

to set the tune option manually.

Maybee something is missed up by the layers. My bblayers.conf looks like:
#########
# POKY=5FBBLAYERS=5FCONF=5FVERSION is increased each time=20
build/conf/bblayers.conf
# changes incompatibly
POKY=5FBBLAYERS=5FCONF=5FVERSION =3D "2"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
myTC/poky/meta \
myTC/poky/meta-poky \
myTC/poky/meta-yocto-bsp \
myTC/poky/meta-atmel \
myTC/poky/meta-skeleton \
myTC/poky/meta-openembedded/meta-oe \
myTC/poky/meta-openembedded/meta-networking \
myTC/poky/meta-openembedded/meta-python \
myTC/poky/meta-mylayer \
"
#########

The priorities are set that way:

BBFILE=5FPRIORITY=5Fatmel =3D "10"
BBFILE=5FPRIORITY=5Fmylayer =3D "20"

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



Von:    "robert.berger@gmane" <gmane@reliableembeddedsystems.com>
An:     yocto@yoctoproject.org
Kopie:  public-yocto-EtnWKYl6rD/WsZ/bQMPhNw=20
<public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org>, Khem Raj=20
<public-raj.khem-Re5JQEeQqe8AvxtiuMwx3w@plane.gmane.org>
Datum:  06.08.2016 09:23
Betreff:        Re: [yocto] Antwort: Re: How to set the sysroot toolchain=20
to hard float
Gesendet von:   yocto-bounces@yoctoproject.org



Hi,

On 2016-08-05 10:24, S.Jaritz@esa-grimma.de wrote:
>
> @TOOLCHAIN=5FOPTIONS: Where these are set in custom layers(like=20
meta-atmel)?
>

If you ask me I would say here [1]:

DEFAULTTUNE =3D "cortexa5thf"

Here [2] are the available HF options:

# HF Tunes
AVAILTUNES +=3D "cortexa5hf cortexa5thf cortexa5hf-neon cortexa5thf-neon"

[1]=20
https://github.com/linux4sam/meta-atmel/blob/master/conf/machine/include/sa=
ma5d3.inc

[2]=20
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/conf/machine/inclu=
de/tune-cortexa5.inc


Regards,

Robert


--=20
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


--=_alternative 0025305FC1258009_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej ho</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Thank you. I already know the files.
My question was targeting the way how to set the tune option manually.</fon=
t>
<br>
<br><font size=3D2 face=3D"sans-serif">Maybee something is missed up by the
layers. My bblayers.conf looks like:</font>
<br><font size=3D2 face=3D"sans-serif">#########</font>
<br><font size=3D2 face=3D"sans-serif"># POKY=5FBBLAYERS=5FCONF=5FVERSION i=
s increased
each time build/conf/bblayers.conf</font>
<br><font size=3D2 face=3D"sans-serif"># changes incompatibly</font>
<br><font size=3D2 face=3D"sans-serif">POKY=5FBBLAYERS=5FCONF=5FVERSION =3D=
 &quot;2&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">BBPATH =3D &quot;${TOPDIR}&quot;</fo=
nt>
<br><font size=3D2 face=3D"sans-serif">BBFILES ?=3D &quot;&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">BBLAYERS ?=3D &quot; \</font>
<br><font size=3D2 face=3D"sans-serif">myTC/poky/meta \</font>
<br><font size=3D2 face=3D"sans-serif">myTC/poky/meta-poky \</font>
<br><font size=3D2 face=3D"sans-serif">myTC/poky/meta-yocto-bsp \</font>
<br><font size=3D2 face=3D"sans-serif">myTC/poky/meta-atmel \</font>
<br><font size=3D2 face=3D"sans-serif">myTC/poky/meta-skeleton \</font>
<br><font size=3D2 face=3D"sans-serif">myTC/poky/meta-openembedded/meta-oe
\</font>
<br><font size=3D2 face=3D"sans-serif">myTC/poky/meta-openembedded/meta-net=
working
\</font>
<br><font size=3D2 face=3D"sans-serif">myTC/poky/meta-openembedded/meta-pyt=
hon
\</font>
<br><font size=3D2 face=3D"sans-serif">myTC/poky/meta-mylayer \</font>
<br><font size=3D2 face=3D"sans-serif">&quot;</font>
<br><font size=3D2 face=3D"sans-serif">#########</font>
<br>
<br><font size=3D2 face=3D"sans-serif">The priorities are set that way:</fo=
nt>
<br>
<br><font size=3D2 face=3D"sans-serif">BBFILE=5FPRIORITY=5Fatmel =3D &quot;=
10&quot;</font>
<br><font size=3D2 face=3D"sans-serif">BBFILE=5FPRIORITY=5Fmylayer =3D &quo=
t;20&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Regards!</font>
<br><font size=3D2 face=3D"sans-serif"><br>
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
<br>
<br>
<br>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Von: &nbsp; &nbsp; &=
nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">&quot;robert.berger@gmane&q=
uot;
&lt;gmane@reliableembeddedsystems.com&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">An: &nbsp; &nbsp; &n=
bsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">yocto@yoctoproject.org</fon=
t>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Kopie: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">public-yocto-EtnWKYl6rD/WsZ=
/bQMPhNw
&lt;public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org&gt;, Khem Raj &lt;p=
ublic-raj.khem-Re5JQEeQqe8AvxtiuMwx3w@plane.gmane.org&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">06.08.2016 09:23</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: [yocto]
Antwort: Re: How to set the sysroot toolchain to hard &nbsp; &nbsp; &nbsp;
&nbsp;float</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Gesendet von: &nbsp;=
 &nbsp;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">yocto-bounces@yoctop=
roject.org</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=3D2>Hi,<br>
<br>
On 2016-08-05 10:24, S.Jaritz@esa-grimma.de wrote:<br>
&gt;<br>
&gt; @TOOLCHAIN=5FOPTIONS: Where these are set in custom layers(like meta-a=
tmel)?<br>
&gt;<br>
<br>
If you ask me I would say here [1]:<br>
<br>
DEFAULTTUNE =3D &quot;cortexa5thf&quot;<br>
<br>
Here [2] are the available HF options:<br>
<br>
# HF Tunes<br>
AVAILTUNES +=3D &quot;cortexa5hf cortexa5thf cortexa5hf-neon cortexa5thf-ne=
on&quot;<br>
<br>
[1] <br>
</font></tt><a href=3D"https://github.com/linux4sam/meta-atmel/blob/master/=
conf/machine/include/sama5d3.inc"><tt><font size=3D2>https://github.com/lin=
ux4sam/meta-atmel/blob/master/conf/machine/include/sama5d3.inc</font></tt><=
/a><tt><font size=3D2><br>
[2] <br>
</font></tt><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/=
meta/conf/machine/include/tune-cortexa5.inc"><tt><font size=3D2>http://git.=
yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/conf/machine/include/tune-cor=
texa5.inc</font></tt></a><tt><font size=3D2><br>
<br>
Regards,<br>
<br>
Robert<br>
<br>
<br>
-- <br>
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br>
yocto mailing list<br>
yocto@yoctoproject.org<br>
</font></tt><a href=3Dhttps://lists.yoctoproject.org/listinfo/yocto><tt><fo=
nt size=3D2>https://lists.yoctoproject.org/listinfo/yocto</font></tt></a><t=
t><font size=3D2><br>
</font></tt>
<br>

--=_alternative 0025305FC1258009_=--
