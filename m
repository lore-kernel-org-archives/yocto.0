Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.2203.1617738441692866314
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 12:47:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=dEJTSkyo;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1617738441; x=1775418441;
  h=from:to:subject:date:mime-version;
  bh=ex+/FwtkgaGb253vf/JIhgWn/iMfYWyxmeQacnxESS4=;
  b=dEJTSkyoxn1nsLLUu4Eb9/4zrOGtorEDXheO9CrX+FHbNbvr++2NAsyD
   YiPiqPZp3MUA5jgKA53wZ537SsolKCYKMfwbWHJOT7nptrqcxfAMJyj/V
   QZ+eW2yHL9qwjPEvaiNSDh3iCEuAPeY7NIbiNRdLDc6bgJYMnRVLQT9+W
   s=;
IronPort-SDR: mpOgg3tCI8XlG3nhVl4Q2oJJpxSA+mbByx0PwfIrjEtulVJ3r52dR6V8AX+9JCV1YyhFD0cgbA
 iDgEevCesiBQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3AsrI98B38s5cb5+uTsmDOJgQyDhhPgJ3EezUN4?=
 =?us-ascii?q?59isYplN5qZl7zcNUDSrc9gkEXOFd2Cra4d2qyP7P2rADJIyK3CmUhKSIZLW?=
 =?us-ascii?q?R4BhJdetC0bK+nBN3fGKuX3ZTcxBsVIWQwt1Xi6NU9IBJS2PAWK8TW94jEIB?=
 =?us-ascii?q?xrwKxd+KPjrFY7OlcS30P2594HObwlSizexfLd/IA+roQjTtsQajpZuJ6csw?=
 =?us-ascii?q?RbVv3VEfPhby3l1LlyJhRb84cmw/J9n8ytOvv8q6tBNX6bncakmVLJUFDspP?=
 =?us-ascii?q?Xw7683trhnDUBCA5mAAXWUMkxpHGBbK4RfnVZrsqCT6t+592C6HPc3qSL0/R?=
 =?us-ascii?q?Dqv47t3RBLulSwKMSMy/mPKhcxqlK9VoAyvqQFjw4DaY4+VNeZxcazGcNwAW?=
 =?us-ascii?q?WZBXNxcWzBdDo+iaYYEEuoPPfxfr4n4v1YCoxywBQ6qBOP01DBHmGT20bUn2?=
 =?us-ascii?q?Oo8DQHJwhIgEMwIsH/Jstj+KaMeXu6owqXNwznIcvRb2Szh6IfWbBAuv/eMU?=
 =?us-ascii?q?ah1ccrWz0kvDB3KgUuLqYH+JDyazPoCs3Ob7up7SeKglWsnqxprrjezwccsj?=
 =?us-ascii?q?5DEi4QIwV/L6St32pw6JcGkSEFle96kFoNduS+UOoZqQ84vQWBltDgnxrAYu?=
 =?us-ascii?q?pO2fCwHxZsoyhLCZfKKc4eG7g/nWeuTITp1i3NodK+hihu28kWtyfDxWtS73?=
 =?us-ascii?q?ltMsyFLkcHMu2gQ2xDP8MSKRPlw8l2/1TqR1w3f8OBJLEAsmabGN5It2LE9m?=
 =?us-ascii?q?5UJvUnMBCP6hUX7gamLfUs+4Oeo8f7oYrD+q5+ZMI97lx/xP7w1msy6HeQ4K?=
 =?us-ascii?q?g8OX3WH+eik1L3s40n5QLJSg/0qnajWqpbaJcEApqO9HwNZzpov5wulAzegy?=
 =?us-ascii?q?tsUh2III0hbdxKcj4npIE3OL+79DfekmVijjDBrx/XeMr3gBJXCMGTDna/8c?=
 =?us-ascii?q?bph8UJRxgg+wcpB655KCrwNOvP+V0/puNzdFBA5Mgi0w+j9CNV604MTQXmPA?=
 =?us-ascii?q?rOHP6PMr1CI4PgjI+yLZI8TozbyNeYq5+X1gHAig1ASY7Kp3JsMaHCkAPtmJ?=
 =?us-ascii?q?l6ZbWDwjdcGFGcGphA+Q/DyiF2eTT5TYG6/XqI75j4nFIKmCpzORoSsgLyaw?=
 =?us-ascii?q?Ce7BYdaZ2BBCl+QDXfocJ2EW+0LaCKQPMBujiAEWaKmS4872hH9/DP9nvB2K?=
 =?us-ascii?q?eHI/QUctIn/z55k4ObPkgko8j55BNjb1HuCBSkgj2QDWzge2KFkvVc721CIz?=
 =?us-ascii?q?a9gmftaGNdPofRTXVFpG4TbyrkwLtf0QQ/MZZPBc0qrXNigSRp5Du8KgpVGN?=
 =?us-ascii?q?11hFsuviFbG2CyxDrIOv7aCCYcl6b7R2mO3LMF4nSWVnJI9hkUrF5McfVatg?=
 =?us-ascii?q?bRyolC7Og=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AkpxnGqHR0xqqrlb5pLqFE5HXdLJzesId70?=
 =?us-ascii?q?hD6mlaTxtJfsuE0/20lPMA2hPuzBoXUncsmdePUZPwP0/035hz/IUXIPOeTB?=
 =?us-ascii?q?Dr0VHYU71KwIP+z1TbalDD38FH06MISdkHNPTVLXxXyfn3+xO5FdFI+rS62Y?=
 =?us-ascii?q?Sln/3XwXsobSwCUdAD0y5DBgyWElJ7SWB9bPIEPaGR/89W4wenEE5nFPiTPH?=
 =?us-ascii?q?UDUuTZzue77a7OWwIMBBIs9WC1/E+VwYP9eiLopSs2Yndqybcm/XOtqX2c2o?=
 =?us-ascii?q?yT98uj7hfd0kve9Y5fltfAx7J4daqxo/lQECzWhh61aJ59daGDsVkO0YaSwV?=
 =?us-ascii?q?wtl8TBpAplNcF68Wm5RBDXnTL9nwHk3C0y63KK8zOlqGqmqcn0Xy8hB9FfiZ?=
 =?us-ascii?q?lFYgLUgnBLgPhslKpP03mFqppLCB+opkvAzsmNXxRnjVerrXE5l+YL5kYvNL?=
 =?us-ascii?q?c2eftYqIAF4V1YG4saGUvBibwPAa11DcnG5PFZNVmdaH/YsC1y29nEZBoONw?=
 =?us-ascii?q?bDWEkLocyT3XxMkHR+0kdd2MwT901hyLstD4NE7//FNaotiqtVRccNYb5nAY?=
 =?us-ascii?q?46KveKNg=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2CuAAA2umxg/0HhJQpaHAEBAQEBAQc?=
 =?us-ascii?q?BARIBAQQEAQFACYE4BAEBCwGBIoF/gUuycgsBAQEBAQEBAQEIATQEAQGGSSY?=
 =?us-ascii?q?3Bg4CAwEBDAEBBgEBAQEBBgQBgQOFUQyCOCKEHl4BDAlrJgEEG4JqgX6te4E?=
 =?us-ascii?q?0GgJlhFiEdoE5AYFkhRiCW4YCQY8sBIQGnmGeWQcDgwuccyyUPwOQL5UVoyk?=
 =?us-ascii?q?CBAIEBQIWgWqBfXCDOk8XApx2gSsCBgoBAQMJjAKBDwEB?=
X-IPAS-Result: =?us-ascii?q?A2CuAAA2umxg/0HhJQpaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?YE4BAEBCwGBIoF/gUuycgsBAQEBAQEBAQEIATQEAQGGSSY3Bg4CAwEBDAEBB?=
 =?us-ascii?q?gEBAQEBBgQBgQOFUQyCOCKEHl4BDAlrJgEEG4JqgX6te4E0GgJlhFiEdoE5A?=
 =?us-ascii?q?YFkhRiCW4YCQY8sBIQGnmGeWQcDgwuccyyUPwOQL5UVoykCBAIEBQIWgWqBf?=
 =?us-ascii?q?XCDOk8XApx2gSsCBgoBAQMJjAKBDwEB?=
X-IronPort-AV: E=Sophos;i="5.82,201,1613433600"; 
   d="scan'208,217";a="362238830"
IronPort-SDR: Ho6jU6PmzkGEWDrzIOfozsrcu/mEbt3HOrAsTxfjzlCcYl/hAnjHg1CCyo54AWbWdWP8jYvQoj
 48hshIzhrEiQWRUeIFxw/wF2IyickyKSq88wY+UfNz1Nk1QnQq48X3kOlvyNiQYJUOzK7xJleV
 OkEwvC4k3tLMLsYJwCkLvOCCVfjr7dSriQHIviDykSUETo8k2oWGsC39jdOrJsQ9vLgf4wgf5r
 73QGNkmG6So7ucnCmrr/G7M5zMHw/DIfj70MRBIUEj1hnrPFqamQf9MfPMq9pBl0PR+KgI9aCe
 IT8=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #sdk -XILINX/vivado dependencies
Thread-Topic: #yocto #sdk -XILINX/vivado dependencies
Thread-Index: AdcrHRaWJs9zKBXOQYSU/4F+r8qT6Q==
Date: Tue, 6 Apr 2021 19:46:19 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.16735C8B32B53852.3072@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_c7287aa2cf7c4fcaa0c3bb61ffaae086baesystemscom_"

--_000_c7287aa2cf7c4fcaa0c3bb61ffaae086baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Working with zeus, aarch64, with Xilinx vivado dependencies...
Kerenl image and bootapp build and run correctly, need to be able to build =
EXT SDK,,,

How do I incorporate the dependencies of the low level Xilinx FPGA support =
 (i.e. "vivado") into the Ext SDK build env ?

Is there a way to build in support so that the "module load" command would =
be usable from the ".conf" or  the env-setup script, (i.e. "module load viv=
ado..." ?

Thanks,
Steve


--_000_c7287aa2cf7c4fcaa0c3bb61ffaae086baesystemscom_
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
<p class=3D"MsoNormal">Working with zeus, aarch64, with Xilinx vivado depen=
dencies&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal">Kerenl image and bootapp build and run correctly, ne=
ed to be able to build EXT SDK,,,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">How do I incorporate t=
he dependencies of the low level Xilinx FPGA support &nbsp;(i.e. &#8220;viv=
ado&#8221;) into the Ext SDK build env ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Is there a way to buil=
d in support so that the &#8220;module load&#8221; command would be usable =
from the &#8220;.conf&#8221; or&nbsp; the env-setup script, (i.e. &#8220;mo=
dule load vivado&#8230;&#8221; ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Steve<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_c7287aa2cf7c4fcaa0c3bb61ffaae086baesystemscom_--
