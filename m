Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47FE8C3DA59
	for <webhook@archiver.kernel.org>; Mon, 15 Jul 2024 09:58:57 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
 by mx.groups.io with SMTP id smtpd.web10.34413.1721036601402199410
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jul 2024 02:43:21 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: domain mismatch" header.i=g.kautzmann@primes.de header.s=s1-ionos header.b=D5PuTUhI;
 spf=pass (domain: primes.de, ip: 217.72.192.73, mailfrom: g.kautzmann@primes.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=PRIMES.de;
	s=s1-ionos; t=1721036599; x=1721641399; i=g.kautzmann@primes.de;
	bh=L8noVKGfxBtfcqVh75PdlRzb5QARXn06Ujl6qDGlAkc=;
	h=X-UI-Sender-Class:From:To:Subject:Date:Message-ID:References:
	 In-Reply-To:Content-Type:MIME-Version:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=D5PuTUhIjVT77FhooTfSe9QskT84Bjhh0cpIIv2BbPh213uH1KSa8FZElgODP8ch
	 ddMCNKRjVEpZNwKP/U6WFhna8jp8bKeZoy1HYFvllhqjKnrSeN6J2pR5cT3tZ54kk
	 khQn3m/qQFmAPwfUFNpK36rkHSoKG/hSAdBWyaQLjV6uymdARj6wGYfVH7TM++RBY
	 sY7wg8Q/Fft58qUy0+Fmiab8O2g+C9hnuvoNdpXn98e8RfTNUs9v+1KvfZQ9xYb2Y
	 1GH6JcCBX90jsw/u89xO162WuN6hRmbvHoxm8M5Tb77UWicbf9mER1nBdMSr+33SR
	 U9A0Ip64aK/CXVn+tA==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from Exchange2013.PRIMES.local ([80.154.17.250]) by
 mrelayeu.kundenserver.de (mreue107 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MLQgv-1sle4K0aVn-00I1zW for <yocto@lists.yoctoproject.org>; Mon, 15 Jul
 2024 11:43:19 +0200
Received: from EXCHANGE2013.PRIMES.local ([192.168.116.253]) by
 Exchange2013.PRIMES.local ([192.168.116.253]) with mapi id 14.03.0513.000;
 Mon, 15 Jul 2024 11:43:18 +0200
From: "Gerd Kautzmann" <G.Kautzmann@PRIMES.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: WG: Went from Dunfell to Scartgap
Thread-Topic: Went from Dunfell to Scartgap
Thread-Index: AdrWksoBpGmk4q9oSHmQTx5963QBrAACDKMw
Date: Mon, 15 Jul 2024 09:43:17 +0000
Message-ID: <1619D009AA8C9E469331A8EE22395AEC01106D1A5D@Exchange2013.PRIMES.local>
References: <1619D009AA8C9E469331A8EE22395AEC01106D1A3E@Exchange2013.PRIMES.local>
In-Reply-To: <1619D009AA8C9E469331A8EE22395AEC01106D1A3E@Exchange2013.PRIMES.local>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.117.140]
MIME-Version: 1.0
X-Provags-ID: V03:K1:i5R8ImpCtkAai+s0b4EUIgOezA8I7lnTd3OPcOtBWmB2S2QPiLK
 LW+r6nutpaJah7uQZYJqiaKauk+A5w9pwhC7luYbH2jUZ8Rcjsq30gTkQMCFfi6dI14EqNg
 sIDBjqdaQJWhNgalMOeKOdYiWA8Ed6xBRcYA2lRrtpFt1Y1ZNMBJAQicnelhAnji5w0xpPl
 HVG3WyjHUeA+joymQT+Ow==
UI-OutboundReport: notjunk:1;M01:P0:nk6HDhnScFY=;c8cBXY/6BWgJMzowr2eImdsB6n2
 KdCBnm+bQkfDnA123bfkyYmEAoHfm1YecplAZmG2lP+R2LUR3KATrGOCNxKaEBNc/HLHxwIcT
 +XASmVF1xiK9Hz8ifEZz6k7MF07DZhqKX3tesf53BvFx6qj/ehBw/OyXyhVpUMfB2bO3y3pCN
 cZT1SFlVuBd3ICOVuXAoPpMCWL1RJ6NDS9VGBcVl/LCCAv/mJCjE7my8Q5IHHXJczpujRJ+6I
 5u2RXviw5SXTP9BEwmluOp9eM9UwxM3PobOikn3+2mi0pW/VhEHcARzaVZ9S1ABXhFxVkj/Oz
 4WGU6pdrEbJGNAg3BKK6hQBU3jIHEgfjl1QM1ZcsxjTvWP3TFGw3HSgHA4rk7szHZEertYdaL
 Z6HCrnNnwlKgOg2DBwd5SBoJqDPtPBQZL+m3woFWbDMev6eV1uOT1fknEj7c1cerr09u2+l9f
 CwboBingJCq3PQZCc+DH32ZrQYhYKbB4pQRNwDsjXuXtQjMgKvmDbDRdh5XXU8NYUw27EfY+O
 F1y2eNquEkLn+1GkUA873jJWq88IjqmE8ALysSrEJQM6ZR45o/GNsq2eEQwpE4RaHmgWzm3gH
 9bBpoUjARlxQVj6tf6R+fwNa1pGtOXVVAgjsoK/uVTFuSGM0nUmoc6UkMgn8jSuAkm1dOCqs1
 XOWH2c6inQEwDFaD6Tf68wD1RIWZJTQyJUP3NjtcK2t7Kz4y8ZUYImVa93nTZxKORkY+5exlw
 F73To6Km1J4SrMyeBeYG0KzQciESY8Bsg==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_1619D009AA8C9E469331A8EE22395AEC01106D1A5DExchange2013P_"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jul 2024 09:58:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63494

--_000_1619D009AA8C9E469331A8EE22395AEC01106D1A5DExchange2013P_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello ML Members,

I have a constantly crashing build, could someone give me a hint where the =
boot process did crash:

[    3.639669] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
[    3.650552] EXT4-fs (mmcblk0p2): mounted filesystem b76223f7-8225-46bd-b=
533-9139d82816b6 ro with ordered data mode. Quota mode: none.
[    3.662792] VFS: Mounted root (ext4 filesystem) readonly on device 179:2=
.
[    3.670144] devtmpfs: mounted
[    3.676937] Freeing unused kernel image (initmem) memory: 2048K
[    3.696802] Run /sbin/init as init process
[    3.702487] Run /etc/init as init process
[    3.707038] Run /bin/init as init process
[    3.711531] Run /bin/sh as init process
[    3.719204] usb 1-1: New USB device found, idVendor=3D2109, idProduct=3D=
3431, bcdDevice=3D 4.21
[    3.727533] usb 1-1: New USB device strings: Mfr=3D0, Product=3D1, Seria=
lNumber=3D0
[    3.734776] usb 1-1: Product: USB2.0 Hub
[    3.740197] hub 1-1:1.0: USB hub found
[    3.744237] hub 1-1:1.0: 4 ports detected
[    3.758903] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
sh: cannot set terminal process group (-1): Inappropriate ioctl for device
sh: no job control in this shell
sh-5.2# exit
exit[    7.716845] Kernel panic - not syncing: Attempted to kill init! exit=
code=3D0x00000000
[    7.724835] CPU: 0 PID: 1 Comm: sh Not tainted 6.6.22-v7l #1
[    7.730585] Hardware name: BCM2711

Thanks for reading


PRIMES GmbH    Max-Planck-Str. 2    64319 Pfungstadt   Germany
T +49 6157 9878 0
CEO: Dr.-Ing. Reinhard Kramer, Dr. rer. nat. Thomas Umschlag
Local Court: Darmstadt HRB 5134
g.kautzmann@primes.de<mailto:g.kautzmann@primes.de>    www.primes.de<blocke=
d::http://www.primes.de/>


--_000_1619D009AA8C9E469331A8EE22395AEC01106D1A5DExchange2013P_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.E-MailFormatvorlage18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.E-MailFormatvorlage19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello ML Members,<o:p></o:p></p>
<p class=3D"MsoNormal"><br>
I have a constantly crashing build, could someone give me a hint where the =
boot process did crash:<br>
<br>
[&nbsp;&nbsp;&nbsp; 3.639669] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.650552] EXT4-fs (mmcblk0p2): m=
ounted filesystem b76223f7-8225-46bd-b533-9139d82816b6 ro with ordered data=
 mode. Quota mode: none.<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.662792] VFS: Mounted root (ext=
4 filesystem) readonly on device 179:2.<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.670144] devtmpfs: mounted<o:p>=
</o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.676937] Freeing unused kernel =
image (initmem) memory: 2048K<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.696802] Run /sbin/init as init=
 process<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.702487] Run /etc/init as init =
process<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.707038] Run /bin/init as init =
process<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.711531] Run /bin/sh as init pr=
ocess<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.719204] usb 1-1: New USB devic=
e found, idVendor=3D2109, idProduct=3D3431, bcdDevice=3D 4.21<o:p></o:p></p=
>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.727533] usb 1-1: New USB devic=
e strings: Mfr=3D0, Product=3D1, SerialNumber=3D0<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.734776] usb 1-1: Product: USB2=
.0 Hub<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.740197] hub 1-1:1.0: USB hub f=
ound<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.744237] hub 1-1:1.0: 4 ports d=
etected<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 3.758903] vc4-drm gpu: bound fe4=
00000.hvs (ops vc4_hvs_ops)<o:p></o:p></p>
<p class=3D"MsoNormal">sh: cannot set terminal process group (-1): Inapprop=
riate ioctl for device<o:p></o:p></p>
<p class=3D"MsoNormal">sh: no job control in this shell<o:p></o:p></p>
<p class=3D"MsoNormal">sh-5.2# exit<o:p></o:p></p>
<p class=3D"MsoNormal">exit[&nbsp;&nbsp;&nbsp; 7.716845] Kernel panic - not=
 syncing: Attempted to kill init! exitcode=3D0x00000000<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 7.724835] CPU: 0 PID: 1 Comm: sh=
 Not tainted 6.6.22-v7l #1<o:p></o:p></p>
<p class=3D"MsoNormal">[&nbsp;&nbsp;&nbsp; 7.730585] Hardware name: BCM2711=
<br>
<br>
</p>
<p class=3D"MsoNormal">Thanks for reading<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:1.0pt;margin-right:0cm;m=
argin-bottom:1.0pt;margin-left:0cm">
<span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;=
,sans-serif;color:black;mso-fareast-language:DE"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt"><span style=3D"font-siz=
e:2.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#383739;mso-fareast-=
language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt;line-height:11.5pt;mso-l=
ine-height-rule:exactly">
<b><span lang=3D"EN-GB" style=3D"font-size:8.0pt;font-family:&quot;Arial&qu=
ot;,sans-serif;color:#4F4D51;mso-fareast-language:DE">PRIMES GmbH&nbsp;&nbs=
p;&nbsp;
</span></b><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#4F4D51;mso-fareast-language:DE">Max-Planck-St=
r.
</span><span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-se=
rif;color:#4F4D51;mso-fareast-language:DE">2<b>&nbsp;&nbsp;&nbsp;
</b>64319 Pfungstadt&nbsp;&nbsp; Germany&nbsp;&nbsp;&nbsp; <o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt;line-height:11.5pt;mso-l=
ine-height-rule:exactly">
<span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:#4F4D51;mso-fareast-language:DE">T &#43;49 6157 9878 0&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt;line-height:11.5pt;mso-l=
ine-height-rule:exactly">
<span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:#4F4D51;mso-fareast-language:DE">CEO: Dr.-Ing. Reinhard Kramer, Dr. rer.=
 nat. Thomas Umschlag&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt;line-height:11.5pt;mso-l=
ine-height-rule:exactly">
<span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-serif;col=
or:#4F4D51;mso-fareast-language:DE">Local Court: Darmstadt HRB 5134<o:p></o=
:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:0cm;margin-right:0cm;mar=
gin-bottom:12.0pt;margin-left:5.65pt;line-height:11.1pt;mso-line-height-rul=
e:exactly">
<span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-serif;mso=
-fareast-language:DE"><a href=3D"mailto:g.kautzmann@primes.de">g.kautzmann@=
primes.de</a></span><span style=3D"font-size:8.0pt;color:#4F4D51;mso-fareas=
t-language:DE">&nbsp;&nbsp;&nbsp;
</span><span style=3D"mso-fareast-language:DE"><a href=3D"blocked::http://w=
ww.primes.de/" title=3D"blocked::http://www.primes.de/=0A=
http://www.primes.de/"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#4F4D51;text-decoration:none">www.primes.de</span=
></a></span><span style=3D"font-size:8.0pt;color:#4F4D51;mso-fareast-langua=
ge:DE">&nbsp;</span><span style=3D"position:relative;top:3.0pt;mso-text-rai=
se:-3.0pt;mso-fareast-language:DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_1619D009AA8C9E469331A8EE22395AEC01106D1A5DExchange2013P_--

