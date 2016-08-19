Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23430E01028; Thu, 18 Aug 2016 18:50:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.111 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0111.outbound.protection.outlook.com [104.47.38.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6CAEE01021
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2016 18:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pica8com.onmicrosoft.com; s=selector1-pica8-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=88XodEWj9/yBHhfgmJ39gztN0EBkt9DxQOiypLbMUv4=;
	b=eYeUsOSZ1VXejBriYrT0sdDCkIoywCmfPzBk/NiwIHit2ar8HwHFN5rgaro+BRtc/UTm+JJNnypPffB+L0gkG3qHomMfCdswOeu3qLUYJ2kYmQld4oH0l/T2RhWjRpECviFa+7sj5X41WNPiUNk2r4WLGPiwqSU9xa03Fs2u33Y=
Received: from BN3PR1201MB0963.namprd12.prod.outlook.com (10.165.76.133) by
	BN3PR1201MB0961.namprd12.prod.outlook.com (10.165.76.25) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.549.15; Fri, 19 Aug 2016 01:50:41 +0000
Received: from BN3PR1201MB0963.namprd12.prod.outlook.com ([10.165.76.133]) by
	BN3PR1201MB0963.namprd12.prod.outlook.com ([10.165.76.133]) with
	mapi id 15.01.0557.022; Fri, 19 Aug 2016 01:50:41 +0000
From: Richard Zhang <richard.zhang@pica8.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to run a runqemu with  intel-corei7-64?
Thread-Index: AdH5u0XvFaIlF+RcS+KZlP0tFis4Ew==
Date: Fri, 19 Aug 2016 01:50:41 +0000
Message-ID: <BN3PR1201MB096367B23D96E0998DA7C22BA5160@BN3PR1201MB0963.namprd12.prod.outlook.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard.zhang@pica8.com; 
x-originating-ip: [124.193.174.202]
x-ms-office365-filtering-correlation-id: bea39348-7af1-4572-4d81-08d3c7d33a21
x-microsoft-exchange-diagnostics: 1; BN3PR1201MB0961;
	6:wOFLkkI6XE3dm3Muqb24DcrkJIFPdGzeXX/AuPPkCfAjGLv3+H2y7kbI0A4MMHbrda7PWe3zaSRUjzoXJDKDKBnD/9Tir7/CmQFao0T0DvsXyKY18Tcrby59QcP0SI32TJ90zja/U7boepU7mdnq2aSZwY5xPQlK2nynws0imNlTjYzq1DzH6Bg/9Pu8XhO4gEDCgPWrZ7hV69gHgbDL49eidzyRVv/5jEtzjv0CGK9lWErtvWl+As1MkqUv0GyyrgC6KDau5g6Ojl2/i/OSwBQfybxoEsM17ZhwCBDsa1nUTG27eszqHxFZtUncQp0W;
	5:hfU8p3e1cDT5FypmHK9ch85BKJYncu7q/vtvNmT2dVPah8SNi5QSjUZUW4VtFkybI6aFM468YlH1OUY8JfqGUIsBg90LHPirS01AinK7tAvvJ0OxyhKhtSXVseRMFacXsZcvv9f1/UvkBwmYpxAhAg==;
	24:OT8/vN81k4UTyuZvTA2BAZsnjF0SpsziKTJ8yzW3GUoAK1lsxTKY4m4FQ4l2tbn7bd2kYY/oN94V/7kLLzFRgPCHBBaLhQ4OSLlB23FM1NA=;
	7:CXrD23RNei9BwCuqUFOwGrNP4LlOERWmxO+0NUaQJcAMrBBi2QwtDi5uJEMccwkEsQzZz+wnDolhQp0/KmHI+q8u4J4096K4uVXrp6+jHTym5B89kww0Iwv4hUkhm0/Ven+5xNVUqYeD0fucJhQwVOvtik5IvxREzmo1b676EdGqQ893azJgc2mK4p+qnZmKPN5bmyPQJGKtX5Kzd1VmeTxFFx2fH4IXrLWnV8Hm1KTGb7zuomy17b4WT/9KJJ86
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR1201MB0961;
x-microsoft-antispam-prvs: <BN3PR1201MB09617F38D2326A43860B4548A5160@BN3PR1201MB0961.namprd12.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6043046)(6042046);
	SRVR:BN3PR1201MB0961; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR1201MB0961; 
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(189002)(199003)(53754006)(97736004)(2900100001)(54356999)(2351001)(81166006)(7846002)(10400500002)(68736007)(1730700003)(50986999)(2906002)(106356001)(33656002)(8936002)(19580395003)(107886002)(87936001)(92566002)(8676002)(77096005)(9686002)(5002640100001)(86362001)(81156014)(15975445007)(7736002)(66066001)(189998001)(99286002)(105586002)(19300405004)(19625215002)(101416001)(11100500001)(5630700001)(76576001)(790700001)(230783001)(2501003)(3660700001)(229853001)(122556002)(450100001)(3280700002)(7696003)(3846002)(586003)(102836003)(5640700001)(16236675004)(74316002)(6116002)(110136002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR1201MB0961;
	H:BN3PR1201MB0963.namprd12.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: pica8.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: pica8.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2016 01:50:41.3217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1649697f-e494-4b71-8227-3f383d0979ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR1201MB0961
Subject: How to run a runqemu with intel-corei7-64?
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
X-List-Received-Date: Fri, 19 Aug 2016 01:50:50 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_BN3PR1201MB096367B23D96E0998DA7C22BA5160BN3PR1201MB0963_"

--_000_BN3PR1201MB096367B23D96E0998DA7C22BA5160BN3PR1201MB0963_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all.
After built an 'intel-corei7-64' image with Toaster, I try to run a runqemu=
, it can't run.
ERROR: unable to classify arg [intel-corei7-64].
Does intel-corei7-64 could be run with runqemu?

Thanks

This is my script of runqemu:

ROOTFS=3D/poky/build-toaster-4/tmp/deploy/images/intel-corei7-64/core-image=
-minimal-intel-corei7-64.ext4 KERNEL=3D/poky/build-toaster-4/tmp/deploy/ima=
ges/intel-corei7-64/bzImage-intel-corei7-64.bin MACHINE=3Dintel-corei7-64 r=
unqemu intel-corei7-64

--_000_BN3PR1201MB096367B23D96E0998DA7C22BA5160BN3PR1201MB0963_
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
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi all.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US">Af=
ter built an &#8216;intel-corei7-64&#8217; image with Toaster, I try to run=
 a runqemu, it can&#8217;t run.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US">ER=
ROR: unable to classify arg [intel-corei7-64].<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US">Do=
es intel-corei7-64 could be run with runqemu?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">This is my script of runqemu:<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ROOTFS=3D/poky/build-toaster-4/=
tmp/deploy/images/intel-corei7-64/core-image-minimal-intel-corei7-64.ext4 K=
ERNEL=3D/poky/build-toaster-4/tmp/deploy/images/intel-corei7-64/bzImage-int=
el-corei7-64.bin MACHINE=3Dintel-corei7-64
 runqemu intel-corei7-64<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_BN3PR1201MB096367B23D96E0998DA7C22BA5160BN3PR1201MB0963_--
