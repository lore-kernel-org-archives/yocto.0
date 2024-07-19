Return-Path: <G.Kautzmann@PRIMES.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 844ABC3DA59
	for <webhook@archiver.kernel.org>; Fri, 19 Jul 2024 11:14:54 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by mx.groups.io with SMTP id smtpd.web10.16510.1721387686692560515
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jul 2024 04:14:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: domain mismatch" header.i=g.kautzmann@primes.de header.s=s1-ionos header.b=pStIK38E;
 spf=pass (domain: primes.de, ip: 212.227.126.131, mailfrom: g.kautzmann@primes.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=PRIMES.de;
	s=s1-ionos; t=1721387685; x=1721992485; i=g.kautzmann@primes.de;
	bh=18eZZzOnP1Hu1j4ThbaztXlN0OA9C9Bx+Ni9Ez/Yzhc=;
	h=X-UI-Sender-Class:From:To:Subject:Date:Message-ID:Content-Type:
	 MIME-Version:cc:content-transfer-encoding:content-type:date:from:
	 message-id:mime-version:reply-to:subject:to;
	b=pStIK38EPIj/TSlONQWxgDb3iZZAtizzvUZnI66NoKq8FfNKhFYHFMZXozjmsOky
	 HQc16FlxQ7/v0BB6ZlJ1secqsPJWSaTNe9vK5p/OhPQohJOr0tI4yeYu5k/lFyyNQ
	 7Vb4PUnow8wgjnmU/RSMuTXDjgaALSzYMEaapjYfjwQGRRZ+K1hHXBkShsDIFUKyI
	 J+RtkrAu4tMVqBsFWSMlZqlQALFVY9XEdeVCjPcVBmxBFMv+ZsDm3nKxy/ZUrjxtr
	 EAHtKf4NnRzW4ov3uAnAFJgVAiZ8gstYqdZ5oibiDjdWByVoa0C5DHY0WKu16pEYb
	 K0EmuZ6jyy6v4zbHgA==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from Exchange2013.PRIMES.local ([80.154.17.250]) by
 mrelayeu.kundenserver.de (mreue009 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1M4s91-1sVauw06GF-00Edvf for <yocto@lists.yoctoproject.org>; Fri, 19 Jul 2024
 13:14:45 +0200
Received: from EXCHANGE2013.PRIMES.local ([192.168.116.253]) by
 Exchange2013.PRIMES.local ([192.168.116.253]) with mapi id 14.03.0513.000;
 Fri, 19 Jul 2024 13:14:44 +0200
From: Gerd Kautzmann <G.Kautzmann@PRIMES.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Raspberry build: fstype in cmdline.txt might be wrong 
Thread-Topic: Raspberry build: fstype in cmdline.txt might be wrong 
Thread-Index: AdrZy46uGNuM5CBjSyurc3LG3VpZ6g==
Date: Fri, 19 Jul 2024 11:14:44 +0000
Message-ID: <1619D009AA8C9E469331A8EE22395AEC01106D3D98@Exchange2013.PRIMES.local>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.117.140]
Content-Type: multipart/alternative;
	boundary="_000_1619D009AA8C9E469331A8EE22395AEC01106D3D98Exchange2013P_"
MIME-Version: 1.0
X-Provags-ID: V03:K1:wozoGDuw369cnC258iwEHd1rmZddyL4Tbhe/SKuBAI994LfHdFn
 6vSOtYiNSxXkJ/qoAxzt3tpe5+cPTtgxO36ElzyV3h27e8nPbEJ+RHb+u9qqmew5WM0Um/u
 3xcx/028eAc4Q6PBEdhAYoA/Gr49BjaQCQh6aVKKLS8FxL7IlTprwFI5jU0tIObGFxlB4GQ
 VmkP4p2GAC9fwqqFqilUw==
UI-OutboundReport: notjunk:1;M01:P0:0pm4Ku9dR5w=;SIqHgxWTFwiUkcJdVw0+QRNKlSs
 xu1Nlr3R+FxCAEzHTDx72i6bRK+oFZv35b1CC8tFdEkfKQ78g0vJgQt3ONAkZybHWJH7C0L+A
 79xrZXbHcIvJFVZNDZheMan3v8fjeEpxIpixmahsn6EGuw2qQ8idwU340HnoNvllRafL+7Uhv
 li60NcI0RRFeRHyWABwq59wWUS+ES5ei2kRJvGWbL+KygNTI8HpbQY1NWibsZviWrMJGdv6O+
 50/y+Sp9MydVUFE/evTvT/l3V3ISF/9vbosj20As7UaadHFHJjEyYb/o0wgu0A2wk8LuKvFIH
 /Hpnr0jIP1dPme+8AEb6W7i6zkqR4KnbRfcAK51gWW0FEQquE+S1qRfq8Zz6B1+Owhj+O4eWP
 gWamGNlBhUDsdO9AHzUb37Qmjkm689beWZUK8uBr+047jOJTWGgzzxaf2nDvFOjoLhtOCOPFg
 XOO/xSCif4oXw2DWUt9jXkNcYWL8Py7ZEIipgZjkfx4uKt8POQbD+jLntqyX9xnFvdGsf7DVw
 vDQShQFh6yibiQXqEKAcD+qUxdPvuDBP+dBorWj2vLKcL/xKqRw4GlDGawsXgwuoQS7DZChbm
 7YYjX8ZMFxnQpnrBE/JX6RO2sc8rhDTNZ0zHk18aDgAd6AvPNybryvIWatDZVLITPfovAXFhi
 rfbbaI/OcFbUaESAjr+sWl5z1ttH9LXod/BLiSlnq5rfRAEWhHOZKfRt3b9LLEJjFX+HgTlfL
 V/n+mQrHPzFDFjnmLymwoCAqL2u7iUUcQ==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Jul 2024 11:14:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63537

--_000_1619D009AA8C9E469331A8EE22395AEC01106D3D98Exchange2013P_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I might have discovered a minor bug when building a bootable yocto scarthga=
p for Raspberry Pi.

The cmdline.txt in the vfat partition is asking for an ext4 bootsystem:

" dwc_otg.lpm_enable=3D0 console=3Dserial0,115200 root=3D/dev/mmcblk0p2 roo=
tfstype=3Dext4 rootwait  net.ifnames=3D0 "

but blkid proofes it is an ext3 partition:

" /dev/mmcblk0p2: UUID=3D"6a34a495-6214-4a0d-b960-72f70fc80f3e" TYPE=3D"ext=
3" "


Even the /etc/mtab seems to be confused:


" /dev/root / ext4 rw,relatime 0 0 "


I hope this will not lead to any problems.


CU Gerd

--_000_1619D009AA8C9E469331A8EE22395AEC01106D3D98Exchange2013P_
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
@font-face
	{font-family:"Cascadia Mono";
	panose-1:2 11 6 9 2 0 0 2 0 4;}
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
<p class=3D"MsoNormal">I might have discovered a minor bug when building a =
bootable yocto scarthgap for Raspberry Pi.<br>
<br>
The cmdline.txt in the vfat partition is asking for an ext4 bootsystem:<br>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Cascadia Mono&quot;;color=
:#444444;background:white">&#8222; dwc_otg.lpm_enable=3D0 console=3Dserial0=
,115200 root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait &nbsp;net.ifnames=
=3D0 &#8220;<br>
<br>
</span>but blkid proofes it is an ext3 partition:<br>
<br>
<span style=3D"font-size:10.0pt;font-family:&quot;Cascadia Mono&quot;;color=
:#444444;background:white">&#8222; /dev/mmcblk0p2: UUID=3D&quot;6a34a495-62=
14-4a0d-b960-72f70fc80f3e&quot; TYPE=3D&quot;ext3&quot; &#8220;<br>
<br>
<br>
Even the /etc/mtab seems to be confused:<br>
<br>
<br>
</span>&#8222; <span style=3D"font-size:10.0pt;font-family:&quot;Cascadia M=
ono&quot;;color:#444444;background:white">
/dev/root / ext4 rw,relatime 0 0 &#8222;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:1.0pt;margin-right:0cm;m=
argin-bottom:1.0pt;margin-left:0cm">
<span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;Arial&quot;=
,sans-serif;color:black;mso-fareast-language:DE"><br>
<br>
I hope this will not lead to any problems.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt"><span style=3D"font-siz=
e:2.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#383739;mso-fareast-=
language:DE"><br>
<br>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-GB" style=3D"font-size:8.0pt;fon=
t-family:&quot;Arial&quot;,sans-serif;color:#4F4D51;mso-fareast-language:DE=
">CU Gerd</span></b><o:p></o:p></p>
</div>
</body>
</html>

--_000_1619D009AA8C9E469331A8EE22395AEC01106D3D98Exchange2013P_--

