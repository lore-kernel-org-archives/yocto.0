Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEB78C433F5
	for <webhook@archiver.kernel.org>; Mon, 15 Nov 2021 17:33:41 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web08.480.1636997618730018124
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Nov 2021 09:33:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=IHZ//Xt+;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1636997618; x=1794677618;
  h=from:to:subject:date:mime-version;
  bh=P+NVEVufQrr2wjpBEXN00APNKacenvAZsgxkXiukeFs=;
  b=IHZ//Xt+V5inCjtNm/Yhj4GxiAsd9O/3P/RguJzubB2T6dfP4MQ/+/+u
   Dg40HqAtAlXsCCU78J+KyP/EI0GaaUkn5r3t/fdk8bBYhuMlWnRGP5DWm
   c6ZUcKWlewrUgZPeGoUpql/Bj1S2gNxGJe9KRL+Dq5a8RNXK9T3oOjOjc
   U=;
IronPort-SDR: 
 ns+YS6C9TkMIC1Yn3X6HmMBpbomUhoNfruHKs5F8+X0Fxv+PCHECVfpGyzvJny1u3/E2jaOq8m
 PKfLGu6jkDOg==
IronPort-PHdr: =?us-ascii?q?A9a23=3AGHPIQhN0b6VQHyaLCtEl6nZmChdPi9zP1u491?=
 =?us-ascii?q?JMrhvp0f7i5+Ny6ZQqDv6wr1weCBtyTq6odzbaM6+a4AS1IyK3CmUhKSIZLW?=
 =?us-ascii?q?R4BhJdetC0bK+nBN3fGKuX3ZTcxBsVIWQwt1Xi6NU9IBJS2PAWK8TW94jEIB?=
 =?us-ascii?q?xrwKxd+KPjrFY7OlcS30P2594HObwlSizexf65+IA+4oAnNucUbj5ZuIbs1x?=
 =?us-ascii?q?hfVv3dEYetbyX10KV6Jgxrw+sK894N//ipNvP4s69ROWrjgcaQiSrxYAjUmM?=
 =?us-ascii?q?2Qr68DuqBLOUwiB6GYCX2sPihZHDBTL4x/8Xpfqryv1rfF91zWAPc33Vr87R?=
 =?us-ascii?q?zKv5Lp2RRDyiScHMzk58HzLisF1kalWrg6tqwB5zoXJZoyeKfhwcb7Hfd4CR?=
 =?us-ascii?q?WRPQNtfVzBPDI2/bosAE+UOMP1CoIXhpVsDtweyCRWyCO7p1zRGhmX23ao/0?=
 =?us-ascii?q?+k5Hw3I2wsgH9QVsHvKstr1L78eWv2owqnU0zrDce1Z2THg44XWbxstpf+DU?=
 =?us-ascii?q?691fcbf1EIiEBjFjkmOpoz7ITyV0P4Bs22c7+pmTuKglXAoqxpqrze03Mgjl?=
 =?us-ascii?q?JLJh4IOylDY6yp5xZ01KcekR058ZN6pCZ1dvDyVOIVqWM0tWX1ouDokxb0cv?=
 =?us-ascii?q?562ZCYExZo7yhPeafGKcpaE7g/9WeuSITp1gH1odb2iixi88UWuxfDwW8223?=
 =?us-ascii?q?VtKoSdIk8TAu24J2hHQ6cWKV+Zx8Ein1D2S1A7T8vlJLV0omabBJZMswKQ8m?=
 =?us-ascii?q?oQNvUnDBCP7mUX7gLeLekk44OSl5Ovqbq/pq5OGKoN5igfzObk0lMOlG+Q3K?=
 =?us-ascii?q?A0OUnCe+eS7ybLs41X0QK5Pjv0qiqnZt43aJdgDqq65HQBV1oEj5g6jDzapy?=
 =?us-ascii?q?tsYm3wHLElBdR6bk4TlJ0zCLOr+DfilmVijiy1kyO7dPrzhGZXNMmbMkLL6f?=
 =?us-ascii?q?bpn90Fczw8zwche55JSFL4BPOr+VlLtuNDCABI0MRa4z/j5BNh9zI8TWGKCD?=
 =?us-ascii?q?recMKzIsF+I4uwvI/OLZI8QoDv9MOQl6ODwjXAnn18RZ6yp3ZwRaHCjAPtpP?=
 =?us-ascii?q?V6ZbGH3jdgbD2gKpQo/TPf2iFKcVD5TfGy+UL475jE+EI6mF5vMRpixgLyd2?=
 =?us-ascii?q?ye2Bp1XZmdaBVCQFnflbIGEW/YXaCKOOc9tiDwFVb+9RI890hGurBX6y71lL?=
 =?us-ascii?q?uXK5iIYqYjv1N9v5+3cxlkO8mk+HsOWz2alS2BvgnhOVjg9wKdnu0t/x1yfl?=
 =?us-ascii?q?69ijLYQQc1U7O9OegM7LoLHif19AMz1QhjGfNqCVBChWNrwUh8rSddkifoJZ?=
 =?us-ascii?q?V1wFs7mxivf0jSnBfc+3/y2P91+uvbHw3XvKsA7znHAz6QslHEsS8ZUJHa6i?=
 =?us-ascii?q?6tksQPUAtiawA2ii6+2ePFEj2b2/2CZwD/W1Hw=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3ALBWWfqmn09XHQNkJfuXFG4fo5gyrJERdPkR7X?=
 =?us-ascii?q?Q2eYbSJt1+Wr1GztxIZXGuCaP+LYmOkco8nO47g/R4C6MOGytJgQVM6qyk0Q?=
 =?us-ascii?q?1tH+JHPbTi7wuccHM8wwvUuxyuL1u1GAjX7BJ1yHiC0SiuFaOC79CAljPzQH?=
 =?us-ascii?q?NIQNcadUsxPbV48IMseoU878wIJqtYAbemRW2thi/uryyHsEAPNNwpPD44hw?=
 =?us-ascii?q?/nrRCWDHRjFkGhwUlQWPZintbJF/pUfJMp3yaqZdxMUTmTId9NWSdovzJnhl?=
 =?us-ascii?q?o/Y1ws9A9WgieejKhVTBLjbewKHh2FHQLSvhwMErSs3uko5HKNELxwIzW/Tw?=
 =?us-ascii?q?pYvlb2htrTpIestFrbQlfoQVV9dFCdlMKBd0LXOLGOuqtCeylaAeHzpqxlrJ?=
 =?us-ascii?q?B1sYtZJp7YoXQmi8tRdcljhdCurluW93LWTTuh3mt9lPc7gIIQHoHZiwDrFS?=
 =?us-ascii?q?/E8Tvj+rw/ijTND9G5owJsRW6yEOoxHNFJSgN37S0UnEj8q5FgWxo9EXkXCT?=
 =?us-ascii?q?gA=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AbwCPB6Mme0SS1MBcTsyjsMiBIKoaSvp037?=
 =?us-ascii?q?BN7TESdfU1SL36qynKpp9w6faaskd1ZJheo6HlBEDtex7hHP1OgbX5X43NYO?=
 =?us-ascii?q?COggLBEGgF1+ffKlbbehEWmNQz6U5oSdkYNOHN?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BWBwA5mZJh/0HhJQpaHQEBPAEFBQE?=
 =?us-ascii?q?CAQkBFQmBUAKBHxsCgWOBTbIMgXwLAQEBAQEBAQEBCAESLwQBAYdoJjYHDgE?=
 =?us-ascii?q?CBAEBARIBAQYBAQEBAQYEAYEjhWkMgjUihB9eAQwJayYBBBuCaoF+rgGBMxo?=
 =?us-ascii?q?CZYRphQ+BOAIBAYFkhUCCfoYVQ48/BJEtgWopOp5zoAsHA4M5nnAvFZYRA5E?=
 =?us-ascii?q?YlhQfpWQCBAIEBQIWgWgCggtwgzpQFwKcf4EsAgYLAQEDCY5LgRABAQ?=
X-IPAS-Result: =?us-ascii?q?A2BWBwA5mZJh/0HhJQpaHQEBPAEFBQECAQkBFQmBUAKBH?=
 =?us-ascii?q?xsCgWOBTbIMgXwLAQEBAQEBAQEBCAESLwQBAYdoJjYHDgECBAEBARIBAQYBA?=
 =?us-ascii?q?QEBAQYEAYEjhWkMgjUihB9eAQwJayYBBBuCaoF+rgGBMxoCZYRphQ+BOAIBA?=
 =?us-ascii?q?YFkhUCCfoYVQ48/BJEtgWopOp5zoAsHA4M5nnAvFZYRA5EYlhQfpWQCBAIEB?=
 =?us-ascii?q?QIWgWgCggtwgzpQFwKcf4EsAgYLAQEDCY5LgRABAQ?=
X-IronPort-AV: E=Sophos;i="5.87,237,1631577600";
   d="scan'208,217";a="427395874"
IronPort-SDR: 
 ivebYrf27h3wAjZ/MyP4MepCiJ1CKEo+nlPv1ga06Nlem4megsc6AfMTj5llBi9zvTbGDRYnQo
 jeP048HpAxJ2UpnyShTZlycPpaQgbRqXDZnskvthZ/oyf1oi6C2Pk+d479On7PmWxEfbispkfT
 bSrPYvoxj1l+ps2hpD5ZzDuHUwKd36vYnAB8y+O69w5n+NFFvOQbnbEKDUYO6WvJXovidKO0Sl
 cozBuKrnv96SY3gX8jDldLEpU+uVPNRn92eOq/BmnzAI+PmFP3LOENXwCNvt2id2w4yLf7PqS4
 /Vk=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: meta-intel / zeus
Thread-Topic: meta-intel / zeus
Thread-Index: AdfaRsa0f9OaRcMSRsu9xLoN2zbVEw==
Date: Mon, 15 Nov 2021 17:32:35 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_19ff429b251e47f79a191dfd84d96455baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Nov 2021 17:33:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55330
Message-Id: <20211115173341.DEB78C433F5@smtp.lore.kernel.org>

--_000_19ff429b251e47f79a191dfd84d96455baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Recently I built in base intel NEO driver components under meta-intel...
It appears I require a little more than just NEO.

Does yocto support the khronos icd loader ?,
Is there something I can build/enable tp provide this ?

Currently running under zeus, but if a newer version of Yocto supports it t=
hat would be good to know.

Thanks,
Steve

--_000_19ff429b251e47f79a191dfd84d96455baesystemscom_
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
<p class=3D"MsoNormal">Recently I built in base intel NEO driver components=
 under meta-intel&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal">It appears I require a little more than just NEO.<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does yocto support <span style=3D"font-size:12.0pt;f=
ont-family:&quot;Times New Roman&quot;,serif">
the khronos icd loader ?, <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif">Is there something I can build/enable tp provide=
 this ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif">Currently running under zeus, but if a newer ver=
sion of Yocto supports it that would be good to know.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif">Steve</span><o:p></o:p></p>
</div>
</body>
</html>

--_000_19ff429b251e47f79a191dfd84d96455baesystemscom_--

