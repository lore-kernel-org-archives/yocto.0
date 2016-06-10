Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE5B9E00CD9; Fri, 10 Jun 2016 03:08:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA300E00CC0
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 03:08:41 -0700 (PDT)
In-Reply-To: <20160610041602.GA2776@mbabyjoh-desk.ger.corp.intel.com>
References: <OF631D75D9.DBAD0BFE-ONC1257FCD.0030963E-C1257FCD.00317358@esa-grimma.de>
	<CAHiDW_HFdwtg+eQDVzvwPKKA18ruRisYyiqbUZ5W0WDW6HqhCg@mail.gmail.com>
	<OFE919EA27.F1B27E75-ONC1257FCD.0052E7E6-C1257FCD.0054015A@esa-grimma.de>
	<20160610041602.GA2776@mbabyjoh-desk.ger.corp.intel.com>
To: "Maxin B. John" <maxin.john@intel.com>
MIME-Version: 1.0
X-KeepSent: D30EC2C7:D7B73CA0-C1257FCE:0036A5A1;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OFD30EC2C7.D7B73CA0-ONC1257FCE.0036A5A1-C1257FCE.0037B97E@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Fri, 10 Jun 2016 12:08:39 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 10.06.2016 12:08:41,
	Serialize complete at 10.06.2016 12:08:41
Cc: rudolf.streif@gmail.com, yocto@yoctoproject.org
Subject: Antwort: Re: Antwort: Re: Problems with do_rootfs when changing the user password
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
X-List-Received-Date: Fri, 10 Jun 2016 10:08:44 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0037B97EC1257FCE_="

--=_alternative 0037B97EC1257FCE_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej Maxin,

Great Idea - The wiki was my starting point. By the way there is no=20
"usermod -P". I can tell only for my self, but I like the meta-skeleton=20
section. A working example is better than 10 e-mails. From my Yocto newbee =

view I would prefer some simple lean recipes as templates(or reverse=20
engineering). Like:

add user
add group
change root pw
cmake
cmake + change cmake environment var
...

@Rudi: Maybe you whant to add your soultion to the meta-skeleton?
@Maxin: Maybe you make a link into meta-skeleton to Rudis soultion?

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



Von:    "Maxin B. John" <maxin.john@intel.com>
An:     S.Jaritz@esa-grimma.de
Kopie:  Jussi Kukkonen <jussi.kukkonen@intel.com>, Oleksandr Poznyak=20
<oleksandr.poznyak@gmail.com>, yocto@yoctoproject.org
Datum:  10.06.2016 11:10
Betreff:        Re: [yocto] Antwort: Re: Problems with do=5Frootfs when=20
changing the user password



Hi,

On Thu, Jun 09, 2016 at 05:17:33PM +0200, S.Jaritz@esa-grimma.de wrote:
>
>Hej
>
>Thanks for the infos. I figured out that the common tutorial under=20
meta-skeleton
>does not covers the change of the root password. Although "usermod -P"=20
does not exits.
>Now the "usermod -p" wants a encrypted password. Looks like most of the=20
examples at the
>www are little outdated. My question is now:
>
>How are the steps to (re)set the root password?
>
>If you like I would prefer to solve this question like a tutorial.
>
>The starting point is a own layer ("myLayer") and a password=20
("myNewPassword1234").

I would suggest to update this wiki page instead of starting something=20
from scratch:

https://wiki.yoctoproject.org/wiki/FAQ:How=5Fdo=5FI=5Fset=5For=5Fchange=5Ft=
he=5Froot=5Fpassword


>Regards!
>
>Stefan Jaritz

Warm Regards,
Maxin


--=_alternative 0037B97EC1257FCE_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej Maxin,</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Great Idea - The wiki was my starting
point. By the way there is no &quot;usermod -P&quot;. I can tell only for
my self, but I like the meta-skeleton section. A working example is better
than 10 e-mails. From my Yocto newbee view I would prefer some simple lean
recipes as templates(or reverse engineering). Like:</font>
<br>
<br><font size=3D2 face=3D"sans-serif">add user</font>
<br><font size=3D2 face=3D"sans-serif">add group</font>
<br><font size=3D2 face=3D"sans-serif">change root pw</font>
<br><font size=3D2 face=3D"sans-serif">cmake</font>
<br><font size=3D2 face=3D"sans-serif">cmake + change cmake environment var=
</font>
<br><font size=3D2 face=3D"sans-serif">...</font>
<br>
<br><font size=3D2 face=3D"sans-serif">@Rudi: Maybe you whant to add your s=
oultion
to the meta-skeleton?</font>
<br><font size=3D2 face=3D"sans-serif">@Maxin: Maybe you make a link into m=
eta-skeleton
to Rudis soultion?<br>
</font>
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
&nbsp;</font><font size=3D1 face=3D"sans-serif">&quot;Maxin B. John&quot;
&lt;maxin.john@intel.com&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">An: &nbsp; &nbsp; &n=
bsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">S.Jaritz@esa-grimma.de</fon=
t>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Kopie: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">Jussi Kukkonen &lt;jussi.ku=
kkonen@intel.com&gt;,
Oleksandr Poznyak &lt;oleksandr.poznyak@gmail.com&gt;, yocto@yoctoproject.o=
rg</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">10.06.2016 11:10</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: [yocto]
Antwort: Re: Problems with do=5Frootfs when changing the user password</fon=
t>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=3D2>Hi,<br>
<br>
On Thu, Jun 09, 2016 at 05:17:33PM +0200, S.Jaritz@esa-grimma.de wrote:<br>
&gt;<br>
&gt;Hej<br>
&gt;<br>
&gt;Thanks for the infos. I figured out that the common tutorial under
meta-skeleton<br>
&gt;does not covers the change of the root password. Although &quot;usermod
-P&quot; does not exits.<br>
&gt;Now the &quot;usermod -p&quot; wants a encrypted password. Looks like
most of the examples at the<br>
&gt;www are little outdated. My question is now:<br>
&gt;<br>
&gt;How are the steps to (re)set the root password?<br>
&gt;<br>
&gt;If you like I would prefer to solve this question like a tutorial.<br>
&gt;<br>
&gt;The starting point is a own layer (&quot;myLayer&quot;) and a password
(&quot;myNewPassword1234&quot;).<br>
<br>
I would suggest to update this wiki page instead of starting something
from scratch:<br>
<br>
</font></tt><a href=3Dhttps://wiki.yoctoproject.org/wiki/FAQ:How=5Fdo=5FI=
=5Fset=5For=5Fchange=5Fthe=5Froot=5Fpassword><tt><font size=3D2>https://wik=
i.yoctoproject.org/wiki/FAQ:How=5Fdo=5FI=5Fset=5For=5Fchange=5Fthe=5Froot=
=5Fpassword</font></tt></a><tt><font size=3D2><br>
<br>
&gt;Regards!<br>
&gt;<br>
&gt;Stefan Jaritz<br>
<br>
Warm Regards,<br>
Maxin<br>
</font></tt>
<br>

--=_alternative 0037B97EC1257FCE_=--
