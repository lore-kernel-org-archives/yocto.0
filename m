Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3379EE00DA8; Mon,  8 Aug 2016 07:52:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5175EE00D89
	for <yocto@yoctoproject.org>; Mon,  8 Aug 2016 07:52:11 -0700 (PDT)
In-Reply-To: <8f8e112c-ef50-3190-6b33-2ffb28e6b2f1@reliableembeddedsystems.com>
References: <OF371096A6.242D0E60-ONC1258006.0025F610-C1258006.0026E5CC@esa-grimma.de>	<47ea7f13-1abc-f969-c928-1da2e0075b36@gmail.com>
	<OF66EF9F5A.E44F4404-ONC1258006.00282195-C1258006.0028AE4A@esa-grimma.de>
	<8f8e112c-ef50-3190-6b33-2ffb28e6b2f1@reliableembeddedsystems.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 42C5EEE8:C8FCC8F4-C1258009:00514994;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF42C5EEE8.C8FCC8F4-ONC1258009.00514994-C1258009.0051ADED@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Mon, 8 Aug 2016 16:52:09 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 08.08.2016 16:52:13,
	Serialize complete at 08.08.2016 16:52:13
Subject: [fixed] Antwort: Re: Antwort: Re: How to set the sysroot toolchain to hard float
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
X-List-Received-Date: Mon, 08 Aug 2016 14:52:16 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0051ADEAC1258009_="

--=_alternative 0051ADEAC1258009_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

The problem was fixed. Updating meta-atmel to the current version fixes=20
the dpkg error by appending the architecture parameter to the dkpg recipe=20
(
https://github.com/linux4sam/meta-atmel/commit/63d4287f50b89496a4c72e3b5845=
e59c55887451
).

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


--=_alternative 0051ADEAC1258009_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">The problem was fixed. Updating meta-atm=
el
to the current version fixes the dpkg error by appending the architecture
parameter to the dkpg recipe (</font><a href=3D"https://github.com/linux4sa=
m/meta-atmel/commit/63d4287f50b89496a4c72e3b5845e59c55887451"><font size=3D=
2 color=3Dblue face=3D"sans-serif">https://github.com/linux4sam/meta-atmel/=
commit/63d4287f50b89496a4c72e3b5845e59c55887451</font></a><font size=3D2 fa=
ce=3D"sans-serif">).</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Regards!</font>
<br><font size=3D2 face=3D"sans-serif"><br>
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

--=_alternative 0051ADEAC1258009_=--
