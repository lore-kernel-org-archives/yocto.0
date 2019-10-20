Return-Path: <abhiarora4@live.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99F10E0098A; Sun, 20 Oct 2019 08:29:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,FREEMAIL_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.92.254.84 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (abhiarora4[at]live.com)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from APC01-PU1-obe.outbound.protection.outlook.com
	(mail-oln040092254084.outbound.protection.outlook.com [40.92.254.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 664E5E008C8
	for <yocto@yoctoproject.org>; Sun, 20 Oct 2019 08:29:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=Em8mcGXkWzRT3vfVTlGbCdv+DvrJnXMmZYhXS1aCCxds5cuyoYtKsBZmWj+hj3itIYK41EBGrQm7EoGYlOr4rHJxI2EvP9nF4BvwkOG6tJM2yy3HPveGNPlBgiY3IpmUNmTXJAgpVjVyj3pUI6cbHxi/Wvz62Pcqt55I7vMIp7NtTYyQh/BiL9dXX2tDAvhLlZH1EpKjavOoE9+GXrbQlTk3zHWbOT/7DIX70RxyAJ3ROXvvP1XntcdS+23rpWWY0vkWu6NVPzW1ul1oz3970r97n/Hk7QI0ScgJPr9lyI+aQ5IlH9Dmu6576oRIfSlA63Wv0887Mi+F/acw9ul2vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=cUYHGedRZUBy35QZoM9XVn2CSucxOL8Fv3Sw7KGWM7s=;
	b=eUURYFATTd3VyFsscLhpzrdK+4Hgvxzcg3UcLYheMT2jlKg0ShYXN7oBzD+1ry3y16KgJo0l4KYucmOUnLYkGNk6/12FGAxuzXo+8lnK+q0MvT+BYmi6VCVli/PKo3zo+gRe2Mtp9okUsvgQa7/BfibxaUOmniAajx0oMB1N8J729Os0HgKcXjt957M35/+znNejzJ0BPO5LrwZUZ+k5/3r/7KfAlTywrNLeMA5pb9yxBDN41yCDq15P3ErI6YYWHhrvhHacrc/gu/7e1RnZvv6wHpKdMOta6CZUmLYQlHwh0PSQBzlob/TcAPoKWYZA4EgrjYzwESALotFCcWb9YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
	dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=cUYHGedRZUBy35QZoM9XVn2CSucxOL8Fv3Sw7KGWM7s=;
	b=qxn/wbk5pg4z+TudijRl/HjKRN1ai6PbU4fxSM9XW4H9wFVc898KPkqFkKUG5oBVQ0/czaCAqadCPA1wMpcd+JQNwb4Q0mF49KRtJyhSAlOnM8i/gdYu9aaBD/ziJEsV1Ccz3oNM8igTB7WYBmTI41A57J2/KrC69bBqrjvY4Lgm2geWHre0ramcIfF7LbdMEC7pOi0/IYrLxwEJhkBqsYrZyL+uMKkquzdYn0i/NWraSM+nfQVVTxHn7pPM7krnSfB6752kzMRP7qVfYi/mY47zywTCRToqOUFD6XX1aX0GH0KJkpAqbj9wfz9W8dVqDzs98hkqSLXcR/0orTNXow==
Received: from SG2APC01FT011.eop-APC01.prod.protection.outlook.com
	(10.152.250.60) by SG2APC01HT131.eop-APC01.prod.protection.outlook.com
	(10.152.251.53) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2367.14;
	Sun, 20 Oct 2019 15:29:04 +0000
Received: from MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM (10.152.250.52) by
	SG2APC01FT011.mail.protection.outlook.com (10.152.250.183) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2367.14 via Frontend Transport; Sun, 20 Oct 2019 15:29:04 +0000
Received: from MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM
	([fe80::bd9a:baee:a645:4b1c]) by
	MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM
	([fe80::bd9a:baee:a645:4b1c%6]) with mapi id 15.20.2347.028;
	Sun, 20 Oct 2019 15:29:03 +0000
From: Abhi Arora <abhiarora4@live.com>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Thread-Topic: [yocto] Reducing the size of the image by optimizing python
Thread-Index: AQHVhYg7Pl6lKyJQokajvwtgB9NFP6dgGVOAgAHQRXSAACAaAIAABSDmgAAE6wCAAAMQAIAAE4NYgAE1YACAAEssrg==
Date: Sun, 20 Oct 2019 15:29:03 +0000
Message-ID: <MAXPR01MB220637C65EC5E8793E4F2715FA6E0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR01MB220688520F47DEEC5D530BD9FA6C0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
	<CAMKF1sofAn-D104y=Aj2SQuvjrnLqoQjcpRRL3oNjTrXw75d3w@mail.gmail.com>
	<MAXPR01MB2206466821B5D2748ADF3F09FA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
	<0562531ddf873d88cf8dfffd4f66efb2a35f9e64.camel@linuxfoundation.org>
	<MAXPR01MB22065FC20AFCDA4F861D7845FA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
	<e6d9c7aa1796070677b20b08999fa2313abde740.camel@linuxfoundation.org>
	<CA+4=imYxNpiox1pPwi52LeL56vT+ZSpFgj9EStYh+EXmirBNeA@mail.gmail.com>
	<MAXPR01MB22067C10A6EF66D6DF82C41CFA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>,
	<20191020105900.rp7gebz6sjil6jl3@jholzmayr.localdomain>
In-Reply-To: <20191020105900.rp7gebz6sjil6jl3@jholzmayr.localdomain>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:4C5A598FE47ACB992E0577398D19456BD71F4577006D348F279DA07C1BA5388A;
	UpperCasedChecksum:0C15AF429C01125034DCCA0E8BC0DA9C777BD4A21490563B16B12ACF68E312B4;
	SizeAsReceived:7705; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [LHvYxyiNLdAGmXktSBJT3cf5ZN6dy+Ub]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: SG2APC01HT131:
x-ms-exchange-purlcount: 5
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fg/WPSkrKgrtfN4BT7xw9GZ5AaFE18LEpH7ykKfTzqlThvnlJ3n0XAHYpGUY1lpdWuMU01LTjc1ex03zkVczOyNQVFZfmYWmu7HmtMokV5rVxKrZX3juYfemRF1Zdf8mPyyy3J5FZmAZgPXY5HDGQhgTWnt6y2sTBs45/8vM/a1Zk6J1KvX/NCvuwxkKDsgzYajK3AJ3Ss8eW0l7uhbn8G75HQ3rVNsluk9zleAN/OQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e35e608-1a83-4bfc-d52b-08d755723d49
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2019 15:29:03.8116 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT131
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Reducing the size of the image by optimizing python
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
X-List-Received-Date: Sun, 20 Oct 2019 15:29:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB220637C65EC5E8793E4F2715FA6E0MAXPR01MB2206INDP_"

--_000_MAXPR01MB220637C65EC5E8793E4F2715FA6E0MAXPR01MB2206INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello,
I have listed the python modules and packages that I don't want. Someone re=
commended to list them with BAD_RECOMMENDATION. Can someone help me where t=
his variable should go?

Thank you.

Get Outlook for Android<https://aka.ms/ghei36>

________________________________
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Sent: Sunday, October 20, 2019 4:29:00 PM
To: Abhi Arora <abhiarora4@live.com>
Cc: Yann Dirson <yann.dirson@blade-group.com>; richard.purdie@linuxfoundati=
on.org <richard.purdie@linuxfoundation.org>; yocto@yoctoproject.org <yocto@=
yoctoproject.org>
Subject: Re: [yocto] Reducing the size of the image by optimizing python

On Sat, Oct 19, 2019 at 04:32:26PM +0000, Abhi Arora wrote:
> I am planning to install it in my host machine and see if I am able to ru=
n my scripts and manually add or remove modules and python packages to get =
minimal required system for my scripts.
>
> For that I need to access python3-misc and what it installs.

Its not something that directly corresponds to a standard desktop
distribution. Rather, its "everything that would otherwise be left
behind", see:

https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/=
python/python3_3.7.4.bb#n323

So its just like the advice was already: remove it, see what breaks, and
then add smaller bits and pieces again until everything works as
desired.

Greetz
>
>
>
> Get Outlook for Android<https://aka.ms/ghei36>
>
> ________________________________
> From: Yann Dirson <yann.dirson@blade-group.com>
> Sent: Saturday, October 19, 2019 8:51:52 PM
> To: richard.purdie@linuxfoundation.org <richard.purdie@linuxfoundation.or=
g>
> Cc: Abhi Arora <abhiarora4@live.com>; Khem Raj <raj.khem@gmail.com>; yoct=
o@yoctoproject.org <yocto@yoctoproject.org>
> Subject: Re: [yocto] Reducing the size of the image by optimizing python
>
> You can also look at the package dependency graph (see the file
> generated by bitbake -g) to get a better idea of what pulls what.
>
> 2019-10-19 17:10 UTC+02:00, richard.purdie@linuxfoundation.org
> <richard.purdie@linuxfoundation.org>:
> > On Sat, 2019-10-19 at 14:55 +0000, Abhi Arora wrote:
> >> Thanks your for the suggestion.
> >>
> >> From where I can find out what modules and packages python3-misc
> >> downloads and installs? I am new to yocto and Don't know where to
> >> look for. I tried grep but didn't help me.
> >
> > python3-misc is a package. You can look at its dependencies to see what
> > it adds to the image.
> >
> >> And how about optimization using pyc file? Is it doable?
> >
> > Start simple. If you have python3-misc installed its using a lot of
> > space and is the sensible place to start with trimming things down.
> >
> > Optimising to just pyc files is an optimisation further than most
> > people find they need and will be much harder to do.
> >
> > Cheers,
> >
> > Richard
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
>
> --
> Yann Dirson <yann@blade-group.com>
> Blade / Shadow -- http://shadow.tech

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--
=97=97=97=97=97=97=97=97=97=97=97=97=97=97=97
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de<http://www.rsi-elektrotechnik.de>
=97=97=97=97=97=97=97=97=97=97=97=97=97=97=97
Amtsgericht Ingolstadt =96 GmbH: HRB 191328 =96 KG: HRA 170393
Gesch=E4ftsf=FChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Gesch=E4ftsf=FChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


--_000_MAXPR01MB220637C65EC5E8793E4F2715FA6E0MAXPR01MB2206INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
Hello,<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
I have listed the python modules and packages that I don't want. Someone re=
commended to list them with BAD_RECOMMENDATION. Can someone help me where t=
his variable should go?<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
Thank you.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
<span id=3D"x_OutlookSignature">
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
Get <a href=3D"https://aka.ms/ghei36">Outlook for Android</a></div>
</span><br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Josef Holzmayr &lt;=
holzmayr@rsi-elektrotechnik.de&gt;<br>
<b>Sent:</b> Sunday, October 20, 2019 4:29:00 PM<br>
<b>To:</b> Abhi Arora &lt;abhiarora4@live.com&gt;<br>
<b>Cc:</b> Yann Dirson &lt;yann.dirson@blade-group.com&gt;; richard.purdie@=
linuxfoundation.org &lt;richard.purdie@linuxfoundation.org&gt;; yocto@yocto=
project.org &lt;yocto@yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Reducing the size of the image by optimizing py=
thon</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:11pt;">
<div class=3D"PlainText">On Sat, Oct 19, 2019 at 04:32:26PM &#43;0000, Abhi=
 Arora wrote:<br>
&gt; I am planning to install it in my host machine and see if I am able to=
 run my scripts and manually add or remove modules and python packages to g=
et minimal required system for my scripts.<br>
&gt; <br>
&gt; For that I need to access python3-misc and what it installs.<br>
<br>
Its not something that directly corresponds to a standard desktop<br>
distribution. Rather, its &quot;everything that would otherwise be left<br>
behind&quot;, see:<br>
<br>
<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipe=
s-devtools/python/python3_3.7.4.bb#n323">https://git.yoctoproject.org/cgit/=
cgit.cgi/poky/tree/meta/recipes-devtools/python/python3_3.7.4.bb#n323</a><b=
r>
<br>
So its just like the advice was already: remove it, see what breaks, and<br=
>
then add smaller bits and pieces again until everything works as<br>
desired.<br>
<br>
Greetz<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Get Outlook for Android&lt;<a href=3D"https://aka.ms/ghei36">https://a=
ka.ms/ghei36</a>&gt;<br>
&gt; <br>
&gt; ________________________________<br>
&gt; From: Yann Dirson &lt;yann.dirson@blade-group.com&gt;<br>
&gt; Sent: Saturday, October 19, 2019 8:51:52 PM<br>
&gt; To: richard.purdie@linuxfoundation.org &lt;richard.purdie@linuxfoundat=
ion.org&gt;<br>
&gt; Cc: Abhi Arora &lt;abhiarora4@live.com&gt;; Khem Raj &lt;raj.khem@gmai=
l.com&gt;; yocto@yoctoproject.org &lt;yocto@yoctoproject.org&gt;<br>
&gt; Subject: Re: [yocto] Reducing the size of the image by optimizing pyth=
on<br>
&gt; <br>
&gt; You can also look at the package dependency graph (see the file<br>
&gt; generated by bitbake -g) to get a better idea of what pulls what.<br>
&gt; <br>
&gt; 2019-10-19 17:10 UTC&#43;02:00, richard.purdie@linuxfoundation.org<br>
&gt; &lt;richard.purdie@linuxfoundation.org&gt;:<br>
&gt; &gt; On Sat, 2019-10-19 at 14:55 &#43;0000, Abhi Arora wrote:<br>
&gt; &gt;&gt; Thanks your for the suggestion.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; From where I can find out what modules and packages python3-m=
isc<br>
&gt; &gt;&gt; downloads and installs? I am new to yocto and Don't know wher=
e to<br>
&gt; &gt;&gt; look for. I tried grep but didn't help me.<br>
&gt; &gt;<br>
&gt; &gt; python3-misc is a package. You can look at its dependencies to se=
e what<br>
&gt; &gt; it adds to the image.<br>
&gt; &gt;<br>
&gt; &gt;&gt; And how about optimization using pyc file? Is it doable?<br>
&gt; &gt;<br>
&gt; &gt; Start simple. If you have python3-misc installed its using a lot =
of<br>
&gt; &gt; space and is the sensible place to start with trimming things dow=
n.<br>
&gt; &gt;<br>
&gt; &gt; Optimising to just pyc files is an optimisation further than most=
<br>
&gt; &gt; people find they need and will be much harder to do.<br>
&gt; &gt;<br>
&gt; &gt; Cheers,<br>
&gt; &gt;<br>
&gt; &gt; Richard<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; yocto@yoctoproject.org<br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https:/=
/lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &gt;<br>
&gt; <br>
&gt; <br>
&gt; --<br>
&gt; Yann Dirson &lt;yann@blade-group.com&gt;<br>
&gt; Blade / Shadow -- <a href=3D"http://shadow.tech">http://shadow.tech</a=
><br>
<br>
&gt; -- <br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
-- <br>
=97=97=97=97=97=97=97=97=97=97=97=97=97=97=97<br>
Josef Holzmayr<br>
Software Developer Embedded Systems<br>
<br>
Tel: &#43;49 8444 9204-48<br>
Fax: &#43;49 8444 9204-50<br>
<br>
R-S-I Elektrotechnik GmbH &amp; Co. KG<br>
Woelkestrasse 11<br>
D-85301 Schweitenkirchen<br>
<a href=3D"http://www.rsi-elektrotechnik.de">www.rsi-elektrotechnik.de</a><=
br>
=97=97=97=97=97=97=97=97=97=97=97=97=97=97=97<br>
Amtsgericht Ingolstadt =96 GmbH: HRB 191328 =96 KG: HRA 170393<br>
Gesch=E4ftsf=FChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg<br>
Ust-IdNr: DE 128592548 <br>
<br>
_____________________________________________________________<br>
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363<br>
Gesch=E4ftsf=FChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg<br>
USt-IdNr.: DE 128592548<br>
<br>
</div>
</span></font>
</body>
</html>

--_000_MAXPR01MB220637C65EC5E8793E4F2715FA6E0MAXPR01MB2206INDP_--
