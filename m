Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CC17E00D57; Thu,  9 Jun 2016 08:17:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D4DFE00D4F
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2016 08:17:35 -0700 (PDT)
In-Reply-To: <CAHiDW_HFdwtg+eQDVzvwPKKA18ruRisYyiqbUZ5W0WDW6HqhCg@mail.gmail.com>
References: <OF631D75D9.DBAD0BFE-ONC1257FCD.0030963E-C1257FCD.00317358@esa-grimma.de>
	<CAHiDW_HFdwtg+eQDVzvwPKKA18ruRisYyiqbUZ5W0WDW6HqhCg@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>,
	Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
MIME-Version: 1.0
X-KeepSent: E919EA27:F1B27E75-C1257FCD:0052E7E6;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OFE919EA27.F1B27E75-ONC1257FCD.0052E7E6-C1257FCD.0054015A@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Thu, 9 Jun 2016 17:17:33 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 09.06.2016 17:17:36,
	Serialize complete at 09.06.2016 17:17:36
Cc: yocto@yoctoproject.org
Subject: Antwort: Re: Problems with do_rootfs when changing the user password
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
X-List-Received-Date: Thu, 09 Jun 2016 15:17:38 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0054015AC1257FCD_="

--=_alternative 0054015AC1257FCD_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

Thanks for the infos. I figured out that the common tutorial under=20
meta-skeleton does not covers the change of the root password. Although=20
"usermod -P" does not exits. Now the "usermod -p" wants a encrypted=20
password. Looks like most of the examples at the www are little outdated.=20
My question is now:

How are the steps to (re)set the root password?

If you like I would prefer to solve this question like a tutorial.

The starting point is a own layer ("myLayer") and a password=20
("myNewPassword1234").

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



Von:    Jussi Kukkonen <jussi.kukkonen@intel.com>
An:     S.Jaritz@esa-grimma.de
Kopie:  Yocto Project <yocto@yoctoproject.org>
Datum:  09.06.2016 12:00
Betreff:        Re: [yocto] Problems with do=5Frootfs when changing the use=
r=20
password



On 9 June 2016 at 12:00, <S.Jaritz@esa-grimma.de> wrote:
>
> Hej
>
> I want to change the root password. For that I create the recipe=20
"myNewPassword.bb" with:
> ################
> SUMMARY =3D "my new password"
> SECTION =3D "new"
> LICENSE =3D "CLOSED"
>
> inherit extrausers
>
> EXTRA=5FUSERS=5FPARAMS =3D "\
>         usermod -P xyz root; \
> "
> ################
>
> compiling and packaging works fine.
>
> In my layer I add at the layer.conf:
> ################
> IMAGE=5FINSTALL=5Fappend=3D" myNewPassword"
> ################
>
> When do=5Frootfs (core-image-minimal) the package could not be found. A=20
deb(ug) Package was created.

If your package would contain no files, bitbake will not produce it at=20
all. You should be able to override this with:=20
    ALLOW=5FEMPTY=5F${PN} =3D "1"

 - Jussi

=20
>
> Regards!
>
> Stefan Jaritz
>
> ------------------------------------------------------------
> ESA Elektroschaltanlagen Grimma GmbH
> Broner Ring 30
> 04668 Grimma
> Telefon: +49 3437 9211 176
> Telefax: +49 3437 9211 26
> E-Mail: s.jaritz@esa-grimma.de
> Internet: www.esa-grimma.de
>
>
> Gesch=E4ftsf=FChrer:
> Dipl.-Ing. J=F6rg Gaitzsch
> J=F6rg Reinker
>
> Sitz der Gesellschaft: Grimma
> Ust.-ID: DE 141784437
> Amtsgericht: Leipzig, HRB 5159
> Steuernummer: 238/108/00755
>
>
> Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte=20
Informationen.
> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich =

erhalten
> haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser =

Mail
> ist nicht gestattet.
>
> This e-mail may contain confidential and/or privileged information. If=20
you are
> not the intended recipient (or have received this e-mail in error)=20
please
> notify the sender immediately and destroy this e-mail. Any unauthorized
> copying, disclosure or distribution of the material in this e-mail is=20
strictly
> forbidden.
> --
> =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--=_alternative 0054015AC1257FCD_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Thanks for the infos. I figured out
that the common tutorial under meta-skeleton does not covers the change
of the root password. Although &quot;usermod -P&quot; does not exits. Now
the &quot;usermod -p&quot; wants a encrypted password. Looks like most
of the examples at the www are little outdated. My question is now:</font>
<br>
<br><font size=3D2 face=3D"sans-serif">How are the steps to (re)set the root
password?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">If you like I would prefer to solve
this question like a tutorial.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">The starting point is a own layer (&=
quot;myLayer&quot;)
and a password (&quot;myNewPassword1234&quot;).</font>
<br><font size=3D2 face=3D"sans-serif"><br>
Regards!</font>
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
&nbsp;</font><font size=3D1 face=3D"sans-serif">Jussi Kukkonen &lt;jussi.ku=
kkonen@intel.com&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">An: &nbsp; &nbsp; &n=
bsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">S.Jaritz@esa-grimma.de</fon=
t>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Kopie: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">Yocto Project &lt;yocto@yoc=
toproject.org&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">09.06.2016 12:00</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: [yocto]
Problems with do=5Frootfs when changing the user password</font>
<br>
<hr noshade>
<br>
<br>
<br><font size=3D3>On 9 June 2016 at 12:00, &lt;</font><a href=3D"mailto:S.=
Jaritz@esa-grimma.de"><font size=3D3 color=3Dblue><u>S.Jaritz@esa-grimma.de=
</u></font></a><font size=3D3>&gt;
wrote:<br>
&gt;<br>
&gt; Hej<br>
&gt;<br>
&gt; I want to change the root password. For that I create the recipe &quot=
;myNewPassword.bb&quot;
with:<br>
&gt; ################<br>
&gt; SUMMARY =3D &quot;my new password&quot;<br>
&gt; SECTION =3D &quot;new&quot;<br>
&gt; LICENSE =3D &quot;CLOSED&quot;<br>
&gt;<br>
&gt; inherit extrausers<br>
&gt;<br>
&gt; EXTRA=5FUSERS=5FPARAMS =3D &quot;\<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; usermod -P xyz root; \<br>
&gt; &quot;<br>
&gt; ################<br>
&gt;<br>
&gt; compiling and packaging works fine.<br>
&gt;<br>
&gt; In my layer I add at the layer.conf:<br>
&gt; ################<br>
&gt; IMAGE=5FINSTALL=5Fappend=3D&quot; myNewPassword&quot;<br>
&gt; ################<br>
&gt;<br>
&gt; When do=5Frootfs (core-image-minimal) the package could not be found.
A deb(ug) Package was created.<br>
<br>
If your package would contain no files, bitbake will not produce it at
all. You should be able to override this with: <br>
&nbsp; &nbsp; ALLOW=5FEMPTY=5F${PN} =3D &quot;1&quot;<br>
<br>
&nbsp;- Jussi<br>
<br>
&nbsp;<br>
&gt;<br>
&gt; Regards!<br>
&gt;<br>
&gt; Stefan Jaritz<br>
&gt;<br>
&gt; ------------------------------------------------------------<br>
&gt; ESA Elektroschaltanlagen Grimma GmbH<br>
&gt; Broner Ring 30<br>
&gt; 04668 Grimma<br>
&gt; Telefon: +49 3437 9211 176<br>
&gt; Telefax: +49 3437 9211 26<br>
&gt; E-Mail: </font><a href=3D"mailto:s.jaritz@esa-grimma.de"><font size=3D=
3 color=3Dblue><u>s.jaritz@esa-grimma.de</u></font></a><font size=3D3><br>
&gt; Internet: </font><a href=3D"http://www.esa-grimma.de/"><font size=3D3 =
color=3Dblue><u>www.esa-grimma.de</u></font></a><font size=3D3><br>
&gt;<br>
&gt;<br>
&gt; Gesch=E4ftsf=FChrer:<br>
&gt; Dipl.-Ing. J=F6rg Gaitzsch<br>
&gt; J=F6rg Reinker<br>
&gt;<br>
&gt; Sitz der Gesellschaft: Grimma<br>
&gt; Ust.-ID: DE 141784437<br>
&gt; Amtsgericht: Leipzig, HRB 5159<br>
&gt; Steuernummer: 238/108/00755<br>
&gt;<br>
&gt;<br>
&gt; Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte In=
formationen.<br>
&gt; Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmli=
ch
erhalten<br>
&gt; haben, informieren Sie bitte sofort den Absender und l=F6schen Sie die=
se<br>
&gt; Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe
dieser Mail<br>
&gt; ist nicht gestattet.<br>
&gt;<br>
&gt; This e-mail may contain confidential and/or privileged information.
If you are<br>
&gt; not the intended recipient (or have received this e-mail in error)
please<br>
&gt; notify the sender immediately and destroy this e-mail. Any unauthorize=
d<br>
&gt; copying, disclosure or distribution of the material in this e-mail
is strictly<br>
&gt; forbidden.<br>
&gt; --<br>
&gt; =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br>
&gt; yocto mailing list<br>
&gt; </font><a href=3Dmailto:yocto@yoctoproject.org><font size=3D3 color=3D=
blue><u>yocto@yoctoproject.org</u></font></a><font size=3D3><br>
&gt; </font><a href=3Dhttps://lists.yoctoproject.org/listinfo/yocto><font s=
ize=3D3 color=3Dblue><u>https://lists.yoctoproject.org/listinfo/yocto</u></=
font></a><font size=3D3><br>
&gt;</font>
<br>

--=_alternative 0054015AC1257FCD_=--
