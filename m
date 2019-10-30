Return-Path: <prvs=02065dce0c=sean.mckay@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97CF3E00D83; Wed, 30 Oct 2019 14:10:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [148.163.143.35 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 2212 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Oct 2019 14:10:25 PDT
Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com
	[148.163.143.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CDB4E00D83
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2019 14:10:25 -0700 (PDT)
Received: from pps.filterd (m0134425.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
	x9UKVO3b027134
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2019 20:33:32 GMT
Received: from g4t3427.houston.hpe.com (g4t3427.houston.hpe.com
	[15.241.140.73])
	by mx0b-002e3701.pphosted.com with ESMTP id 2vyd6fa479-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT)
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2019 20:33:32 +0000
Received: from G2W6309.americas.hpqcorp.net (g2w6309.austin.hp.com
	[16.197.64.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g4t3427.houston.hpe.com (Postfix) with ESMTPS id 0F08774
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2019 20:33:32 +0000 (UTC)
Received: from G4W9120.americas.hpqcorp.net (2002:10d2:150f::10d2:150f) by
	G2W6309.americas.hpqcorp.net (2002:10c5:4033::10c5:4033) with Microsoft
	SMTP Server (TLS) id 15.0.1367.3; Wed, 30 Oct 2019 20:33:31 +0000
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (15.241.52.11) by
	G4W9120.americas.hpqcorp.net (16.210.21.15) with Microsoft SMTP
	Server (TLS)
	id 15.0.1367.3 via Frontend Transport; Wed, 30 Oct 2019 20:33:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=kRr9Fiy2R9dkFoJnrFAhBr2GfLVgY1cb9Uw5alZiux5nA92MO8gQkzHCuwI4Udu/LPdIga5ODu67k44fbIjYKvIt5yGujGAGEZnbXt16cFESkNIa54JDnFLfAU9cPjjTTlvKuh2w5mOqfNipL5bzUg4+UQtm6xBm0l0h+YGbnLzBcL8xHsnqxM9qAqfZD3OAwXXh4E7qQudM2pM1tuB1M1nt4bkcbPstxN9jsos3rizstyWOIIxBuMp1c4kgAUUuP25P/uoNf9GvUcKsvEs/dbTnen0ITRd/MySCgGkFOQJinDRYHjWu43er7XYU7lpKhyBfr1DDV5cdcigrD5blRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=7rpkwEZWkcXBbGFCt0JekfTU44/OLVcr7C9/Sj2TPRs=;
	b=LyYOHF10W0a8ktqcPSPiBjapJ1OBphfaOGtcRCO6bQwTpMfl8bpVXyJ1ovQhvTvgCun0UoQuUspivN2gc6VAD7i9nt91yCN1UG8qCxf7JH88VHxnMHHorn53nL8ByR9FdWCX/YdrLIanWNBeCEeXYFAvjaUuP9spEO6hP9AxjLDgGWo+Mu0a3Ap6898pAsQ2KZhmumr8iwuMq2cEb3cnbdscV5VV44h7PGeOBjn25tdz3YCcnKsgqpfxmAyn8JTVsuJVpHny+78+YW7mD9gwtxMQuzhjIgpsly8KTXo5TEtftd1WkeQx+G2qXBMBTnNeMjydjluzmA07k90XXZDZjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com;
	dkim=pass header.d=hpe.com; arc=none
Received: from CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM (10.169.98.21) by
	CS1PR8401MB1030.NAMPRD84.PROD.OUTLOOK.COM (10.169.96.137) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2387.20; Wed, 30 Oct 2019 20:33:30 +0000
Received: from CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::e96c:875c:a335:533d]) by
	CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::e96c:875c:a335:533d%10]) with mapi id 15.20.2387.027;
	Wed, 30 Oct 2019 20:33:30 +0000
From: "McKay, Sean" <sean.mckay@hpe.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Where is the documentation for things to fix when upgrading poky
	versions?
Thread-Index: AdWPYQqGcstHWbGyRp6na/HSYb/ayA==
Date: Wed, 30 Oct 2019 20:33:30 +0000
Message-ID: <CS1PR8401MB05684D967B297BDE3C95417D82600@CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [15.211.195.14]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7349d671-8c76-44d1-fbab-08d75d786d1c
x-ms-traffictypediagnostic: CS1PR8401MB1030:
x-microsoft-antispam-prvs: <CS1PR8401MB1030908BE5A882CA2A29BD3C82600@CS1PR8401MB1030.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02065A9E77
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39860400002)(396003)(346002)(136003)(366004)(376002)(199004)(189003)(53754006)(1730700003)(7696005)(66946007)(71200400001)(66476007)(66556008)(64756008)(8676002)(99286004)(6506007)(2501003)(66446008)(71190400001)(81156014)(33656002)(81166006)(8936002)(14444005)(256004)(76116006)(26005)(2906002)(14454004)(186003)(6116002)(790700001)(3846002)(52536014)(5660300002)(478600001)(25786009)(476003)(5640700003)(86362001)(4744005)(6436002)(486006)(7736002)(6916009)(54896002)(66066001)(55016002)(74316002)(6306002)(102836004)(316002)(2351001)(9686003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CS1PR8401MB1030;
	H:CS1PR8401MB0568.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2YddRHg2l51CkAXb84hjdrR+jBo+UoiTSFLP/aQ9jJIqip4qWe/C3tTug9vDyA6q8sd9Qz7K96/JhuOaX6ej+somEtmVTJi1PF0MrV5/m1Zc9ZN6niRHBI68jYyxoFD6GMBcnIscwA5Zyy1JRNY9qdxNaJhcngMpfXnx6g5eIFi5qKBpPrGFCoM8Iof1WrNUk+m5tTY+UHsGLAkqBSYBBzoWMmTFvvww5CsTH/CpoZMux6GVKalz8qckHUsKrW/BVPb36zXmIzvfrCzM/B2wUMiaCQ6jFHoJp0cdPuzUnJPtESHiwYYWh+d+hYhIprdMkA7zFB1FGoUMVruAHd0l/dqA1rVdCT5OXAgtcBEvr5GIhI3YYBdZNfUyFIH5FBZWyahROKfXHX+s/BmtW2k9syasOdefkwx/4adPianDItpn95kGquPdDKSG6jwZTCGj
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7349d671-8c76-44d1-fbab-08d75d786d1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2019 20:33:30.3389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AJwVX8Kj5wqZx6t3izvxLkt2WxeKkoiUa9AFAHIuanmR8Pu3j2uc4Gm9qYA+v/2GRptacxqJGWC3GHqJ3Tao4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CS1PR8401MB1030
X-OriginatorOrg: hpe.com
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
	definitions=2019-10-30_08:2019-10-30,2019-10-30 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	bulkscore=0 mlxlogscore=488
	spamscore=0 priorityscore=1501 mlxscore=0 suspectscore=0
	impostorscore=0
	malwarescore=0 adultscore=0 lowpriorityscore=0 phishscore=0
	clxscore=1011
	classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-1908290000 definitions=main-1910300180
Subject: Where is the documentation for things to fix when upgrading poky versions?
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
X-List-Received-Date: Wed, 30 Oct 2019 21:10:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CS1PR8401MB05684D967B297BDE3C95417D82600CS1PR8401MB0568_"

--_000_CS1PR8401MB05684D967B297BDE3C95417D82600CS1PR8401MB0568_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

This is probably a super easy question, but I've been searching half the da=
y and decided it would be faster to ask for help.
I know I've seen documentation in one of the manuals that points out major =
changes in syntax or behavior that will need to be fixed when upgrading the=
 underlying version of poky, but now that I have need of it, I can't seem t=
o find it anywhere. Can anyone point me in the right direction?

Thanks!
-Sean McKay

--_000_CS1PR8401MB05684D967B297BDE3C95417D82600CS1PR8401MB0568_
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
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is probably a super easy question, but I&#8217;=
ve been searching half the day and decided it would be faster to ask for he=
lp.<o:p></o:p></p>
<p class=3D"MsoNormal">I know I&#8217;ve seen documentation in one of the m=
anuals that points out major changes in syntax or behavior that will need t=
o be fixed when upgrading the underlying version of poky, but now that I ha=
ve need of it, I can&#8217;t seem to find it anywhere.
 Can anyone point me in the right direction?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal">-Sean McKay<o:p></o:p></p>
</div>
</body>
</html>

--_000_CS1PR8401MB05684D967B297BDE3C95417D82600CS1PR8401MB0568_--
