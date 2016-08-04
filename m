Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C087EE00EA8; Thu,  4 Aug 2016 01:46:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.122 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0122.outbound.protection.outlook.com [104.47.32.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2679CE00E56
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2016 01:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pica8com.onmicrosoft.com; s=selector1-pica8-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=RwHDZR3dhTr4Ip+l0gy4IdDVidA/dI7kqef9vQuTsAM=;
	b=HShTosDqidfcOt9T0RTa+fGc0TtrJE54Xn1E3onbgKChX9+krWID6RqwwkSf9T+MEKfwNouxM5lsvsBUeKRNtgcinog2kRdNIjkXFTFXt967Y/REvLaRePnQOrRAG5dTDWItIxHdgJ2TggOoxUM6buDrF7TFkwS1FwPKzjZykkE=
Received: from BN3PR1201MB0963.namprd12.prod.outlook.com (10.165.76.133) by
	BN3PR1201MB0961.namprd12.prod.outlook.com (10.165.76.25) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.549.15; Thu, 4 Aug 2016 08:46:46 +0000
Received: from BN3PR1201MB0963.namprd12.prod.outlook.com ([10.165.76.133]) by
	BN3PR1201MB0963.namprd12.prod.outlook.com ([10.165.76.133]) with
	mapi id 15.01.0549.022; Thu, 4 Aug 2016 08:46:46 +0000
From: Richard Zhang <richard.zhang@pica8.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Install multi files in shared area Error
Thread-Index: AdHuLOIaJdwe5b1RSR6WfNbWv04EfA==
Date: Thu, 4 Aug 2016 08:46:46 +0000
Message-ID: <BN3PR1201MB09639BE40A5AC001D0C64DB3A5070@BN3PR1201MB0963.namprd12.prod.outlook.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard.zhang@pica8.com; 
x-originating-ip: [124.193.174.202]
x-ms-office365-filtering-correlation-id: 87c803c3-543d-4763-9432-08d3bc43de67
x-microsoft-exchange-diagnostics: 1; BN3PR1201MB0961;
	6:H0OBXoq96AObf4Agf39HvJ+X33iWIv9nL3rKrnKVATAeU4njFL93SCj6WCG0CYGX9aTiNzlNLEtw/RQezCLY3d+FLF2T6mcVOicucf1ykIUMzdI/fHLkU16c17lDLJXgcs9pBP+1bqgHcbJVjlDSkga0nxaFMjNZiMEeJDpDjZCBl8n9UiRn5ar8F3gNzqm1iMRP8JVKLZf3/NOb46395R18qgNfwe7mdmE8HIE1mRZQBlVvl2df4ODAJPn2t3aEb5ut9hREd3LMqlNQqRGz4ELdQhNpJ1vXnFo18Jgz2RnDB/pjZe0AU8GHl+/HUH3l;
	5:V/6B+qMrStDWt1cjmjKlYZg6BnbwwhVBfCQ7WwnbDHE9BOldLCo6xzigQy7YOPKwsQoiJASK9Jw/Y3Og48T1DlEFZD4M358AUzm8hnR5alXqGVvCqKjX9RhvO6qIoRzpTuTtyOy/b4pRcfhK1KJAow==;
	24:P3/JJhdWo5R9kodxe7P1TN+B11UVbsLM/znoYa5HhlmwSXQ6wRIUUQQQEeQLOSPAptfNki3KlZaPSHCmxLgmJ+90mgwohKx+C/+nUTSFchQ=;
	7:XtpL+3tY9CdDZIOCAazfzfpvebatQHhVLaoYaX0HY88LIvESnYTFIlmmQBfqK8yKRymavSzCvghnMjjNbycdAQB4Ibs3S3e9dpidR2JfCB2ZBE5wmOH1Pai8Rk0MrB9rnSZws80x3IxHu5gC7gzrg0bQYONyv3CDIFVPIljoaWX2+++3ygkOwPpv47uQbvN4v0DfX3y+3CD2o2n4G80gjz+OIGWvNOoykMmbYJCmVBtwoxNUglwwbSRDghx3ojjn
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR1201MB0961;
x-microsoft-antispam-prvs: <BN3PR1201MB09618CF2A7534618792517BEA5070@BN3PR1201MB0961.namprd12.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040130)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041072)(6042046)(6043046);
	SRVR:BN3PR1201MB0961; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR1201MB0961; 
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(189002)(53754006)(199003)(790700001)(15975445007)(6116002)(86362001)(8936002)(81156014)(189998001)(3846002)(66066001)(19580395003)(2900100001)(5630700001)(11100500001)(450100001)(107886002)(110136002)(102836003)(5640700001)(19300405004)(9686002)(81166006)(2501003)(8676002)(5002640100001)(1730700003)(10400500002)(87936001)(97736004)(3660700001)(92566002)(19625215002)(77096005)(76576001)(229853001)(101416001)(2906002)(3280700002)(122556002)(105586002)(33656002)(586003)(50986999)(99286002)(74316002)(54356999)(7846002)(7736002)(68736007)(106356001)(16236675004)(7696003)(2351001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR1201MB0961;
	H:BN3PR1201MB0963.namprd12.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: pica8.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: pica8.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2016 08:46:46.4148 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1649697f-e494-4b71-8227-3f383d0979ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR1201MB0961
Subject: Install multi files in shared area Error
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
X-List-Received-Date: Thu, 04 Aug 2016 08:46:55 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_BN3PR1201MB09639BE40A5AC001D0C64DB3A5070BN3PR1201MB0963_"

--_000_BN3PR1201MB09639BE40A5AC001D0C64DB3A5070BN3PR1201MB0963_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all

ERROR: The recipe libnetconf is trying to install files into a shared area =
when those files already exist. Those files and their manifest location are=
:
   /mnt/c1/git/poky/build-toaster-5/tmp/sysroots/qemux86/pkgdata/runtime/li=
bxml2
Matched in manifest-qemux86-libxml2.packagedata
/mnt/c1/git/poky/build-toaster-5/tmp/sysroots/qemux86/pkgdata/runtime/libxs=
lt
Matched in manifest-qemux86-libxslt.packagedata
/mnt/c1/git/poky/build-toaster-5/tmp/sysroots/qemux86/pkgdata/runtime/opens=
sl
Matched in manifest-qemux86-openssl.packagedata

......

ERROR: If the above message is too much, the simpler version is you're advi=
sed to wipe out tmp and rebuild (reusing sstate is fine). That will likely =
fix things in most (but not all) cases.
DEBUG: Python function sstate_task_postfunc finished
ERROR: Function failed: sstate_task_postfunc



Which tmp dir should I wipe out?Thanks


Richard Zhang

--_000_BN3PR1201MB09639BE40A5AC001D0C64DB3A5070BN3PR1201MB0963_
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
	{font-family:\5B8B\4F53;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@\5B8B\4F53";
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
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&#23435=
;&#20307;">Hi all<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&#23435=
;&#20307;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&#23435=
;&#20307;">ERROR: The recipe libnetconf is trying to install files into a s=
hared area when those files already exist. Those files and
 their manifest location are:<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&#23435=
;&#20307;">&nbsp;&nbsp; /mnt/c1/git/poky/build-toaster-5/tmp/sysroots/qemux=
86/pkgdata/runtime/libxml2<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&#23435=
;&#20307;">Matched in manifest-qemux86-libxml2.packagedata<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&#23435=
;&#20307;">/mnt/c1/git/poky/build-toaster-5/tmp/sysroots/qemux86/pkgdata/ru=
ntime/libxslt<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&#23435=
;&#20307;">Matched in manifest-qemux86-libxslt.packagedata<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&#23435=
;&#20307;">/mnt/c1/git/poky/build-toaster-5/tmp/sysroots/qemux86/pkgdata/ru=
ntime/openssl<o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&#23435=
;&#20307;">Matched in manifest-qemux86-openssl.packagedata<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&#23435=
;&#20307;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt">&#8230;&#8230;</sp=
an><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&#23435;&#203=
07;"><o:p></o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&#23435=
;&#20307;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&#23435=
;&#20307;">ERROR: If the above message is too much, the simpler version is =
you're advised to wipe out tmp and rebuild (reusing sstate
 is fine). That will likely fix things in most (but not all) cases.<o:p></o=
:p></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&#23435=
;&#20307;">DEBUG: Python function sstate_task_postfunc finished<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&#23435=
;&#20307;">ERROR: Function failed: sstate_task_postfunc<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Which tmp dir should I wipe out=
?Thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Richard Zhang<o:p></o:p></span>=
</p>
</div>
</body>
</html>

--_000_BN3PR1201MB09639BE40A5AC001D0C64DB3A5070BN3PR1201MB0963_--
