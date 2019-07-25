Return-Path: <aravindhlalgss@embedur.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C1D9E00D46; Thu, 25 Jul 2019 07:31:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.75.45 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-eopbgr750045.outbound.protection.outlook.com [40.107.75.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60803E00CAA
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2019 07:31:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=Hnt1R7/XQjQhm2cRcfc/nPfLN2T6dBaTFsggLLlfSyp0viXC7Xg2MxA/srbhhHv4Q+eBbKNT6Vi2Qm9eIQiWeZ2oXLyam2NksU1BiF2puoF/7Clvn5diNeq7U5yvIwn+pesQGDUkjGNxxrDJ/6n5UPqYPLZr2300QZQf6zz+uBrcDpZ+OU7pmuDTaY+6nS8uT1xoYQV2I72gXAW0+G12rsUSUxAuSRNAyXTTfKratUjSMW24MPKoykZ2RGxfK9BCuKB5fvM6o/sU7THRrQE1kgHnFdWCHVoOa08/lmsKiyHfVtEBSThA7Cuyd0WiVk7NzJA26ldslrkIrCKFVu4zIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=25XHQBo0cPEKhGpkWLVNFo8bcS1A0NSjIyzJznpUAis=;
	b=a5YF7kMhGk+yVCH4pAP0zgsfr8OWpBP4CXfl0lmkIvvBFCDSNwjr+wBLStgluilluj+8Mglaa2pN4yhr27xILubfcDDboEXFRsXgr0yGAkbRFCNbhGehwHPXAYuQ//RG1MY9astDIuYOSrd4xegT5ukvW/7T6n3x45Q6w8v20C/82rTrTjUWh7o7zX+ELU54rZKIV74nsjucvMh3+m5pKuWc5L2XhQ7jovOfkew2kFztcaUqhWS8OWMj9J07PFkRv+LEOHtWBsfdOY2Gwez7LdDaARQl/Y7+McW2sVpTr/ROcytTg8JcmDozKAnMYn64nwLVEpSMf5mT+ACRzZFwqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
	smtp.mailfrom=embedur.com;dmarc=pass action=none
	header.from=embedur.com;dkim=pass header.d=embedur.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=embedur.onmicrosoft.com; s=selector2-embedur-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=25XHQBo0cPEKhGpkWLVNFo8bcS1A0NSjIyzJznpUAis=;
	b=Sc2Eh1zMHvtrjiRFifV3YRCTPYIO/AsBkfmkx5tDatZzg5q+UgA7/ibJ6bgHvQnhCKkH3tNJWuzDRe1wbe+cEaJ0MGvSNR3YTxkvWhVk9DuKIYUqcuCqKJm9fpvwoCnizLCCIHFyrfx6QHwV4GVUm0GDPu3vR6FJVnnLbfbqZKA=
Received: from CY4PR15MB1158.namprd15.prod.outlook.com (10.172.177.144) by
	CY4PR15MB1381.namprd15.prod.outlook.com (10.172.159.151) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2115.10; Thu, 25 Jul 2019 14:31:13 +0000
Received: from CY4PR15MB1158.namprd15.prod.outlook.com
	([fe80::f16f:be4d:9a7:c7bc]) by CY4PR15MB1158.namprd15.prod.outlook.com
	([fe80::f16f:be4d:9a7:c7bc%7]) with mapi id 15.20.2115.005;
	Thu, 25 Jul 2019 14:31:13 +0000
From: Aravindhlal G.S.S <aravindhlalgss@embedur.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: nostamp is not working as expected
Thread-Index: AdVC9V4XVgLqAUPZTmyBEnkP14M10Q==
Date: Thu, 25 Jul 2019 14:31:13 +0000
Message-ID: <CY4PR15MB1158F1C7932F08B6467E0AEED0C10@CY4PR15MB1158.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=aravindhlalgss@embedur.com; 
x-originating-ip: [61.16.140.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a6b18aa-5c98-41d0-26a4-08d7110cbed2
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:CY4PR15MB1381; 
x-ms-traffictypediagnostic: CY4PR15MB1381:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <CY4PR15MB1381793A345875B6F7ABF27FD0C10@CY4PR15MB1381.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(376002)(39830400003)(136003)(396003)(366004)(199004)(189003)(54896002)(6116002)(3846002)(53936002)(790700001)(66066001)(5660300002)(9686003)(2501003)(25786009)(68736007)(99286004)(76116006)(14454004)(2351001)(486006)(7736002)(7696005)(52536014)(71190400001)(71200400001)(6436002)(102836004)(74316002)(26005)(8936002)(4744005)(256004)(5640700003)(86362001)(6916009)(66946007)(33656002)(6306002)(66446008)(2906002)(476003)(81156014)(81166006)(64756008)(66556008)(66476007)(55016002)(1730700003)(8676002)(186003)(316002)(478600001)(6506007);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR15MB1381;
	H:CY4PR15MB1158.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: embedur.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4B0IOD772v39VEKiw6fe3/BrNHF+afUTjUMf6DVf5eB/FtQFyeNWQDEmq+4tmjHr6D58VqzldY0B39VMUk62vcg8G9NDX2aUmm7sSZubmnpKnFRfaUjv6ipdTxzDl7XsISolZZ/oWUjq22/9tPTzVLLSb81gQjr0y/cASRaywzEgSvNGwwcH6Ias/ocS7UvEIdzFO11zNySXuFH8Z1NLa/uNNACW+AcEqMs8S3Dt04gfGfO3+/BCRSJUWDgdEi5nwFqkf4p8K1CEaYDiySuzQhsYzk/gEjxzXqbqaH/9bZmqDFd6xOp59l+D4aesmVsLSXmG9rE1BNx5JXAA48z/dJaAC6MjMyF/41bNlKjwgyT2Lq/0k9FG5IYN2U6SrIejMuSTilbvXzRZu4J1k3a0q6vHyNIOQDUHL0vxr8oZQD0=
MIME-Version: 1.0
X-OriginatorOrg: embedur.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a6b18aa-5c98-41d0-26a4-08d7110cbed2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 14:31:13.3048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3e7c9d67-afab-4694-94e1-af28129ed65f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aravindhlalgss@embedur.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR15MB1381
Subject: nostamp is not working as expected
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
X-List-Received-Date: Thu, 25 Jul 2019 14:31:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR15MB1158F1C7932F08B6467E0AEED0C10CY4PR15MB1158namp_"

--_000_CY4PR15MB1158F1C7932F08B6467E0AEED0C10CY4PR15MB1158namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Yocto Experts,

I wanted to run do_compile task every time and should not fetch from the ss=
tate cache for the incremental builds. In the correspond recipe, I had set =
do_compile[nostamp] =3D "1"  and still it does not run every time. It is re=
-run only after clean sstate.

Am I missing something ? can you please help ?

Thanks
-Aravindh

--_000_CY4PR15MB1158F1C7932F08B6467E0AEED0C10CY4PR15MB1158namp_
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
<p class=3D"MsoNormal">Hi Yocto Experts,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I wanted to run do_compile task every time and shoul=
d not fetch from the sstate cache for the incremental builds. In the corres=
pond recipe, I had set
<b><i>do_compile[nostamp] =3D &#8220;1&#8221;</i> </b>&nbsp;and still it do=
es not run every time. It is re-run only after clean sstate.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Am I missing something ? can you please help ?<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">-Aravindh<o:p></o:p></p>
</div>
</body>
</html>

--_000_CY4PR15MB1158F1C7932F08B6467E0AEED0C10CY4PR15MB1158namp_--
