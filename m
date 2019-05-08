Return-Path: <Karthik.B@irco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC7DDE00D4C; Wed,  8 May 2019 08:25:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, MIME_HTML_MOSTLY,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [148.163.153.43 listed in list.dnswl.org]
	*  0.4 MIME_HTML_MOSTLY BODY: Multipart message mostly text/html MIME
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 4267 seconds by postgrey-1.32 at yocto-www;
	Wed, 08 May 2019 08:25:29 PDT
Received: from mx0b-00240e01.pphosted.com (mx0b-00240e01.pphosted.com
	[148.163.153.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 727B9E00D3D
	for <yocto@yoctoproject.org>; Wed,  8 May 2019 08:25:29 -0700 (PDT)
Received: from pps.filterd (m0114532.ppops.net [127.0.0.1])
	by mx0b-00240e01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x48E9uPe024177
	for <yocto@yoctoproject.org>; Wed, 8 May 2019 10:14:21 -0400
Received: from nam02-cy1-obe.outbound.protection.outlook.com
	(mail-cys01nam02lp2053.outbound.protection.outlook.com
	[104.47.37.53])
	by mx0b-00240e01.pphosted.com with ESMTP id 2sbybh8fkf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Wed, 08 May 2019 10:14:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=irco.onmicrosoft.com; 
	s=selector1-irco-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=wsBt4nZGRHfssIqqNMtMIqdvzeE+WE0UNBXxgw7fmsc=;
	b=l+yEYjBj/g1c4LztoPEGu6bTIWlpPepHEUsA3m+8Q2KbPUqtMwhJ8iqm0DdenR6dUn4djfhrdKEZ7sRj2N9IkXW8wFBuFfOSZezpL391bZpMaE7FItytyVMLvnSZTbeOwGJQLO3tizf/qHqWBHTta9K3BqVEvnZSYGMAfiHUjKs=
Received: from CY4P154MB0057.NAMP154.PROD.OUTLOOK.COM (52.135.24.88) by
	CY4P154MB0058.NAMP154.PROD.OUTLOOK.COM (52.135.24.89) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1856.12; Wed, 8 May 2019 14:14:08 +0000
Received: from CY4P154MB0057.NAMP154.PROD.OUTLOOK.COM
	([fe80::541:11b0:a0b2:c2a2]) by CY4P154MB0057.NAMP154.PROD.OUTLOOK.COM
	([fe80::541:11b0:a0b2:c2a2%6]) with mapi id 15.20.1856.012;
	Wed, 8 May 2019 14:14:08 +0000
From: "B, Karthik" <Karthik.B@irco.com>
To: "Yocto mailing list (yocto@yoctoproject.org)" <yocto@yoctoproject.org>
Thread-Index: AdUFqEmizH6gE1QXRZONapiqw9YChw==
Date: Wed, 8 May 2019 14:14:08 +0000
Message-ID: <CY4P154MB0057D587659E836903D8089D88320@CY4P154MB0057.NAMP154.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [125.17.130.45]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ad9727ab-d9ea-4787-ca71-08d6d3bf6fe8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
	SRVR:CY4P154MB0058; 
x-ms-traffictypediagnostic: CY4P154MB0058:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <CY4P154MB0058B979F91EADB652422C3488320@CY4P154MB0058.NAMP154.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:813;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(376002)(346002)(39860400002)(396003)(136003)(189003)(199004)(99286004)(25786009)(8936002)(7736002)(476003)(52536014)(9686003)(33656002)(6306002)(54896002)(81166006)(81156014)(66066001)(14454004)(55016002)(486006)(5406001)(68736007)(53936002)(71190400001)(71200400001)(316002)(66446008)(256004)(86362001)(6506007)(72206003)(1240700005)(74316002)(7696005)(76116006)(66556008)(6436002)(555874004)(5416005)(2906002)(25636003)(558084003)(6916009)(64756008)(26005)(186003)(73956011)(3846002)(102836004)(5660300002)(66946007)(66476007)(478600001)(6116002)(790700001)(338634005)(558944008);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4P154MB0058;
	H:CY4P154MB0057.NAMP154.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: irco.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WI+2PB+ROtKjROdZvpiL9M9rf+3QZ8ySy0NOVdYWS4kZGDyAqO6FFZpgi46i/osYGNiFQuVIpEZzkt64SSigwCXJnTSRQGr+X+hu7+cipvv8GNcHzqGUIJ8/7Z8PT5B/+3gaEZ70M3YoiT9bH5q7LJetSsGQO50Niu3a9jvghzoNS0OzbfrjAp4/nqNhVHjmsd3Os24skfLSlUli18bnYYMOytxP7JcuSsmjEGaWsd33ZNBEHU4WjRj7vV5gv8kmv1MniOaegy2PpKxjCFS8OYUFgAUsnf/9Uq1jrFWoCJs=
MIME-Version: 1.0
X-OriginatorOrg: irco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad9727ab-d9ea-4787-ca71-08d6d3bf6fe8
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 14:14:08.8314 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: abf9983b-ca77-4f20-9633-ca9c5a847041
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4P154MB0058
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-05-08_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=356 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1905080089
Subject: (No subject)
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
X-List-Received-Date: Wed, 08 May 2019 15:25:32 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4P154MB0057D587659E836903D8089D88320CY4P154MB0057NAMP_"

--_000_CY4P154MB0057D587659E836903D8089D88320CY4P154MB0057NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

STOP

--_000_CY4P154MB0057D587659E836903D8089D88320CY4P154MB0057NAMP_
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
<p class=3D"MsoNormal">STOP<o:p></o:p></p>
</div>
</body>
</html>

--_000_CY4P154MB0057D587659E836903D8089D88320CY4P154MB0057NAMP_--
