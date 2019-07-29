Return-Path: <harish.tg@aptiv.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64B0CE00CD2; Sun, 28 Jul 2019 21:18:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [69.195.251.241 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from usflmia-meg1.delphi.com (usflmia-meg1.delphi.com
	[69.195.251.241])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78236E00C7D
	for <yocto@yoctoproject.org>; Sun, 28 Jul 2019 21:18:23 -0700 (PDT)
Received: from 10492-US-DLP003.delphiauto.net (unknown [10.201.250.15]) by
	usflmia-meg1.delphi.com with smtp
	id 268c_4eb4_32ebbb98_890e_4f8b_8dd9_0e6692877215;
	Mon, 29 Jul 2019 00:18:21 -0400
Received: from usflmia-gw2.delphi.com ([10.192.117.25])
	by 10492-US-DLP003.delphiauto.net (8.13.8/8.13.8) with ESMTP id
	x6T4IM5M028707
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 00:18:22 -0400
Received: from mx0a-00275a01.pphosted.com (mx0a-00275a01.pphosted.com
	[148.163.157.133]) by usflmia-gw2.delphi.com with smtp
	(TLS: TLSv1/SSLv3,256bits,ECDHE-RSA-AES256-GCM-SHA384)
	id 0cd1_5fdb_9bc96b95_b68e_4904_a375_d3e1005f2224;
	Mon, 29 Jul 2019 00:18:21 -0400
Received: from pps.filterd (m0121501.ppops.net [127.0.0.1])
	by mx0a-00275a01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x6T4FING001897
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 00:18:21 -0400
Received: from nam01-sn1-obe.outbound.protection.outlook.com
	(mail-sn1nam01lp2054.outbound.protection.outlook.com [104.47.32.54])
	by mx0a-00275a01.pphosted.com with ESMTP id 2u1rkcr8ax-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 00:18:21 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=bM/QKmXlE2iuSkusVAb/o+m6Jg7hT1ya+iS7MVcwpzHHZ+LqJdFA6xFQjbUXWVPqf3HbTiSvvN5tHudMnvnv0ESMwfx7HU/vacUcutnkyS3XfDLZRFu4pUbgemdBD9p1vn7NG85Yo9XKF4zHbBcfL+psiZMsupKyUaEhs8uCx7bDdx7cpHM/JAw6jEhylH3UPWoh7kdIiuYMcz5HnDJ9eHEUWZUmwrtm04tgXh9Jm1s61reLiJPVjSwcPrQmCtZ0kle266+8nQP0rIKB0Q3h5EDi7QbRIIQGVu6ASdUDt44wYTUXbKPEGYwLDJrFEm4Q9WU44hBLUGnhHfiylpRB4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=2ngO6umSbJuCALpQyyjdt4CJFhAAV1PoLXft1xatArE=;
	b=Ssy53fZkGwCoir5cxWPtWNI1xvJmiwPlY8jHq5Bnw3VWPD2KZ6MR4+g1L1EvNAKpr6tso8SCtGeRm0kIy0pm2CTDogA7vawndwU8Le39FNwjoPzVJg/HFEAAn4T0lqAwt9WIsx17EZ3Pdzzg3Jk7fHhIgi8WacAM0sTJrlr4u2KZyDS6i7zL6vdoWbjyzG4kRfiP/sOiBNlW9RPG+gIPJCfogVYa3ImveiH3PS3E6F6I5WezbZRsFb4UcTF3XY+j+Ubsj7tdOg4usilwdNBeuYFnZdF9X/0dId81wqF4a5yw/nsN2uhKUwS5gyLqHd5UGuJFi7n0ydlCenAQat+mHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
	smtp.mailfrom=aptiv.com;dmarc=pass action=none
	header.from=aptiv.com;dkim=pass header.d=aptiv.com;arc=none
Received: from MWHP197MB0045.NAMP197.PROD.OUTLOOK.COM (129.75.107.212) by
	MWHP197MB0045.NAMP197.PROD.OUTLOOK.COM (129.75.107.212) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2115.14; Mon, 29 Jul 2019 04:18:19 +0000
Received: from MWHP197MB0045.NAMP197.PROD.OUTLOOK.COM
	([fe80::68af:17fb:7215:c484]) by MWHP197MB0045.NAMP197.PROD.OUTLOOK.COM
	([fe80::68af:17fb:7215:c484%7]) with mapi id 15.20.2115.005;
	Mon, 29 Jul 2019 04:18:19 +0000
From: "Tg, Harish" <harish.tg@aptiv.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Please help me with the steps for cross-compiling
Thread-Index: AdVFxKS2ABq7hhhtTiCS0j9Ik3aC2A==
Date: Mon, 29 Jul 2019 04:18:19 +0000
Message-ID: <MWHP197MB0045024B4E789AE6E58F76F0FBDD0@MWHP197MB0045.NAMP197.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [1.6.70.242]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bbf398bc-1c61-4bac-9967-08d713dbc97d
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:MWHP197MB0045; 
x-ms-traffictypediagnostic: MWHP197MB0045:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <MWHP197MB00457571DE6E6F240C387E46FBDD0@MWHP197MB0045.NAMP197.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(376002)(39850400004)(366004)(396003)(346002)(189003)(199004)(25786009)(2906002)(81166006)(8936002)(790700001)(6116002)(3846002)(33656002)(256004)(66066001)(71200400001)(71190400001)(1730700003)(81156014)(486006)(478600001)(86362001)(66946007)(76116006)(5640700003)(55016002)(8676002)(66446008)(64756008)(66556008)(66476007)(6436002)(14454004)(476003)(52536014)(53936002)(5660300002)(558084003)(9686003)(54896002)(6306002)(7696005)(316002)(99286004)(2501003)(7736002)(9326002)(2351001)(6506007)(26005)(68736007)(74316002)(102836004)(6916009)(186003)(182903001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MWHP197MB0045;
	H:MWHP197MB0045.NAMP197.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: aptiv.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 18DI9J9Ueqin6EImi2zwhpNhwZ/i0Rgi2HasUGbhqgKP2yeD5PmG6lsTxt0cgxTJ4d9q4+GNjCNZBn6WOGHkR7Iq5MB9KY8G1oLiLkP0s37LbcEyhE/0NJfgVA1w5zu+hPbg5bktP/3ecjpxiYs2mYrr1gqtrHsdLP8yBwvneVuuewAxPtRe3OIOn8p77j9nCAdwHqe44lsayrBNFtaSqJd3k+s7ClEea2l6UrmkUvujJNavddb/qLjaqsKjxr54thlj0luJHPAiZXx1HgcUGMVxRJYpF4kXMWu15QRqQfqk26pEv1dTbfGlZPCoTl573DT9WipcgQvGio20jzk3Jm1LrxMdOih2LLWN00eVYU+ycx11nfLPXkB9cBKxyd83uSZNW2NzGFT2jGCpjasW2QalZNa81YDQ7/iaPFC0aH8=
MIME-Version: 1.0
X-OriginatorOrg: aptiv.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbf398bc-1c61-4bac-9967-08d713dbc97d
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 04:18:19.3990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6b1311e5-123f-49db-acdf-8847c2d00bed
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: harish.tg@aptiv.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHP197MB0045
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-07-29_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=654 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1906280000 definitions=main-1907290051
X-RCIS-Action: ALLOW
X-MEG-POLICY: ALLOW
Subject: Please help me with the steps for cross-compiling
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
X-List-Received-Date: Mon, 29 Jul 2019 04:18:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHP197MB0045024B4E789AE6E58F76F0FBDD0MWHP197MB0045NAMP_"

--_000_MWHP197MB0045024B4E789AE6E58F76F0FBDD0MWHP197MB0045NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

      I need to add some debug statements in nanddump and cross compile it =
for DRA71X board in yocto. Can u guide me with the steps, please?



Regards,

Harish.


--_000_MWHP197MB0045024B4E789AE6E58F76F0FBDD0MWHP197MB0045NAMP_
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
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoPlainText">Hi,<o:p></o:p></p>
<p class=3D"MsoPlainText">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I need to add some=
 debug statements in nanddump and cross compile it for DRA71X board in yoct=
o. Can u guide me with the steps, please?<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Regards,<o:p></o:p></p>
<p class=3D"MsoPlainText">Harish.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_MWHP197MB0045024B4E789AE6E58F76F0FBDD0MWHP197MB0045NAMP_--
