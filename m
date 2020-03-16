Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.63908.1584350184867837541
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2020 02:16:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ncr.com header.s=pod1119 header.b=OwGXpoDQ;
 spf=permerror, err=syntax error for token:  (domain: ncr.com, ip: 140.211.169.56, mailfrom: prvs=434498515c=raxeshkumar.oriya@ncr.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BAE0E01861; Mon, 16 Mar 2020 02:16:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RCVD_IN_SORBS_WEB
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [148.163.152.55 listed in list.dnswl.org]
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [165.225.104.70 listed in dnsbl.sorbs.net]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 8849 seconds by postgrey-1.32 at yocto-www; Mon, 16 Mar 2020 02:16:21 PDT
Received: from mx0b-00209e01.pphosted.com (mx0b-00209e01.pphosted.com [148.163.152.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9333AE0185D;
	Mon, 16 Mar 2020 02:16:21 -0700 (PDT)
Received: from pps.filterd (m0094032.ppops.net [127.0.0.1])
	by mx0b-00209e01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 02G6jBPT002589;
	Mon, 16 Mar 2020 02:48:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com; h=from : to : cc : subject
 : date : message-id : content-type : mime-version; s=pod1119;
 bh=EMrjJaxrSBmwaPpKGyYxYtH0r1PeqpX9GdUM61VJUkw=;
 b=OwGXpoDQvqivZIlu1UxAGdj6v2rUM0Wd3GB6CfJdk6gP7x1cKEjoTVnj+R7Ca8e9eC+x
 i/Rr3NnXOOW8AWdFn/8kyF1YDrA34+QJ3SCeEfl95LYtSRDAgAEkTEcqS8nKM7TOprzg
 9ZwcEIVY/EE0Mx8r8raZLVlz0mgQPL/91+PUvFPePAfaOAQprpyzQW8ak0eS3AX1giy5
 zTUFYwqIJOeh4+SrkNg2pTWbZ30anpJ/x8no/cL1i01MbRApcwuy/ttPN1rL7l9Jm2Wk
 tPE1JOxcCKJ+J70e6giLJlzX9NvXbcpbZ0yw5w7rNAKMn7DszERf6KCD0FmuBy/kMW5v Jw== 
Received: from nam02-cy1-obe.outbound.protection.outlook.com (mail-cys01nam02lp2051.outbound.protection.outlook.com [104.47.37.51])
	by mx0b-00209e01.pphosted.com with ESMTP id 2yt3r4088x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 16 Mar 2020 02:48:49 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kSOuVCTXPKMrF6b92VKVSRgNPK99yupkO8+5rtZsx6ruLoFk+X7AWuzwqwAQN54XFz3RkhEwhvFEbNB+wAiIcHpw71nqsWs3veeQlZ8k/o2MHlEbLGOFGe1XgrgkiIN83HHDfR0g66Buy8XJcKxjCSk+1Ow1nfJPUn96cfTZ7TTpGJ45pWnoQd+FxjT0E1wXgHIJTy6i7nhShagw+/8YPN3Am+uEZ4/8i7oG1fpFfIkj787s2gS3KqXP/BxFeHl07eUqVIhQbR6kDydAA/WA7C9Z6q+O9V0l/evJWkYHui828tXCHCdymlMZARrjVVeUGvSYS9oRXYoh7Q20GlmPzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EMrjJaxrSBmwaPpKGyYxYtH0r1PeqpX9GdUM61VJUkw=;
 b=gZ/BR+cfMMmzOL6IbvFwkSd5PfVQzQg3Lqyr6DaPvY8mgcwz/BF3h2vcfwXQe/iI9qsbYKgrtNs/HdVE5i1/32eM3cnKdjY6JUAG7x5p4cxOQADGa/7pOT03wFJVJVw4hsC0jOctQDjfsS+3gBru/Sx1JYtud2FupSk+EcvZ6bZjT8WqVa2sWhF3lZFLKHNY4RyFOAV+x8r9ZIuHLJGKX5czcFfWqsIp8BiG/GLtAfSzrb8W8r6DPLt02d30KQplclNnq3W73Wax59IqmfaB/NKo5OW/tVRXoe8j3QRqwuWZGQC1lSXXLw/3+EoQif6+ko0J+VtMLTxAJBaaA7l3ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ncr.com; dmarc=pass action=none header.from=ncr.com; dkim=pass
 header.d=ncr.com; arc=none
Received: from BN6PR15MB1876.namprd15.prod.outlook.com (2603:10b6:405:4f::8)
 by BN6PR15MB1346.namprd15.prod.outlook.com (2603:10b6:404:c2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14; Mon, 16 Mar
 2020 06:48:47 +0000
Received: from BN6PR15MB1876.namprd15.prod.outlook.com
 ([fe80::8023:6a47:ebf1:88f]) by BN6PR15MB1876.namprd15.prod.outlook.com
 ([fe80::8023:6a47:ebf1:88f%4]) with mapi id 15.20.2814.021; Mon, 16 Mar 2020
 06:48:47 +0000
From: "raxeshkumar.oriya@ncr.com" <raxeshkumar.oriya@ncr.com>
To: "meta-intel@yoctoproject.org" <meta-intel@yoctoproject.org>,
        "yocto@yoctoproject.org" <yocto@yoctoproject.org>
CC: "C M, Kiran Reddy" <kiran.reddy@ncr.com>,
        "Mohammad, Jamal M"
	<MohammadJamal.Mohiuddin@ncr.com>,
        "Crooks, John" <John.Crooks@ncr.com>
Subject: systemd: Freezing execution in intel ATOM processor
Thread-Topic: systemd: Freezing execution in intel ATOM processor 
Thread-Index: AdX7W6oSO0MRBhplRWeQYfRjH5F2jA==
Date: Mon, 16 Mar 2020 06:48:46 +0000
Message-ID: 
 <BN6PR15MB18769E3F2CE2DB8433FAA835FDF90@BN6PR15MB1876.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Enabled=True;
 MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SiteId=ae4df1f7-611e-444f-897e-f964e1205171;
 MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Owner=ro185046@ncr.com;
 MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SetDate=2020-03-16T06:48:38.7471318Z;
 MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Name=Confidential;
 MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_ActionId=cbb1abec-d5f2-4231-88eb-50821d80de4d;
 MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Extended_MSFT_Method=Manual
dlp-product: dlpe-windows
dlp-version: 11.3.0.17
dlp-reaction: no-action
x-originating-ip: [165.225.104.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ea2a608a-187d-408c-7c8c-08d7c97613c8
x-ms-traffictypediagnostic: BN6PR15MB1346:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <BN6PR15MB134666F10A069A0949A0A66EFDF90@BN6PR15MB1346.namprd15.prod.outlook.com>
x-from-ncr-tenant: Processed
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(366004)(396003)(39860400002)(376002)(136003)(346002)(199004)(7696005)(478600001)(4326008)(8936002)(8676002)(21615005)(26005)(861006)(66556008)(64756008)(2906002)(66446008)(86362001)(5660300002)(66576008)(76116006)(55236004)(9686003)(71200400001)(52536014)(66946007)(6506007)(33656002)(110136005)(450100002)(316002)(4743002)(66476007)(81156014)(966005)(55016002)(81166006)(54906003)(186003);DIR:OUT;SFP:1101;SCL:1;SRVR:BN6PR15MB1346;H:BN6PR15MB1876.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
received-spf: None (protection.outlook.com: ncr.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 UVB3APwZ7iKqJSz1cNIEPDV2Gjb1K0P/cteWNQLb6JMer1SF+jG+GoyWN00MVjxhJ9KgXzeeLZWGqQAIqJwZQq8sH7R9SC5XR8Zhwy60SyP7RM+iGjoHHFAqMsd7wnvtbuH1iT14/pQEPdTAn3FlA33LHv7/11gr6WP/7dm/3PRvKKLO5dnwYxUo0YbfH1g4PbymOnyRIxletOTaF2hVgEraXsov8QeenunxLf5pBDoTQ+BD8U5B9HQWFudQQwJy4oSJ3ul/Mc3/TqoA3nG2fHf7rsOljSih871D7j569x2/K97rRRiiM2TdDW6DqDR/nFBXyEaSg5glkBZWWckdB9Zyb+a+cFotXuxyH6R41/QWMr/V1xgOmugg5rTP/vqnAxTVEp4K5MvH9TNgE99+BC+8Vq77NepLYPAHCw70qi1q4iKCtG1q13lGeEN3GvojeDO+GE9FYZOTlq+GKbp7WKQ7h4B8hcRurJ6I1chXBvSGWAeuJiNY4P6FMPDxUVjR0uJJqyfBeeoClfKuvZckEA==
x-ms-exchange-antispam-messagedata: 
 lbma/+P2CAUPLMoclytU2Yws+d5+EWhtAZ3FCx+2JSwpecUWwU+UcjAXb/eShpQJk5wnJTJToj+8z41uiEM0mB+jUUpgY8z8KCKPO9s2F3uz45vC8LZK+1eTPKimOUEPJH58zoNGeH13KL4/+gPbGg==
MIME-Version: 1.0
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea2a608a-187d-408c-7c8c-08d7c97613c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 06:48:46.9445
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jk0Bj3s4UOKupkDHI1K1MfRASSyNWpBAmUYQvJA5YnCqyDYb7nFcsSFtNPojIzwi5/MrBLCLyEUq51wO93/fHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR15MB1346
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-03-16_01:2020-03-12,2020-03-16 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 adultscore=0 phishscore=0 clxscore=1011 priorityscore=1501 impostorscore=0
 bulkscore=0 malwarescore=0 spamscore=0 mlxlogscore=999 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003160033
X-Groupsio-MsgNum: 48766
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_007_BN6PR15MB18769E3F2CE2DB8433FAA835FDF90BN6PR15MB1876namp_";
	type="multipart/alternative"

--_007_BN6PR15MB18769E3F2CE2DB8433FAA835FDF90BN6PR15MB1876namp_
Content-Type: multipart/alternative;
	boundary="_000_BN6PR15MB18769E3F2CE2DB8433FAA835FDF90BN6PR15MB1876namp_"

--_000_BN6PR15MB18769E3F2CE2DB8433FAA835FDF90BN6PR15MB1876namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We have a legacy device with following configurations:

Chipset Architecture : Intel NM10 express
OS : Yocto warrior
CPU : Atom D2250 Dual Core
Volatile Memory : 2GB DDR3
CPU core : 4



I have generated 64-bit core-image-sato and run on my device but *systemd* =
freezes execution with SIGILL (as shown below). I have set MACHINE to "inte=
l-corei7-64".
[cid:image006.png@01D5FB8D.05B73170]
systemd[1]: Set hostname to <panther1>.
traps: systemd[1] trap invalid opcode ip:7f257b9b8bd7 sp:7ffe7bc63090 error=
:0 in libsystemd-shared-241.so[7f257b8b4000+12f000]
systemd[1]: Caught <ILL>, core dump failed (child 77, code=3Dkilled, status=
=3D4/ILL).
systemd[1]: Freezing execution.



  PLEASE NOTE, THE ISSUE IS NOT OBSERVED WITH 32-BIT IMAGE(where MACHINE is=
 set to "intel-core2-32").

From @Peter Cordes,
... Obviously the assembly instruction that faulted would be more relevant =
than the source code. If your GCC compiled with anything that -march=3Dnati=
ve doesn't include, your binaries can include instructions that your CPU do=
esn't support. https://ark.intel.com/content/www/us/en/ark/products/65470/i=
ntel-atom-processor-d2550-1m-cache-1-86-ghz.html says your CPU only support=
s up to SSSE3, and thus not popcnt or SSE4.1 which GCC certainly can use wh=
en optimizing / auto-vectorizing pure C code. (SSE4.2 doesn't tend to get u=
sed automatically, unless you count popcnt as part of that.) So that easily=
 accounts for GCC emitting code that will SIGILL on your machine. BTW, if y=
ou're cross-compiling, you need -march=3Datom not native...

I tried with "-march=3Datom" but build fails with "unable to find CPU model=
 'atom'". I also tried other ways(like changing DEFAULTTUNE, passing -msse3=
 parameter etc) but got compilation issues and nothing worked out.

My queries:

  *   Is intel-corei7-64 machine expected to run on intel Atom based proces=
sor?
  *   Is there any specific BSP provided by Intel for Atom based processor =
which can be used to generate 64-bits sato image?
  *   Any suggestion on how 64-bit sato image can be run smoothly on Atom p=
rocessor?



--_000_BN6PR15MB18769E3F2CE2DB8433FAA835FDF90BN6PR15MB1876namp_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
code
	{mso-style-priority:99;
	font-family:"Courier New";}
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
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1676372318;
	mso-list-type:hybrid;
	mso-list-template-ids:-221585554 67698689 67698691 67698693 67698689 67698=
691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1029" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">We have a legacy device with following configuration=
s:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Chipset Architecture : Intel NM10 express<o:p></o:p>=
</p>
<p class=3D"MsoNormal">OS : Yocto warrior<o:p></o:p></p>
<p class=3D"MsoNormal">CPU : Atom D2250 Dual Core<o:p></o:p></p>
<p class=3D"MsoNormal">Volatile Memory : 2GB DDR3<o:p></o:p></p>
<p class=3D"MsoNormal">CPU core : 4<o:p></o:p></p>
<p class=3D"MsoNormal"><!--[if gte vml 1]><v:shapetype id=3D"_x0000_t75" co=
ordsize=3D"21600,21600" o:spt=3D"75" o:preferrelative=3D"t" path=3D"m@4@5l@=
4@11@9@11@9@5xe" filled=3D"f" stroked=3D"f">
<v:stroke joinstyle=3D"miter" />
<v:formulas>
<v:f eqn=3D"if lineDrawn pixelLineWidth 0" />
<v:f eqn=3D"sum @0 1 0" />
<v:f eqn=3D"sum 0 0 @1" />
<v:f eqn=3D"prod @2 1 2" />
<v:f eqn=3D"prod @3 21600 pixelWidth" />
<v:f eqn=3D"prod @3 21600 pixelHeight" />
<v:f eqn=3D"sum @0 0 1" />
<v:f eqn=3D"prod @6 1 2" />
<v:f eqn=3D"prod @7 21600 pixelWidth" />
<v:f eqn=3D"sum @8 21600 0" />
<v:f eqn=3D"prod @7 21600 pixelHeight" />
<v:f eqn=3D"sum @10 21600 0" />
</v:formulas>
<v:path o:extrusionok=3D"f" gradientshapeok=3D"t" o:connecttype=3D"rect" />
<o:lock v:ext=3D"edit" aspectratio=3D"t" />
</v:shapetype><v:shape id=3D"Straight_x0020_Connector_x0020_2" o:spid=3D"_x=
0000_s1028" type=3D"#_x0000_t75" style=3D'position:absolute;margin-left:.6p=
t;margin-top:3.8pt;width:216.75pt;height:.75pt;z-index:251660288;visibility=
:visible;mso-width-percent:0;mso-height-percent:0;mso-wrap-distance-left:9p=
t;mso-wrap-distance-top:0;mso-wrap-distance-right:9pt;mso-wrap-distance-bot=
tom:0;mso-position-horizontal:absolute;mso-position-horizontal-relative:tex=
t;mso-position-vertical:absolute;mso-position-vertical-relative:text;mso-wi=
dth-percent:0;mso-height-percent:0;mso-width-relative:margin;mso-height-rel=
ative:margin'>
<v:imagedata src=3D"cid:image001.png@01D5FB8D.05B73170" o:title=3D"" />
<o:lock v:ext=3D"edit" aspectratio=3D"f" />
</v:shape><![endif]--><![if !vml]><span style=3D"mso-ignore:vglayout">
<table cellpadding=3D"0" cellspacing=3D"0" align=3D"left">
<tbody>
<tr>
<td width=3D"7" height=3D"42"></td>
</tr>
<tr>
<td></td>
<td><img width=3D"289" height=3D"1" style=3D"width:3.0083in;height:.0083in"=
 src=3D"cid:image001.png@01D5FB8D.05B73170" v:shapes=3D"Straight_x0020_Conn=
ector_x0020_2"></td>
</tr>
</tbody>
</table>
</span><![endif]><o:p>&nbsp;</o:p></p>
<br style=3D"mso-ignore:vglayout" clear=3D"ALL">
<p class=3D"MsoNormal">I have generated <b>64-bit core-image-sato</b> and r=
un on my device but *<b>systemd</b>*
<b>freezes execution</b> with SIGILL (as shown below). I have set MACHINE t=
o &#8220;intel-corei7-64&#8221;.<o:p></o:p></p>
<p class=3D"MsoNormal"><!--[if gte vml 1]><v:shape id=3D"_x0000_s1027" type=
=3D"#_x0000_t75" style=3D'position:absolute;margin-left:-5.4pt;margin-top:1=
1.4pt;width:611.25pt;height:62.25pt;z-index:-251657216;visibility:visible;m=
so-wrap-distance-left:9pt;mso-wrap-distance-top:0;mso-wrap-distance-right:9=
pt;mso-wrap-distance-bottom:0;mso-position-horizontal:absolute;mso-position=
-horizontal-relative:text;mso-position-vertical:absolute;mso-position-verti=
cal-relative:text'>
<v:imagedata src=3D"cid:image002.emz@01D5FB8D.05B73170" o:title=3D"" />
</v:shape><![endif]--><![if !vml]><span style=3D"mso-ignore:vglayout;positi=
on:absolute;z-index:-1895824384;margin-left:-3px;margin-top:70px;width:1019=
px;height:104px"><img width=3D"815" height=3D"83" style=3D"width:8.4916in;h=
eight:.8666in" src=3D"cid:image006.png@01D5FB8D.05B73170" v:shapes=3D"_x000=
0_s1027"></span><![endif]><o:p></o:p></p>
<p class=3D"MsoNormal">systemd[1]: Set hostname to &lt;panther1&gt;.<o:p></=
o:p></p>
<p class=3D"MsoNormal">traps: systemd[1] trap invalid opcode ip:7f257b9b8bd=
7 sp:7ffe7bc63090 error:0 in libsystemd-shared-241.so[7f257b8b4000&#43;12f0=
00]<o:p></o:p></p>
<p class=3D"MsoNormal">systemd[1]: Caught &lt;ILL&gt;, core dump failed (ch=
ild 77, code=3Dkilled, status=3D4/ILL).<o:p></o:p></p>
<p class=3D"MsoNormal">systemd[1]: Freezing execution.<o:p></o:p></p>
<p class=3D"MsoNormal"><!--[if gte vml 1]><v:shape id=3D"Straight_x0020_Con=
nector_x0020_3" o:spid=3D"_x0000_s1026" type=3D"#_x0000_t75" style=3D'posit=
ion:absolute;margin-left:-2.55pt;margin-top:11.05pt;width:2.25pt;height:21.=
75pt;z-index:251661312;visibility:visible;mso-width-percent:0;mso-height-pe=
rcent:0;mso-wrap-distance-left:9pt;mso-wrap-distance-top:0;mso-wrap-distanc=
e-right:9pt;mso-wrap-distance-bottom:0;mso-position-horizontal:absolute;mso=
-position-horizontal-relative:text;mso-position-vertical:absolute;mso-posit=
ion-vertical-relative:text;mso-width-percent:0;mso-height-percent:0;mso-wid=
th-relative:margin;mso-height-relative:margin'>
<v:imagedata src=3D"cid:image007.png@01D5FB8D.05B73170" o:title=3D"" />
<o:lock v:ext=3D"edit" aspectratio=3D"f" />
</v:shape><![endif]--><![if !vml]><span style=3D"mso-ignore:vglayout">
<table cellpadding=3D"0" cellspacing=3D"0" align=3D"left">
<tbody>
<tr>
<td width=3D"2" height=3D"97"></td>
</tr>
<tr>
<td></td>
<td><img width=3D"3" height=3D"29" style=3D"width:.0333in;height:.3in" src=
=3D"cid:image007.png@01D5FB8D.05B73170" v:shapes=3D"Straight_x0020_Connecto=
r_x0020_3"></td>
</tr>
</tbody>
</table>
</span><![endif]><o:p>&nbsp;</o:p></p>
<br style=3D"mso-ignore:vglayout" clear=3D"ALL">
<p class=3D"MsoNormal">&nbsp; PLEASE NOTE, THE ISSUE IS NOT OBSERVED WITH 3=
2-BIT IMAGE(where MACHINE is set to &#8220;intel-core2-32&#8221;).<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">From @Peter Cordes,<o:p></o:p></p>
<p class=3D"MsoNormal">&#8230; Obviously the assembly instruction that faul=
ted would be more relevant than the source code. If your GCC compiled with =
anything that -march=3Dnative doesn't include, your binaries can include in=
structions that your CPU doesn't support.
<a href=3D"https://ark.intel.com/content/www/us/en/ark/products/65470/intel=
-atom-processor-d2550-1m-cache-1-86-ghz.html">
https://ark.intel.com/content/www/us/en/ark/products/65470/intel-atom-proce=
ssor-d2550-1m-cache-1-86-ghz.html</a> says your CPU only supports up to SSS=
E3, and thus not popcnt or SSE4.1 which GCC certainly can use when optimizi=
ng / auto-vectorizing pure C code.
 (SSE4.2 doesn't tend to get used automatically, unless you count popcnt as=
 part of that.) So that easily accounts for GCC emitting code that will SIG=
ILL on your machine. BTW, if you're cross-compiling, you need -march=3Datom=
 not native&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I tried with &#8220;-march=3Datom&#8221; but build f=
ails with&nbsp;&#8220;unable to find CPU model 'atom'&#8221;. I also tried =
other ways(like changing DEFAULTTUNE, passing -msse3 parameter etc) but got=
 compilation issues and nothing worked out.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My queries:<o:p></o:p></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1">Is intel-corei7-64 machine expected to run on intel Atom based proces=
sor?<o:p></o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in=
;mso-list:l0 level1 lfo1">Is there any specific BSP provided by Intel for A=
tom based processor which can be used to generate 64-bits sato image?<o:p><=
/o:p></li><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:=
l0 level1 lfo1">Any suggestion on how 64-bit sato image can be run smoothly=
 on Atom processor?<o:p></o:p></li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN6PR15MB18769E3F2CE2DB8433FAA835FDF90BN6PR15MB1876namp_--

--_007_BN6PR15MB18769E3F2CE2DB8433FAA835FDF90BN6PR15MB1876namp_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=236;
	creation-date="Mon, 16 Mar 2020 06:48:41 GMT";
	modification-date="Mon, 16 Mar 2020 06:48:41 GMT"
Content-ID: <image001.png@01D5FB8D.05B73170>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAASEAAAABCAMAAAHRH9g9AAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAbUExURQAAAO+AMOt8MOx9MO1+Mu19Mu59Me19Me19MUcnaW0AAAAIdFJOUwAgQGCA
n7/fgBci2AAAAAlwSFlzAAAOwwAADsMBx2+oZAAAAEZJREFUKFOlzzEOACEIBdEBRf/9T7xosnG3
0MaG10wCUCUFlEUDX3Swyr9IPkViMxQqkWNHm/gB6wOkXBM3eF51gY1vXrAH84QFKJKFrLgAAAAA
SUVORK5CYII=

--_007_BN6PR15MB18769E3F2CE2DB8433FAA835FDF90BN6PR15MB1876namp_
Content-Type: application/octet-stream; name="image002.emz"
Content-Description: image002.emz
Content-Disposition: inline; filename="image002.emz"; size=804;
	creation-date="Mon, 16 Mar 2020 06:48:43 GMT";
	modification-date="Mon, 16 Mar 2020 06:48:43 GMT"
Content-ID: <image002.emz@01D5FB8D.05B73170>
Content-Transfer-Encoding: base64

H4sIAAAAAAACC62Wz0tUURTHz3sz5mgWU2QJifkbMxcuXBgVcyU0igKLjBZCJUJJLaRFtJygRYtA
l0EE7YLWrVpJf4H7/gA34a4WJU6f75t33jwnB0Q68H333PNrzj3n3PcmMrNnYKdWqwm7BbOn7J0W
rpndbjfrn701ZxZZV4fZJZSxG6RrFZvpotn9yOxbk26j0mabP2MjgE2AfkC4C1GIrBe+DOLyxndc
7WUK2S6CeSDbwVC0LnhRX+jI+GFiuHwyxEks0oCqlYHQnumKwTL+NFr59IBOUAZOHC/Z/6EOT+BH
gGyPE7AVr1zLJF8EynU8mA0jU3zloUcdDX4fG0xEiU3ClYIVFUO/r/pISFrlqWCRn3mfOFXMQOO3
RkL9TPW6mJ0LhawWw+j2i7XxvuMicRJKeZ2j0hms6mdjXGrqmdPm1x83Nj5Urg8gKIEloNiykY9A
XleSpYnXPHl9ZeQ8car3EEwCp98U4TGbNhfY6pGPFaEucF9GMouDJsk7zWEmc7VqxisH9XIdvAbq
ZSlE8RT8GPAevIEX/VrcnpWPyHWwtVKIC5dhJlN5kTVPqpP2Xi/xqptF0avu3AwftG4P8J8Gstcq
8tXiaM9817X1p9dJfs5T06TeE8h29T4AO9R7hb2fQ3VWvY26u99haj1GTJ+PwZTXTKkH78Bb0OI+
oRE17sp4+OfOJRZ5m1Fsykj9HKVQaHG/GvejiI9yFPlZ9S4YYF8CfaAHqIYUxDSbD1nvgFWEkm9z
JpaM1iWEiD141R7x/l3hrjxPalzXHPJZ0Nu7QUOf6Mr/oabIBwg6VNuTS2uPLaapkFYktRraOnDi
yy+SNmS9USDvUzN/Ep3Pm3qW9jW+Cy8cA+rhGXAWyH9hYW1m9MvajHSSS3YTaIbE53s+z76fmTzK
mo+fn+18Dq3yzMvzcTxPwiekb1c3yOcpxYlU5nlKJvJv2jx8P2jO03+3+Vs3h+0UGAMt7mMVFWh8
cwYQlMAS8Jorn2XQ/F/D94Uidwb9efvM06lxx9P4rth3zddaefeCMlDecch6ru+5nQKiMhD/F33r
NhMMCQAA

--_007_BN6PR15MB18769E3F2CE2DB8433FAA835FDF90BN6PR15MB1876namp_
Content-Type: image/png; name="image006.png"
Content-Description: image006.png
Content-Disposition: inline; filename="image006.png"; size=871;
	creation-date="Mon, 16 Mar 2020 06:48:44 GMT";
	modification-date="Mon, 16 Mar 2020 06:48:44 GMT"
Content-ID: <image006.png@01D5FB8D.05B73170>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAA/sAAABoCAYAAACuYuBKAAAAAXNSR0ICQMB9xQAAAAlwSFlzAAAS
dAAAEnQB3mYfeAAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAALnSURBVHja
7dchboQAFEXRkV0Aki2gsWwBi2InBMduKyomo9pMRZMugZtzkvfF38F9LMvyfRyHmZmZmZmZmd14
0zS91nXdz/N8PN4PAAAA4N62bfsS+wAAABAi9gEAACBG7AMAAECM2AcAAIAYsQ8AAAAxYh8AAABi
xD4AAADEiH0AAACIEfsAAAAQI/YBAAAgRuwDAABAjNgHAACAGLEPAAAAMWIfAAAAYsQ+AAAAxIh9
AAAAiBH7AAAAECP2AQAAIEbsAwAAQIzYBwAAgBixDwAAADFiHwAAAGLEPgAAAMSIfQAAAIgR+wAA
ABAj9gEAACBG7AMAAECM2AcAAIAYsQ8AAAAxYh8AAABixD4AAADEiH0AAACIEfsAAAAQI/YBAAAg
RuwDAABAjNgHAACAGLEPAAAAMWIfAAAAYsQ+AAAAxIh9AAAAiBH7AAAAECP2AQAAIEbsAwAAQIzY
BwAAgBixDwAAADFiHwAAAGLEPgAAAMSIfQAAAIgR+wAAABAj9gEAACBG7AMAAECM2AcAAIAYsQ8A
AAAxYh8AAABixD4AAADEiH0AAACIEfsAAAAQI/YBAAAgRuwDAABAjNgHAACAGLEPAAAAMWIfAAAA
YsQ+AAAAxIh9AAAAiBH7AAAAECP2AQAAIEbsAwAAQIzYBwAAgBixDwAAADFiHwAAAGLEPgAAAMSI
fQAAAIgR+wAAABAj9gEAACBG7AMAAECM2AcAAIAYsQ8AAAAxYh8AAABixD4AAADEiH0AAACIEfsA
AAAQI/YBAAAgRuwDAABAjNgHAACAGLEPAAAAMWIfAAAAYsQ+AAAAxIh9AAAAiBH7AAAAECP2AQAA
IEbsAwAAQIzYBwAAgBixDwAAADFiHwAAAGLEPgAAAMSIfQAAAIgR+wAAABAj9gEAACBG7AMAAEDM
v9gfx/E5z/OnmZmZmZmZmd13wzA8/2J/3/fFzMzMzMzMzO6/67o+fmP/fczMzMzMzMyssx+L5Z2g
taB1kAAAAABJRU5ErkJggg==

--_007_BN6PR15MB18769E3F2CE2DB8433FAA835FDF90BN6PR15MB1876namp_
Content-Type: image/png; name="image007.png"
Content-Description: image007.png
Content-Disposition: inline; filename="image007.png"; size=306;
	creation-date="Mon, 16 Mar 2020 06:48:45 GMT";
	modification-date="Mon, 16 Mar 2020 06:48:45 GMT"
Content-ID: <image007.png@01D5FB8D.05B73170>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAAMAAAAdCAMAAAEvLRbwAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAABFUExURQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANzq6vcAAAAWdFJOUwAQGCAwOEBQWGBweICHl5+nr7/H
z9/iOhaRAAAACXBIWXMAAA7DAAAOwwHHb6hkAAAAVElEQVQYV3XJQRaCQAwE0cKRSDAYDE7f/6jk
Ar5e1W+gCIxJ4l0wurwt+4E5KCMbAk+sGLNZfwdnPZgaXFopGac2Us6hN6Fg1wdX8tIXU/HUjyX2
GxjjBLphJm8BAAAAAElFTkSuQmCC

--_007_BN6PR15MB18769E3F2CE2DB8433FAA835FDF90BN6PR15MB1876namp_--
