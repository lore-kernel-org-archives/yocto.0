Return-Path: <G.Kautzmann@PRIMES.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87F6AC3DA59
	for <webhook@archiver.kernel.org>; Mon, 15 Jul 2024 10:25:57 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by mx.groups.io with SMTP id smtpd.web11.34871.1721039153503403120
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jul 2024 03:25:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: domain mismatch" header.i=g.kautzmann@primes.de header.s=s1-ionos header.b=1VMW0O4o;
 spf=pass (domain: primes.de, ip: 212.227.126.131, mailfrom: g.kautzmann@primes.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=PRIMES.de;
	s=s1-ionos; t=1721039152; x=1721643952; i=g.kautzmann@primes.de;
	bh=QJZsNLdOHjKaJ2f1e3SNWgdx+J3uEDxBCF9PebmTIrQ=;
	h=X-UI-Sender-Class:From:To:Subject:Date:Message-ID:Content-Type:
	 MIME-Version:cc:content-transfer-encoding:content-type:date:from:
	 message-id:mime-version:reply-to:subject:to;
	b=1VMW0O4oJoQTUVzHMeX3aCWiWOg3uypq1PxEP8VX21mzDOrk8bZMt4yehZdMS5B5
	 Efu6DE7Ry0HmnwFe+BD8DApTPPmVYUxUBqE6/df5XoIO/UeEBbAJFctA0Ml0OSw/3
	 VjsAkf5CSPWavcatAtDP6uLX22E9VvEd8JEsDant8RDISRXRZkYtIAM6cbaF/8XbB
	 Kt5Jshty/tMn9lvCqvAjRBpFH6UrK1WJu4JOpmXaay6dfs55L/vtBPmmo9uiSSdD0
	 4Mhwu89aPBrsmIMiHCNhcwi41XEBpF/LYQVu1grkpyMnZGzMRu0AvwWnCINLaTqfs
	 c5WbSxAq6Kzf7JCErA==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from Exchange2013.PRIMES.local ([149.249.153.88]) by
 mrelayeu.kundenserver.de (mreue010 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1Mf0Nm-1rsIOT3ziM-00dslw for <yocto@lists.yoctoproject.org>; Mon, 15 Jul 2024
 12:25:51 +0200
Received: from EXCHANGE2013.PRIMES.local ([192.168.116.253]) by
 Exchange2013.PRIMES.local ([192.168.116.253]) with mapi id 14.03.0513.000;
 Mon, 15 Jul 2024 12:25:51 +0200
From: Gerd Kautzmann <G.Kautzmann@PRIMES.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Exception during boot process, any ideas?
Thread-Topic: Exception during boot process, any ideas?
Thread-Index: AdrWoPoI6FsGi3zrT5WPYPnnmwMP8g==
Date: Mon, 15 Jul 2024 10:25:51 +0000
Message-ID: <1619D009AA8C9E469331A8EE22395AEC01106D1AB7@Exchange2013.PRIMES.local>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.117.140]
Content-Type: multipart/alternative;
	boundary="_000_1619D009AA8C9E469331A8EE22395AEC01106D1AB7Exchange2013P_"
MIME-Version: 1.0
X-Provags-ID: V03:K1:ZJtsSadHvgpw816EVdcaYjcPuuZ+NnhwQYFkDsOC4AesoCavyus
 RYQv0HRmqeDzF7hJ8JCeGRCwxuXujJWBiKq1JbhQIeEgI+lwQz4hybnKJuuhEks3ga3oW6W
 gCUCP4+0jqJWNFDDKQxZhbwNw7xdZ8iAUoHWBjM4snW0mLdkZG9ijhXqX/kk+E4Qvc6N4/6
 NHXf/1oOikAzNw8CjIxqA==
UI-OutboundReport: notjunk:1;M01:P0:NfbSh6KCxNs=;/L6f18AG8YTEqvytUVvcL5HvnYk
 WfKxgSA2MyDg1O+21ibq+J/fwkTfySicJqglYvc+4srMbBGOHJNaRsf2Q1AexYOD64IzzeeJ5
 T08aokJLQU/ByNnFjAnbzDYg1Es+l16zhYXrc3+3Yh0pAvTZ+fZhhQpokg4xZRyJYsfhER8WW
 2FH01mLqjYLyYXK1pZDelOwBTYZkDQ0KnmqQp9AArk6lgw4k97sloyCSGh7K9gXz6zdYk6/2N
 7WMbixNBgjwMvfl5ogYnJJ/iSxd+MJbQSyVaoUe+yHxwwO1C4P2GX/B0IAi6kRNusml9ZgVVt
 MT/QR9B4PSSm2W+uf4Hb0SHEDITVnC2HpEKwOqKwVWsDN696LEI7rIcmtssxuvVEhSERdTrrG
 WBKVj4ES4H9Zi408H/CkA7Pn+2sraW7MtDVXWa1DcTSIcVezmLAex+dy68a2iNU1aaq91uyFg
 fp+f8Jefz7LPsegCHQWxQTZRXsf6qPlf656PywiCTK8BMWtxaBOzPk/nK9vx0YHRUjoKDoH7U
 QCTMMfb1T4pvE4JLHH0+pIzkZ40kBShgW2K//MyyAHA6YW8lMdJ0DKOowwCk8X3zu8fNu/xjj
 d7y3pZDXS1Zn6UPgDes05NkrxlYcQ1OVDbkJFJgXHMVF33+VvF1mnqj7mHg9A3/qXQbZkA0ky
 rOnEiWhfDRTVf8oQ8LILUDSPVvTrQ9EmhikYegqA4a997HnWXNI24IhOokvpum3hkygB3zYuR
 XwQziIa7low09aMwdNjo7FXT8ruBtUjvw==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jul 2024 10:25:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63497

--_000_1619D009AA8C9E469331A8EE22395AEC01106D1AB7Exchange2013P_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello ML members,

I have a scarthgap image that is constantly crashing during boot, it is (mo=
re or less) the 'core-minimal-build' but I have no idea where it is crashin=
g

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


I tried to include some drivers for cameras, but it crashes, when I delete =
my changes it still keeps crashing.


PRIMES GmbH    Max-Planck-Str. 2    64319 Pfungstadt   Germany
T +49 6157 9878 0
CEO: Dr.-Ing. Reinhard Kramer, Dr. rer. nat. Thomas Umschlag
Local Court: Darmstadt HRB 5134
g.kautzmann@primes.de<mailto:g.kautzmann@primes.de>    www.primes.de<blocke=
d::http://www.primes.de/>


--_000_1619D009AA8C9E469331A8EE22395AEC01106D1AB7Exchange2013P_
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
<p class=3D"MsoNormal">Hello ML members,<br>
<br>
I have a scarthgap image that is constantly crashing during boot, it is (mo=
re or less) the &#8218;core-minimal-build&#8216; but I have no idea where i=
t is crashing
<br>
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
<o:p></o:p></p>
<p class=3D"MsoNormal"><br>
<br>
I tried to include some drivers for cameras, but it crashes, when I delete =
my changes it still keeps crashing.<o:p></o:p></p>
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

--_000_1619D009AA8C9E469331A8EE22395AEC01106D1AB7Exchange2013P_--

