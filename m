Return-Path: <Yukatharsani_Jeyachandran@comcast.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38E15E005BB; Mon,  2 May 2016 08:05:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 905 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 May 2016 08:05:24 PDT
Received: from vaadcmhout01.cable.comcast.com (vaadcmhout01.cable.comcast.com
	[96.114.28.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B16FDE00522
	for <yocto@yoctoproject.org>; Mon,  2 May 2016 08:05:24 -0700 (PDT)
X-AuditID: 60721c4b-f794b6d0000016d9-8f-5727692ac4ef
Received: from VAADCEX47.cable.comcast.com (vaadcmhoutvip.cable.comcast.com
	[96.115.73.56]) (using TLS with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by vaadcmhout01.cable.comcast.com (SMTP Gateway) with SMTP id
	D0.32.05849.A2967275; Mon,  2 May 2016 10:50:18 -0400 (EDT)
Received: from VAADCEX48.cable.comcast.com (147.191.103.225) by
	VAADCEX47.cable.comcast.com (147.191.103.224) with Microsoft SMTP
	Server (TLS) id 15.0.1130.7; Mon, 2 May 2016 10:50:17 -0400
Received: from VAADCEX48.cable.comcast.com ([fe80::3aea:a7ff:fe12:5e40]) by
	VAADCEX48.cable.comcast.com ([fe80::3aea:a7ff:fe12:5e40%19]) with mapi
	id 15.00.1130.005; Mon, 2 May 2016 10:50:17 -0400
From: "Jeyachandran, Yukatharsani (Contractor)"
	<Yukatharsani_Jeyachandran@comcast.com>
To: "S.Jaritz@esa-grimma.de" <S.Jaritz@esa-grimma.de>, yocto
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] HG Parameters for the fetcher
Thread-Index: AQHRpHZB5CBFOPh080+OTRA8sa7wuJ+luku2
Date: Mon, 2 May 2016 14:50:17 +0000
Message-ID: <1462200617361.8222@comcast.com>
References: <OF827D5F19.0E3908F9-ONC1257FA7.004902B6-C1257FA7.0049C7C7@esa-grimma.de>
In-Reply-To: <OF827D5F19.0E3908F9-ONC1257FA7.004902B6-C1257FA7.0049C7C7@esa-grimma.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [68.87.29.10]
MIME-Version: 1.0
X-CFilter-Loop: Forward
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPIsWRmVeSWpSXmKPExsWSUOxpoauVqR5usGe1qsW/1SoWk16uYXNg
	8phzdgqzR/uJPrYApigum5TUnMyy1CJ9uwSujIk3frEWPDSruPHkGHsD40z9LkYODgkBE4mN
	64u6GDmBTDGJC/fWs3UxcnEICWxhkph4+TQ7hHOQUeL8wy1sIFVCAicYJVau9QGx2QQiJaZ9
	PAMWFxEIl9i7pZsZxBYWMJL40dEAFTeWmPRxPguEbSRx9eordhCbRUBFYtLcC2BxXgEdiTmz
	t7BDzA+V6JzwgAXkOE6BMIkjTXwgYUag476fWsMEYjMLiEvcejKfCeJoAYkle84zQ9iiEi8f
	/2OFsA0kti7dxwJhy0scmfCPBaI3WOJfy0xmiLWCEidnPoGqEZc4fGQH6wRG8VlIVsxC0jIL
	SQtEXE/ixtQpbBC2tsSyha+ZIWxdiRn/DrEgiy9gZF/FKFeWmJiSnJuRX1piYKiXnJiUk6qX
	nJ+bnFhcAqI3MYKitUjGewfjup/uhxgFOBiVeHj1ktTDhVgTy4orcw8xSnAwK4nwJqcChXhT
	EiurUovy44tKc1KLDzFKc7AoifN6RymFCwmkJ5akZqemFqQWwWSZODilGhh3rTb/X/c02/9T
	mmkyW/EDf5FpO6fa7EnuWfZFZqOvW86N5i8//pe83xff7flgppjT423XV3xaV6O69+CE1Xve
	e/flRD/gu9f7/PSXveYFUuLXjy7c91hb/Kpx47+W77smBDTEbxRWPrA0ReVY6OrYYssTVyfy
	zc02fTk77EvOxQ+TvjWv5dt1WImlOCPRUIu5qDgRAErqEN/SAgAA
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
X-List-Received-Date: Mon, 02 May 2016 15:05:32 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_14622006173618222comcastcom_"

--_000_14622006173618222comcastcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Add your source file in this below format:-

For Example:-

SRCREV =3D "${AUTOREV}"

SRC_URI =3D "svn or git ://<<svn://%3Cmy>repo>;module=3D" ";protocol=3Dhttp=
s or ssh"


Thanks and Regards,

Yukatharsani J.

________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of S.Jaritz@esa-grimma.de <S.Jaritz@esa-grimma.de>
Sent: Monday, May 2, 2016 9:25 AM
To: yocto
Subject: [yocto] HG Parameters for the fetcher

Hej,

Actually I try to build a recipe for a Mercurial SCM. The hg sources are lo=
cal. In my bb File I have this lines:


SRCREV =3D "486c7001d4e5"
SRC_URI =3D "hg://myHG"

I got the error:

ERROR: Logfile of failure stored in: /home/user/myTC/poky/build/tmp/work/co=
rtexa5hf-vfp-poky-linux-gnueabi/myHG/0.1-r0/temp/log.do_fetch.27908
Log data follows:
| DEBUG: Executing python function do_fetch
| DEBUG: Executing python function base_do_fetch
| DEBUG: Python function base_do_fetch finished
| DEBUG: Python function do_fetch finished
| ERROR: Function failed: URL: 'hg://myHG' is missing the required paramete=
r 'module'
ERROR: Task 4 (/home/user/myTC/poky/meta-sek4/recipes-test/deamons/myHG_0.1=
.bb, do_fetch) failed with exit code '1'


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


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen.
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich er=
halten
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser Ma=
il
ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =
are
not the intended recipient (or have received this e-mail in error) please
notify the sender immediately and destroy this e-mail. Any unauthorized
copying, disclosure or distribution of the material in this e-mail is stric=
tly
forbidden.

--_000_14622006173618222comcastcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} --></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<pre><pre><em>Hi,<br><br>Add your source file in this below format:-<br><br=
>For Example:-<br><br>SRCREV =3D &quot;${AUTOREV}&quot;</em></pre><em>SRC_U=
RI =3D &quot;<a href=3D"svn://%3Cmy">svn or git ://&lt;</a>repo&gt;;module=
=3D&quot; &quot;;protocol=3Dhttps or ssh&quot;</em></pre>
<p><br>
</p>
<p>Thanks and Regards,</p>
<p>Yukatharsani J.<br>
</p>
<div style=3D"color: rgb(33, 33, 33);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" color=
=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> yocto-bounces@yoctop=
roject.org &lt;yocto-bounces@yoctoproject.org&gt; on behalf of S.Jaritz@esa=
-grimma.de &lt;S.Jaritz@esa-grimma.de&gt;<br>
<b>Sent:</b> Monday, May 2, 2016 9:25 AM<br>
<b>To:</b> yocto<br>
<b>Subject:</b> [yocto] HG Parameters for the fetcher</font>
<div>&nbsp;</div>
</div>
<div><font face=3D"sans-serif" size=3D"2">Hej,</font> <br>
<br>
<font face=3D"sans-serif" size=3D"2">Actually I try to build a recipe for a=
 Mercurial SCM. The hg sources are local. In my bb File I have this lines:<=
/font>
<br>
<br>
<br>
<font face=3D"sans-serif" size=3D"2">SRCREV =3D &quot;486c7001d4e5&quot;</f=
ont> <br>
<font face=3D"sans-serif" size=3D"2">SRC_URI =3D &quot;hg://myHG&quot;</fon=
t> <br>
<br>
<font face=3D"sans-serif" size=3D"2">I got the error:</font> <br>
<br>
<font face=3D"sans-serif" size=3D"2">ERROR: Logfile of failure stored in: /=
home/user/myTC/poky/build/tmp/work/cortexa5hf-vfp-poky-linux-gnueabi/myHG/0=
.1-r0/temp/log.do_fetch.27908</font>
<br>
<font face=3D"sans-serif" size=3D"2">Log data follows:</font> <br>
<font face=3D"sans-serif" size=3D"2">| DEBUG: Executing python function do_=
fetch</font>
<br>
<font face=3D"sans-serif" size=3D"2">| DEBUG: Executing python function bas=
e_do_fetch</font>
<br>
<font face=3D"sans-serif" size=3D"2">| DEBUG: Python function base_do_fetch=
 finished</font>
<br>
<font face=3D"sans-serif" size=3D"2">| DEBUG: Python function do_fetch fini=
shed</font>
<br>
<font face=3D"sans-serif" size=3D"2">| ERROR: Function failed: URL: 'hg://m=
yHG' is missing the required parameter 'module'</font>
<br>
<font face=3D"sans-serif" size=3D"2">ERROR: Task 4 (/home/user/myTC/poky/me=
ta-sek4/recipes-test/deamons/myHG_0.1.bb, do_fetch) failed with exit code '=
1'</font>
<br>
<br>
<br>
<font face=3D"sans-serif" size=3D"2">Any ideas?<br>
<br>
Stefan Jaritz<br>
Entwickler<br>
<br>
------------------------------------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: &#43;49 3437 9211 176<br>
Telefax: &#43;49 3437 9211 26<br>
E-Mail: s.jaritz@esa-grimma.de<br>
Internet: </font><a href=3D"www.esa-grimma.de"><font face=3D"sans-serif" si=
ze=3D"2">www.esa-grimma.de</font></a><font face=3D"sans-serif" size=3D"2"><=
br>
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
tionen. <br>
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich er=
halten <br>
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese <b=
r>
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser Ma=
il <br>
ist nicht gestattet.<br>
<br>
This e-mail may contain confidential and/or privileged information. If you =
are <br>
not the intended recipient (or have received this e-mail in error) please <=
br>
notify the sender immediately and destroy this e-mail. Any unauthorized <br=
>
copying, disclosure or distribution of the material in this e-mail is stric=
tly <br>
forbidden.</font></div>
</div>
</body>
</html>

--_000_14622006173618222comcastcom_--
