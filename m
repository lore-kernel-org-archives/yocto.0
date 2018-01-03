Return-Path: <mschepers@telspandata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94CEAE00DA3; Wed,  3 Jan 2018 15:38:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.40.52 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4684 seconds by postgrey-1.32 at yocto-www;
	Wed, 03 Jan 2018 15:38:36 PST
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0052.outbound.protection.outlook.com [104.47.40.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2608EE00D9B
	for <yocto@yoctoproject.org>; Wed,  3 Jan 2018 15:38:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telspandata.onmicrosoft.com; s=selector1-telspandata-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=yoSy01jp/ohKwxSMoHJ/70+74MC5pOyRcEA7jZAx1RM=;
	b=xrR9+6/JkC7yLBO7RbEYD1RCnyjaMU7FVQbKV8zmrghfjP90HXzaVhyQSv9CQjKvFalcWfAXMIICauIbpiS8yle7lCKUvIeoEZugwiqjYtn0fnq1Jbhm3QAtC69e6oXIkwAoKH907By3iGW9epwmgyoRNndMK69T4U0PypsxmL0=
Received: from CY4PR04MB1177.namprd04.prod.outlook.com (10.173.194.7) by
	CY4PR04MB1176.namprd04.prod.outlook.com (10.173.193.150) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.366.8; Wed, 3 Jan 2018 22:05:30 +0000
Received: from CY4PR04MB1177.namprd04.prod.outlook.com ([10.173.194.7]) by
	CY4PR04MB1177.namprd04.prod.outlook.com ([10.173.194.7]) with mapi id
	15.20.0366.009; Wed, 3 Jan 2018 22:05:30 +0000
From: Matt Schepers <mschepers@telspandata.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: recipe for custom python package not on pypi
Thread-Index: AQHThN7SBKD3pjkcs06YLvdrfS22cQ==
Date: Wed, 3 Jan 2018 22:05:29 +0000
Message-ID: <CY4PR04MB1177EB647EAD05243A54BD28B01E0@CY4PR04MB1177.namprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mschepers@telspandata.com; 
x-originating-ip: [96.69.169.201]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY4PR04MB1176;
	7:Kcjf6WUXWugF120ZsXVFNynK9CQ8ys3g5a8yo6MyjR7qUw/ipRBBcYZCymviAQB26Jz6NXP6PVeSno7FCLE/GDRfWlsYhCvLb+ZBV0aYPSGG23gsjAuRcWy6UClL4r2PsVhNrH+LSvKkPunqdDEs9sqpqbvdOzaevI5dkvWG/FVxmuqZ1HM4rF5iWeL8SqQnzBMrokX9IcqZcJVEkZkHuJTeppgh4vauga2Gg0aZdEX8Q/I50fA88XZvmQnwCnRC
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 8bf8da12-81dd-428a-b2d5-08d552f61a57
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(4534020)(4602075)(4603075)(4627115)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060);
	SRVR:CY4PR04MB1176; 
x-ms-traffictypediagnostic: CY4PR04MB1176:
x-microsoft-antispam-prvs: <CY4PR04MB1176A387D7172F06A9B10DA5B01E0@CY4PR04MB1176.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(48706222282353);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040470)(2401047)(8121501046)(5005006)(3002001)(3231023)(944501075)(93006095)(93001095)(10201501046)(6041268)(2016111802025)(20161123560045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123562045)(6072148)(6043046)(201708071742011);
	SRVR:CY4PR04MB1176; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:CY4PR04MB1176; 
x-forefront-prvs: 0541031FF6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(396003)(39830400003)(39380400002)(366004)(346002)(189003)(199004)(81166006)(1730700003)(6116002)(25786009)(2351001)(5660300001)(3846002)(3280700002)(3660700001)(102836004)(14454004)(68736007)(2900100001)(81156014)(478600001)(8676002)(53936002)(66066001)(7696005)(8936002)(77096006)(99286004)(316002)(33656002)(9686003)(86362001)(55016002)(97736004)(5640700003)(6436002)(6916009)(74316002)(2906002)(7736002)(6506007)(305945005)(105586002)(2501003)(106356001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR04MB1176;
	H:CY4PR04MB1177.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: telspandata.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 0LwTPIYbLxr1rt8XScf8xeSvzFQLLmRwW4qL3UUyj6ylryM5ZtBce0OpCTcFpeH9rIr1R4iwLjCHGfcHJPkRRw==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: telspandata.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bf8da12-81dd-428a-b2d5-08d552f61a57
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2018 22:05:29.8118 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 980119cc-b60c-4c4d-84e8-5d25446e5dc3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR04MB1176
Subject: recipe for custom python package not on pypi
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
X-List-Received-Date: Wed, 03 Jan 2018 23:38:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Folks,

I'm looking for a recipe that will install a custom python package to the p=
ython site-packages on the rootfs. The Python package uses setuptools and t=
he standard setup.py and is not available on pypi because I wrote it. In ge=
neral I am having difficulty finding a recipe for a custom package outside =
of the ones available on pypi.

Can someone point me in the right direction?

Thanks,
Matt

