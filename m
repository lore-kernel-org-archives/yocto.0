Return-Path: <jswensen@mmm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52E45E00C82; Thu, 23 Jun 2016 15:09:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [136.229.8.41 listed in list.dnswl.org]
X-Greylist: delayed 1036 seconds by postgrey-1.32 at yocto-www;
	Thu, 23 Jun 2016 15:09:25 PDT
Received: from smtp-277A-C.mmm.com (smtp-277a-c.mmm.com [136.229.8.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E17DE00C75
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 15:09:25 -0700 (PDT)
Received: from mailgate02.mmm.com (unknown [136.229.2.28])
	by Websense Email with ESMTPS id DA2A9BF19C6C7
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 21:52:05 +0000 (GMT)
X-ExtLoop1: 1
Received: from mail-bn1lp0139.outbound.protection.outlook.com (HELO
	na01-bn1-obe.outbound.protection.outlook.com) ([207.46.163.139])
	by mailgate02c.mmm.com with ESMTP/TLS/AES256-SHA;
	23 Jun 2016 16:52:08 -0500
Received: from BY2PR0301MB2117.namprd03.prod.outlook.com (10.163.197.146) by
	BY2PR0301MB2120.namprd03.prod.outlook.com (10.163.197.149) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.523.12;
	Thu, 23 Jun 2016 21:52:07 +0000
Received: from BY2PR0301MB2117.namprd03.prod.outlook.com ([10.163.197.146]) by
	BY2PR0301MB2117.namprd03.prod.outlook.com ([10.163.197.146]) with
	mapi id 15.01.0523.019; Thu, 23 Jun 2016 21:52:07 +0000
From: Jake Swensen <jswensen@mmm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: question: yocto-bsp tool warnings
Thread-Index: AQHRzZl3FanaSciqvEOuFjasRYPGDA==
Date: Thu, 23 Jun 2016 21:52:07 +0000
Message-ID: <BY2PR0301MB21179A1F8E3485090A97527BC52D0@BY2PR0301MB2117.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=jswensen@mmm.com; 
x-originating-ip: [132.245.81.165]
x-ms-office365-filtering-correlation-id: 33206156-1734-4e56-8fe9-08d39bb09f32
x-microsoft-exchange-diagnostics: 1; BY2PR0301MB2120;
	6:xph+q4CHcxo63TbnUZT57sKjHGpIZeuzSg9Bv54P2rvIfFSvNQKGL+l8NsfcVTWNLfWtPadg60l0zUABwG2xjYAvT35C0jIQrDY69VtbH44whnJPoV0/IdyaQ9R39s6zBrCygW2Nl98hNSUlVoEm/PiabewpKnlHxCrH1+oEUqqCxvbE+LCfKja+pai/y5AabKSGBpvMQXZRmNUnKUs22Vm7lznfeCz6a/gZueb+CyuVRd4qGb8EW0+EG0ZQa+187y0E6irtlkiUo8/fmR008FwPXDm6T4SpxezW/Uspw0AA8tI5ivnFHCzJoIa6FAKp;
	5:+mVYs4Q5oXfEJrU2H1ve4B4c86hxTyx5we5jiJbITz9Ffy8Fqu4A0nYkPSJPxiWsLpoVhkEvhDg4+WxjrVJYlvzqI31h1gawHknrZWe2LYc5/wDDVtLG3ciyKRnm5ykDMm0IdPzbVbUSFrLxSXDa4w==;
	24:2O9TtZRb31AQauY8rwPwafIKAF6n+u8G+WJT7kD03lJDzRIWQM/0DfKjDGs8RqGRGn1ARK8bSbF7PgUbPzzNiRyDYj3A8KiVjq243JFKxJw=;
	7:ln2R4fBF0v8Vk6IgPOGaH/vF3uujMcAy6rv1/MJ+0DAS6krSt42o//jWWBE3DyowlZG5n92au3rfy/BLSG1TCkYnvldpiTq2MvvFQoYbJyU/uVuNjpgYj7Ppo1Bq+lzeyDFCG8hCe5Jf4XlOtgDnTNAaPt0EAud9kIxQdwpO0sy1GrWPy/U4MqFcsvm6oI1/YC2d6yT483+AuJf15kJ/+TGvXhN0WJ//qCEK4rAaUG49ZYg0ni8gakps6LBPqHd8uzwoXLoPGT/LIC5P/Jxd4g==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY2PR0301MB2120;
x-microsoft-antispam-prvs: <BY2PR0301MB212092DFC40E8287A33F9C2CC52D0@BY2PR0301MB2120.namprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(264703809997249);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:BY2PR0301MB2120; BCL:0; PCL:0; RULEID:;
	SRVR:BY2PR0301MB2120; 
x-forefront-prvs: 098291215C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(189002)(92566002)(8676002)(1730700003)(81156014)(81166006)(586003)(99286002)(5002640100001)(87936001)(2900100001)(77096005)(2501003)(74316001)(15975445007)(10400500002)(110136002)(19580395003)(86362001)(107886002)(76576001)(9686002)(54356999)(50986999)(122556002)(450100001)(7696003)(97736004)(11100500001)(305945005)(102836003)(2906002)(101416001)(8936002)(105586002)(7846002)(2351001)(229853001)(5003600100003)(3846002)(106116001)(7736002)(6116002)(106356001)(3660700001)(66066001)(5640700001)(189998001)(3280700002)(68736007)(33656002)(533714002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR0301MB2120;
	H:BY2PR0301MB2117.namprd03.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: mmm.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: mmm.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2016 21:52:07.5060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: facac3c4-e2a5-4257-af76-205c8a821ddb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR0301MB2120
Subject: question: yocto-bsp tool warnings
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
X-List-Received-Date: Thu, 23 Jun 2016 22:09:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've been looking into setting up my own BSP layer based on the=20
standard/beaglebone branch and I've run into some warnings I wasn't familia=
r
with. I created a test BSP with the yocto-bsp tool and set MACHINE=3Dtest,
(which is the name of my meta layer) then ran it. This produced several=20
warnings:

WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patch:=
 After meta data application, the kernel tree branch is standard/test.
WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patch:=
 The SRC_URI specified branch standard/base.
WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patch:=
=20
WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patch:=
 The branch will be forced to standard/base, but this means the board meta =
data
WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patch:=
 (.scc files) do not match the SRC_URI specification.
WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patch:=
=20
WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patch:=
 The meta data and branch standard/base should be inspected to ensure the p=
roper
WARNING: linux-yocto-4.4.10+gitAUTOINC+870134f4bf_13852755ec-r0.1 do_patch:=
 kernel is being built.

I found the patch which enabled this warning, but I'm unsure how to allevia=
te
it. I do intend to use the standard/test branch, but I'm not sure which
SRC_URI is telling bitbake to build the standard/base.=20

Any idea where to start looking?

Patch that enabled the warnings: http://lists.openembedded.org/pipermail/op=
enembedded-core/2016-April/119808.html


    =

