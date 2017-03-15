Return-Path: <teemu.keskinarkaus@crosscontrol.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36BD9E00A93; Wed, 15 Mar 2017 05:15:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.77 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3634 seconds by postgrey-1.32 at yocto-www;
	Wed, 15 Mar 2017 05:15:35 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0077.outbound.protection.outlook.com [104.47.34.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AC0EE0088B
	for <yocto@yoctoproject.org>; Wed, 15 Mar 2017 05:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=actuant.onmicrosoft.com; s=selector1-actuant-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=lw/VKntQvuOah7fKnvr7Wx4snNVXjJ+GT5y2kX/L3B0=;
	b=e8D+k5oNqyh+jMmB/TJYP+dDRqmGRunJoLKwy/iPSRSnD/uxXC/4x7dy7yR5h+2+DsuamgXRGoKhoiMwassphq1sQmxsjJWBilkx+4cE1Kg1Cg+A8z01W0DpP/5qYc3scZBZJW5NAeb5gATkn+M93DHLdOXWDbgNRca2FYHKBk0=
Received: from CY4PR18MB1605.namprd18.prod.outlook.com (10.173.63.145) by
	CY4PR18MB1605.namprd18.prod.outlook.com (10.173.63.145) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.947.12; Wed, 15 Mar 2017 08:42:35 +0000
Received: from CY4PR18MB1605.namprd18.prod.outlook.com ([10.173.63.145]) by
	CY4PR18MB1605.namprd18.prod.outlook.com ([10.173.63.145]) with mapi id
	15.01.0947.020; Wed, 15 Mar 2017 08:42:35 +0000
From: "Keskinarkaus, Teemu" <teemu.keskinarkaus@crosscontrol.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: List of packages in image and their Licenses
Thread-Index: AdKdZ+PiYBBrLbQHS96WGOoG99Rjvg==
Date: Wed, 15 Mar 2017 08:42:35 +0000
Message-ID: <CY4PR18MB160558F10B9A0B408F667B9FE0270@CY4PR18MB1605.namprd18.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=crosscontrol.com;
x-originating-ip: [81.19.113.90]
x-ms-office365-filtering-correlation-id: 5eabe71d-30d9-44a3-8ae3-08d46b7f3a74
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:CY4PR18MB1605;
x-microsoft-exchange-diagnostics: 1; CY4PR18MB1605;
	7:Gt6FvqVUmbSLBtwP22S6VnAhFOL7Ab06yZ18d0F6+svAZRlU59/AQ1JWGuAqPJnpUaGLotpXwKUbkDR198hkmmJYSgv6ah0qNOmAWrhPzSlHEgsWZqKEtezSAi82CWVbHOB5QSkfKPnhfMuCw4rDMwscvDl5F9xIGtnvdS4/X5D7kt6gO/qMdYBAtr/ZgR/AITWOsaL3bpcIMdY7uPuZMbqR9bE9z89FiwMeC8w1H9u54/mGASjMnf4RBWC/ubXpPMVu5UyURIsf1laXCxQKvkSvGfRpqUdRNak89hX41WeJw/TLZO8fTSC0vmfRsEhV7qj5iJwlkKe/qAKkW16TSA==;
	20:ly7D9CEm5RWrjpMTbjc8YwMdpKBBM/BgEnvmga1eAF3fk51qSQLl0fLZXvsC+lvCYeWoBJ3pMvKe8WoGvLRkCCrlvmOE0pLQ0J57DDNulj0Hd+Hoh/WMZ3QNxf984stpeob6s2bfG35pdW8PAo6b5dp6Bb1V02dTJGjYjhcC13I=
x-microsoft-antispam-prvs: <CY4PR18MB160514DD4B83EB990509386BE0270@CY4PR18MB1605.namprd18.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123562025)(20161123560025)(20161123558025)(20161123555025)(20161123564025)(6072148);
	SRVR:CY4PR18MB1605; BCL:0; PCL:0; RULEID:; SRVR:CY4PR18MB1605; 
x-forefront-prvs: 02475B2A01
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39410400002)(39450400003)(39830400002)(25786008)(50986999)(2906002)(38730400002)(54356999)(9686003)(8936002)(33656002)(74316002)(3280700002)(6916009)(6506006)(53936002)(77096006)(3660700001)(122556002)(66066001)(6436002)(86362001)(110136004)(55016002)(99286003)(54896002)(2900100001)(6306002)(7736002)(790700001)(5660300001)(81166006)(189998001)(6116002)(3846002)(8676002)(102836003)(7696004)(491001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR18MB1605;
	H:CY4PR18MB1605.namprd18.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: crosscontrol.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2017 08:42:35.0723 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1602ae82-0266-40d6-910b-11680fe0f6a5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR18MB1605
Subject: List of packages in image and their Licenses
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 15 Mar 2017 12:15:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR18MB160558F10B9A0B408F667B9FE0270CY4PR18MB1605namp_"

--_000_CY4PR18MB160558F10B9A0B408F667B9FE0270CY4PR18MB1605namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I know that there is bitbake command/option to get list of all packages ava=
ilable, but how would I get a list of packages that goes to any specific im=
age? And is there a way to get what Licenses those packages are using?

-TeemuK

________________________________

Actuant Corporation Email Notice

This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly prohibited.
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.

Thank you.

--_000_CY4PR18MB160558F10B9A0B408F667B9FE0270CY4PR18MB1605namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
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
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 70.85pt 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FI" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I know that there is bitbake co=
mmand/option to get list of all packages available, but how would I get a l=
ist of packages that goes to any specific image? And is there a way to get =
what Licenses those packages are using?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">-TeemuK<o:p></o:p></span></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Black" size=3D"1"><br>
Actuant Corporation Email Notice<br>
<br>
This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.<br>
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly
 prohibited.<br>
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.<br>
<br>
Thank you.<br>
</font>
</body>
</html>

--_000_CY4PR18MB160558F10B9A0B408F667B9FE0270CY4PR18MB1605namp_--
