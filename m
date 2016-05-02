Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72148E00D7A; Mon,  2 May 2016 06:25:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A503E00D74
	for <yocto@yoctoproject.org>; Mon,  2 May 2016 06:25:54 -0700 (PDT)
To: yocto <yocto@yoctoproject.org>
MIME-Version: 1.0
X-KeepSent: 827D5F19:0E3908F9-C1257FA7:004902B6;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF827D5F19.0E3908F9-ONC1257FA7.004902B6-C1257FA7.0049C7C7@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Mon, 2 May 2016 15:25:52 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 02.05.2016 15:25:57,
	Serialize complete at 02.05.2016 15:25:57
Subject: HG Parameters for the fetcher
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
X-List-Received-Date: Mon, 02 May 2016 13:25:59 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0049C7C5C1257FA7_="

--=_alternative 0049C7C5C1257FA7_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej,

Actually I try to build a recipe for a Mercurial SCM. The hg sources are=20
local. In my bb File I have this lines:


SRCREV =3D "486c7001d4e5"
SRC=5FURI =3D "hg://myHG"

I got the error:

ERROR: Logfile of failure stored in:=20
/home/user/myTC/poky/build/tmp/work/cortexa5hf-vfp-poky-linux-gnueabi/myHG/=
0.1-r0/temp/log.do=5Ffetch.27908
Log data follows:
| DEBUG: Executing python function do=5Ffetch
| DEBUG: Executing python function base=5Fdo=5Ffetch
| DEBUG: Python function base=5Fdo=5Ffetch finished
| DEBUG: Python function do=5Ffetch finished
| ERROR: Function failed: URL: 'hg://myHG' is missing the required=20
parameter 'module'
ERROR: Task 4=20
(/home/user/myTC/poky/meta-sek4/recipes-test/deamons/myHG=5F0.1.bb,=20
do=5Ffetch) failed with exit code '1'


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

--=_alternative 0049C7C5C1257FA7_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej,</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Actually I try to build a recipe for
a Mercurial SCM. The hg sources are local. In my bb File I have this lines:=
</font>
<br>
<br>
<br><font size=3D2 face=3D"sans-serif">SRCREV =3D &quot;486c7001d4e5&quot;<=
/font>
<br><font size=3D2 face=3D"sans-serif">SRC=5FURI =3D &quot;hg://myHG&quot;<=
/font>
<br>
<br><font size=3D2 face=3D"sans-serif">I got the error:</font>
<br>
<br><font size=3D2 face=3D"sans-serif">ERROR: Logfile of failure stored in:
/home/user/myTC/poky/build/tmp/work/cortexa5hf-vfp-poky-linux-gnueabi/myHG/=
0.1-r0/temp/log.do=5Ffetch.27908</font>
<br><font size=3D2 face=3D"sans-serif">Log data follows:</font>
<br><font size=3D2 face=3D"sans-serif">| DEBUG: Executing python function d=
o=5Ffetch</font>
<br><font size=3D2 face=3D"sans-serif">| DEBUG: Executing python function b=
ase=5Fdo=5Ffetch</font>
<br><font size=3D2 face=3D"sans-serif">| DEBUG: Python function base=5Fdo=
=5Ffetch
finished</font>
<br><font size=3D2 face=3D"sans-serif">| DEBUG: Python function do=5Ffetch =
finished</font>
<br><font size=3D2 face=3D"sans-serif">| ERROR: Function failed: URL: 'hg:/=
/myHG'
is missing the required parameter 'module'</font>
<br><font size=3D2 face=3D"sans-serif">ERROR: Task 4 (/home/user/myTC/poky/=
meta-sek4/recipes-test/deamons/myHG=5F0.1.bb,
do=5Ffetch) failed with exit code '1'</font>
<br>
<br>
<br><font size=3D2 face=3D"sans-serif">Any ideas?<br>
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

--=_alternative 0049C7C5C1257FA7_=--
