Return-Path: <harish.tg@aptiv.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18EF2E00C87; Fri, 26 Jul 2019 04:22:10 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F396E00B33
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 04:22:09 -0700 (PDT)
Received: from 10492-US-DLP002.delphiauto.net (unknown [10.201.250.14]) by
	usflmia-meg1.delphi.com with smtp
	id 0c75_986e_9247855e_3b6e_4661_9db4_1f56b06cad65;
	Fri, 26 Jul 2019 07:22:07 -0400
Received: from usflmia-gw2.delphi.com ([10.192.117.25])
	by 10492-US-DLP002.delphiauto.net (8.13.8/8.13.8) with ESMTP id
	x6QBM7lC005644
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 07:22:07 -0400
Received: from mx0a-00275a01.pphosted.com (mx0a-00275a01.pphosted.com
	[148.163.157.133]) by usflmia-gw2.delphi.com with smtp
	(TLS: TLSv1/SSLv3,256bits,ECDHE-RSA-AES256-GCM-SHA384)
	id 268c_2af1_9a111ce8_0e57_443b_b842_a74709262ae2;
	Fri, 26 Jul 2019 07:22:06 -0400
Received: from pps.filterd (m0109022.ppops.net [127.0.0.1])
	by mx0a-00275a01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x6QBAX3B020641
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 11:22:06 GMT
Received: from nam05-by2-obe.outbound.protection.outlook.com
	(mail-by2nam05lp2055.outbound.protection.outlook.com [104.47.50.55])
	by mx0a-00275a01.pphosted.com with ESMTP id 2tywxy0g74-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT)
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 11:22:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=TQgB/AUqWA3/rQlkhvJW7SMgLC+QqrqWfjP7MoHQkqGBDAtztp2pftkIPj0u4pmwh1BnqGkZNbtslnyNZUgio1RD6M/Bmz6huzGylw9QpN3UWo+9n+TaFlwqeXQXhVHTOX50Q+xL4PUCh3U0D1M3GBb4qkfmDdq45J8p91LA5KMyvGhejdQNqB2JoD4UWB9kFuArj5a+1JfchnoHOIfYRsMjfDg9Bnl2F+VtPxbk3XX4e/gzdxP/PcausOhqhoESjp0xl50sTjIG28bZIBT2pUrwlyqIyrW8FOwJsabJvwup+X180GfMJYrBDSiMzjHq98+BJozzs6REtGnC7eq2Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=vLoYRSBafnkEIXLVlOW+Zpz26BjLF7a+EdLl29r0wYM=;
	b=PpWhPKix3db64d93Kes9xijwPb+vCAxOebBEdnGXsiGqU1cPZraQdk6jyIatP/xu2HFRTJSQTPNSFTn6L1IU8geyZVbFN297LeNsSLYAuV/ouoWGknz6SkqY+1dXA3lhthzuy7Bf7rtWIrMYmlyYoDaRPLyI/txwvxZiUMkA8ZgE1nHlkEHfXHNAAE3cllBe/yGJpDiXVZ/NcHVDBAQvtK/XYLww/0NoaX2v9yHsqF4X+btrxqLEmUQKe2voVKD/33JZcqUwkc2Fe//9n75bZsg6dKVwyrg2iCbSNPivtnDi2mIYLrDHdM75500XkaSqdzir4Y/wZ01+4YHCwMoZlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
	smtp.mailfrom=aptiv.com;dmarc=pass action=none
	header.from=aptiv.com;dkim=pass header.d=aptiv.com;arc=none
Received: from MWHP197MB0045.NAMP197.PROD.OUTLOOK.COM (129.75.107.212) by
	MWHP197MB0061.NAMP197.PROD.OUTLOOK.COM (129.75.107.216) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2115.14; Fri, 26 Jul 2019 11:22:04 +0000
Received: from MWHP197MB0045.NAMP197.PROD.OUTLOOK.COM
	([fe80::68af:17fb:7215:c484]) by MWHP197MB0045.NAMP197.PROD.OUTLOOK.COM
	([fe80::68af:17fb:7215:c484%7]) with mapi id 15.20.2115.005;
	Fri, 26 Jul 2019 11:22:04 +0000
From: "Tg, Harish" <harish.tg@aptiv.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: how to cross-compile
Thread-Index: AdVDpCpW2jXdWFe+TrqQ6EJXqUYJhg==
Date: Fri, 26 Jul 2019 11:22:03 +0000
Message-ID: <MWHP197MB00457C246481DECF6AC013BCFBC00@MWHP197MB0045.NAMP197.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [1.6.70.242]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 367d2699-0383-478d-444d-08d711bb7c9d
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:MWHP197MB0061; 
x-ms-traffictypediagnostic: MWHP197MB0061:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <MWHP197MB00612A41B38E9C9854E2EF77FBC00@MWHP197MB0061.NAMP197.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 01106E96F6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(346002)(136003)(376002)(396003)(39860400002)(366004)(199004)(189003)(476003)(2501003)(68736007)(53936002)(9686003)(54896002)(5640700003)(55016002)(6306002)(5660300002)(71190400001)(71200400001)(52536014)(74316002)(2351001)(14454004)(25786009)(486006)(478600001)(33656002)(86362001)(256004)(3480700005)(2906002)(66476007)(66556008)(66446008)(64756008)(790700001)(66066001)(7736002)(66946007)(99286004)(6116002)(3846002)(76116006)(8676002)(81156014)(1730700003)(81166006)(558084003)(7696005)(316002)(8936002)(26005)(6436002)(6916009)(186003)(102836004)(6506007)(9326002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MWHP197MB0061;
	H:MWHP197MB0045.NAMP197.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: aptiv.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: E+Mh3bjyBdWsgzs80CJ/hnNUnAS/McXP6AsVBMuzSu4zqwTBF39dH9TBdkxGux4XaR5JLrrMMo95ZVCFE4/JDhqXOTz+By93K5nAqCp8mhZ7sWcyOuG7hu5EnlBdvd7Vi426E74MaG7nRVYWquROlIO8yRF0O2N/ISz7D3UzKOvj+hzE92P8VHr5NSP1/Nbtuyth4VQMe42v1LLTVb0Wx4r83PWIs1RQY9z7Qlwfv4/nGc+JwiLQoXJKmNVrzKnwXI54nQH5EsnXMNBJjiAZAl+v6BZ2br0N9zJ9QdQYCrjebC4O1na25b29cA+vUzBrFEqiksu/Ixm8MVEMci9CQKN/OELSMVvZ/i12fJpLtkt746iMHxjkpC3uMPv5Shy0NNSz0tgtI6/nnRf86rxqr0uJcU9DPa13bf+o4AdrBMs=
MIME-Version: 1.0
X-OriginatorOrg: aptiv.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 367d2699-0383-478d-444d-08d711bb7c9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2019 11:22:04.1781 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6b1311e5-123f-49db-acdf-8847c2d00bed
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: harish.tg@aptiv.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHP197MB0061
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-07-26_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=728 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1906280000 definitions=main-1907260142
X-RCIS-Action: ALLOW
X-MEG-POLICY: ALLOW
Subject: how to cross-compile
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
X-List-Received-Date: Fri, 26 Jul 2019 11:22:10 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHP197MB00457C246481DECF6AC013BCFBC00MWHP197MB0045NAMP_"

--_000_MWHP197MB00457C246481DECF6AC013BCFBC00MWHP197MB0045NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
      I need to add some debug statements in nanddump and cross compile it =
for DRA71X board in yocto. Can u guide me with the steps, please?

Regards,
Harish.

--_000_MWHP197MB00457C246481DECF6AC013BCFBC00MWHP197MB0045NAMP_
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I need to add some de=
bug statements in nanddump and cross compile it for DRA71X board in yocto. =
Can u guide me with the steps, please?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Harish.<o:p></o:p></p>
</div>
</body>
</html>

--_000_MWHP197MB00457C246481DECF6AC013BCFBC00MWHP197MB0045NAMP_--
