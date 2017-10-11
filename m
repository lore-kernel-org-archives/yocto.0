Return-Path: <umamahesh.y@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8883E00C01; Tue, 10 Oct 2017 22:41:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.8.186.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 Oct 2017 22:41:44 PDT
Received: from GWS08.hcl.com (gws08.hcl.com [192.8.186.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FD65E00B53
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 22:41:44 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.43,360,1503340200"; d="scan'208,217";a="76349536"
Received: from unknown (HELO CHN-CORP-HT01.CORP.HCL.IN) ([10.249.2.33])
	by GWS08.hcl.com with ESMTP/TLS/AES128-SHA; 11 Oct 2017 11:10:38 +0530
Received: from CHN-CORP-EDGE1.CORP.HCL.COM (10.249.1.159) by
	CHN-CORP-HT01.CORP.HCL.IN (10.249.2.33) with Microsoft SMTP Server
	(TLS) id 14.3.339.0; Wed, 11 Oct 2017 11:10:38 +0530
Received: from APC01-PU1-obe.outbound.protection.outlook.com (65.55.88.18) by
	transportedge.hcl.com (10.249.1.159) with Microsoft SMTP Server
	(TLS) id 14.3.339.0; Wed, 11 Oct 2017 11:09:24 +0530
Received: from HK2PR04MB0995.apcprd04.prod.outlook.com (10.165.58.153) by
	HK2PR04MB0993.apcprd04.prod.outlook.com (10.165.58.151) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Wed, 11 Oct 2017 05:40:35 +0000
Received: from HK2PR04MB0995.apcprd04.prod.outlook.com
	([fe80::7da9:d478:cd68:f048]) by
	HK2PR04MB0995.apcprd04.prod.outlook.com
	([fe80::7da9:d478:cd68:f048%13]) with mapi id 15.20.0077.020;
	Wed, 11 Oct 2017 05:40:34 +0000
From: Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Procedure for adding driver in Yocto
Thread-Index: AdNCUyU9vC4Mhnc1SNCD76rUbn5L1g==
Importance: high
X-Priority: 1
Date: Wed, 11 Oct 2017 05:40:34 +0000
Message-ID: <HK2PR04MB09958FA97340182BB1D3D0E9E64A0@HK2PR04MB0995.apcprd04.prod.outlook.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=umamahesh.y@hcl.com; 
x-originating-ip: [115.114.144.236]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HK2PR04MB0993;
	6:mMKHRNxAVJ1Eke2r9d50TcQ3DH/3e6ryA1z3JzGavZPKp4y29Skvot52LcQ0oTbBDS9C7SFk0O6X2EKglJ7bQ0utYcI90io9GS+cUuBiP/+Cyim3QjPOJe67h4Jw9noMpZqmKOWVNfizoSs0c9lhiq/t9o5tuat/X7KLkJE8UFrOqM1qqRGKu3/J+pW9ovNPkFFgsC7PnJwcFpN+VM/IplUXLWeQLaUckPe7UpnQn1ZS/CmDOFtNdysr53k9Yp2o/vTZuKoH7XDSjGyHvdYHp9oHpjIM6ZIS6S57e9zycYDHTjFOrIvY9fxx39dZ8gFJztiu3KVE4h1WYNHBYfk5MQ==;
	5:eeWBmBPiOSE4OxwalU/Uzu9WOJzX0tfBXMvy7fcAGfddUV4Buo6JpFseytTqosv0dZVXp77RwEpMR1Q39bG80BfRWbCG1qQulVhi0PAct+fHjBKs3/D5A37oEOfDbi1UjPs7dV0eYiwHsVg5NzkzAA==;
	24:pAm8FAlkiied4e1iRH9hXMkAm55sLlZMCcZthkxqB9+3dazEkxsnexxrggYci2liaEICOczFdrcJGX0BcqYZwEBU3FEn6aE8S4DjtYV+7Rw=;
	7:QlaOrcnmlGfnC60sYPQpNUZSR4Hkobh4nqGoagqAJDIob6FWcXvXauiNtVdrmhJV5SIVdH/SdMQQuiMzfN7nYSb0xG3BYMv8slDxZP5buyBeOjavXQwCGyuIF2rfqlGuyXeRGbqF5+CYYnI3XjSm4XLyaEl4j3tEeUOIQVhE27BHbCsJL17/DnmeU5uF1qQs9+uXVuXb+hxQyMPLM+Nlr1bpC7uxq4YvRLfISyMru0g=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: a83d5e8a-af08-4ba4-0e4b-08d5106a9840
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:HK2PR04MB0993; 
x-ms-traffictypediagnostic: HK2PR04MB0993:
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-microsoft-antispam-prvs: <HK2PR04MB099347F2715B2ABFC2461682E64A0@HK2PR04MB0993.apcprd04.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(100000703101)(100105400095)(3002001)(6041248)(20161123560025)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(20161123558100)(20161123564025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HK2PR04MB0993; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HK2PR04MB0993; 
x-forefront-prvs: 0457F11EAF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(346002)(376002)(199003)(189002)(8936002)(99286003)(5660300001)(6116002)(554214002)(102836003)(81686999)(790700001)(5640700003)(3846002)(189998001)(2900100001)(86362001)(50986999)(54356999)(316002)(14454004)(3280700002)(2906002)(97736004)(8676002)(2351001)(7696004)(81166006)(106356001)(81156014)(101416001)(25786009)(74316002)(53936002)(5250100002)(66066001)(1730700003)(2501003)(6506006)(7736002)(105586002)(9686003)(5630700001)(9326002)(55016002)(6436002)(68736007)(3660700001)(54896002)(478600001)(6916009)(33656002)(6306002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HK2PR04MB0993;
	H:HK2PR04MB0995.apcprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: hcl.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2017 05:40:34.8612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 189de737-c93a-4f5a-8b68-6f4ca9941912
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR04MB0993
X-OriginatorOrg: HCL.COM
Subject: Procedure for adding driver in Yocto
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
X-List-Received-Date: Wed, 11 Oct 2017 05:41:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK2PR04MB09958FA97340182BB1D3D0E9E64A0HK2PR04MB0995apcp_"

--_000_HK2PR04MB09958FA97340182BB1D3D0E9E64A0HK2PR04MB0995apcp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hi

I am looking for a procedure how to add an new driver in Yocto Kernel. I tr=
ied adding an sample char driver by updating Kconfig and makefile of respec=
tive directory and by default marked as built in by default.

But I do not see the driver is coming up while kernel is booted.

Please suggest the procedure.

Thanks
Umamahesh


::DISCLAIMER::
---------------------------------------------------------------------------=
-------------------------------------------------------------------------

The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only.
E-mail transmission is not guaranteed to be secure or error-free as informa=
tion could be intercepted, corrupted,
lost, destroyed, arrive late or incomplete, or may contain viruses in trans=
mission. The e mail and its contents
(with or without referred errors) shall therefore not attach any liability =
on the originator or HCL or its affiliates.
Views or opinions, if any, presented in this email are solely those of the =
author and may not necessarily reflect the
views or opinions of HCL or its affiliates. Any form of reproduction, disse=
mination, copying, disclosure, modification,
distribution and / or publication of this message without the prior written=
 consent of authorized representative of
HCL is strictly prohibited. If you have received this email in error please=
 delete it and notify the sender immediately.
Before opening any email and/or attachments, please check them for viruses =
and other defects.

---------------------------------------------------------------------------=
-------------------------------------------------------------------------

--_000_HK2PR04MB09958FA97340182BB1D3D0E9E64A0HK2PR04MB0995apcp_
Content-Type: text/html; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
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
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-IN" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am looking for a procedure how to add an new drive=
r in Yocto Kernel. I tried adding an sample char driver by updating Kconfig=
 and makefile of respective directory and by default marked as built in by =
default.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But I do not see the driver is coming up while kerne=
l is booted.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please suggest the procedure.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Umamahesh<o:p></o:p></p>
</div>
<span style=3D"FONT-FAMILY: 'Arial','sans-serif'; COLOR: gray; FONT-SIZE: 7=
.5pt; mso-fareast-font-family: 'Times New Roman'">
<P style=3D"MARGIN: 0in 0in 0pt" class=3DMsoNormal><br><br><font style=3D"F=
ONT-FAMILY: 'Arial','sans-serif'; COLOR: gray; FONT-SIZE: 9px">::DISCLAIMER=
::<br>---------------------------------------------------------------------=
---------------------------------------------------------------------------=
----</font></P>
<P style=3D"MARGIN: 0in 0in 0pt" class=3DMsoNormal><font style=3D"FONT-FAMI=
LY: 'Arial','sans-serif'; COLOR: gray; FONT-SIZE: 11px">The contents of thi=
s e-mail and any attachment(s) are confidential and intended for the named =
recipient(s) only.<br>E-mail transmission is not guaranteed to be secure or=
 error-free as information could be intercepted, corrupted, <br>lost, destr=
oyed, arrive late or incomplete, or may contain viruses in transmission. Th=
e e mail and its contents <br>(with or without referred errors) shall there=
fore not attach any liability on the originator or HCL or its affiliates. <=
br>Views or opinions, if any, presented in this email are solely those of t=
he author and may not necessarily reflect the <br>views or opinions of HCL =
or its affiliates. Any form of reproduction, dissemination, copying, disclo=
sure, modification, <br>distribution and / or publication of this message w=
ithout the prior written consent of authorized representative of <br>HCL is=
 strictly prohibited. If you have received this email in error please delet=
e it and notify the sender immediately. <br>Before opening any email and/or=
 attachments, please check them for viruses and other defects.</font></P>
<P style=3D"MARGIN: 0in 0in 0pt" class=3DMsoNormal><font style=3D"FONT-FAMI=
LY: 'Arial','sans-serif'; COLOR: gray; FONT-SIZE: 11px">-------------------=
---------------------------------------------------------------------------=
------------------------------------------------------</font></span></P></b=
ody>
</html>

--_000_HK2PR04MB09958FA97340182BB1D3D0E9E64A0HK2PR04MB0995apcp_--
