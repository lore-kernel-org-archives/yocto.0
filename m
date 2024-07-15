Return-Path: <G.Kautzmann@PRIMES.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46057C3DA59
	for <webhook@archiver.kernel.org>; Mon, 15 Jul 2024 10:21:47 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by mx.groups.io with SMTP id smtpd.web10.34885.1721038897794966652
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jul 2024 03:21:38 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: domain mismatch" header.i=g.kautzmann@primes.de header.s=s1-ionos header.b=bkaTYHBe;
 spf=pass (domain: primes.de, ip: 212.227.126.135, mailfrom: g.kautzmann@primes.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=PRIMES.de;
	s=s1-ionos; t=1721038896; x=1721643696; i=g.kautzmann@primes.de;
	bh=LNdsKWBrt7E00XZoW4V3gW02F4EkQPZm8jZqc2kSb1s=;
	h=X-UI-Sender-Class:From:To:Subject:Date:Message-ID:Content-Type:
	 MIME-Version:cc:content-transfer-encoding:content-type:date:from:
	 message-id:mime-version:reply-to:subject:to;
	b=bkaTYHBeNj1in2ccouE0OlDqCaEhQQdJkIHUKS5HzEAIm1OIpXhUjAIuavKQYMDa
	 F+y312bh+TDL6lup0SZ0l6Dfruis+VN7S9EPUeTa+CT8baV2X3GHZxHToCJeeC014
	 eXb3hgD3kXf+47TssipTGY2IJwqq05lOADENwsoXGie0/Z49ectP5w2OxJLRTsRjD
	 ibmaeQZOTs2DMYfPiBfI1IWUFCbkz8dV5XRCT7qDP4skFi2SQumeoCLKF32iTBT+2
	 sPDx/rMYqf6mkdZYPkHAfnMIkhOfKFbYbijQ0fF3wCY3vH0TK5D6mgyTVjPhv9LXZ
	 0hKcBFbWx5qvb1s6mQ==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from Exchange2013.PRIMES.local ([80.154.17.250]) by
 mrelayeu.kundenserver.de (mreue012 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MFJfN-1sa7Nx0Uyv-00DcuM for <yocto@lists.yoctoproject.org>; Mon, 15 Jul 2024
 12:21:36 +0200
Received: from EXCHANGE2013.PRIMES.local ([192.168.116.253]) by
 Exchange2013.PRIMES.local ([192.168.116.253]) with mapi id 14.03.0513.000;
 Mon, 15 Jul 2024 12:21:35 +0200
From: Gerd Kautzmann <G.Kautzmann@PRIMES.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: went from Dunfell to Scarthgap
Thread-Topic: went from Dunfell to Scarthgap
Thread-Index: AdrWoLvobhdO8h/KRWuM37t8iew5gg==
Date: Mon, 15 Jul 2024 10:21:34 +0000
Message-ID: <1619D009AA8C9E469331A8EE22395AEC01106D1A9D@Exchange2013.PRIMES.local>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.117.140]
Content-Type: multipart/alternative;
	boundary="_000_1619D009AA8C9E469331A8EE22395AEC01106D1A9DExchange2013P_"
MIME-Version: 1.0
X-Provags-ID: V03:K1:RbxgZ4tgl3SxZ4/uKfpuBPOAK4wZHshgitI5lYgKXPdAbJiiLY9
 h4muUsg8wsnVn1osbm1YfqijqXEnUd9r6rycEdn7yGAo1HylCAdjkvPAEfFIF+8I0GbpbdO
 a+ELjAWfrrjpEAo2qKzWoOm3XYrjUjkHBOMdZhTlDlc55gYlT9SPUcFNNX0cmXFqHDoeJU9
 D9/0NmWAzRjp9jH2BfePw==
UI-OutboundReport: notjunk:1;M01:P0:I89s7R+kgJE=;rcwRoL2YhPMYVFIls3HrFkPd0AM
 X+130LjVNothfmU/GcPS8G04Sf9C56+ezy0ZWs2vZ+NRtCwz9dfOXM8eQrd+RAQcbltekgAfP
 JCZVXhrlhHmflOvnc7ePst4oNSG9XQ4WGJDKrWUOAIG2FId0BaPhDNuEc/YnIuzzJyMhZGMZ3
 lzHwZm0DuWNBByGiSfYhGeCvCCOJluqn7UtiXAMlfjHjIz1Vj0E3GOVMGFE+BZ2PusZaMTu8C
 XccX2Xg6Jnf3Pr5lhVCnP6qGnhLSmWwTFAhfo5EVHNYrq9O+/lRlkj1V9iIJIfZ0xDkjqe4sY
 1TqFyNfT7NCzSD9dgtAxE7SMwf1fdWrlL3uwDAVlidEcaJ+1YZT4+DHx7VQGhjZXXxL2ZDmli
 fvV5VcaYMLvCtufWnV5ku4ThQiD8YR4W3F0FWK/muzJAO+nyGNHSJjdX5mzXrABVtX3YkfJCh
 EXwHlU3stoBWHVPziKm2lEgYf+NyOLxcHvruP6H9vNWrQhpmsv334isl9136RNq84RkQsKig6
 pwr3bMckDQIUHQeQFyBad4kB19+sCVv428AwlnsJc3UwgPiVJI2fe9pDI512jdGn0lk/6z0cZ
 AWjvS8+L6LAoFFio8eBSjJnYNdcZ955KSjwyMoghZVAqreYKRP1SFW/Fzm/dEz1NqeA8pNiaQ
 vWEDVO/IpvwWzfkUjvVlPqYHtJxeGMdkYrD/5ECWoAqVTOPF3MVMKKNJi4+Yjmn1qCjj71DKh
 cZx4Ebl8GFvC+rQgDqbZgg/YjVcZ7FAqw==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jul 2024 10:21:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63496

--_000_1619D009AA8C9E469331A8EE22395AEC01106D1A9DExchange2013P_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello ML Members,

I went from Dunfell to Scarthgap for a small RasPi image and noted some dif=
ferences I didn't understand:

1. The Dunfell build 'core-image-minimal' let me use a monitor and USB keyb=
oard as console, on Scarthgap I got an empty screen.
I could use the serial console by inserting the line ' ENABLE_UART =3D "1" =
' in conf/local.conf

Is this a bug or a feature?
Is there a simple trick for getting back the boot screen on a monitor?

2.  On the Dunfell built I the folder '/lib/modules/...' this folder doesn'=
t even exist on Scarthgap.
On Dunfell  I used ' sbin/modprobe i2c-dev'
On Scarthgap I got the error message:
modprobe: FATAL: Module i2c-dev not found in directory /lib/modules/6.6.22-=
v7l

Any help for getting i2c-dev back in Scarthgap?



PRIMES GmbH    Max-Planck-Str. 2    64319 Pfungstadt   Germany
T +49 6157 9878 0
CEO: Dr.-Ing. Reinhard Kramer, Dr. rer. nat. Thomas Umschlag
Local Court: Darmstadt HRB 5134
g.kautzmann@primes.de<mailto:g.kautzmann@primes.de>    www.primes.de<blocke=
d::http://www.primes.de/>


--_000_1619D009AA8C9E469331A8EE22395AEC01106D1A9DExchange2013P_
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello ML Members,<o:p></o:p></p>
<p class=3D"MsoNormal"><br>
I went from Dunfell to Scarthgap for a small RasPi image and noted some dif=
ferences I didn&#8217;t understand:<br>
<br>
1. The Dunfell build &#8218;core-image-minimal&#8216; let me use a monitor =
and USB keyboard as console, on Scarthgap I got an empty screen.<o:p></o:p>=
</p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">I could use the seria=
l console by inserting the line &#8218;<span style=3D"font-size:11.5pt;font=
-family:&quot;Arial&quot;,sans-serif;color:#3A3A3D;background:white"> ENABL=
E_UART =3D &quot;1&quot;</span> &#8216; in conf/local.conf<br>
<br>
Is this a bug or a feature?<br>
Is there a simple trick for getting back the boot screen on a monitor?<br>
<br>
2. &nbsp;On the Dunfell built I the folder &#8218;/lib/modules/&#8230;&#821=
6; this folder doesn&#8217;t even exist on Scarthgap.<br>
On Dunfell &nbsp;I used &#8218; sbin/modprobe i2c-dev&#8216;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On Scarthgap I got th=
e error message:<br>
modprobe: FATAL: Module i2c-dev not found in directory /lib/modules/6.6.22-=
v7l<br>
<br>
Any help for getting i2c-dev back in Scarthgap?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
-fareast-language:DE"><a href=3D"mailto:g.kautzmann@primes.de"><span style=
=3D"color:#0563C1">g.kautzmann@primes.de</span></a></span><span style=3D"fo=
nt-size:8.0pt;color:#4F4D51;mso-fareast-language:DE">&nbsp;&nbsp;&nbsp;
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

--_000_1619D009AA8C9E469331A8EE22395AEC01106D1A9DExchange2013P_--

