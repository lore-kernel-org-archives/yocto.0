Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.670.1628617752511807012
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Aug 2021 10:49:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=j6yAP0yQ;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1628617752; x=1786297752;
  h=from:to:subject:date:mime-version;
  bh=obV9AmQLQaPm48WPdJs80LV4avZCGN1o4CM+QaZPKo8=;
  b=j6yAP0yQy3iSyrZMOZCuYRI3Rm/BMm9/n3pKYjxmXi1kU1VRiM/t0Wzt
   F/gyQqi1NTW1d14r2szAC/Kns+/rUbcdoyjDq69mTtPbjYc0JFlFEdBrO
   QH2UnfOFCbeXSqVrUw5MKDfmhj1R8QwoTkZaFedxfuCAjEYKmcGb+y3oB
   s=;
IronPort-SDR: j8ZOi5dCLVY0pmdb7P5ssFesGisK95Pap2aAlRPFiSV21o8b/30bNJpfLydWpJu4GxMUhUuKyF
 pTqguSBU7sZQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3Av19/Cx+JB7TLN/9uWZy8ngc9DxPPW53KNwIYo?=
 =?us-ascii?q?qAql6hJOvz6uci4ZAqAtL4x3BfgZsby07p8ke3YsqTtCyQrwK2qlzQ8SqFKT?=
 =?us-ascii?q?AIPks4MngYtU4avAEz/K+P2PWRhRJwRHFBq8GumPkdLBc3we0PdomGo7T4VB?=
 =?us-ascii?q?x7zKRd5Kv76F4LMk8i7zeK/9pncbwhHhze2fK9/IgixoQjNrMcdnJFsKrw2y?=
 =?us-ascii?q?hvHo3tIf/pZyGZ1Ll+NnBjy+9m98od7/ytfp/wu+chAUb7nf6sjVrxXEC4mM?=
 =?us-ascii?q?2Eu68L1sxTIUBaC6WEdUmUSlRpIHhTF4RTnVZr/rif2quxw0zScMMbrT747R?=
 =?us-ascii?q?C6i4r9rRhH2lSkHKzA3/mLWisNsg61WuwiuqwB9w4POfI2ZKORyc6XAdt0aX?=
 =?us-ascii?q?2pBWcNRWjRPDo27aIsPCfEBMvhGoInmv1cFsAawBRWyC+Px1DBIgGL90LMn2?=
 =?us-ascii?q?OglHw7IwQksE9wTu3nTt9X1KLkdUf6rw6nO1znDavRW2THm6IfWbB8huuqBU?=
 =?us-ascii?q?qlqfsXP0kkuFxjFjkmOpozgJDOZzPgCs2+e7+d5U++klmEopR1rrDe12scsl?=
 =?us-ascii?q?pfGhpgTyl3c+yt0zpo4KNy6RUN6f9KoDYVduiKaOoZyTc4vTHxktig6x7MJp?=
 =?us-ascii?q?JK2eCoHxZQoyhPedvCKbYyF7xHgWeuMPDt2i3Roc6+8iRaq6UWs1/HwWtO63?=
 =?us-ascii?q?VtItCZJjMfAu3AX2xHS6sWLUuZx8lu71TuA2A3f8O5JLVopmafbLZMq36Q+m?=
 =?us-ascii?q?YAJsUvZGy/7gED2jKiLeUo64uWo8OHnYqn+pp+bKo90lhnyMqQwlcy7BuQ1K?=
 =?us-ascii?q?hQOXmeB9uS60b3j5kn0TKlWgvEqj6XVqpbaKt4BqqGiGQBazJ0j6hakDze6z?=
 =?us-ascii?q?tsYmGIHIEhZdxKAiojlI1DOIPbmAvejm1mgjStny+rIM7DjGJnBMGbPnbf7c?=
 =?us-ascii?q?bt860NQ0A8zwspe55JQBLEBOvXzWkrpudzDEh82LRK0zPjhCNln04MeXmSPA?=
 =?us-ascii?q?rSHP6zMql+F/fkgLPOSa48OuDf9MOQl6ODrjX8ig1MSYa6p3Z4PZHCiAvtmO?=
 =?us-ascii?q?1mZYWbrgtoZEWYKuRYxTPDtiFCZVT5TZm2yX74n5j0hCIOmCpvMRpyqgLyZx?=
 =?us-ascii?q?ie7GZ9WaX5aBVCQC3vocJ+EW/hfIB6Vd4VwlTcYUpClSpQ9zle/swTmzKJ9K?=
 =?us-ascii?q?ejZ8TFesojsnpAh9urYiRYa8T1vE9/bwmaGU2ZshGQKSjQqmqdlrhou5E2E1?=
 =?us-ascii?q?P0ypvteDtFe/LcBaRs3K5Pah8cyS+3JG0iJKsyVRUirRJOjBjcqQ98q69UHb?=
 =?us-ascii?q?l1sAMmviwuF1C2vVexG34eXDYA5p/qPl0P6INxwni6u6Q=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AX+jETKm60tevW5N2vo47bN/7ulPpDfI13D?=
 =?us-ascii?q?Abv31ZSRFFG/Fw8PrPoB17737JYVkqM03I9errBEDiex3hHPxOjbX5VI3KND?=
 =?us-ascii?q?UO01HGEGgN1+bfKkXbak7DytI=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AHBQAHuxJh/0HhJQpaHgEBCxIMQAm?=
 =?us-ascii?q?Cc4F/gUILtAgLAQEBAQEBAQEBCAFBBAEBhz0mOBMBAgQBAQESAQEGAQEBAQE?=
 =?us-ascii?q?GBAGBI4VpDII1IoQfXgEVIww8JgEEEwiCaoF+gQSpYoEzGgJlgl6CCoUWgTq?=
 =?us-ascii?q?BZYUkgmqGCUOEA4YIhSwEhARdAaBnnkCBFwcDgyieOSsSlW4DkH6WD6UbAgQ?=
 =?us-ascii?q?CBAUCFoF3gX1wgzpPFwKcfHMCNgIGCwEBAwmGV4EQgREBAQ?=
X-IPAS-Result: =?us-ascii?q?A2AHBQAHuxJh/0HhJQpaHgEBCxIMQAmCc4F/gUILtAgLA?=
 =?us-ascii?q?QEBAQEBAQEBCAFBBAEBhz0mOBMBAgQBAQESAQEGAQEBAQEGBAGBI4VpDII1I?=
 =?us-ascii?q?oQfXgEVIww8JgEEEwiCaoF+gQSpYoEzGgJlgl6CCoUWgTqBZYUkgmqGCUOEA?=
 =?us-ascii?q?4YIhSwEhARdAaBnnkCBFwcDgyieOSsSlW4DkH6WD6UbAgQCBAUCFoF3gX1wg?=
 =?us-ascii?q?zpPFwKcfHMCNgIGCwEBAwmGV4EQgREBAQ?=
X-IronPort-AV: E=Sophos;i="5.84,310,1620691200"; 
   d="scan'208,217";a="399608498"
IronPort-SDR: fDqfLWXl8Mr0EvlofLZmN/CZWs5/iTJMK/cjNSbkAQ0eow0jcTxf9XKjA4oGcHQbt2M6O/MXWy
 B/h/0dTPK65dm4ilwcvq6gaihIhCt2kW82nDJdNxpqAzJIA/HOW/CWbMJGds/jPtlZfUDMoAXe
 zSjPlIwqxNeUaY7MnTsS1gTSMLkKtusj3PYhgHrA3OY4jMwzg0ESu8O9GWiX1XJr3fetPoewhO
 WIqpgJD+xA/yehK+7SKUGSnAv1Fsbynff5ZPP9ee0iYjezh73KguWF1FpdCRtWLbHzDef2KVQC
 4A0=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto debbuging option under zeus
Thread-Topic: #yocto debbuging option under zeus
Thread-Index: AdeODj5nDVv836cgSPG5Si1sSJIhxQ==
Date: Tue, 10 Aug 2021 17:48:08 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.169A03382DEE283B.22382@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_fb054baef0b84b7ca650af5c87046761baesystemscom_"

--_000_fb054baef0b84b7ca650af5c87046761baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I ran across the following under the Yocto Project Profiling and Tracing Ma=
nual, and after checking my ipk data files/layout, I was wondering if someo=
ne could tell me, if ipk is capable of performing a similar set of operatio=
ns to install my debug data ?, and if so, what would be the correct command=
 sequence ?

" The debug packages once built can be found in build/tmp/deploy/rpm/* on t=
he host system. Find the busybox-dbg-...rpm file and copy it to the target.=
 For example:

[trz@empanada core2]$ scp /home/trz/yocto/crownbay-tracing-dbg/build/tmp/de=
ploy/rpm/core2_32/busybox-dbg-1.20.2r2.core2_32.rpm root@192.168.1.31:
     root@192.168.1.31's password:
     busybox-dbg-1.20.2-r2.core2_32.rpm                     100% 1826KB   1=
.8MB/s   00:01

Now install the debug rpm on the target:
     root@crownbay:~# rpm -i busybox-dbg-1.20.2-r2.core2_32.rpm
"

Thanks,
Steve

--_000_fb054baef0b84b7ca650af5c87046761baesystemscom_
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
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I ran across the following under the Yocto Project P=
rofiling and Tracing Manual, and after checking my ipk data files/layout, I=
 was wondering if someone could tell me, if ipk is capable of performing a =
similar set of operations to install
 my debug data ?, and if so, what would be the correct command sequence ?<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;color:#767171;mso-style-textfill-fill-color:#767171;=
mso-style-textfill-fill-alpha:100.0%;background:white">&#8220; The debug pa=
ckages once built can be found in build/tmp/deploy/rpm/*
 on the host system. Find the busybox-dbg-...rpm file and copy it to the ta=
rget. For example:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#333333">[trz@empanada cor=
e2]$ scp /home/trz/yocto/crownbay-tracing-dbg/build/tmp/deploy/rpm/core2_32=
/busybox-dbg-1.20.2r2.core2_32.rpm root@192.168.1.31:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#333333">&nbsp;&nbsp;&nbsp=
;&nbsp; root@192.168.1.31's password:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#333333">&nbsp;&nbsp;&nbsp=
;&nbsp; busybox-dbg-1.20.2-r2.core2_32.rpm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; 100% 1826KB&nbsp;&nbsp; 1.8MB/s&nbsp;&nbsp; 00:01<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-bottom-alt:auto;line-height:18.0=
pt;background:white">
<span style=3D"font-size:13.5pt;font-family:&quot;Verdana&quot;,sans-serif;=
color:#767171;mso-style-textfill-fill-color:#767171;mso-style-textfill-fill=
-alpha:100.0%">Now install the debug rpm on the target:<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#333333">&nbsp;&nbsp;&nbsp=
;&nbsp; root@crownbay:~#
</span><b><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quo=
t;;color:red">rpm -i busybox-dbg-1.20.2-r2.core2_32.rpm</span></b><span sty=
le=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#333333"><=
o:p></o:p></span></p>
<p class=3D"MsoNormal">&#8220;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_fb054baef0b84b7ca650af5c87046761baesystemscom_--
