Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28455C4321E
	for <webhook@archiver.kernel.org>; Wed,  3 Nov 2021 12:44:50 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web08.6829.1635943487518264803
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Nov 2021 05:44:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=kZOY/x4/;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1635943488; x=1793623488;
  h=from:to:subject:date:mime-version;
  bh=N232QDmxt6HdM9JZVXylaG8qUeyrJdQ1BvcMoNS4Up8=;
  b=kZOY/x4/xSc/XQNfAD9sXpI13Zo1FLsCdpQMziNbm3mwifCPrEjcalT2
   PccA+uYkIXeSHAeJtJ9q8Wm7KUgpcpFGgFSSy1MT8z+qIRsq8Ij54Hpm+
   HZS1aIbOh+Dw7IISiLuER7xHh+8DHF/7mJibZfGqSICukS5rTFHXn6AZp
   o=;
IronPort-SDR: 
 Mke16mw4O7lEBdnEZiQAWA3c9A0YbS+u/SeK/r/z854V7gsHqjuAaTJJjVrKOuXcYLjMtg2z9k
 m+MtLwwkSCGQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3AchaFJBxqQRfcXVLXCzK5zVBlVkEcU1XcAAcZ5?=
 =?us-ascii?q?9Idhq5Udez7ptK+ZhWZvawm1QWTFcWDsrQY0bKQ6/ihEUU7or+5+EgYd5JNU?=
 =?us-ascii?q?xJXwe43pCcHRPC/NEvgMfTxZDY7FskRHHVs/nW8LFQHUJ2mPw6arXK99yMdF?=
 =?us-ascii?q?QviPgRpOOv1BpTSj8Oq3Oyu5pHfeQpFiCSgbb9oMBm6sArdutQIjYd8N609z?=
 =?us-ascii?q?gfFrmZSd+lZ229kOUifkwrg6su14ZVu7zlet/U9+sBaTK70Zb44TbtWDDQnN?=
 =?us-ascii?q?2A6+sjmvgTdQAWM+3URTHwYngJHDAbZ4h76WIzxsjbhuepmxCaaJ8z2QqsqV?=
 =?us-ascii?q?jmk8qxmVQXniCYDNz4+7WHXlsl9h79VrR69uxByxZPfbYeIP/R8Y6zdZ8sXS?=
 =?us-ascii?q?2pfUMhMSyxPDICyb4oTAOUOJutXtZXxp1kUoBeiGQWgGuXiwSJIiH/s2q061?=
 =?us-ascii?q?vwsHQ/B0gwnGdIOq2rbo8vuNKsKTOu70bXIwivdb/xI3zf29ZbFeQ0lrf6CQ?=
 =?us-ascii?q?Lx8dMTdwlQoGgPeklWft5LlMC2T1ugXtmib6OxgVfmxhGE5sAF8uSOgyd0yh?=
 =?us-ascii?q?YnShoMV0UzE+jt8wIYuP9G3VEl7Ydu9HZZWqiqVOJd4TNk4TGF0pCY11KcGu?=
 =?us-ascii?q?ZijcSYExpkq2x/SZv6GfoSW/x7uSuWcLDd8iX9qd7+zmhi8/EivxOHhUsS50?=
 =?us-ascii?q?lZHoyVEn9XRqH0A0x/e58uaR/dg8Ums3yuE2QPL6uxcPEw4ibDXJpAjz7Iqi?=
 =?us-ascii?q?5YetUrOEjX3lUj2lKOaa1ko9vKn5unoeLnrqYWQO5J0hwz4L68ggNawAf4iP?=
 =?us-ascii?q?QgLR2Wb/OO826D98kDhW7VKi+E2krHesJDHOcQXvq65DBFR0oYk8xu/ES2p0?=
 =?us-ascii?q?NQenXkCN1JIfBaKgoz1N13TOvz4C+2wj063nzhx2f/GJb3gAo7RLnfdlbfhZ?=
 =?us-ascii?q?qxx5FJbyAo21dxf5pRUBa8dIP/rR0P9qMbUAxE7PgCu3urqDNtw2pkfVG+PG?=
 =?us-ascii?q?qOZNbndsV6M5uIhOemMY4oVtS7mK/g5+fHuk2E2mVkHcams2psXbmu4Eep4L?=
 =?us-ascii?q?EWCenfjmc0OHnkRvgs+V+zqlEONUTtIZ3qoQ6084TQ7BJq8DYjfXoCtnKCB3?=
 =?us-ascii?q?CCjE5xWYWBJFkyMEXDzeoWAWvcMcz6SItR7nj0EUriuV5Mh1Ra2tA/gzLpnL?=
 =?us-ascii?q?PTb9TEEtZ7509h1/eLTxlkO8mk+HsOWz2alS2BvgnhOVjg9wKdnu0t/x1yfl?=
 =?us-ascii?q?69ijLYQQc1U7O9OegM7LoLHif19AMz1QhjGfNqCVBChWNrwUh8rSddkifoJZ?=
 =?us-ascii?q?V1wFs7mxivf0jSnBfc+3/y2P91+uvbHw3XvKsA7znHAz6QslHEsS8ZUJHa6i?=
 =?us-ascii?q?6tksQPUAtiawA2ii6+2ePFEj2b2/2CZwD/W1Hw=3D?=
IronPort-Data: =?us-ascii?q?A9a23=3AKtFnFaOP3HaHWyLvrR2QlcFynXyQoLVcMsEvi?=
 =?us-ascii?q?/4bfWQNrUoj0DUBn2QfCz+FbvnZMGrwe98gO9m28k0AvJWHmoc2SnM5pCpnJ?=
 =?us-ascii?q?55oRWopJjg7wn8dtEp+F+WbJK5cx5hYOoaowPwcFCeG/070auO59xGQ6InRL?=
 =?us-ascii?q?lbCIL+cUsxObVI8IMsRoUoLd98R2uaEs/Dga+++kY+aT/nkBbOQ82Uc3lT4S?=
 =?us-ascii?q?k60gEgHUPza4Fv0t7GlDBxBlAe2e3I9VPrzKUwtRkYUTLW4HsbiLwrC5K+w/?=
 =?us-ascii?q?mXc5EZ8W4v81LDyNEcDT6XDJhSDj2EQUK+n6vRAjnVqlP1kcqNNMgEJ1l1ln?=
 =?us-ascii?q?PgooDlJnYesRBkkOOvJn+IGXhRDOyt3MLZX46PKJGP5usuWp6HDWye2mKw+V?=
 =?us-ascii?q?R9qbeX0/c4yWwmi78cwOTcGcherg+Ot3Kn9W+5nmsM7Ns7pMYgD/HZ6wlnk4?=
 =?us-ascii?q?VwOKXzYa/ySo4QHmm5h3YYQQJ7jiwMiQWIHRHz9j9dnYQt/5EoCodqV?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AwCuW46Grn38DoW4FpLqE18eALOsnbusQ8z?=
 =?us-ascii?q?AXPo5KOGVom62j5riTdZEgvyMc5wxhPU3I9erwWpVoBEmslqKdgrNxAV7BZn?=
 =?us-ascii?q?iDhILAFugLhrcKgQeBJ8SUzJ876U4PSdkZNDQyNzRHZATBjTVQ3+xO/DBPys?=
 =?us-ascii?q?6Vuds=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BWBwDLg4Jh/0HBJQpaHQEBPAEFBQE?=
 =?us-ascii?q?CAQkBFQmBUAKBHxsCgWOBTbF0gXwLAQEBAQEBAQEBCAESLwQBAYdYJjYHDgE?=
 =?us-ascii?q?CBAEBARIBAQYBAQEBAQYEAYEjhWkMgjUihB9eAQwJayYBBBuCaoF+rlWBMxo?=
 =?us-ascii?q?CZYRphQ+BOAIBAYFkhTWCeoYPQ48/BJJknm+gBQcDgzSeZy8Vlg0DkRiTQYJ?=
 =?us-ascii?q?NH6ViAgQCBAUCFoFoBoIHcIM6UBcCnH+BLAIGCwEBAwmQG4EQAQE?=
X-IPAS-Result: =?us-ascii?q?A2BWBwDLg4Jh/0HBJQpaHQEBPAEFBQECAQkBFQmBUAKBH?=
 =?us-ascii?q?xsCgWOBTbF0gXwLAQEBAQEBAQEBCAESLwQBAYdYJjYHDgECBAEBARIBAQYBA?=
 =?us-ascii?q?QEBAQYEAYEjhWkMgjUihB9eAQwJayYBBBuCaoF+rlWBMxoCZYRphQ+BOAIBA?=
 =?us-ascii?q?YFkhTWCeoYPQ48/BJJknm+gBQcDgzSeZy8Vlg0DkRiTQYJNH6ViAgQCBAUCF?=
 =?us-ascii?q?oFoBoIHcIM6UBcCnH+BLAIGCwEBAwmQG4EQAQE?=
X-IronPort-AV: E=Sophos;i="5.87,205,1631577600";
   d="scan'208,217";a="423181648"
IronPort-SDR: 
 g4CBeGa14ieKoDJOjfAc4YIu9faGszAFWD1h1qhN31vDoTzi52vgOIsQ75I71Oj2cyCieEl28D
 c6RfwvbDj0Jw==
X-IronPort-AV: E=Sophos;i="5.87,205,1631577600";
   d="scan'208,217";a="37419992"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: preempt-rt
Thread-Topic: preempt-rt
Thread-Index: AdfQr78wMp7uaAmrSeesMdhJ29qxng==
Date: Wed, 3 Nov 2021 12:43:29 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_ee9be9d1671a4b80bc4f78c3b370a192baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Nov 2021 12:44:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55223
Message-Id: <20211103124450.28455C4321E@smtp.lore.kernel.org>

--_000_ee9be9d1671a4b80bc4f78c3b370a192baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I have a platform based off a aarm64 Xilinx based kernel, which is not a co=
mpliant mainline kernel... so, I will need to go the preemp-rt patch route.

Can you supply an example Yocto recipe that applies the patch, doesn't even=
 have to be arm based... just looking for baseline I might use to carve out=
 support for my platform.

Thanks,
Steve

--_000_ee9be9d1671a4b80bc4f78c3b370a192baesystemscom_
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
<p class=3D"MsoNormal">I have a platform based off a aarm64 Xilinx based ke=
rnel, which is not a compliant mainline kernel&#8230; so, I will need to go=
 the preemp-rt patch route.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can you supply an example Yocto recipe that applies =
the patch, doesn&#8217;t even have to be arm based&#8230; just looking for =
baseline I might use to carve out support for my platform.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_ee9be9d1671a4b80bc4f78c3b370a192baesystemscom_--

