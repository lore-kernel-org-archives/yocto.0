Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE238E00CC1; Fri,  9 Sep 2016 02:31:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.49 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0049.outbound.protection.outlook.com [104.47.2.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4030AE00CBC
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 02:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=590FixGuCJyN7wUnr77/u0PqSlppGB3XujNlpY0cSs4=;
	b=i9vEigK8w7pR5rRlFk6ymmvM0vVSAgc5pN1yW+tFy9R67sf1rfZLmDvxWXhYz8uccnSCHwnfgzvIgWbGZXwLtIK8Ae4v1lnP+HH6kF1WbdTXWV43JgKyv0EwX9jpFy8fKBYz8KN/pRGWJULyN56QbtdmrIRq+FmkQnJ2kTrw3Eo=
Received: from DB6PR0401MB2630.eurprd04.prod.outlook.com (10.169.225.139) by
	DB6PR0401MB2630.eurprd04.prod.outlook.com (10.169.225.139) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384)
	id 15.1.609.3; Fri, 9 Sep 2016 07:58:48 +0000
Received: from DB6PR0401MB2630.eurprd04.prod.outlook.com ([10.169.225.139]) by
	DB6PR0401MB2630.eurprd04.prod.outlook.com ([10.169.225.139]) with
	mapi id 15.01.0609.016; Fri, 9 Sep 2016 07:58:48 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: Cortex-M4 build support
Thread-Index: AdIKb7GAmo83mHHiRt+SgpS1CJ5BJQ==
Date: Fri, 9 Sep 2016 07:58:48 +0000
Message-ID: <DB6PR0401MB26303ED7C7F9D20C58F0A218EEFA0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [199.59.225.131]
x-ms-office365-filtering-correlation-id: e697a2f6-c360-4352-27f2-08d3d8872166
x-microsoft-exchange-diagnostics: 1; DB6PR0401MB2630;
	6:mTv6ZJwWfE1bfEQxiqcdH2asSaDqV69ihAn1NsYa26j7da2FC09kbPMmbwgiEHfR2uZ4PDpczvgCr+VTjz8SrFub7xRNw1k6pNRGB3MXntALhAejl3lYzxilQhe2mfj8y7RCG3CgXJnCRBuM0d0WkVR+8X6mjs+TfoHlhOWEQXRD14FV6s/XlqIfffkVKqLFmXCOChni+h9PxRonD/eVoysVUZqAa7I/GrWpeU1ctKGeZda79t6bvisEOKNLAkgLHvCBekZopijhN5/KVe/Xb6GfkPY3ptFIj6aWte9qQ/kytW6YfVygdrWCHhcM5gc8IZ7OqB16y7PV7Ewxg2hTzg==;
	5:lxZIIgl+NyNtfE52Ug9mIq90MJ2lTpINPWF9swufTTsoaspxSH2Ka+Dx1HsVpUOYZwb4J/g/0RbEgZElyf1CN2Skv0B1zTy126zXPG+D0D+GEwbydndLq0OvfktEQZslQzc1wnUWIQ75cPneu9Xc4A==;
	24:LxX8o3ilsymcvCdFXthWkpM2Z+EcSrvaABvCGREw9PZPm0eikWEBHB7LfMFHpTfbTiBeCrPDHY1NO6anMMPGDcx23gcSe85XqxqYAXpYr3s=;
	7:tpFaEm3hK9j3J+0x9NvrybpWm1ZtduMZNxu/IhnvF7JD0o2lt4av3ZRxStEyxhJ7Nf/HpP0bBd/VaSIhsiYQYhgmpeB1yhRSPNoDvvXVfgZxplpu1D44ZjPZImZuy8hKWPFCBLgXZSkFlz70pqMHtoS+tbJhqokk2ujA/FW9hXyA52WIj6d4+0f+2w2VEHE+66TD1dEOhEVnaog/KvgKrK9lB5AefAQ2BBdtG8KWx5iyH/54YpeYOBHwKe/nbjkI
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB6PR0401MB2630;
x-microsoft-antispam-prvs: <DB6PR0401MB26303041A9FED833AD0467A1EEFA0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:DB6PR0401MB2630; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0401MB2630; 
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(53754006)(189002)(199003)(102836003)(106356001)(107886002)(229853001)(558084003)(74316002)(86362001)(5660300001)(2900100001)(110136002)(87936001)(7696004)(3280700002)(5002640100001)(97736004)(7846002)(10400500002)(15975445007)(66066001)(7736002)(9686002)(81156014)(76576001)(11100500001)(77096005)(8936002)(33656002)(68736007)(50986999)(2906002)(16236675004)(8676002)(54356999)(101416001)(790700001)(92566002)(3846002)(6116002)(81166006)(122556002)(3660700001)(19580395003)(105586002)(19625215002)(450100001)(189998001)(586003)(19300405004)(491001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0401MB2630;
	H:DB6PR0401MB2630.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2016 07:58:48.0918 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0401MB2630
Subject: Cortex-M4 build support
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
X-List-Received-Date: Fri, 09 Sep 2016 09:31:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0401MB26303ED7C7F9D20C58F0A218EEFA0DB6PR0401MB2630_"

--_000_DB6PR0401MB26303ED7C7F9D20C58F0A218EEFA0DB6PR0401MB2630_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

Can Yocto support image build for Cortex-M4 targets? If no, does somebody k=
now if there is some distro/packaging tool which can support Cortex-M4?


Best Regards,

Zhenhua

--_000_DB6PR0401MB26303ED7C7F9D20C58F0A218EEFA0DB6PR0401MB2630_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40">
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
	margin:1.0in 1.25in 1.0in 1.25in;}
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
<p class=3D"MsoNormal">Hi all, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can Yocto support image build for Cortex-M4 targets?=
 If no, does somebody know if there is some distro/packaging tool which can=
 support Cortex-M4?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Zhenhua <o:p></o:p></p>
</div>
</body>
</html>

--_000_DB6PR0401MB26303ED7C7F9D20C58F0A218EEFA0DB6PR0401MB2630_--
