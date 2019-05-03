Return-Path: <Oliver.Westermann@cognex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFD64E00D50; Fri,  3 May 2019 03:10:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [148.163.157.122 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 2501 seconds by postgrey-1.32 at yocto-www;
	Fri, 03 May 2019 03:10:57 PDT
Received: from mx0a-001ccc01.pphosted.com (mx0a-001ccc01.pphosted.com
	[148.163.157.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7171EE00D3F
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 03:10:57 -0700 (PDT)
Received: from pps.filterd (m0088344.ppops.net [127.0.0.1])
	by mx0a-001ccc01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x439Mar3027390
	for <yocto@yoctoproject.org>; Fri, 3 May 2019 05:29:16 -0400
Received: from nam04-co1-obe.outbound.protection.outlook.com
	(mail-co1nam04lp2052.outbound.protection.outlook.com [104.47.45.52])
	by mx0a-001ccc01.pphosted.com with ESMTP id 2s6xh0d4k3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Fri, 03 May 2019 05:29:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cognexcorporation.onmicrosoft.com; s=selector1-cognex-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=oouRPlV0lrg3eNp3tsuvIrRo5SxY9fEGMLn7ygVWhzI=;
	b=s13msC8JCq8MomZCurZKP74vzjWyIiNY+u8ghWQBy64tKXPQspCVrj2DaXzeCURFl+AJRa1YGZnw4EV9myZ7dMR0+Be0QlTYLGdjBoKTrlFrj6otGER4RIOm73qsDe6KUlTr+JDLgfR1mjsG6KbB2ZYjd0uknff9cadEF82oKdk=
Received: from BN6PR06MB3138.namprd06.prod.outlook.com (10.174.95.141) by
	BN6PR06MB3252.namprd06.prod.outlook.com (10.174.232.166) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1856.12; Fri, 3 May 2019 09:29:11 +0000
Received: from BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::44e0:3aff:af6e:e4d2]) by
	BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::44e0:3aff:af6e:e4d2%4]) with mapi id 15.20.1856.008;
	Fri, 3 May 2019 09:29:11 +0000
From: "Westermann, Oliver" <Oliver.Westermann@cognex.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Defining group of machines
Thread-Index: AdUBkYo0qt9t5lh9TkadMEnzXu0Klw==
Date: Fri, 3 May 2019 09:29:11 +0000
Message-ID: <BN6PR06MB3138577A7F834F2A120297A286350@BN6PR06MB3138.namprd06.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [212.117.79.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 79c14888-5a84-48d7-f47f-08d6cfa9cd3c
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
	SRVR:BN6PR06MB3252; 
x-ms-traffictypediagnostic: BN6PR06MB3252:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BN6PR06MB3252A168DF5C9B83C4E4412A86350@BN6PR06MB3252.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(396003)(136003)(39860400002)(376002)(346002)(189003)(199004)(66066001)(68736007)(6116002)(790700001)(4744005)(3846002)(25786009)(256004)(19627235002)(6916009)(74316002)(2501003)(1730700003)(7736002)(476003)(486006)(52536014)(86362001)(5660300002)(5640700003)(81156014)(9686003)(33656002)(478600001)(2351001)(6436002)(55016002)(81166006)(6306002)(8936002)(66446008)(14454004)(2906002)(7696005)(54896002)(3480700005)(72206003)(99286004)(186003)(26005)(53936002)(8676002)(6506007)(66476007)(64756008)(66946007)(73956011)(316002)(66556008)(71200400001)(76116006)(71190400001)(102836004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR06MB3252;
	H:BN6PR06MB3138.namprd06.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cognex.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cf9r4HtSaDLCyeV1iX10d2cATubggjzIAmlgLzCMn8pePpIVmfr+I0AGYEN/xeDLUFCJpACYTKNzleKuTwZ+umXL4JdnJwvFhP4HugDqlNnPKFVA3ekf1HHwta+JxbefxyKDwZd7/nvlr85bKZbcTGjLGCneIABVgKK48DIAZw2FQc6MLGGUroLxJViKkevoAjoEDTrSO5f60PGM5vWztDF0HJmuU/q8by5xm/BiSbFiylafCcbXqDJxeheQecofRREBZYgy1HQIxmX1fT3aBKfSP2N5CPA3NhQfb3sor0H4obAECWjwAm8OZOVZaqmgszksCZp+QWO0RaCMlyDJpd+3xqxxVDCVxhdcCGKZ7r/6WD2e3lX74H3wRY8F8zbaOt7W5D/bJLG5pQIOkteH+7S0GoymqEaVn0wKmYVJIeI=
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79c14888-5a84-48d7-f47f-08d6cfa9cd3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 09:29:11.7991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR06MB3252
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-05-03_04:, , signatures=0
X-Proofpoint-Spam-Reason: safe
X-Mailman-Approved-At: Fri, 03 May 2019 09:15:29 -0700
Subject: Defining group of machines
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
X-List-Received-Date: Fri, 03 May 2019 10:10:58 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_BN6PR06MB3138577A7F834F2A120297A286350BN6PR06MB3138namp_"

--_000_BN6PR06MB3138577A7F834F2A120297A286350BN6PR06MB3138namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hey,

We've a product group with different devices, each having their machine-con=
f, eg
Device_a
Device_a_mini
Device_b
Device_b_mini <- Upcoming
Device_c <- Upcoming

Since device_a and device_a_mini share a lot of code, for them we use one o=
f the machine overrides, describing the processor family, so I use RDEPENDS=
_${PN}_append_device_a if I just need it for device_a and RDEPENDS_${PN}_ap=
pend_am57x for device_a and device_a_mini.

Now I'm in the situation that device_c will use the same CPU as device b, s=
o I need something like a "group" of devices for family b.

How can I define a MACHINE_GROUP_device_b_group =3D "device_b device_b_mini=
" so I can do
RDEPENDS_${PN}_append_device_b_group or do_install_append_device_b_group()?

Best regards, Olli


--_000_BN6PR06MB3138577A7F834F2A120297A286350BN6PR06MB3138namp_
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
span.E-MailFormatvorlage17
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
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hey,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">We&#8217;ve a product group wit=
h different devices, each having their machine-conf, eg<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Device_a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Device_a_mini<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Device_b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Device_b_mini &lt;- Upcoming<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Device_c &lt;- Upcoming<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Since device_a and device_a_min=
i share a lot of code, for them we use one of the machine overrides, descri=
bing the processor family, so I use RDEPENDS_${PN}_append_device_a if I jus=
t need it for device_a and RDEPENDS_${PN}_append_am57x
 for device_a and device_a_mini.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Now I&#8217;m in the situation =
that device_c will use the same CPU as device b, so I need something like a=
 &#8220;group&#8221; of devices for family b.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">How can I define a MACHINE_GROU=
P_device_b_group =3D &#8220;device_b device_b_mini&#8221; so I can do<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">RDEPENDS_${PN}_append_device_b_=
group or do_install_append_device_b_group()?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards, Olli<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_BN6PR06MB3138577A7F834F2A120297A286350BN6PR06MB3138namp_--
