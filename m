Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB2D1E00D8D; Tue, 19 Jul 2016 23:06:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.135 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3548 seconds by postgrey-1.32 at yocto-www;
	Tue, 19 Jul 2016 23:06:21 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0135.outbound.protection.outlook.com [104.47.36.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E897E00CB8
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2016 23:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pica8com.onmicrosoft.com; s=selector1-pica8-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=3KuCS/I1TS2GKoZXESg6qDxVe4hkKmvFVxsM3/cVr0k=;
	b=Rn5yxovNM0vX989ygnMFE2F9rW4VyDmSwJVr25phXztpSK596cpLzaIpHoUdyYTez+/0h//veZxmii50k/O6qWMD6rRNlRJ9JAG/zsEQY1MKR1ibdG4xgRQRfg+Z011xmyzmRtaRXOvMzz3ePeenofFGxYJ6Wl1epq3IarFhJJM=
Received: from BN3PR1201MB0963.namprd12.prod.outlook.com (10.165.76.133) by
	BN3PR1201MB0961.namprd12.prod.outlook.com (10.165.76.25) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.544.10; Wed, 20 Jul 2016 02:35:02 +0000
Received: from BN3PR1201MB0963.namprd12.prod.outlook.com ([10.165.76.133]) by
	BN3PR1201MB0963.namprd12.prod.outlook.com ([10.165.76.133]) with
	mapi id 15.01.0544.014; Wed, 20 Jul 2016 02:35:02 +0000
From: Richard Zhang <richard.zhang@pica8.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Build failure when try to make a qemuppc  image in Toaster 
Thread-Index: AdHiLgqkvtI6pwg/TJS989zSX43A7Q==
Date: Wed, 20 Jul 2016 02:35:02 +0000
Message-ID: <BN3PR1201MB0963E753EEADF34390D5C2B9A5080@BN3PR1201MB0963.namprd12.prod.outlook.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard.zhang@pica8.com; 
x-originating-ip: [124.193.174.202]
x-ms-office365-filtering-correlation-id: 7c496f4f-8217-4431-d127-08d3b04673db
x-microsoft-exchange-diagnostics: 1; BN3PR1201MB0961;
	6:/wgxsx2ewJeyxBII39iJjcIkk2v1DJ6Vk4XI/AVrTc6dCliAszaken9KmHd8GrW0ZEbd+/4GvF/dimWzIbfQIL9FO5Vv7ivBlsoCgzRf6RrmC0SRntqn4ikix+Pz+BEaY+yKDYvhLu8xj0d9wA25fYxfTwoA2xY9YBBzOmCInVKmVuDI4skg2+uW4rcCAM6JR3ygzTA08d7InlWbJ22HBu0eLOIVGjcTQGkk8X0wrE+CLwPV7BtGV7WWG212sJyMB/3/gnwkqOnv73/IhjuYB/ocqQXyPJ6n78NEzFqr9V6w0OUtOxn6ttHms16GEVb9;
	5:VrGq0O65NFrqBd7yzzdEXCI6Aa7X2tpYd9bFZlYLBD2psevMIgygH6OKFMpdCZs1+qjvhb9MQu0jeMdbJOApnSUmjL2emEfBchON/mMVcbxdW6qrkpsVAAAmiP9R9T7oj+g4B7u0qsi5byYaagORGA==;
	24:/omHr1pnFPHmeRlIkko/QDLHPtOsXSxW35G7lOsbl2iTCzX4Pc3r8Mo6RwbnLLIQstuD5ZDYawux3m4i5Vx1gGMjroZEjpXUCbh0YKgDcDs=;
	7:W+1gvLNGUojYrJGFTysQvu8meotbbIeaaY5jDLlULIvOhZ5wbW5xJ/OunKPIf10/dfvHRT4WYEFq8Lts4ktEj+OPF9umpsJozLvgJclp7B1mp/w1Q6Lw6owzg6QyGWxQJup4ufJKYZ0YR1DLW4OYYevKVPclC5RgEtRUXMJdbvpk3q93VM4RT5zsDFyttjNWyFibQxNFA0V/bjKgIBhgcgxD0fy9tFP/hGxfw/yA1tGsnqXjBoGd+Zz63LjG5/8x
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR1201MB0961;
x-microsoft-antispam-prvs: <BN3PR1201MB0961989909EB821109074D63A5080@BN3PR1201MB0961.namprd12.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040130)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6041072)(6043046);
	SRVR:BN3PR1201MB0961; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR1201MB0961; 
x-forefront-prvs: 000947967F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(189002)(53754006)(199003)(5002640100001)(3660700001)(106356001)(790700001)(102836003)(6116002)(19580395003)(3280700002)(8936002)(586003)(10400500002)(122556002)(9686002)(2351001)(2906002)(19300405004)(5640700001)(68736007)(11100500001)(2501003)(229853001)(2900100001)(450100001)(7696003)(7736002)(86362001)(16236675004)(7846002)(5003600100003)(92566002)(5630700001)(76576001)(33656002)(8676002)(19625215002)(54356999)(74316002)(3846002)(81166006)(81156014)(99286002)(189998001)(110136002)(1730700003)(97736004)(105586002)(66066001)(15975445007)(50986999)(107886002)(101416001)(77096005)(87936001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR1201MB0961;
	H:BN3PR1201MB0963.namprd12.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: pica8.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: pica8.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2016 02:35:02.4144 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1649697f-e494-4b71-8227-3f383d0979ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR1201MB0961
Subject: Build failure when try to make a qemuppc image in Toaster
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
X-List-Received-Date: Wed, 20 Jul 2016 06:06:27 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_BN3PR1201MB0963E753EEADF34390D5C2B9A5080BN3PR1201MB0963_"

--_000_BN3PR1201MB0963E753EEADF34390D5C2B9A5080BN3PR1201MB0963_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

HI all

The Poky is git  krogoth version.

I try to build a core-image-minimal with qemuppc MACHINE.

The progress stop quickly in this error:
Nothing PROVIDES 'syslinux'syslinux was skipped: incompatible with host pow=
erpc-poky-linux (not in COMPATIBLE_HOST)

Required build target 'core-image-minimal' has no buildable providers.
Missing or unbuildable dependency chain was: ['core-image-minimal', 'syslin=
ux']


Does syslinux a useful recipe or something should be built before?

Thanks.


--_000_BN3PR1201MB0963E753EEADF34390D5C2B9A5080BN3PR1201MB0963_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
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
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"#0563C1" vlink=3D"#954F72" style=3D"text-justi=
fy-trim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">HI all<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The Poky is git &nbsp;krogoth v=
ersion.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I try to build a core-image-min=
imal with qemuppc MACHINE.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The progress stop quickly in th=
is error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Nothing PROVIDES 'syslinux'sysl=
inux was skipped: incompatible with host powerpc-poky-linux (not in COMPATI=
BLE_HOST)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN">Required build target 'core-image-=
minimal' has no buildable providers.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN">Missing or unbuildable dependency =
chain was: ['core-image-minimal', 'syslinux']<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN">Does syslinux a useful recipe or s=
omething should be built before?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN">Thanks.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_BN3PR1201MB0963E753EEADF34390D5C2B9A5080BN3PR1201MB0963_--
