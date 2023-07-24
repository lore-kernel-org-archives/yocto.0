Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2AB8FC001B0
	for <webhook@archiver.kernel.org>; Mon, 24 Jul 2023 11:12:31 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.44802.1690197141387119322
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Jul 2023 04:12:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=ZnhNPMfv;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1690197141; x=1847877141;
  h=from:to:subject:date:mime-version;
  bh=+Bv03xPwa3f14M2zDbhSTBJ9kZeEAL+uKCWKlRX2WY8=;
  b=ZnhNPMfvG3U6BOyRCeCBcflPn6jK9bUIM27Fei6om7t0U8lMLZowk1ZS
   H1ymKYxetZP2raxUSDXJvDiKZVSyFFMFwGpA09egl/Z/ZxMRx43nbS8F7
   h9Yes7Yem+qQr2RxgssRXFoTsE1G3QHleTZuS+R3k1ewENXiTXZ3OXoME
   s=;
X-IPAS-Result: =?us-ascii?q?A2A3AABJXL5k/0HBJQpaHQEBAQEJARIBBQUBQAmBMggBC?=
 =?us-ascii?q?wGBL4F2AoF3jFOnN4F+DwEBAQEBAQEBAQgBRAQBAYs9JjQJDgECBAEBAQEDA?=
 =?us-ascii?q?gMBAQEBAQEDAQEGAQEBAQEBBgQBgRyFLzoMgjcig19eARVrJgEEGxGCZoIVR?=
 =?us-ascii?q?6t/gTQaAmWEdrAZgUIBgWiFfRoBZWSDd4ZDQ4EVjm8EiX2FUQeLFyyBCAheg?=
 =?us-ascii?q?W09Ag1VCwtlgRiBGYEwAgIROhRKeBsDBwOBBRAvBwQyJgYJGC8lBlEHLSQJE?=
 =?us-ascii?q?xVABINQCoEIPxUOEYJRIgI9OBtMgmoJFQY7U3oQMQQUGIEMCH8lGh4/ERIvA?=
 =?us-ascii?q?0QdQAMLB2k9NRQbBgIBgUKbAIc5ApMLjj2jGQcDhAuKWpYvLheXPgOSF5gmI?=
 =?us-ascii?q?KJZhRwCBAIEBQIWgWOCFXCDOFEXAqIcgTACBwsBAQMJijOBFQEB?=
IronPort-PHdr: A9a23:xiLKvBbZBuhopaD0LI5/cnn/LTG40IqcDmcuAnoPtbtCf+yZ8oj4O
 wSHvLMx1gGPANWQsK4MotGVmpioYXYH75eFvSJKW713fDhBt/8rmRc9CtWOE0zxIa2iRSU7G
 MNfSA0tpCnjYgBaF8nkelLdvGC54yIMFRXjLwp1Ifn+FpLPg8it2O2+5Zzebx9IiTe+br9/I
 hq7phjNu8cLhodvNrw/wQbTrHtSfORWy2JoJVaNkBv5+8y94p1t/TlOtvw478JPXrn0cKo+T
 bxDETQpKHs169HxtRnCVgSA+H0RWXgLnxVSAgjF6Bb6Xortsib/q+Fw1jWWMdHwQLspXzmp8
 qVlRwLyiCofNzA37nzZitB+gqxYoRKuuxNwzpXOb42JNvpzZL/Rcc8ESWdHQ81fVzZBAoS5b
 4YXAeYPOuFYr4/mp1QQsxS+HhGgD/7yxD9UmHD2w7M10+I8GgzYwQcsG9wBvmnRoNn7KawfV
 vu1zLXWwjXdcfxW3y3x6I3PchAnuvGDQ6x/cdHKxEY0DQzKkE6QqIz+PzOJyOsNtnOb4/B8W
 uKojm4qsgd8qSWgyckwkIfGnJ4Vykza+iVjxoY4PdO2RUBnbNOlEpZdtj+WO5ZoT84hQ2xlv
 Ck3x7IbtZC1fCUEx4kryhrdZvGHfIWF4w/vWfiVLDp7h39oZa+ziRm0/EO9yeP8TtG53EtWo
 iZfnNTBtGoB2wHX58WJUPdw/0es1S6S2wzP8O1JLk85mbDVJpI7wbM9l5weulnZECDsgkX5l
 qqWe10h+uiv9uvofK3rpoSZN49okgH+NbkumtCnDeQ4LAcOW2+b9Pyi1LL5/U35RrBKjuYyn
 6TdtJ3WOdkXqrS/AwBPyIos8AywACm90NUYhnkHMExKeBecj4TzJ17OJ/X4Ae++g1Sqjjhr2
 +jLMqD9DpnXIHXOkq3tcat55kNS0gY+zNBS64pRCr4bIfLzXkHxtMbfDh88KwG02PrnB8tj1
 owAX2KDGKqZMKTUsV+T+O0gPfKMaZQOtznnNfcl/P7vjWQlmVADeKmpxoEbZ2y/HvRjO0mZZ
 2Hjjc8bEWgWpgo+UPDqiFqaXDJOf3qyRb4z5iknCIK6CofOXoCsgLud0yenGZ1bfWRGClGXE
 Xf0bIWIQfcNaCWOLc99lTwETaKhS4gj1R6wqAD616BrLu3O+i0X5trf040/9urYiRYa8T1vE
 9/bwmaGU2ZshGQKSjQqmqdlrgY1nkaE2rR/q/hZDsBIoeJOWRs9LYTbzeFxF5b1QA2XLfmTT
 1PzCPChByo8Q8l1i+QSblhwHZ2JxlD+5GvgS+sOi7GVCZpy96XaxHX8PO53wnvdxbI9glw9B
 MBIMDv11eZE6wHPCtuRwA2inKGwePFEtBM=
IronPort-Data: A9a23:DQNuaazBGHYEWMsAiBJ6t+eGxCrEfRIJ4+MujC+fZmUNrF6WrkUBz
 DMZUDjVbPbYYmekc9hzbNy/8EsAuZDXnNdkSFNlrlhgHilAwSbn6XR1DatS0we6dJCroJdPt
 p1GAjX4BJloCCWa/H9BC5C5xVFkz6aEW7HgP+DNPyF1VGdMRTwo4f5Zs7dRbrVA357hWmthh
 fuo+5eEYAD/gGYvWo4pw/vrRC1H7ayaVAww4wRWicBj5Df2i3QTBZQDEqC9R1OQrl58R7PSq
 07rldlVz0uBl/sfIorNfoXTLiXmdoXv0T2m0RK6bUQDbi9q/UTe2o5jXBYVhNw+Zz+hx7idw
 /0V3XC8pJtA0qDkwIwgvxdk/y5WJPBWyJjgLFOEo8GTyUPnSSu84ah/JRRjVWEY0r4f7WBm6
 /UYLjUWP0HS37vwxrv9QOBhndU4MMTuJ8UUvXQIITPxVK5gGs+FGvSRo4EFtNszrpkm8fL2f
 NYUdzdpKhHHZQZCN0w/Apszh/azmnT6aHtTr1f9Sa8fujGOnVcrjei9WDbTUoKSG/xVol2pm
 iHb31qjByxGDsOWkDXQpxpAgceKx0sXQrk6Bbqz6vlChFyI2ndVGRodSVyju/67h0WiHdVFJ
 CQpFjEG9PB0rxPtF4imGUPlyJKZgiMhtxNrO7VSwGmwJmD8uG512kBsouZ9VeEb
IronPort-HdrOrdr: A9a23:8+RqHK+0ozJJA/o6pTZuk+DBI+orL9Y04lQ7vn2ZKCYlEfBw8v
 rEoB1173LJYVoqMk3I4OrgBEDiexPhHOBOjrX5VI3KNDUO01HFEGgN1+Xf/wE=
X-Talos-CUID: 9a23:R+jxOmNJ7HMit+5DQXR3xGkzF+seYHDdynnxGR/oKzt4YejA
X-Talos-MUID: =?us-ascii?q?9a23=3AIJ994wyEEIRj8GzCJw0VI6nKdRiaqPq2VnkNrY4?=
 =?us-ascii?q?3h4qZFRIqPgrBtiu+G4Byfw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.01,228,1684800000"; 
   d="scan'208,217";a="115932588"
X-IronPort-AV: E=Sophos;i="6.01,228,1684800000"; 
   d="scan'208,217";a="149709156"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RHEL 8 support under Yocto
Thread-Topic: RHEL 8 support under Yocto
Thread-Index: Adm+Hv/oTAt+BqVNRyS9zekXmyltJw==
Date: Mon, 24 Jul 2023 11:12:17 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.3.86]
Content-Type: multipart/alternative;
	boundary="_000_eee3d41f2afd46aeb03ca874820656c9baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Jul 2023 11:12:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60637
Message-Id: <20230724111231.2AB8FC001B0@smtp.lore.kernel.org>

--_000_eee3d41f2afd46aeb03ca874820656c9baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello:

With RHEL 7 (Linux) reaching End of Life (EOL) and no longer be mainstream =
supported, We will be updating systems to RHEL 8.

Which versions of Yocto currently support RHEL 8 ?

We are currently using the Yocto Zeus release, and will most likely need to=
 port forward.

Thank you,
Steve














--_000_eee3d41f2afd46aeb03ca874820656c9baesystemscom_
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
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt">Hello:<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt">With RHEL 7 (Linux) =
reaching End of Life (EOL) and no longer be mainstream supported, We will b=
e updating systems to RHEL 8.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt">Which versions of Yo=
cto currently support RHEL 8 ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt">We are currently usi=
ng the Yocto Zeus release, and will most likely need to port forward.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt">Thank you,<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt">Steve<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
</div>
</body>
</html>

--_000_eee3d41f2afd46aeb03ca874820656c9baesystemscom_--

