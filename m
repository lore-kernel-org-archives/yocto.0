Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.40061.1595257659177764317
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 08:07:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=WmQwd3FO;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1595257659; x=1752937659;
  h=from:to:subject:date:mime-version;
  bh=950UV5hFXfEePiY9PfbZSnYjHKICJLtYgnWmAdscqKc=;
  b=WmQwd3FO/aAYmGlirV1HHOOEd+pxPccqf57aOrKk1FV1D6F9nrMnTr4r
   RbbdlNScGL290DD5gafITS9j5RQ2jgP0TQfHiPEYaWzniTeixFmyplQ4t
   6ldc9uK8g/qM+FP63SIHuDVIAIMixivSgEpjMmLrKxE11d7wXqSuQFNpS
   A=;
IronPort-PHdr: =?us-ascii?q?9a23=3As3jpMheNA0KDP7SlHUQB6maJlGMj4u6mDksu8pMi?=
 =?us-ascii?q?zoh2WeGdxcWyZR7h7PlgxGXEQZ/co6odzbaP7ea8BSdZuN6oizMrSNR0TRgLiM?=
 =?us-ascii?q?EbzUQLIfWuLgnFFsPsdDEwB89YVVVorDmROElRH9viNRWJ+iXhpTEdFQ/iOgVr?=
 =?us-ascii?q?O+/7BpDdj9it1+C15pbffxhEiCCybL9vLRi6twrcu8YZjYd/N6o61wfErGZPd+?=
 =?us-ascii?q?lK321jOEidnwz75se+/Z5j9zpftvc8/MNeUqv0Yro1Q6VAADspL2466svrtQLe?=
 =?us-ascii?q?TQSU/XsTTn8WkhtTDAfb6hzxQ4r8vTH7tup53ymaINH2QLUpUjms86tnVBnlgz?=
 =?us-ascii?q?oBOjUk8m/Yl9Zwgbpbrhy/uhJ/34DaboKUNPVicazQZskVSXZDXstLSyBNHp2w?=
 =?us-ascii?q?Yo0SBOQBJ+ZYqIz9qkMAoRW5AgmsAvjvxSFWiX/txaExzvkvER3Y0ww+Ad0Otm?=
 =?us-ascii?q?nfocvoP6sWX++70azEwTveZP5Rwjf99JbHcg4/rvGKR75wdM3RyU80FwzbkFqQ?=
 =?us-ascii?q?spfoMCiP2esTqGia7/FgVf6xhG4isAF9uCSgxsApioTQgI8e11/L+zljzokvOd?=
 =?us-ascii?q?24VFB0YcSiEJZIuS+XOZd7T8IgTmxppio216MLtJ27cSUOx5kqyAPTZfKHfoaH?=
 =?us-ascii?q?/x7uUOScLDd3iX9kZb6ymRK//Eujx+DhS8W631BHpTdGnNnUrn0BygDf5tKJR/?=
 =?us-ascii?q?Z/5EutxDKC2g7J5uxFIU04jbfXJ4I7zrM/mZcfq0DOEjX1lUj0iqKda18q9fKy?=
 =?us-ascii?q?6+v9Z7XrvpqcN4hphQ7gKqkugcm/AfggMggJQmib5fyw1L398k39R7VHluM2nb?=
 =?us-ascii?q?PZsJDcIMQbvaq0DgtR34o/9hqzFTGm384CkXYcNl1KZgmHjojyO1HSPv/4COy/?=
 =?us-ascii?q?j06wnzdswvDKJrzhApPTIXjfiLrtYKpx51RSxQcx19xT+pZZB78bLP/yWkL9rN?=
 =?us-ascii?q?nYAQU4MwywzebnEtJ91oYGVGKUHq+WLr3SvkGO5u41JumMY4kVuC3jJPc7/P7j?=
 =?us-ascii?q?lmQ2lkUDcqmy3ZoXc2y4EepjI0WCe3bjntABEWISsgokUOPqkEGCUSJUZ3uqX6?=
 =?us-ascii?q?M84S00CJ6hDYrYQoCtgaeB3DugHpFMZmFGDUyDEWvvd4WcQfcMbyCSLdF9nTwY?=
 =?us-ascii?q?T7ShTJUh1R79/DP9nvB2KeHI/QUctIn/z55k4ObPkgko8j55BNjb1HuCBSkgj2?=
 =?us-ascii?q?QDWzge2KFkvVc721CIza9gmftaGNdPofRTXVFpG4TbyrkwLtf0QQ/MZZPBc0qr?=
 =?us-ascii?q?XNigSRp5Du8KgpVGN11hFsuviFbG2CyxDrIOv7aCCYcl6b7R2mO3LMF4nSWVnJ?=
 =?us-ascii?q?I9hkUrF5McfVatgbRyolDe?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DhAwDhsRVf/0HBJQpggQmBSoEjgXaBP?=
 =?us-ascii?q?a9HgX0LAQEBAQEBAQEBBwEvBAEBhm4lNQgOAhABAQYBAQEBAQYEAYZJC4I3IoN?=
 =?us-ascii?q?MXgEaZhcPAQQbgx+BfqtogTSFUoRvgTiOTj6Dc4sfBJknnCAHA4JdmVoqn0iSA?=
 =?us-ascii?q?Z5/AgQCBAUCFYFUAYIPcIM6TxcCDZxlgSsCBggBAQMJjn6BEQEB?=
X-IPAS-Result: =?us-ascii?q?A2DhAwDhsRVf/0HBJQpggQmBSoEjgXaBPa9HgX0LAQEBAQE?=
 =?us-ascii?q?BAQEBBwEvBAEBhm4lNQgOAhABAQYBAQEBAQYEAYZJC4I3IoNMXgEaZhcPAQQbg?=
 =?us-ascii?q?x+BfqtogTSFUoRvgTiOTj6Dc4sfBJknnCAHA4JdmVoqn0iSAZ5/AgQCBAUCFYF?=
 =?us-ascii?q?UAYIPcIM6TxcCDZxlgSsCBggBAQMJjn6BEQEB?=
X-IronPort-AV: E=Sophos;i="5.75,375,1589241600"; 
   d="scan'208,217";a="291499864"
X-IronPort-AV: E=Sophos;i="5.75,375,1589241600"; 
   d="scan'208,217";a="424839410"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Adjusting Extensible SDK for build setup
Thread-Topic: Adjusting Extensible SDK for build setup
Thread-Index: AdZep08Nr0r4qTsuQMiHvVDazPILjA==
Date: Mon, 20 Jul 2020 15:06:14 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Message-ID: <MADEUP.16237E6420DAF7B2.12894@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_991d2a793b844975bf5e6bc5587584c2baesystemscom_"

--_000_991d2a793b844975bf5e6bc5587584c2baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


I am fairly new to the Yocto SDK build process, and am looking to create an=
 extensible SDK for one of our platforms.

I am currently working with Rocko 2.4.1, in conjunction with uninative rele=
ase 1.9...

My current build system setup does not follow the standard configuration, I=
 use a different environment setup script other than "oe-init-build-env".

My environment setup script "setup-build-env" is also not located in the  $=
{COREBASE}, i.e. the "poky" directory, but rather at "${COREBASE}/../meta-b=
ae/meta-limws", the meta-limws level has multiple architecture sub levels (=
each an independent build), I am only looking to build an SDK for one of th=
ese architectures. Each architecture's  bblayers.conf provides the appropri=
ate layers...

My build directory is expected to reside here:   "${COREBASE}/../meta-bae/m=
eta-limws/builds, and there are multiple architecture builds under this dir=
ectory.

In the Yocto Project Mega-Manual, Appendix B.2... it talks about setting up=
 COREBASE and COREBASE_FILES...

The default COREBASE_FILES is setup in populate_sdk_ext.bbclass as:

COREBASE_FILES ?=3D " \
    oe-init-build-env \
    scripts \
    LICENSE \
    .templateconf \
"
How do I configure COREBASE, COREBASE_FILES, and OE_INIT_ENV_SCRIPT variabl=
e so that populate_sdk_ext.bbclass is able to properly run "do_populate_sdk=
_ext" without having to modify populate_sdk_ext.bbclass ?

Can someone tell me the proper configuration for these variables so that my=
 "setup-build-env" script is copied/used correctly by the SDK build env ?

Thanks,
Steve




--_000_991d2a793b844975bf5e6bc5587584c2baesystemscom_
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
<p class=3D"MsoNormal">I am fairly new to the Yocto SDK build process, and =
am looking to create an extensible SDK for one of our platforms.<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am currently working with Rocko 2.4.1, in conjunct=
ion with uninative release 1.9&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My current build system setup does not follow the st=
andard configuration, I use a different environment setup script other than=
 &#8220;oe-init-build-env&#8221;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My environment setup script &#8220;setup-build-env&#=
8221; is also not located in the &nbsp;${COREBASE}, i.e. the &#8220;poky&#8=
221; directory, but rather at &#8220;${COREBASE}/../meta-bae/meta-limws&#82=
21;, the meta-limws level has multiple architecture sub levels (each an ind=
ependent
 build), I am only looking to build an SDK for one of these architectures. =
Each architecture&#8217;s &nbsp;bblayers.conf provides the appropriate laye=
rs&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My build directory is expected to reside here: &nbsp=
;&nbsp;&#8220;${COREBASE}/../meta-bae/meta-limws/builds, and there are mult=
iple architecture builds under this directory.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In the Yocto Project Mega-Manual, Appendix B.2&#8230=
; it talks about setting up COREBASE and COREBASE_FILES&#8230;<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The default COREBASE_FILES is setup in populate_sdk_=
ext.bbclass as:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">COREBASE_FILES ?=3D &quot; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; oe-init-build-env \<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; scripts \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; LICENSE \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; .templateconf \<o:p></o:p></p>
<p class=3D"MsoNormal">&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><b>How do I configure COREBASE, COREBASE_FILES, and =
OE_INIT_ENV_SCRIPT variable so that populate_sdk_ext.bbclass is able to pro=
perly run &#8220;do_populate_sdk_ext&#8221; without having to modify popula=
te_sdk_ext.bbclass ?<o:p></o:p></b></p>
<p class=3D"MsoNormal"><span style=3D"color:#2E75B6"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal">Can someone tell me the proper configuration for the=
se variables so that my &#8220;setup-build-env&#8221; script is copied/used=
 correctly by the SDK build env ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_991d2a793b844975bf5e6bc5587584c2baesystemscom_--
