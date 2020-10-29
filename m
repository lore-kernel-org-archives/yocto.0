Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web08.1219.1603995150974835953
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Oct 2020 11:12:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=eXHIQI56;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1603995150; x=1761675150;
  h=from:to:subject:date:mime-version;
  bh=dOItVw30maLYsC6A5SWk1xRYJMzKilRHjYDFdrBo77E=;
  b=eXHIQI56xZQQySX8NwkBlX3dqcY9Bz6i91UUq8BefaSXFx/kjJEcGMJ9
   xJ/j1M5ZaLIW/RuMdTvnsa6wVUGN2Xa45qaMNel1kCtG52EyGCUCnNytG
   JjGwXqz/+7o4u8bdvvOFyLHx0n59eOV1gZhG6wGjLmUMkcSC6GzkS0TVC
   Y=;
IronPort-PHdr: =?us-ascii?q?9a23=3AEm4HtBFVknS3adjXl1ekap1GYnF86YWxBRYc798d?=
 =?us-ascii?q?s5kLTJ76p8++bnLW6fgltlLVR4KTs6sC17OJ9fG7EjVYvN6oizMrSNR0TRgLiM?=
 =?us-ascii?q?EbzUQLIfWuLgnFFsPsdDEwB89YVVVorDmROElRH9viNRWJ+iXhpTEdFQ/iOgVr?=
 =?us-ascii?q?O+/7BpDdj9it1+C15pbffxhEiCCybL9vLhi6twHcu8cZjYd/Nqo8ygbCr2dVde?=
 =?us-ascii?q?hR2W5mP0+YkQzm5se38p5j8iBQtOwk+sVdT6j0fLk2QKJBAjg+PG87+MPktR/Y?=
 =?us-ascii?q?TQuS/XQcSXkZkgBJAwfe8h73WIr6vzbguep83CmaOtD2TawxVD+/4apnVAPkhS?=
 =?us-ascii?q?EaPDM/7WrZiNF/jLhDrRyhuRJx3pLUbo+WOvp/YqzScsgXSnBdUsZTTSFNHp+w?=
 =?us-ascii?q?Y5UJAuEcPehYtY79p14WoBewAgesA+XvyiRWiXDoxq02y/kqHxza3AM+AdIBrn?=
 =?us-ascii?q?LUp8jrOawPVey6wrTGwTDNY/hL3jr985TIfQ4/of6SW7J8a8/RyU4pFwPekFqf?=
 =?us-ascii?q?t5flMiiO2esXrWeb9OphVfmzi2E5rgFxuSKjydsrionMn48YzE3P+iplzogvP9?=
 =?us-ascii?q?K4VFJ7bsC+EJtWryyUOJd6T94jTm9mtyg3y70ItJyncSUIx5kq2gDTZ+GIfYWM?=
 =?us-ascii?q?4hzuWuecLClliX9mdryyhwu//Eu+x+D/WcS50UhGoyxYmdfCsXAN0gbc6smBSv?=
 =?us-ascii?q?Zl/kah3iqA1xzU6uFcO0A0kqjbJIA9zb4sjJYTtl7DHiDwlU7rj6GWbl0p9vW0?=
 =?us-ascii?q?5+j9bLjrpIWQO5JwhwzwKKgjm82yDfwlPgQSRWSW9uux2Kfn8EHjQ7hHjPs7mb?=
 =?us-ascii?q?TDvp/AP8QUvKu5DhdQ0oYk9hmwES+r0M8dnXkbNFJFfw+Hj5TxN1HOPv/4CfC/?=
 =?us-ascii?q?jkyqkDdrwfDJJLjhAo7OI3XDjLvtYatx51RayAUp19xQ/IhbBa8aIPPzQU/xqM?=
 =?us-ascii?q?LXDhoiMwCu3+nnD9B92psfWWKJHKCZLLvfvUKU6u41LeSBZpUZtCv5JvUr/fLj?=
 =?us-ascii?q?jH40lUcYfaaz3JsXbH64Hu5hI0WceXfsmcsBHnkUvgUgSuzmkliCUTlVZ3apQa?=
 =?us-ascii?q?0z+Co7BZm9AojZWI+tm7yA3DynHpJIY2BGEUqAHmvvd4WBQ/sMcj6dItd9kjwY?=
 =?us-ascii?q?UrisU48g1Rayuw/mzLpqNe7U+iwDtZL/z9h5/e3SlRYu+jxoCMSdy3uNT2Z2nm?=
 =?us-ascii?q?wWWzA2wLpzoUtnyleMguBEhKkSBNtY+/RhVgYhKYWa3utxF9fqQAXDc9yVDlG8?=
 =?us-ascii?q?TZ/uVSA2Rc4269sPeFpmXcSlhQzExzCtAbIei/qMHpNioYzG2H2kbeN6zW3L2b?=
 =?us-ascii?q?Jlx2I6T9VCMyWNzu5CzEmZT9rSj0iHmqDscKMaxyPA70+JxGeVrVpEXQtrF67C?=
 =?us-ascii?q?WCZMNQPtsd3l6xaaHPeVArM9P14ZxA=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ArBAB3BZtf/0LBJQpigQmBT4EjgXeBN?=
 =?us-ascii?q?QqvcIF8CwEBAQEBAQEBAQgBJQoEAQGGVCY2Bw4CEAEBBgEBAQEBBgQBhlEBC4I?=
 =?us-ascii?q?3IoNNXgGBACYBBBuDH4F+gQ2vKYE0hFJBRIULBgkBgS6PFz6HOwSHUwSacp0nB?=
 =?us-ascii?q?wOCbIkIkXEroWWTRIp3lUYCBAIEBQIVgVsFggVwgzpPFwINlySFRHQCNgIGCgE?=
 =?us-ascii?q?BAwmNN4ERAQE?=
X-IPAS-Result: =?us-ascii?q?A2ArBAB3BZtf/0LBJQpigQmBT4EjgXeBNQqvcIF8CwEBAQE?=
 =?us-ascii?q?BAQEBAQgBJQoEAQGGVCY2Bw4CEAEBBgEBAQEBBgQBhlEBC4I3IoNNXgGBACYBB?=
 =?us-ascii?q?BuDH4F+gQ2vKYE0hFJBRIULBgkBgS6PFz6HOwSHUwSacp0nBwOCbIkIkXEroWW?=
 =?us-ascii?q?TRIp3lUYCBAIEBQIVgVsFggVwgzpPFwINlySFRHQCNgIGCgEBAwmNN4ERAQE?=
X-IronPort-AV: E=Sophos;i="5.77,430,1596499200"; 
   d="scan'208,217";a="458119672"
X-IronPort-AV: E=Sophos;i="5.77,430,1596499200"; 
   d="scan'208,217";a="228933590"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto
Thread-Topic: #yocto
Thread-Index: AdauHqVuE12fTwzmSx2Wpb9V7e3RXg==
Date: Thu, 29 Oct 2020 18:12:28 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.164289180B0E099B.10645@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7b370191e0ec4a15849fa1af5ce30b6dbaesystemscom_"

--_000_7b370191e0ec4a15849fa1af5ce30b6dbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am currently looking at porting from "rocko" to "zeus"...

Under your migration pages, I saw that in the project 2.7 release the follo=
wing change occurred to BitBake:

"Bitbake now checks BBFILE_COLLECTIONS<https://docs.yoctoproject.org/ref-ma=
nual/ref-variables.html#term-BBFILE_COLLECTIONS> for duplicate entries and =
triggers an error if any are found."

Does this imply that Yocto/BitBake would now throw a "duplicate BBFILE_COLL=
ECTIONS", if say prior to 2.7 one had 2 layers such as:


(1)    ./workspace_1/poky/../meta-intel

(2)    ./workspace_1/poky/../meta-1/meta-2/meta-intel

Where #1 was the actual meta-intel recipe, and #2 was for modification/conf=
iguration of #1 ?

Thanks,
Steve



--_000_7b370191e0ec4a15849fa1af5ce30b6dbaesystemscom_
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.xref
	{mso-style-name:xref;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:496579035;
	mso-list-type:hybrid;
	mso-list-template-ids:-2032000940 -1685177216 67698713 67698715 67698703 6=
7698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"\(%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
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
<p class=3D"MsoNormal">I am currently looking at porting from &#8220;rocko&=
#8221; to &#8220;zeus&#8221;&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Under your migration pages, I saw that in the projec=
t 2.7 release the following change occurred to BitBake:
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"font-family:&quot;Verdana=
&quot;,sans-serif;color:#333333">&#8220;Bitbake now checks
<a href=3D"https://docs.yoctoproject.org/ref-manual/ref-variables.html#term=
-BBFILE_COLLECTIONS">
<span class=3D"xref"><span style=3D"color:#444444">BBFILE_COLLECTIONS</span=
></span></a> for duplicate entries and triggers an error if any are found.&=
#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"color:#333333"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"color:#333333">Does this =
imply that Yocto/BitBake would now throw a &#8220;duplicate BBFILE_COLLECTI=
ONS&#8221;, if say prior to 2.7 one had 2 layers such as:<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"color:#333333"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span lang=3D"EN" style=3D"color:#333333"><spa=
n style=3D"mso-list:Ignore">(1)<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN" style=3D"color:#333333">./=
workspace_1/poky/../meta-intel<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span lang=3D"EN" style=3D"color:#333333"><spa=
n style=3D"mso-list:Ignore">(2)<span style=3D"font:7.0pt &quot;Times New Ro=
man&quot;">&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN" style=3D"color:#333333">./=
workspace_1/poky/../meta-1/meta-2/meta-intel<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"color:#333333"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"color:#333333">Where #1 w=
as the actual meta-intel recipe, and #2 was for modification/configuration =
of #1 ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"color:#333333"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"color:#333333">Thanks,<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN" style=3D"color:#333333">Steve<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_7b370191e0ec4a15849fa1af5ce30b6dbaesystemscom_--
