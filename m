Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFBE4E009F4; Thu, 10 May 2018 10:41:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.3.60 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 35895 seconds by postgrey-1.32 at yocto-www;
	Thu, 10 May 2018 10:41:04 PDT
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-oln040092003060.outbound.protection.outlook.com [40.92.3.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49250E009BC
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 10:41:04 -0700 (PDT)
Received: from SN1NAM02HT230.eop-nam02.prod.protection.outlook.com
	(2a01:111:e400:7e44::411) by
	BL2NAM02HT229.eop-nam02.prod.protection.outlook.com
	(2a01:111:e400:7e46::213) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.735.16;
	Thu, 10 May 2018 05:11:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=RKn9XYC6WRZcUYd1989GA/+fXMj/aF+Iforcbs44uLY=;
	b=DlE98bJfSUVFXKH7Km3szJUnOPG5Y3NyBgQPjCT/KUr/MVglrYfV1p/gKaGt56fjYkTgUULmSUA18CtgxjItzK85WE8rqC8TbxEMHVAxRL2X/qnGtxmE7EwTb0glrv76MfORNslGVPv7A/5A1p2XwLl7qv9CZj9M7fGOYdZsGSqE1BgaqF3w5S98CFRfu605jy6Mns3iHn4oaRvh27sd9jNrRaxrqes62rxdWLVgdDklOn9IQWgLNjmXWogVi2qmRWYVCZiGSzn5Ghueha2L5aY0C1k+9GS6dJaxDrQpOYvBESDNqtR13EMBpOhqT44ukrQjg6iJMIP4wr7E+TxZog==
Received: from SN1NAM02FT009.eop-nam02.prod.protection.outlook.com
	(10.152.72.57) by SN1NAM02HT230.eop-nam02.prod.protection.outlook.com
	(10.152.73.155) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.735.16;
	Wed, 9 May 2018 22:41:04 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.72.53) by
	SN1NAM02FT009.mail.protection.outlook.com (10.152.73.32) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.735.16 via Frontend Transport; Wed, 9 May 2018 22:41:04 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8%18]) with mapi id 15.20.0735.018;
	Wed, 9 May 2018 22:41:04 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Can we keep toolchain while upgrade source code?
Thread-Index: AQHT5+YpWjZ9jvKdEEuXugg9rWMLVg==
Date: Wed, 9 May 2018 22:41:04 +0000
Message-ID: <MWHPR19MB1183A156B004661C9EA7B127C5990@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:1419D29824BBC76CDF0FA0B975B520769DBF77CE49E1B2AD4F7CA4E15861AFFC;
	UpperCasedChecksum:078286C6932E7A0BE1D7865DC31732CFD9D503F3D3A77506C2176CC9BB459662;
	SizeAsReceived:6874; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Q77dqL6JWsCD3EJ+fPH6/6ZuRec6P2MO]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; SN1NAM02HT230;
	7:S3VhL2XCzhuc4/Xyo5Qa/H/en+3Az3Ag3r6Xg6vNkrfFOssiBYr3FVlG6Dw+F4HSjbuzO3n5aSLaFit2msyfllUMXEOqAqnffMd9vVidXI0EVhJd/7qgOhme1X3Af8zJbvrQNih5mv1QqZ3BLJQbSr+UN+oIXluIs3DtSO67XicWqrulriAxqRUq0JxJ0hx81JmQPcJ3REcmzHGf0lj5kIZKfHHljBvEUIFttCG5RrtbunilNqeHZAL184Jr4J0I;
	23:DrAGfmOu7G9zsMZxKeGIQcDRr9ZOpkZMWxwgHEtA8o3+LLLq7whJBSIm2IL94YIkSH0eX79ElRPsa0fitBVnwyb35JgsTEROtWM7AJkDhMZ5EoyrJNAJS4arW32nIGASqfYCPC8Q1bCELxOHIyKHWg==
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125420)(1701031045);
	SRVR:SN1NAM02HT230; 
X-MS-TrafficTypeDiagnostic: SN1NAM02HT230:|SN1NAM02HT230:|SN1NAM02HT230:|BL2NAM02HT229:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:SN1NAM02HT230; BCL:0; PCL:0; RULEID:; SRVR:SN1NAM02HT230; 
x-forefront-prvs: 0667289FF8
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(189003)(199004)(14454004)(102836004)(6506007)(59450400001)(25786009)(5660300001)(99286004)(26005)(8936002)(19627405001)(6346003)(7696005)(105586002)(3660700001)(87572001)(83332001)(86362001)(3280700002)(97736004)(106356001)(20460500001)(2900100001)(2351001)(6606003)(6916009)(486006)(476003)(104016004)(74316002)(73972006)(5640700003)(9686003)(55016002)(1730700003)(6436002)(82202002)(2501003)(33656002)(81156014)(68736007)(8676002)(5250100002)(54896002)(15852004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:SN1NAM02HT230;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:; 
received-spf: None (protection.outlook.com: hotmail.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=rksyeung@hotmail.com; 
x-microsoft-antispam-message-info: 3NnADYOvRc+v222SYdmAlpXggXOg/xpvyCc5OINzpuXvLZEvaMOEMHPyGSZ3LkRPZ5AJ9XJK1h1Mojdv2wtK6o0tBrUhTv7qbftfya/E5ox+TyPNFLcOixZqn40Z28d8kJ1AfX2hjlBEgOkW0BTwXpO8gnRttx0CfFxiUer4SXWs9zdP2Qj0ocFW8eej2DnV
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: b94b4bdf-c861-4d55-8425-08d5b5fdf26f
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: b94b4bdf-c861-4d55-8425-08d5b5fdf26f
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2018 22:41:04.1384 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM02HT230
X-Microsoft-Exchange-Diagnostics: 1; BL2NAM02HT229;
	23:GqkvqepJKxuWi0Eu1jYXXRyP/i2OwjpMi1kW9qrU1fKgilsD/ZQ311imFl8YrXQvd3rgX8/VsV/eNsKo6PEictcVP79GXFgITO4BbnUhP+vTYba9p+phAumVhaFIo8q5M7co7zwLpUfWxX8wWuL5Rg==
X-OriginatorOrg: hotmail.com
Subject: Can we keep toolchain while upgrade source code?
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
X-List-Received-Date: Thu, 10 May 2018 17:41:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1183A156B004661C9EA7B127C5990MWHPR19MB1183namp_"

--_000_MWHPR19MB1183A156B004661C9EA7B127C5990MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Our project currently uses Krogoth 2.1.  It's a mid-2016 release.  I'm look=
ing into logistic of upgrading to Rocko 2.4 (a late-2017 release).

Is it possible to keep the toolchain in Krogoth 2.1 revisions, while migrat=
ing the sources to Rocko 2.4 revisions?  Has anyone done that?

Upgrading toolchain seems to be a pain-point, as it affects packages (e.g. =
Python 2.7 vs. Python 3) that other legacy builds may also use.

Thanks,
Raymond

--_000_MWHPR19MB1183A156B004661C9EA7B127C5990MWHPR19MB1183namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
Our project currently uses Krogoth 2.1. &nbsp;It's a mid-2016 release. &nbs=
p;I'm looking into logistic of upgrading to Rocko 2.4 (a late-2017 release)=
.
<div><br>
</div>
<div>Is it possible to keep the toolchain in Krogoth 2.1 revisions, while m=
igrating the sources to Rocko 2.4 revisions? &nbsp;Has anyone done that?</d=
iv>
<div><br>
</div>
<div>Upgrading toolchain seems to be a pain-point, as it affects packages (=
e.g. Python 2.7 vs. Python 3)&nbsp;that other legacy builds may also use.</=
div>
<div><br>
</div>
<div>Thanks,</div>
<div>Raymond</div>
</div>
</body>
</html>

--_000_MWHPR19MB1183A156B004661C9EA7B127C5990MWHPR19MB1183namp_--
