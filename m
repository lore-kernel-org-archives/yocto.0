Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A7E4C433F5
	for <webhook@archiver.kernel.org>; Mon, 10 Jan 2022 13:22:37 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web08.31317.1641820954258272911
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 05:22:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=bn7JKbWQ;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1641820954; x=1799500954;
  h=from:to:subject:date:mime-version;
  bh=3vIRd/p4PBcNYSwWqfG0P7/fikpgooUBgeY/qlBK2/0=;
  b=bn7JKbWQbu50Liy2G8AhRwGB4wgF9zlieqQf7h3buJQGMJlS5kFeufdK
   L9YbctsUfHe8x93h1hH+QhQvSmedrZ59bJQJhsiBy5J4nTMzQnLFS0pC5
   OCzJLFmrLwygXZgG3uNWCeM0vJB/dUaJFtcUNon5TlO44uodLBw18FTHX
   0=;
IronPort-SDR: 
 65+CVy68v0TWw8+10SwCYWTcraedRP3p/cHfcYMmQTxFfLqefcPTlKRUfofkHKQm09gqjdJe4O
 hqWnjOUIn+IQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3A0Ul1Dx8/0IDYEf9uWaG8ngc9DxPPW53KNwIYo?=
 =?us-ascii?q?qAql6hJOvz6uci4ZQqGuKwm1gOBdL6YwsoMs/DRvaHkVD5Iyre6m1dGTqZxU?=
 =?us-ascii?q?QQYg94dhQ0qDZ3NI0T6KPn3c35yR5waBxdq8H6hLEdaBtv1aUHMrX2u9z4SH?=
 =?us-ascii?q?Qj0ORZoKujvFYPekdm72/qv95DTfglEiySxbLxvJxiqsAvdsdUbj5F/Iagr0?=
 =?us-ascii?q?BvJpXVIe+VSxWx2IF+Yggjx6MSt8pN96ipco/0u+dJOXqX8ZKQ4UKdXDC86P?=
 =?us-ascii?q?GAv5c3krgfMQA2S7XYBSGoWkx5IAw/Y7BHmW5r6ryX3uvZh1CScIMb7S60/V?=
 =?us-ascii?q?za/4KdxUBLmiDkJOSMl8G/ZicJwjb5Urx26qhNl34LUYpuYOOZicq/De94RW?=
 =?us-ascii?q?GpPXtxWVyxEGo6wYYwBD+0HPeZDsYbyuUAOoQOjDgexGOPg1CFIiWHw3aYnz?=
 =?us-ascii?q?ekqDAXK0wI9Ed4LvnjfsdL4NLwOUe+r0qnH0zPDY+lT2Tf67ojIaQ4uru+XX?=
 =?us-ascii?q?b9rasXe01cgFxjFj1WLtYzqITaV1v8Xv2eH6OpgUPuihmg6oA5+vjah3N0ji?=
 =?us-ascii?q?pXVho0L0FDE8z10zog7KNCkSUN2Y9+pHIVNuyyENIZ7QscvTm5ntSonxLMLu?=
 =?us-ascii?q?ZG1cDUOxZklxxPSZP2Kf5WW7x/nV+ucIip1iG9qdr+5mh288lCgx/XhWsWoy?=
 =?us-ascii?q?lpHoChInsPSunwT1xHf8MmKR/tl8ku8xTqDzQ/e5+5eLU07j6bXNp4sz7gtn?=
 =?us-ascii?q?ZQJq0vDBDX5mEDuga+TcUUr5/an5vz8YrXjup+cL4h0ihziMqg2msywH+A4M?=
 =?us-ascii?q?g8WUmiH9uWzzrvj/UjiQLhOkvE6jrXVvI3AKcQdvKG1GRRa3Zw95BakDzamy?=
 =?us-ascii?q?8gYkmcCLFJeYh6Ik4/pO1TWLPD5C/ewnUisnS92y/zaJLHsDJfAImLdnLv/f?=
 =?us-ascii?q?btx8U9RxQorwdBa/Z1UC7UBIPzpWk/2sdzVFgQ5MxCqzOb5Ftp90JkSWWeIA?=
 =?us-ascii?q?q+fK6Pdr0GH5vk0LuaXfoAapi39Kvg+5/7yk3A5nEQdcbO10psQbXC0Bu5mL?=
 =?us-ascii?q?FmBYXrwntcBFn8Hvwo5TOP2lF2CViVeZ3KzX6In+jE7E5iqDIfERo+xnLyB2?=
 =?us-ascii?q?z+7HodRZmBEFF+DDWvoe5+DW/cWZyLBavNmx3YVUrO9TKcl1Aqyr0nrzLF7K?=
 =?us-ascii?q?fLO/S8Vvo6l08J6raWHhBY56TtcC8WGz3rLXmZ/gmQQXTg00atj50tnxQHQ/?=
 =?us-ascii?q?7J/hqkSMNtV/P5ESUNyDoLR0eF8Q/u6Gj/6P53BHE26T8urB3c0SdQqztIVS?=
 =?us-ascii?q?0x0Fs6zlQzO2jHsCLgQwe/YTKco+77RiiCib/12zGzLgfFJsg=3D=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3A6cc/u6M126vwmUzvrR2PlcFynXyQoLVcMsEvi?=
 =?us-ascii?q?/4bfWQNrUonhGMFnWcWDzzSP/jeMTDyc48gPYrg9UJQvpTcmNFiGnM5pCpnJ?=
 =?us-ascii?q?55oRWopJjg7wn8dtEp+F+WbJK5cx5hYOomowPwcFCeG/E/0a+C59xGQ6InRL?=
 =?us-ascii?q?lbCIL+cUsxObVI8IMsRoUoLd98R2uaEs/Dga+++kY+aT/nkBbOQ82Uc3lT4S?=
 =?us-ascii?q?k60gEgHUPza4Fv0t7GlDBxBlAe2e3I9VPrzKUwtRkYUTLW4HsbiLwrC5K2p9?=
 =?us-ascii?q?2Xc5EZ1Uov81LDyNEcDT6XDJhSDj2EQUK+n6vRAjnVqlP1kcqBGNAEJ1l1ln?=
 =?us-ascii?q?PgooDlJnYesRBkkOOvJn+IGXhRDOyt3MLZX46PKJGP5usuWp6HDWyewmqg/V?=
 =?us-ascii?q?xttYeX0/c4yWwmi78cwOTcGcherg+Ot3Kn9W+5nmsM7Ns7pMYgD/HZ6wlnk4?=
 =?us-ascii?q?VwOKXzYa/ySo4QHmm1q24YQQJ7jiwMiQWIHRHz9j9dnYz/70K4Dodo=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AXqsZ6q6etrpkXi7+RQPXwMjXdLJyesId70?=
 =?us-ascii?q?hD6qkRc20xTiX8ravFoB1173PJYVoqN03I4OrwX5VoIkmsl6Kdg7NwAV7KZm?=
 =?us-ascii?q?CP1VdASrsN0WKI+UyCJ8SRzI9g/JYlXJNRL+SYNykfsfrH?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AFBQBZMtxh/0HhJQpagQkJgnGCBIF?=
 =?us-ascii?q?Nkm2ZNod4CwEBAQEBAQEBAQgBQQQBAYhNJksBAgQBAQESAQEGAQEBAQEGBAG?=
 =?us-ascii?q?BG4VpDII1IoQfXgEMCWsfBwEEG4J3gg6tNoEzGgJlhGqFEAkBgxaFRIJ+hhd?=
 =?us-ascii?q?Djz8Es3agQgcDg0KfOjAVg3CSRwORMRFChRI0kCEggiSjagIEAgQFAhaDdXB?=
 =?us-ascii?q?QghwBAUxQFwKcfoEsAgYLAQEDCY4OgRABAQ?=
X-IPAS-Result: =?us-ascii?q?A2AFBQBZMtxh/0HhJQpagQkJgnGCBIFNkm2ZNod4CwEBA?=
 =?us-ascii?q?QEBAQEBAQgBQQQBAYhNJksBAgQBAQESAQEGAQEBAQEGBAGBG4VpDII1IoQfX?=
 =?us-ascii?q?gEMCWsfBwEEG4J3gg6tNoEzGgJlhGqFEAkBgxaFRIJ+hhdDjz8Es3agQgcDg?=
 =?us-ascii?q?0KfOjAVg3CSRwORMRFChRI0kCEggiSjagIEAgQFAhaDdXBQghwBAUxQFwKcf?=
 =?us-ascii?q?oEsAgYLAQEDCY4OgRABAQ?=
X-IronPort-AV: E=Sophos;i="5.88,277,1635206400";
   d="scan'208,217";a="441593234"
IronPort-SDR: 
 IKgIWCk2TghASgdzx4jzmaiYHF4KqeMuKQP9N/XLAb2LeDXl4NfYJrByf4aZBCO14G1H8DCcAo
 iYHFBx8IIQijumNpdMyC7AkGI9dj+hr1Q6/2hiXn4jl6e6Zclen4cxB157r/Zjkk1f3O2po/fD
 t2rVW7gmFmKBpuSLeqK/T4nH8WHIvUV0y2lcso0KbmV46vQpBR6n3QnjIvDRgaBYYJrsddjnWp
 ARMSghEoNrmSX58/+QllKZop8In37PB5O1xdccQBqIa97ba0zwOYJTbHREWLxn+BOoB4VOl87I
 GHU=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: hosttools
Thread-Topic: hosttools
Thread-Index: AdgGJCzjovtP4BJvR0OCbr60BHhOWg==
Date: Mon, 10 Jan 2022 13:21:31 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_ed89185b862345168894ff8fe198d27abaesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jan 2022 13:22:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55773
Message-Id: <20220110132237.8A7E4C433F5@smtp.lore.kernel.org>

--_000_ed89185b862345168894ff8fe198d27abaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


How does yocto determine the locations/paths to the "hosttools" ?

Is there precedence order established for locating the "hosttools" ?,  and
how would one update the search list so as to pick the tool from a differen=
t/specific location ?


Thanks,
Steve

--_000_ed89185b862345168894ff8fe198d27abaesystemscom_
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
<p class=3D"MsoNormal">How does yocto determine the locations/paths to the =
&#8220;hosttools&#8221; ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there precedence order established for locating t=
he &#8220;hosttools&#8221; ?, &nbsp;and
<o:p></o:p></p>
<p class=3D"MsoNormal">how would one update the search list so as to pick t=
he tool from a different/specific location ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_ed89185b862345168894ff8fe198d27abaesystemscom_--

