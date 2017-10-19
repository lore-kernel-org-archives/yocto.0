Return-Path: <umamahesh.y@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BA1DE00D3E; Wed, 18 Oct 2017 23:38:38 -0700 (PDT)
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
Received: from GWS08.hcl.com (gws08.hcl.com [192.8.186.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9507E00D36
	for <yocto@yoctoproject.org>; Wed, 18 Oct 2017 23:38:32 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.43,400,1503340200"; d="scan'208,217";a="77132037"
Received: from unknown (HELO CHN-CORP-HT02.CORP.HCL.IN) ([10.249.2.34])
	by GWS08.hcl.com with ESMTP/TLS/AES128-SHA; 19 Oct 2017 12:08:30 +0530
Received: from CHN-CORP-EDGE1.CORP.HCL.COM (10.249.1.159) by
	CHN-CORP-HT02.CORP.HCL.IN (10.249.2.34) with Microsoft SMTP Server
	(TLS) id 14.3.339.0; Thu, 19 Oct 2017 12:08:30 +0530
Received: from APC01-SG2-obe.outbound.protection.outlook.com (65.55.88.241) by
	transportedge.hcl.com (10.249.1.159) with Microsoft SMTP Server
	(TLS) id 14.3.339.0; Thu, 19 Oct 2017 12:07:30 +0530
Received: from HK2PR04MB0995.apcprd04.prod.outlook.com (10.165.58.153) by
	HK2PR04MB0995.apcprd04.prod.outlook.com (10.165.58.153) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Thu, 19 Oct 2017 06:38:04 +0000
Received: from HK2PR04MB0995.apcprd04.prod.outlook.com
	([fe80::7da9:d478:cd68:f048]) by
	HK2PR04MB0995.apcprd04.prod.outlook.com
	([fe80::7da9:d478:cd68:f048%13]) with mapi id 15.20.0077.023;
	Thu, 19 Oct 2017 06:38:03 +0000
From: Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Lib /modules not listed 
Thread-Index: AQHTSKTQ4/fG80FiSEm2qpw5Sizzgg==
Date: Thu, 19 Oct 2017 06:38:03 +0000
Message-ID: <HK2PR04MB0995ED6B87A86B870E56094CE6420@HK2PR04MB0995.apcprd04.prod.outlook.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=umamahesh.y@hcl.com; 
x-originating-ip: [13.90.30.238]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HK2PR04MB0995;
	6:vvBgy6N5Wuctet5db3awDu5z3srCYY/cqdq4a8y136H255BER+bbG+/LYMO325klRvr/EeJLVTUsYHUT0pAs1TmpYhxMxMEg30K8HcgItJq8p+elj3zcmkRoffwW9dopu3VbVnTDquLfl57EX1n4/nD5yd2x7cYt66IgaD1Qiu2pfhw0xX618pjZuGZ7lzZFbqp16u1rTk9FpsPMxVn5TZnVP1FxhIe6J+o7TLMsr8L9yI0iJYvY8OIqgguNFn3Hp5Rr5xlsOYiv8KqPtJUkRqHP3QbXyIxfvxXJdIdw1Bglmdho64AhgiRdzHUUliFoYiF4aMJtneT8p0z6UD6gFA==;
	5:4+DAhWHHMe13Rj7gOZDSKmjT2htO24VsRJH88BFdFLIBkaN//wd9zPWbHJZfgybq8rc6nkacxP2kw/efkFSXDy2BRUphOQHYN0oMlMIEmFOcf/oFHw1NImxooCVu32B1CjDtv+Ba6v1gl3sVVmnZqA==;
	24:dYlwEHB6CfEJlSv4gdKuCRNyoJSTe3gOg5t45LA7M9si4k8WQSBnAuVJKnyEGKjLKfdSWzwQr3nwotHgP9rntomSnwEHJHi+rF1KABk7FZw=;
	7:qlWXw2EBD06ZtNLi/fOtmJDuIZ9m4yv0m08CmyjvgsLDmVeHf6xV/LcPgGwvPi9+qoCSF0kNRevxFPzrnPoVXqhX3x7W/imsSZnVkDtI4RtP9FgqyvdY7lWY3SJAJjIEBt93rg1fdvBJ5rieGum+Bc3/Vr+cbyV4LgbIf2Wxe7BMV1KfiAq+/sEl4Ft3+DRgBABShbjqufLw2CS0zoAkhNqhoZbh0sGxmhmxfnKYB9I=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: bc689062-e7c0-4eea-ff89-08d516bbf33b
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:HK2PR04MB0995; 
x-ms-traffictypediagnostic: HK2PR04MB0995:
x-exchange-antispam-report-test: UriScan:;
x-microsoft-antispam-prvs: <HK2PR04MB0995953ED8F95D14DB10E916E6420@HK2PR04MB0995.apcprd04.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(10201501046)(100000703101)(100105400095)(93006095)(93001095)(3002001)(6041248)(20161123560025)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123555025)(20161123562025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HK2PR04MB0995; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HK2PR04MB0995; 
x-forefront-prvs: 0465429B7F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(376002)(346002)(199003)(189002)(66066001)(53936002)(5250100002)(3846002)(102836003)(6116002)(101416001)(50986999)(54356999)(2501003)(2900100001)(14454004)(68736007)(4743002)(86362001)(189998001)(105586002)(7696004)(9686003)(6436002)(97736004)(8936002)(5640700003)(1730700003)(81166006)(81156014)(5660300001)(99286003)(25786009)(316002)(2906002)(6506006)(558084003)(8676002)(106356001)(478600001)(6916009)(55016002)(2351001)(54896002)(7736002)(3660700001)(3280700002)(33656002)(305945005)(74316002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HK2PR04MB0995;
	H:HK2PR04MB0995.apcprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: hcl.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2017 06:38:03.5940 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 189de737-c93a-4f5a-8b68-6f4ca9941912
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR04MB0995
X-OriginatorOrg: HCL.COM
Subject: Lib /modules not listed
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
X-List-Received-Date: Thu, 19 Oct 2017 06:38:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK2PR04MB0995ED6B87A86B870E56094CE6420HK2PR04MB0995apcp_"

--_000_HK2PR04MB0995ED6B87A86B870E56094CE6420HK2PR04MB0995apcp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hi
At the target lib/modules is not listing and lsmod is not tainted.
Any suggestions.

Thanks
UmaMahesh



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

--_000_HK2PR04MB0995ED6B87A86B870E56094CE6420HK2PR04MB0995apcp_
Content-Type: text/html; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
</head>
<body>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Hi <br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
At the target lib/modules is not listing and lsmod is not tainted. <br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Any suggestions. <br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Thanks<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
UmaMahesh </div>
<br>
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

--_000_HK2PR04MB0995ED6B87A86B870E56094CE6420HK2PR04MB0995apcp_--
