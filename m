Return-Path: <Richard.Schmitt@commscope.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D020EE00B62; Fri,  4 Nov 2016 13:24:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.42.87 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1986 seconds by postgrey-1.32 at yocto-www;
	Fri, 04 Nov 2016 13:24:26 PDT
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0087.outbound.protection.outlook.com [104.47.42.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29773E007C2
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2016 13:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=commscope.onmicrosoft.com; s=selector1-commscope-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=mtJobVsi0EzIhUBvD/z8e3Qctbq9TUQQsZGy/sds+8o=;
	b=gRTILImu3Rw44kX2Jk2GJn6mz9ha6Wg3bEGLUX9jO0Nzc++h4WF1OYg2nGbYlLXYoEmcW9OqJ1nOj/Uqz0dhFxdaZPjKfe4kMymBVUzGam2HfIfpAuMh/UKhTqwew8tFffifIRcTxsixsS7b4T5+M/awmGwaVZHVDrKkfl8n4yU=
Received: from BLUPR0601MB1649.namprd06.prod.outlook.com (10.163.212.143) by
	BLUPR0601MB1652.namprd06.prod.outlook.com (10.163.212.146) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.693.12;
	Fri, 4 Nov 2016 19:51:15 +0000
Received: from BLUPR0601MB1649.namprd06.prod.outlook.com ([10.163.212.143]) by
	BLUPR0601MB1649.namprd06.prod.outlook.com ([10.163.212.143]) with
	mapi id 15.01.0693.016; Fri, 4 Nov 2016 19:51:15 +0000
From: "Schmitt, Richard" <Richard.Schmitt@commscope.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Can I have a layer that just contains binary RPMs to install
	into target root filesystem
Thread-Index: AdI21LY55e2X57mPRsCV6dU5IjQo/A==
Date: Fri, 4 Nov 2016 19:51:15 +0000
Message-ID: <BLUPR0601MB1649FFD8FBDFDB1EE2A09EA8E6A20@BLUPR0601MB1649.namprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Richard.Schmitt@commscope.com; 
x-originating-ip: [131.239.32.100]
x-ms-office365-filtering-correlation-id: 24479436-1317-43f5-5d37-08d404ebeffe
x-microsoft-exchange-diagnostics: 1; BLUPR0601MB1652;
	7:wwY++KqcqR2nBMkXqyQkeTccI+rC8sRxf8Sh5dXMFhcCETGNkOn8l0nbK99uI/SYLefV+2AM0GW+wB0X1kFjbqI5MXHhHtZ4zKRIKVjpcrGHqU6Cg6tfCvxYz8zptDA2ttKlTcbZHATQynbyCvn8T5DrH47qorA+APBrnj8QjasSkb9JYvJksTzjeDXxANpxb+DOMMgs3MtMQzFXvVneT2pdblht/iWKGnqKsHPE/5/wsZr6QHNHvrrDTPrjsxtfBDb5kHFy2CUOYiEuhUbe6p1oCAmLbWm34TvXu84PvHfDMwIuReywRXn3SQSMdRLLjVW/y5p+Z/14nB+fduUmPAFwpCJIEPqgRbUykV3sGB0=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR0601MB1652;
x-microsoft-antispam-prvs: <BLUPR0601MB165202B12E4BA2FA8FFEAD13E6A20@BLUPR0601MB1652.namprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001);
	SRVR:BLUPR0601MB1652; BCL:0; PCL:0; RULEID:;
	SRVR:BLUPR0601MB1652; 
x-forefront-prvs: 01165471DB
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(189002)(74316002)(6916009)(5660300001)(7736002)(110136003)(7846002)(101416001)(8936002)(19625215002)(33656002)(77096005)(2900100001)(92566002)(87936001)(76576001)(97736004)(450100001)(5002640100001)(81166006)(1730700003)(81156014)(107886002)(189998001)(10400500002)(8676002)(122556002)(15975445007)(106356001)(11100500001)(68736007)(9686002)(558084003)(7696004)(3280700002)(66066001)(86362001)(3660700001)(19580395003)(5640700001)(5630700001)(16236675004)(102836003)(3846002)(2501003)(586003)(790700001)(99286002)(50986999)(2906002)(105586002)(229853001)(19300405004)(6116002)(2351001)(54356999);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR0601MB1652;
	H:BLUPR0601MB1649.namprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: commscope.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: commscope.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2016 19:51:15.4491 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31472f81-8fe4-49ec-8bc3-fa1c295640d7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0601MB1652
Subject: Can I have a layer that just contains binary RPMs to install into target root filesystem
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
X-List-Received-Date: Fri, 04 Nov 2016 20:24:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR0601MB1649FFD8FBDFDB1EE2A09EA8E6A20BLUPR0601MB1649_"

--_000_BLUPR0601MB1649FFD8FBDFDB1EE2A09EA8E6A20BLUPR0601MB1649_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

That's the question.

Is there a good example layer somewhere that does this.

Thanks,
Rich

--_000_BLUPR0601MB1649FFD8FBDFDB1EE2A09EA8E6A20BLUPR0601MB1649_
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
<p class=3D"MsoNormal">That&#8217;s the question.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a good example layer somewhere that does th=
is.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Rich<o:p></o:p></p>
</div>
</body>
</html>

--_000_BLUPR0601MB1649FFD8FBDFDB1EE2A09EA8E6A20BLUPR0601MB1649_--
