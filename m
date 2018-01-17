Return-Path: <philippe.gislard@idemia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E6E3E00DBA; Wed, 17 Jan 2018 05:07:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.116 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4646 seconds by postgrey-1.32 at yocto-www;
	Wed, 17 Jan 2018 05:07:34 PST
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0116.outbound.protection.outlook.com [104.47.2.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29AC3E00A75
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 05:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=myidemia.onmicrosoft.com; s=selector1-idemia-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=V/RtFn1K2DaVQTLZ8dLLG1dAKAud94twTAOERH1PGjQ=;
	b=FgoTnyXGG5hQf2QF45F1gih4nHG7fEw19pDvvnZ2SON45b+vU6zyqTOpgFbH3ZBvgf8xmQuQXXQQ33YSljTmOwM+2010XsaBt809lPDydzxK3io3exvKlm3/aI9PbSboT8I91b0vAu2zBicVZahU+zS7DE2oUb78zTHWnVOvnZg=
Received: from AM5P189MB0564.EURP189.PROD.OUTLOOK.COM (10.161.89.29) by
	AM5P189MB0564.EURP189.PROD.OUTLOOK.COM (10.161.89.29) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.428.17; Wed, 17 Jan 2018 11:35:48 +0000
Received: from AM5P189MB0564.EURP189.PROD.OUTLOOK.COM
	([fe80::3528:6fd5:938b:1957]) by AM5P189MB0564.EURP189.PROD.OUTLOOK.COM
	([fe80::3528:6fd5:938b:1957%13]) with mapi id 15.20.0428.014;
	Wed, 17 Jan 2018 11:35:48 +0000
From: "GISLARD Philippe (MORPHO)" <philippe.gislard@idemia.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [Pyro] Multiple toolchains
Thread-Index: AdOPhkt4ERZ7rHHDSLWf1ZHbEqdqeQ==
Date: Wed, 17 Jan 2018 11:35:47 +0000
Message-ID: <AM5P189MB056480B6CE441D913DFB0AFEE1E90@AM5P189MB0564.EURP189.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tituslabs-classifications-30: TLPropertyRoot=IDEMIA; Classification=PUBLIC;
	Technology=Not Controlled; 
x-titus-version: 3.5.32.22
x-tituslabs-classificationhash-30: k5/vssDqmf2mveDUEIruNwIf2FLwGbKGLg1nO8WF+aGnE6b32qp5PcKAmOgQa7STGArNF6qCgzJcwkoO0zgLlYuTv84x2xuwx/bc1d7X93EE8wf1ijhCTLqBUZHwixmm//ovSSQNx67an3V0v1zT9kRVU/J/Jim5kmmdnouB4vQyznz9Nagp3lUBhXePDdMWU1hFVOn8tUquKUOBzoODqK4n5y0zxxAfwzg/CtUYXj0=
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=philippe.gislard@idemia.com; 
x-originating-ip: [194.145.235.248]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5P189MB0564;
	7:CzdeeKdfCg9bwwaLLm15mpi9fYirhnJuj8q2qOWqHyPwkFHbWxtAX0yYRff/TeClhAvnvb6is5YCAwJb41EaDXv3FOFVgqpQYUrFGOPXE6EHnJrvKwet4Pfyvh5hrvFpxwwuKLjQR4yO+vY7V6lqW9lq3iGDU/Z7XwfK3ZkOvfFZOU0jnJBPiueMmZ7weG2BxoYkos3EigV1OP8PXI6PeyWRnvnmrok/Y2WvNr4GKr6iACpTXj5OpV6czE0PyLq+
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 97af3ba8-de8a-4ef8-e696-08d55d9e744c
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:AM5P189MB0564; 
x-ms-traffictypediagnostic: AM5P189MB0564:
x-microsoft-antispam-prvs: <AM5P189MB05649B05D8C727EE5F748672E1E90@AM5P189MB0564.EURP189.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040470)(2401047)(5005006)(8121501046)(93006095)(93001095)(10201501046)(3231023)(2400045)(944501161)(3002001)(6041268)(20161123562045)(20161123564045)(20161123560045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011);
	SRVR:AM5P189MB0564; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:AM5P189MB0564; 
x-forefront-prvs: 0555EC8317
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39380400002)(39860400002)(376002)(396003)(346002)(366004)(189003)(199004)(53936002)(2501003)(478600001)(25786009)(55016002)(14454004)(5250100002)(26005)(316002)(5660300001)(2900100001)(5640700003)(6916009)(68736007)(86362001)(3660700001)(3280700002)(99286004)(8936002)(2351001)(9686003)(8676002)(6436002)(1730700003)(81156014)(106356001)(74316002)(33656002)(102836004)(7736002)(66066001)(97736004)(305945005)(6116002)(3846002)(6506007)(81166006)(105586002)(7696005)(2906002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5P189MB0564;
	H:AM5P189MB0564.EURP189.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: idemia.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 0zy6dahAJZS43n3HXB9b76dQbuxjWOEjPuUBCAhi4qwjV6HD4tQNTSOyoSPwbP4x2yCEHow2j6SzeGWxtCYBaA==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: idemia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97af3ba8-de8a-4ef8-e696-08d55d9e744c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2018 11:35:47.9424 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7694d41c-5504-43d9-9e40-cb254ad755ec
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P189MB0564
Subject: [Pyro] Multiple toolchains
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
X-List-Received-Date: Wed, 17 Jan 2018 13:07:37 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are updating our BSP from Krogoth to Pyro.
We are using a kernel designed and patched specifically for our hardware (3=
.10.40) that does not compile with GCC 5.x or GCC6.x.
AFAIK, Pyro is qualified with GCC 5.x and GCC6.x (not with earlier versions=
).

What is the easiest way to use two toolchains?
- GCC 4.9 for the kernel.
- GCC 6.3 for the other packages.

Thank you.


