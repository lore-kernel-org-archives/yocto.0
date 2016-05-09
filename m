Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7172E00EC3; Mon,  9 May 2016 04:13:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BA3EE008BA
	for <yocto@yoctoproject.org>; Mon,  9 May 2016 04:12:58 -0700 (PDT)
In-Reply-To: <1462200617361.8222@comcast.com>
References: <OF827D5F19.0E3908F9-ONC1257FA7.004902B6-C1257FA7.0049C7C7@esa-grimma.de>
	<1462200617361.8222@comcast.com>
To: "Jeyachandran,
	Yukatharsani (Contractor)" <Yukatharsani_Jeyachandran@comcast.com>
MIME-Version: 1.0
X-KeepSent: 9A47E771:541A58B3-C1257FAE:003CA31E;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF9A47E771.541A58B3-ONC1257FAE.003CA31E-C1257FAE.003D9C0A@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Mon, 9 May 2016 13:12:56 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 09.05.2016 13:12:59,
	Serialize complete at 09.05.2016 13:12:59
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: HG Parameters for the fetcher
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
X-List-Received-Date: Mon, 09 May 2016 11:13:02 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 003D9C09C1257FAE_="

--=_alternative 003D9C09C1257FAE_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks,

What is when the HG comes over SSH with authentication? Like:

SRC=5FURI =3D "hg://myHG/ABC;module=3D"dev";protocol=3Dssh;rev=3D42"

with user for example "yocto"

I think the syntax could be: SRC=5FURI =3D=20
"hg://yocto@myHG/ABC;module=3D"dev";protocol=3Dssh;rev=3D42"

Regards

Stefan Jaritz
Entwickler

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



Von:    "Jeyachandran, Yukatharsani (Contractor)"=20
<Yukatharsani=5FJeyachandran@comcast.com>
An:     "S.Jaritz@esa-grimma.de" <S.Jaritz@esa-grimma.de>, yocto=20
<yocto@yoctoproject.org>
Datum:  02.05.2016 16:50
Betreff:        Re: [yocto] HG Parameters for the fetcher



Hi,

Add your source file in this below format:-

For Example:-

SRCREV =3D "${AUTOREV}"
SRC=5FURI =3D "svn or git ://<repo>;module=3D" ";protocol=3Dhttps or ssh"

Thanks and Regards,
Yukatharsani J.

From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on=20
behalf of S.Jaritz@esa-grimma.de <S.Jaritz@esa-grimma.de>
Sent: Monday, May 2, 2016 9:25 AM
To: yocto
Subject: [yocto] HG Parameters for the fetcher=20
=20
Hej,=20

Actually I try to build a recipe for a Mercurial SCM. The hg sources are=20
local. In my bb File I have this lines:=20


SRCREV =3D "486c7001d4e5"=20
SRC=5FURI =3D "hg://myHG"=20

I got the error:=20

ERROR: Logfile of failure stored in:=20
/home/user/myTC/poky/build/tmp/work/cortexa5hf-vfp-poky-linux-gnueabi/myHG/=
0.1-r0/temp/log.do=5Ffetch.27908=20

Log data follows:=20
| DEBUG: Executing python function do=5Ffetch=20
| DEBUG: Executing python function base=5Fdo=5Ffetch=20
| DEBUG: Python function base=5Fdo=5Ffetch finished=20
| DEBUG: Python function do=5Ffetch finished=20
| ERROR: Function failed: URL: 'hg://myHG' is missing the required=20
parameter 'module'=20
ERROR: Task 4=20
(/home/user/myTC/poky/meta-sek4/recipes-test/deamons/myHG=5F0.1.bb,=20
do=5Ffetch) failed with exit code '1'=20


Any ideas?

Stefan Jaritz
Entwickler

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

--=_alternative 003D9C09C1257FAE_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Thanks,</font>
<br>
<br><font size=3D2 face=3D"sans-serif">What is when the HG comes over SSH w=
ith
authentication? Like:</font>
<br>
<br><font size=3D3 face=3D"Calibri"><i>SRC=5FURI =3D &quot;hg://myHG/ABC;mo=
dule=3D&quot;dev&quot;;protocol=3Dssh;rev=3D42&quot;</i></font>
<br>
<br><font size=3D2 face=3D"sans-serif">with user for example &quot;yocto&qu=
ot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I think the syntax could be: </font>=
<font size=3D3 face=3D"Calibri"><i>SRC=5FURI
=3D &quot;hg://yocto@myHG/ABC;module=3D&quot;dev&quot;;protocol=3Dssh;rev=
=3D42&quot;</i></font>
<br>
<br><font size=3D2 face=3D"sans-serif">Regards<br>
<br>
Stefan Jaritz<br>
Entwickler<br>
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
&nbsp;</font><font size=3D1 face=3D"sans-serif">&quot;Jeyachandran,
Yukatharsani (Contractor)&quot; &lt;Yukatharsani=5FJeyachandran@comcast.com=
&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">An: &nbsp; &nbsp; &n=
bsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">&quot;S.Jaritz@esa-grimma.d=
e&quot;
&lt;S.Jaritz@esa-grimma.de&gt;, yocto &lt;yocto@yoctoproject.org&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">02.05.2016 16:50</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: [yocto]
HG Parameters for the fetcher</font>
<br>
<hr noshade>
<br>
<br>
<br><font size=3D3 face=3D"Calibri"><i>Hi,<br>
<br>
Add your source file in this below format:-<br>
<br>
For Example:-<br>
<br>
SRCREV =3D &quot;${AUTOREV}&quot;</i></font>
<br><font size=3D3 face=3D"Calibri"><i>SRC=5FURI =3D &quot;</i></font><a hr=
ef=3Dsvn://%3cmy/><font size=3D3 color=3Dblue face=3D"Calibri"><i><u>svn
or git ://&lt;</u></i></font></a><font size=3D3 face=3D"Calibri"><i>repo&gt=
;;module=3D&quot;
&quot;;protocol=3Dhttps or ssh&quot;</i></font>
<br>
<br><font size=3D3 face=3D"Calibri">Thanks and Regards,</font>
<br><font size=3D3 face=3D"Calibri">Yukatharsani J.</font>
<p>
<hr>
<br><font size=3D2 face=3D"Calibri"><b>From:</b> yocto-bounces@yoctoproject=
.org
&lt;yocto-bounces@yoctoproject.org&gt; on behalf of S.Jaritz@esa-grimma.de
&lt;S.Jaritz@esa-grimma.de&gt;<b><br>
Sent:</b> Monday, May 2, 2016 9:25 AM<b><br>
To:</b> yocto<b><br>
Subject:</b> [yocto] HG Parameters for the fetcher</font><font size=3D3 col=
or=3D#2f2f2f face=3D"Calibri">
</font>
<br><font size=3D3 color=3D#2f2f2f face=3D"Calibri">&nbsp;</font>
<br><font size=3D2 color=3D#2f2f2f face=3D"sans-serif">Hej,</font><font siz=
e=3D3 color=3D#2f2f2f face=3D"Calibri">
<br>
</font><font size=3D2 color=3D#2f2f2f face=3D"sans-serif"><br>
Actually I try to build a recipe for a Mercurial SCM. The hg sources are
local. In my bb File I have this lines:</font><font size=3D3 color=3D#2f2f2=
f face=3D"Calibri">
<br>
<br>
</font><font size=3D2 color=3D#2f2f2f face=3D"sans-serif"><br>
SRCREV =3D &quot;486c7001d4e5&quot;</font><font size=3D3 color=3D#2f2f2f fa=
ce=3D"Calibri">
</font><font size=3D2 color=3D#2f2f2f face=3D"sans-serif"><br>
SRC=5FURI =3D &quot;hg://myHG&quot;</font><font size=3D3 color=3D#2f2f2f fa=
ce=3D"Calibri">
<br>
</font><font size=3D2 color=3D#2f2f2f face=3D"sans-serif"><br>
I got the error:</font><font size=3D3 color=3D#2f2f2f face=3D"Calibri"> <br>
</font><font size=3D2 color=3D#2f2f2f face=3D"sans-serif"><br>
ERROR: Logfile of failure stored in: /home/user/myTC/poky/build/tmp/work/co=
rtexa5hf-vfp-poky-linux-gnueabi/myHG/0.1-r0/temp/log.do=5Ffetch.27908</font=
><font size=3D3 color=3D#2f2f2f face=3D"Calibri">
</font><font size=3D2 color=3D#2f2f2f face=3D"sans-serif"><br>
Log data follows:</font><font size=3D3 color=3D#2f2f2f face=3D"Calibri"> </=
font><font size=3D2 color=3D#2f2f2f face=3D"sans-serif"><br>
| DEBUG: Executing python function do=5Ffetch</font><font size=3D3 color=3D=
#2f2f2f face=3D"Calibri">
</font><font size=3D2 color=3D#2f2f2f face=3D"sans-serif"><br>
| DEBUG: Executing python function base=5Fdo=5Ffetch</font><font size=3D3 c=
olor=3D#2f2f2f face=3D"Calibri">
</font><font size=3D2 color=3D#2f2f2f face=3D"sans-serif"><br>
| DEBUG: Python function base=5Fdo=5Ffetch finished</font><font size=3D3 co=
lor=3D#2f2f2f face=3D"Calibri">
</font><font size=3D2 color=3D#2f2f2f face=3D"sans-serif"><br>
| DEBUG: Python function do=5Ffetch finished</font><font size=3D3 color=3D#=
2f2f2f face=3D"Calibri">
</font><font size=3D2 color=3D#2f2f2f face=3D"sans-serif"><br>
| ERROR: Function failed: URL: 'hg://myHG' is missing the required parameter
'module'</font><font size=3D3 color=3D#2f2f2f face=3D"Calibri"> </font><fon=
t size=3D2 color=3D#2f2f2f face=3D"sans-serif"><br>
ERROR: Task 4 (/home/user/myTC/poky/meta-sek4/recipes-test/deamons/myHG=5F0=
.1.bb,
do=5Ffetch) failed with exit code '1'</font><font size=3D3 color=3D#2f2f2f =
face=3D"Calibri">
<br>
<br>
</font><font size=3D2 color=3D#2f2f2f face=3D"sans-serif"><br>
Any ideas?<br>
<br>
Stefan Jaritz<br>
Entwickler<br>
<br>
------------------------------------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: +49 3437 9211 176<br>
Telefax: +49 3437 9211 26<br>
E-Mail: s.jaritz@esa-grimma.de<br>
Internet: </font><a href=3D"www.esa-grimma.de"><font size=3D2 color=3Dblue =
face=3D"sans-serif"><u>www.esa-grimma.de</u></font></a><font size=3D2 color=
=3D#2f2f2f face=3D"sans-serif"><br>
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

--=_alternative 003D9C09C1257FAE_=--
