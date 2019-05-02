Return-Path: <Dan.Searles@garmin.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B6EFE00D33; Thu,  2 May 2019 10:15:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.75.91 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 15444 seconds by postgrey-1.32 at yocto-www;
	Thu, 02 May 2019 10:15:38 PDT
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-eopbgr750091.outbound.protection.outlook.com [40.107.75.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB897E00C1E
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 10:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garmin.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=IHjBZcWo7Jf56xaIAnU0smj6wAq5F97RsUALLe+4M58=;
	b=elZSPcqhYfslgJa07Rb9B85UcEgtWeSJPO9K4aNEsvqnqVf1W7t6TFFBwqk/P3Y5tTiIB/c+pjERMny93MuXhcyYfZnnxdFaIYYeUm2+AF1rGiXBZ2JsGYMa1VvVFrBu+OXtHG1hGB0CJwP6lS0BdbUdXNfeCcna4vgrENBTILE=
Received: from BYAPR04CA0015.namprd04.prod.outlook.com (2603:10b6:a03:40::28)
	by BN8PR04MB5971.namprd04.prod.outlook.com (2603:10b6:408:4d::19)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1856.10;
	Thu, 2 May 2019 12:43:12 +0000
Received: from BY2FFO11FD001.protection.gbl (2a01:111:f400:7c0c::138) by
	BYAPR04CA0015.outlook.office365.com (2603:10b6:a03:40::28) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1856.10 via Frontend Transport; Thu, 2 May 2019 12:43:12 +0000
Authentication-Results: spf=pass (sender IP is 204.77.163.247)
	smtp.mailfrom=garmin.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=pass action=none
	header.from=garmin.com;
Received-SPF: Pass (protection.outlook.com: domain of garmin.com designates
	204.77.163.247 as permitted sender) receiver=protection.outlook.com;
	client-ip=204.77.163.247; helo=edgetransport.garmin.com;
Received: from edgetransport.garmin.com (204.77.163.247) by
	BY2FFO11FD001.mail.protection.outlook.com (10.1.14.123) with Microsoft
	SMTP
	Server (version=TLS1_0, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id
	15.20.1835.14 via Frontend Transport; Thu, 2 May 2019 12:43:12 +0000
Received: from OLAWPA-EXMB7.ad.garmin.com (10.5.144.21) by
	edgetransport.garmin.com (192.168.18.223) with Microsoft SMTP Server
	(TLS) id 14.3.439.0; Thu, 2 May 2019 07:43:28 -0500
Received: from OLAWPA-EXMB8.ad.garmin.com (10.5.144.18) by
	OLAWPA-EXMB7.ad.garmin.com (10.5.144.21) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1591.10; Thu, 2 May 2019 07:43:04 -0500
Received: from OLAWPA-EXMB8.ad.garmin.com ([fe80::acc8:480a:b46f:6ce3]) by
	OLAWPA-EXMB8.ad.garmin.com ([fe80::acc8:480a:b46f:6ce3%23]) with mapi
	id 15.01.1591.012; Thu, 2 May 2019 07:43:04 -0500
From: "Searles, Dan" <Dan.Searles@garmin.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: mailman not found
Thread-Index: AdUA5GVyyDAbgobpTRiv/VK8G49yPg==
Date: Thu, 2 May 2019 12:43:03 +0000
Message-ID: <5122f19558d1476b894fb666ddf6e615@garmin.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.50.4.6]
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.5.1010-24586.007
X-TM-AS-Result: No-18.236200-8.000000-10
X-TMASE-MatchedRID: FDBCde8VjbPJzlixzGB5rJmug812qIbzgHzgwy8qV5oM82iMq1bjvOoG
	0ef98F1nYw0DUqcEK7FJpV9rHFX3jwK3yA1Y0A1+wbRQ2Bpmlioay+BQxgCfhZb7No0srrTk7KB
	BZ2QBUyzQ23n+P5pIMRQjizXtCXfTWYqLLUX2mAtB6yOrxc8xu3cF/0kiqyh4RtqpRW8sWyJ4ou
	ZEjkeLRhjoZ88Td/8UrydNrTD0EYAOVaHFOAhc6tsfxZpQv2qMtPGelsKOu4ijnkp/HAlLXORqQ
	AxbWD9+4vM1YF6AJbY96sxygIbFGNAtbEEX0MxBOlxBO2IcOBZigUxIj2pJuY1d10Dqopw1NtSk
	sxDMjLJwYmAP/h6tukxRtg28GyWz
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--18.236200-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.5.1010-24586.007
x-tm-snts-smtp: 3EFB32154AAA7CD312046031512EFE363035C225DF37ADB3FAA374CA326EBD742
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:204.77.163.247; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(39860400002)(376002)(396003)(346002)(136003)(2980300002)(199004)(189003)(86362001)(102836004)(16586007)(26005)(84326002)(1730700003)(24736004)(8676002)(36756003)(8936002)(246002)(108616005)(106002)(316002)(7696005)(126002)(3480700005)(426003)(2351001)(476003)(2616005)(71190400001)(336012)(564344004)(356004)(486006)(4300700001)(5660300002)(70586007)(70206006)(72206003)(478600001)(6116002)(3846002)(790700001)(7116003)(4546004)(7736002)(7636002)(30436002)(2501003)(54896002)(6306002)(186003)(2906002)(5000100001)(14454004)(5640700003)(6916009);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR04MB5971;
	H:edgetransport.garmin.com; FPR:; SPF:Pass; LANG:en;
	PTR:extedge.garmin.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3f5a1b87-62ee-43f1-1b1c-08d6cefbbd0f
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
	SRVR:BN8PR04MB5971; 
X-MS-TrafficTypeDiagnostic: BN8PR04MB5971:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <BN8PR04MB59717879CA46B0B9F0E080F391340@BN8PR04MB5971.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 0025434D2D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: zclgkYMhlnx8M3lPkS8OdffLlrCPH/Fyadoj5Dq214M1nsRFLsmQx9nLg+VYjkLCtHCfEkjhFhwLCP+QsrSzwlCQtM1pSodNwxJRiNxYTktz8+VlE5PDSLTk/sQRBQFuU58Sp0fYNK6CvM1eNeywq6t7KETLfzKGfzxPUvfX89ibQG0paXha4Xur0GcBU8wjW9e1jx25KbhZtIlHqltRQnwk2FkwOqfENVkvqX89GsLu9rY4X4nJxUTMegJesQ4dUkipW4JD4AAAFtqa/pcyPduX+3PGG6Ulp2wrsYPSYTLZQBKSyoV1us6CQylLokLIK8QcH16iStgaXsqBfpIJglxDx516bfWcVqMbnslquq5LvmyXrfm3nXs026B3Hp+kYkDszZF3rM81FZ9J4GhRhte71HCy6fP9HiQ9RXAR71A=
X-OriginatorOrg: garmin.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2019 12:43:12.0449 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f5a1b87-62ee-43f1-1b1c-08d6cefbbd0f
X-MS-Exchange-CrossTenant-Id: 38d0d425-ba52-4c0a-a03e-2a65c8e82e2d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=38d0d425-ba52-4c0a-a03e-2a65c8e82e2d;
	Ip=[204.77.163.247]; Helo=[edgetransport.garmin.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR04MB5971
Subject: mailman not found
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
X-List-Received-Date: Thu, 02 May 2019 17:15:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5122f19558d1476b894fb666ddf6e615garmincom_"

--_000_5122f19558d1476b894fb666ddf6e615garmincom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I got this response to my recent email:

Your message to mailman@yoctoproject.org couldn't be delivered.
mailman wasn't found at yoctoproject.org.


--_000_5122f19558d1476b894fb666ddf6e615garmincom_
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
	{mso-style-type:export-only;}
.MsoPapDefault
	{mso-style-type:export-only;
	margin-left:.25in;
	text-indent:-.25in;}
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
<p class=3D"MsoNormal">I got this response to my recent email:<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Your message to mailman@yoctoproject.org couldn't be=
 delivered.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">mailman wasn't found at yoctoproject.org.<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_5122f19558d1476b894fb666ddf6e615garmincom_--
