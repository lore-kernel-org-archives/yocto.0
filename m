Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.9720.1621421573187302397
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 May 2021 03:52:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=ePOeDiNl;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1621421573; x=1779101573;
  h=from:to:subject:date:mime-version;
  bh=YYcGvhTUtwjKZBshmm5EHMBH3SpQjAWXHQ9CCHlo3s8=;
  b=ePOeDiNlLjhc0IROoZDGJZfgy2o3pGKjXCyj2pojgyUvObuTG7y0fIZ3
   brQImE1tlYkjKKlnHX00zYFcKp/AitHA5agF9S1gVDR2hS+6GJ6tUceIN
   VwwWsl5SrFNngJmyLkXhfFnlW4ZPdZ5GjFFv/OPSIyCCcZyZmn2aLQ++a
   8=;
IronPort-SDR: uJYJG7dzaOILvpGRw6X9xD2/+pk7XTCcgYtkGzYh2FRnSKRBeKmCvpq7kj/06ooP6dZcsWAhTs
 cOwsFFzAmelQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3Ac93aixVyRXdn1MsCN77bo5ry8iDV8Kx+VTF92?=
 =?us-ascii?q?vMcY1JmTK2v8tzYMVDF4r011RmVBNSdsawUwLSJ+4nbGkU4qa6bt34DdJEeH?=
 =?us-ascii?q?zQksu4x2zIaPcieFEfgJ+TrZSFpVO5LVVti4m3peRMNQJW2aFLduGC94iAPE?=
 =?us-ascii?q?RvjKwV1Ov71GonPhMiryuy+4ZLebxhMiTanf79/LRa7oQrQu8QUnIBvNrs/x?=
 =?us-ascii?q?hzVr3VSZu9Y33loJVWdnxb94se/4ptu+DlOtvwi6sBNT7z0c7w3QrJEAjsmN?=
 =?us-ascii?q?Xs15NDwuhnYUQSP/HocXX4InRdOHgPI8Qv1Xpb1siv9q+p9xCyXNtD4QLwoR?=
 =?us-ascii?q?Tiv6bpgRRn1gykFKjE56nnahMxugqxGvBKvqR9xw4/Ib46aL/dxZL/RfdEAS?=
 =?us-ascii?q?GZdQspdSSpMCZ68YYsVCOoBOP5Vo4f6qVsJqxu+HhejC/30yjNQm3T4wLE63?=
 =?us-ascii?q?Po/EQ7Y2gwrAswDu2nQoNr7KakeVO65x7TPwDXYc/NZxyn955bOchw7pPGMW?=
 =?us-ascii?q?rRwcdHPxkYxDAPIlU6fppb7MDOO1uUNqHSb4PRlVeK0kWIotwZxoj22y8oql?=
 =?us-ascii?q?4LGiZ4bxEre+iVl3IY6O8e4SEhjbNCqHpZdqyCXOol3T888Xm1lpiU3x70Ct?=
 =?us-ascii?q?JO0cyUG1Zopyh7QZfCad4WF4BLuWemQLDtlmn9ofLGyihWv/ES9xePxUNS/3?=
 =?us-ascii?q?lVSriddj9XAqmoB2hLR58SdVPdx4Ees1SyO2g3S8u1IPFw4mbDUJpMu2LI9m?=
 =?us-ascii?q?YAfvVnDEyLwhU74lrWZdl8+9eit8+nnZ7LmqYKCOIJskQH+N7gumtS4AeQlL?=
 =?us-ascii?q?ggCR2ib9vq41L3k5UD2XK9FjuYqnancq5DXIcAWq62lDwNLyIoj7QywAy293?=
 =?us-ascii?q?9sCg3YHN1JEeAmbj4f3PlHOO+r0Auu4g1SpiDtrxvbGMaP9ApjVM3TPjK3tc?=
 =?us-ascii?q?Lh/5kJG1gY/09BS64hVB7wAOP7zX1X+tN3cDh83KQy0xOPnBc1m1oMCR22PH?=
 =?us-ascii?q?LGWMKXIvV+N4eIvJfKMa5ELtzbmMPUq/OThgmEimV4dZqmpwYUYaHWjHvh8P?=
 =?us-ascii?q?0qZZn/sjs8bEWgWpgo+UPDqiFqaXD9TYHa9Q7485jYgBYKiDIfDXZytgKeb0?=
 =?us-ascii?q?Ca7GZ1ZenxGCleUEXfycIWEWekDZz6OIsN7lTwET7ehGMcd0kTkpQjx171PK?=
 =?us-ascii?q?uvP5jZepJXoyN9t/erRmBousztuAI7Vh3CKRH1ztmcJXCMtmrF4qlB60k2E0?=
 =?us-ascii?q?6Vzn7pfD9MFtN1TVQJvf7vbyfd3Bsu2Ejndc8mETh6NCpWbOnB7BoYq39IQb?=
 =?us-ascii?q?kA7HtKklR3OxAKgCrIOhqeXCZkvtKnb2i6idI5G13/a2fx53BEdScxVODj+7?=
 =?us-ascii?q?pM=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AMt3cvK3XNCOOFEou1UdVyQqjBHkkLtp133?=
 =?us-ascii?q?Aq2lEZdPUMSL3gqyncpoVi6faUskdsZJhOo6HmBEDtexPhHJNOirX5Xo3SIz?=
 =?us-ascii?q?UO2lHYSr2KhLGKq1OAJ8SUzJ8+6U4USdkbNDSGNykesS+V2njaL/8QhPWX+q?=
 =?us-ascii?q?GhgunTi0xgSAl7ApsL0+5+MGmm+wZNNXJ77NICZeChDt8tnVedkYN9VKiG71?=
 =?us-ascii?q?c+LpX+m+E=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BeBwCc7KRg/0LhJQpagQkJgVCBIYF?=
 =?us-ascii?q?/gUyzTwsBAQEBAQEBAQEIAUEEAQGGRiY5BQ0CBAEBARIBAQYBAQEBAQYEAYE?=
 =?us-ascii?q?DhVEMgjgihB5eARVrJgEEG4JqgX6pOYE0GgJlhGSFBIE6gWWFIoJkhgVDjzI?=
 =?us-ascii?q?Eoy+fCQcDgxadQSIRlHsDkEQtlQqkCwIEAgQFAhaBbIF7cIM6TxcCnHqBKwI?=
 =?us-ascii?q?GCgEBAwmICYERAQE?=
X-IPAS-Result: =?us-ascii?q?A2BeBwCc7KRg/0LhJQpagQkJgVCBIYF/gUyzTwsBAQEBA?=
 =?us-ascii?q?QEBAQEIAUEEAQGGRiY5BQ0CBAEBARIBAQYBAQEBAQYEAYEDhVEMgjgihB5eA?=
 =?us-ascii?q?RVrJgEEG4JqgX6pOYE0GgJlhGSFBIE6gWWFIoJkhgVDjzIEoy+fCQcDgxadQ?=
 =?us-ascii?q?SIRlHsDkEQtlQqkCwIEAgQFAhaBbIF7cIM6TxcCnHqBKwIGCgEBAwmICYERA?=
 =?us-ascii?q?QE?=
X-IronPort-AV: E=Sophos;i="5.82,312,1613433600"; 
   d="scan'208,217";a="377089770"
IronPort-SDR: wtrvMoqblyUeSzb7Zb1Ay98k4QH1u8Gn+MS3HnNLv0USrSRBopeEzyIrFI7iGf3NolL0NVL93H
 3N+1hWeQOBKA==
X-IronPort-AV: E=Sophos;i="5.82,312,1613433600"; 
   d="scan'208,217";a="3818187"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: PREEMPT_RT patches
Thread-Topic: PREEMPT_RT patches
Thread-Index: AddMnJHYgl8EFrEERx+eca1w7teAtQ==
Date: Wed, 19 May 2021 10:51:50 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.16807254A326FFBC.18081@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_38fd7bf45ab5469e90ae3bdecf3978b0baesystemscom_"

--_000_38fd7bf45ab5469e90ae3bdecf3978b0baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Recently I heard somewhere that newer versions of the Linux Kernel will inc=
lude the PREEMPT_RT patches, and configuration settings would be used to se=
t how the Linux would operate in a specific system.

Does Yocto support "PREEMPT_RT", and what versions of Yocto have this optio=
n ?

Is there documentation on this feature/option ?

Thanks,
Steve


--_000_38fd7bf45ab5469e90ae3bdecf3978b0baesystemscom_
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
	{mso-list-id:492765464;
	mso-list-type:hybrid;
	mso-list-template-ids:1806437474 67698705 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"%1\)";
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Recently I heard somew=
here that newer versions of the Linux Kernel will include the PREEMPT_RT pa=
tches, and configuration settings would be used to set how the Linux would =
operate in a specific system.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Does Yocto support &#8=
220;PREEMPT_RT&#8221;, and what versions of Yocto have this option ?<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Is there documentation=
 on this feature/option ?<o:p></o:p></span></p>
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

--_000_38fd7bf45ab5469e90ae3bdecf3978b0baesystemscom_--
