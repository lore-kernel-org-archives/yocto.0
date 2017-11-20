Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C406E00AF2; Mon, 20 Nov 2017 11:53:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.241.48.73 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from g9t5009.houston.hpe.com (g9t5009.houston.hpe.com [15.241.48.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F910E009CB
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 11:53:17 -0800 (PST)
Received: from G2W6310.americas.hpqcorp.net (g2w6310.austin.hp.com
	[16.197.64.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g9t5009.houston.hpe.com (Postfix) with ESMTPS id 4341D6B
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 19:53:17 +0000 (UTC)
Received: from G9W8455.americas.hpqcorp.net (2002:10d8:a15e::10d8:a15e) by
	G2W6310.americas.hpqcorp.net (2002:10c5:4034::10c5:4034) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Mon, 20 Nov 2017 19:53:17 +0000
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (15.241.52.11) by
	G9W8455.americas.hpqcorp.net (16.216.161.94) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Mon, 20 Nov 2017 19:53:16 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.20) by
	CS1PR8401MB0839.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.19) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.239.5; Mon, 20 Nov 2017 19:53:15 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd]) by
	CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd%18]) with mapi id 15.20.0239.009;
	Mon, 20 Nov 2017 19:53:15 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Generating Package/Image Developer Documentation
Thread-Index: AdNiOFkSWGT/NWj8QTqoWvcjeANdPQ==
Date: Mon, 20 Nov 2017 19:53:15 +0000
Message-ID: <CS1PR8401MB0840E46221671FF3A69BA921ED220@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yannick.koehler@hpe.com; 
x-originating-ip: [15.219.163.254]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CS1PR8401MB0839;
	6:vS9luUVWPGCNLO0terfk5T44V3gjoKyIOUJMhECjjgDWQgvbL6hwCZ6ej4+xs6QYRrU1fxRRMEwb+nmAKDEmskeHqSYDRaEYYYer1Z7ho6w0Bu5diqjDT4DlaU+SqeuZsa3iNv9l6WAJV/+YmTrcLW6JK1RrGqAXIUjGwPUGiheGrzamFWZQ270pen+o6mFp+M1RkRjVzHSvl5k8tQlOHIT63k33OE/t50QEwRdb7tI3qyCz5+4YDwZO1yLLPi0ZhJ3bX1r+sfvN9KJ6HcGIUXGMDIO9sjQSFf9abVE+cFJ9ZU4ZTexcR7aezH8RjZrRVIyaachq/ctrrh7w0Fk5eUKxdasrUmrwMEotLar6bw0=;
	5:ubfcmGVSeaw3P1cn5vvTosyJgRHYH1v3M/0/s/HcW0pgu6FCd4MtK6P1BLF6O6mYzfTbYMn3nfVEO9pPA9hdNqraAILLBOm297bVS89UCrc7ItCwWCeRScSRnGR/xupAZ5UmvGiQKrnS/V6/Wko6gYGOvEeBZvZ/PShK5Urm2bI=;
	24:iYJK0nYL0F1RnYA0TnQMS6Rb8MeBMwE60fzz8W6PtDsqnBRcks+fLOfep1hJpgpzPB6EFUpUtCSutwxCwaGOj+AI2D5LkEJrC+05f2Ccs7I=;
	7:oTpwG0I9d9eCDaIJ/n6wwFuE7uwo6TSDizw2WvHjwgCagvnix3ets9fHD4b5hO3MnhjVdLT4QEUBhNJPf0Au2Mz8nbnL0k31bZMIQEmuzMEmr3TjdctmDr2/PvQ68xRY0Swxudaaj9vQURMcz0vksCEi2Vk8d7oYtKXAwxbwqu7nzCAQWDDCZHi/QTFcPwuzv/7adBNPkDPWYhd0ZVcX4h4B41vkEq5ENgegQfi6f5DHVeE5H39xlRSIu/dNtfZe
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: de6944bd-a27f-438e-e003-08d5305056a3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(4534020)(4602075)(4627115)(8989060)(201703031133081)(201702281549075)(8990040)(48565401081)(2017052603199);
	SRVR:CS1PR8401MB0839; 
x-ms-traffictypediagnostic: CS1PR8401MB0839:
x-microsoft-antispam-prvs: <CS1PR8401MB0839B5DA3A2813658BA55DC1ED220@CS1PR8401MB0839.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(100000703101)(100105400095)(93006095)(93001095)(3231022)(10201501046)(3002001)(6055026)(6041248)(20161123562025)(20161123560025)(20161123564025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:CS1PR8401MB0839; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:CS1PR8401MB0839; 
x-forefront-prvs: 04976078F0
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(346002)(376002)(39860400002)(52314003)(199003)(189002)(5660300001)(478600001)(8936002)(86362001)(5250100002)(3480700004)(2900100001)(33656002)(68736007)(305945005)(6916009)(7736002)(74316002)(2501003)(316002)(1730700003)(81166006)(81156014)(8676002)(14454004)(97736004)(5640700003)(66066001)(50986999)(7696004)(189998001)(9686003)(99286004)(101416001)(106356001)(2906002)(105586002)(53936002)(55016002)(25786009)(3846002)(6506006)(6436002)(102836003)(6116002)(2351001)(3280700002)(3660700001)(54356999);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CS1PR8401MB0839;
	H:CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: de6944bd-a27f-438e-e003-08d5305056a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2017 19:53:15.1265 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CS1PR8401MB0839
X-OriginatorOrg: hpe.com
Subject: Generating Package/Image Developer Documentation
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
X-List-Received-Date: Mon, 20 Nov 2017 19:53:19 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

  I would like to know if there exists a way to build a set of package Deve=
loper documentation.  For example, many of our package are written in C/C++=
 and use Doxygen to generate API reference.  I understand that yocto/bitbak=
e has some support for user documentation such as info and man pages.  I wa=
s wondering if there was more to it.

  The way I would like it to work would be to have in the image's recipe a =
different variable then IMAGE_INSTALL which would serve the same purpose ma=
ybe DEVAPI_INSTALL and would go through those package only and call a task =
such as "do_build_devdoc" and maybe "do_install_devdoc", then packaging it =
into a FILES_*-devdoc set of instruction so that I may packages files at th=
e end containing those docs.

  The image would then install those documentation in the sysroot under som=
e folder, maybe /usr/share/devdoc/<packagename>/ and potentially create a t=
arball of this documentation.

   Anyway, let me know if something similar pre-exists or if such a project=
 has been started somehow please, as I would like to contribute/participate=
.

--
Yannick Koehler

