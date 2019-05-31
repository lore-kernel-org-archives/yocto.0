Return-Path: <Oliver.Westermann@cognex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11BE1E00D61; Fri, 31 May 2019 04:06:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [148.163.159.122 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mx0a-001ccc01.pphosted.com (mx0b-001ccc01.pphosted.com
	[148.163.159.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC829E00D59
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 04:06:17 -0700 (PDT)
Received: from pps.filterd (m0088347.ppops.net [127.0.0.1])
	by mx0b-001ccc01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x4VB1hYD031491
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 07:06:16 -0400
Received: from nam02-cy1-obe.outbound.protection.outlook.com
	(mail-cys01nam02lp2059.outbound.protection.outlook.com
	[104.47.37.59])
	by mx0b-001ccc01.pphosted.com with ESMTP id 2sq0ykbjhq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 07:06:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cognexcorporation.onmicrosoft.com;
	s=selector2-cognexcorporation-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=mUwctPV5+u3mi1MTrMqq048HUExS97MVVJ3arpaXPas=;
	b=kw3PsQS/kqVldJBuIVd5jitmwnMjfHXSV0oEgL4mXXgxgdzWkz1Ma9n19k4n/bLofsedbaNO3073g6WGQUpDHmuAEwDTNlH0B7PNHVdXCum4CZumKccrQKA/ozV4HVzgsWen4jS0mavF4pzOJD/4/G0kLQtPPLQ6L0UVaDAMSGM=
Received: from BN6PR06MB3138.namprd06.prod.outlook.com (10.174.95.141) by
	BN6PR06MB2932.namprd06.prod.outlook.com (10.175.131.151) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1943.17; Fri, 31 May 2019 11:06:12 +0000
Received: from BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::4da1:8de:53b:d30e]) by BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::4da1:8de:53b:d30e%5]) with mapi id 15.20.1922.021;
	Fri, 31 May 2019 11:06:12 +0000
From: "Westermann, Oliver" <Oliver.Westermann@cognex.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Debugging deployment of kernel image
Thread-Index: AdUXg9yAteW5V5iwTaKcUEVx2WE0ag==
Date: Fri, 31 May 2019 11:06:12 +0000
Message-ID: <BN6PR06MB3138FA99B710857792F5FB7F86190@BN6PR06MB3138.namprd06.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [212.117.79.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ab0af437-140a-4070-f956-08d6e5b7fe3f
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
	SRVR:BN6PR06MB2932; 
x-ms-traffictypediagnostic: BN6PR06MB2932:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BN6PR06MB2932BF378B83890EB1BA19CB86190@BN6PR06MB2932.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00540983E2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(346002)(39850400004)(396003)(376002)(136003)(366004)(199004)(189003)(478600001)(14454004)(72206003)(99286004)(5660300002)(66556008)(76116006)(64756008)(66446008)(66476007)(66946007)(33656002)(73956011)(476003)(2906002)(186003)(6506007)(486006)(2501003)(66066001)(102836004)(26005)(790700001)(6116002)(7736002)(3846002)(7696005)(71200400001)(74316002)(8676002)(81156014)(1730700003)(19627235002)(71190400001)(52536014)(8936002)(2351001)(256004)(81166006)(6916009)(86362001)(9686003)(25786009)(53936002)(54896002)(316002)(6436002)(5640700003)(55016002)(6306002)(68736007);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR06MB2932;
	H:BN6PR06MB3138.namprd06.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cognex.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HlKS9dDb5/1Xw8JCpX2hDDN0lxolH/+b0qW7tAx1TYprUzYLM/VxkPSciCd6u5z1kxu3spGw+7mkG6UOzImnbSmHJ3wQAZEotnpzy6k/C7Iu1pRD70FvWjScl6KO2mA2tgncbR9pifc/mHdjo6L9WO/zMFyYI3AC2d6AmZdCr0F5yJiDGT9emIEDP48b5v7u9soXxNy/jrx1H+79OdEbgxnP1BGDlh1RMKBYl17QntqGCsJZ1guR/kBwtiApO+ASgVIvZ1kDIUaX8YKY0MKooEmAP2lB+QXTS8Qm0P1MjpGae2wKmhWEo/FRD5RLw7Aq3OhERgqYAlaSJRSVJ6OSWk1RBNvIJVgNgOm904LMlML95rbDvM1HMvLmgkOV1jmLWshEK5iatWxG0Ik+kILoU/XIUehNl7ofzJT2u8c3utI=
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab0af437-140a-4070-f956-08d6e5b7fe3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2019 11:06:12.6515 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oliver.westermann@cognex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR06MB2932
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-05-31_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1905310073
Subject: Debugging deployment of kernel image
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
X-List-Received-Date: Fri, 31 May 2019 11:06:19 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_BN6PR06MB3138FA99B710857792F5FB7F86190BN6PR06MB3138namp_"

--_000_BN6PR06MB3138FA99B710857792F5FB7F86190BN6PR06MB3138namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hey,

I'm currently in the process of updating our yocto (sumo) with a new kernel=
 version from a supplier (NXP) and I'm having some issues, we somehow broke=
 deployment of the linux kernel: I get the Image & symlink in my images fol=
der, but it does not end up in my rootfs. It SHOULD end up at /boot. My sys=
tem boots u-boot and searches for the kernel (and fails ofc). If I manually=
 place my kernel, everything is fine.

I would like to find out where in my recipes this goes south:
I've checked build/<my conf>/tmp/work/<m< conf>-poky-linux/linux-imx/4.14.7=
8-r0/deploy-linux-imx and the kernel and the expected kernel Image and syml=
ink is there alongside the .dtb files. The dtb files get deployed as expect=
ed, but my kernel does not.

I've also checked build/<my conf>/tmp/work/<my conf>-poky-linux/linux-imx/4=
.14.78-r0/deploy-rpms/<my conf>/ , where I've got a kernel-image-image-4.14=
.78-<branch>+-4.14.78-r0.<my conf>.rpm, which contains the kernel and the s=
ymlink.
Which brings me into an area of yocto I'm not used to, since usually THAT p=
art worked for me ;-)

So if a RPM is generated, but not properly installed, where do I continue m=
y debugging efforts?
I've already checked the output of bitbake -e linux-imx, but I only used -e=
 only to debug my recipes (how stuff expands), so this was more of a "rando=
m looking at stuff" to figure things out.

Any help appreciated.

- Olli


--_000_BN6PR06MB3138FA99B710857792F5FB7F86190BN6PR06MB3138namp_
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.E-MailFormatvorlage18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
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
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hey,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m currently in the proc=
ess of updating our yocto (sumo) with a new kernel version from a supplier =
(NXP) and I&#8217;m having some issues, we somehow broke deployment of the =
linux kernel: I get the Image &amp; symlink in my images
 folder, but it does not end up in my rootfs. It SHOULD end up at /boot. My=
 system boots u-boot and searches for the kernel (and fails ofc). If I manu=
ally place my kernel, everything is fine.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I would like to find out where =
in my recipes this goes south:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;ve checked build/&lt;my=
 conf&gt;/tmp/work/&lt;m&lt; conf&gt;-poky-linux/linux-imx/4.14.78-r0/deplo=
y-linux-imx and the kernel and the expected kernel Image and symlink is the=
re alongside the .dtb files. The dtb files get deployed as
 expected, but my kernel does not.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;ve also checked build/&=
lt;my conf&gt;/tmp/work/&lt;my conf&gt;-poky-linux/linux-imx/4.14.78-r0/dep=
loy-rpms/&lt;my conf&gt;/ , where I've got a kernel-image-image-4.14.78-&lt=
;branch&gt;&#43;-4.14.78-r0.&lt;my conf&gt;.rpm, which contains the kernel =
and
 the symlink.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Which brings me into an area of=
 yocto I'm not used to, since usually THAT part worked for me ;-)<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So if a RPM is generated, but n=
ot properly installed, where do I continue my debugging efforts?<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I've already checked the output=
 of bitbake -e linux-imx, but I only used -e only to debug my recipes (how =
stuff expands), so this was more of a &quot;random looking at stuff&quot; t=
o figure things out.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Any help appreciated.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- Olli<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN6PR06MB3138FA99B710857792F5FB7F86190BN6PR06MB3138namp_--
