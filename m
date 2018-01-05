Return-Path: <mschepers@telspandata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 150EBE00D79; Fri,  5 Jan 2018 08:41:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.87 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 191 seconds by postgrey-1.32 at yocto-www;
	Fri, 05 Jan 2018 08:41:43 PST
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0087.outbound.protection.outlook.com [104.47.38.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F61FE00D55
	for <yocto@yoctoproject.org>; Fri,  5 Jan 2018 08:41:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telspandata.onmicrosoft.com; s=selector1-telspandata-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=qUJt6JJrElCZJ90fpuufjx56c5xOpe4vhQjK/cTYInc=;
	b=Nnlz+B7z+Z47i9vr8bA8MqXbjSYlElhp32Rzp0EYVfAVXqXrjFenOFblIrqcm+CPvtqb2kIxBMmDMyu1VIG6UdA5rPmjKjD+Z0gBe0SOSReWpCUXGHYByFdlrrESplG7EuIfAIXivWadCPPBrXbGFeesh5yp1OwsOTVkTLIxZhA=
Received: from CY1PR0401MB1340.namprd04.prod.outlook.com (10.161.213.20) by
	CY1PR0401MB1337.namprd04.prod.outlook.com (10.161.213.17) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.386.5; Fri, 5 Jan 2018 16:41:40 +0000
Received: from CY1PR0401MB1340.namprd04.prod.outlook.com ([10.161.213.20]) by
	CY1PR0401MB1340.namprd04.prod.outlook.com ([10.161.213.20]) with
	mapi id 15.20.0386.006; Fri, 5 Jan 2018 16:41:40 +0000
From: Matt Schepers <mschepers@telspandata.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: rdepends = "python3-modules" in recipe does not install
	python3-modules in image
Thread-Index: AQHThkNHEfNse791uk6L+QtsR952xg==
Date: Fri, 5 Jan 2018 16:41:40 +0000
Message-ID: <CY1PR0401MB1340EE57B6571F238B64B7DFB01C0@CY1PR0401MB1340.namprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mschepers@telspandata.com; 
x-originating-ip: [96.69.169.201]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY1PR0401MB1337;
	7:jOzT5UDBMT9t6WAQqxHcUOLl6DOOkqTfhL+FPc3M0fJz6sBml/xq87zcAg/KxbcI6yZcyMDFvE9guvnMZdQFxZpkbbQgmwE38KcVTaZaIGgBLtuu9dNx8dDSLCerXh2h0Sss3dZWKpKBtkulsn6gBzRHsWBfzbJ0rmznNKw5L1CLVVdIB9+Wa64hn2kPB2FeVO6wZWLpfmsyIH+xF2pPqVBwZmMcU4q69ScIK/1h41/8T1PngLszSyC3V42/fZrW
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 78187e27-8b5a-48f2-1782-08d5545b322a
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(4534020)(4602075)(4603075)(4627115)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060);
	SRVR:CY1PR0401MB1337; 
x-ms-traffictypediagnostic: CY1PR0401MB1337:
x-microsoft-antispam-prvs: <CY1PR0401MB13370CE075318AB05D8E8978B01C0@CY1PR0401MB1337.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040470)(2401047)(8121501046)(5005006)(3231023)(944501075)(3002001)(10201501046)(93006095)(93001095)(6041268)(2016111802025)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123564045)(20161123558120)(20161123562045)(6043046)(6072148)(201708071742011);
	SRVR:CY1PR0401MB1337; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:CY1PR0401MB1337; 
x-forefront-prvs: 05437568AA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(346002)(366004)(39380400002)(396003)(39830400003)(199004)(189003)(97736004)(5660300001)(3280700002)(2900100001)(53936002)(25786009)(6916009)(5640700003)(575784001)(77096006)(6436002)(3660700001)(9686003)(55016002)(86362001)(3846002)(6116002)(99286004)(8676002)(2906002)(102836004)(68736007)(305945005)(74316002)(33656002)(106356001)(105586002)(1730700003)(81166006)(81156014)(316002)(7696005)(2351001)(66066001)(7736002)(2501003)(478600001)(14454004)(6506007)(8936002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0401MB1337;
	H:CY1PR0401MB1340.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: telspandata.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: lsYxHm748EhiUMmC6wzyAREdEcF8KyzUsMTshp4oTLHzEyjHkElep2li14JJcl1YxstVGhZL4gdVrB0wyIf+9Q==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: telspandata.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78187e27-8b5a-48f2-1782-08d5545b322a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2018 16:41:40.2232 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 980119cc-b60c-4c4d-84e8-5d25446e5dc3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0401MB1337
Subject: rdepends = "python3-modules" in recipe does not install python3-modules in image
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
X-List-Received-Date: Fri, 05 Jan 2018 16:41:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Folks,

I have a .bb file for a setuptools based python program I am installing to =
my image. The python program needs a large subset of what's available in th=
e python standard library and therefore I need to install "python3-modules"=
 in my image to get the python interpreter to work.

This is my recipe:
---------
DESCRIPTION =3D ""
HOMEPAGE =3D ""
SECTION =3D "telspan"
LICENSE =3D "CLOSED"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D17a6b3d5436a55985b200c725761907a=
"

SRC_URI =3D "file://iguFpga-${PV}.tar.gz"
#SRC_URI[md5sum] =3D "f004f429cf22feff845e18b0addc05d6"

inherit setuptools3

#still necessary to put python3-modules in IMAGE_INSTALL ? is this a bug?
RDEPENDS_${PN} +=3D "python3-modules python3-setuptools python3-setuptools-=
native"
DEPENDS_${PN} +=3D "python3-modules python3-setuptools python3-setuptools-n=
ative"
---------

This does not install "python3-modules" to the image. When this builds, my =
python program does not work because of missing dependencies on the standar=
d library.

To get this to work I have to go in and append "python3-modules" to IMAGE_I=
NSTALL in my top level image recipe.

I thought that the purpose RDEPENDS was to install the correct runtime depe=
ndencies to the image? Why doesn't this work?



