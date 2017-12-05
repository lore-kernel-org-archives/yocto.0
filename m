Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60633E00B5F; Tue,  5 Dec 2017 10:41:32 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DEEBE00AD7
	for <yocto@yoctoproject.org>; Tue,  5 Dec 2017 10:41:30 -0800 (PST)
Received: from G2W6309.americas.hpqcorp.net (g2w6309.austin.hp.com
	[16.197.64.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g9t5009.houston.hpe.com (Postfix) with ESMTPS id 199B965
	for <yocto@yoctoproject.org>; Tue,  5 Dec 2017 18:41:30 +0000 (UTC)
Received: from G9W8455.americas.hpqcorp.net (2002:10d8:a15e::10d8:a15e) by
	G2W6309.americas.hpqcorp.net (2002:10c5:4033::10c5:4033) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Tue, 5 Dec 2017 18:40:56 +0000
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (15.241.52.13) by
	G9W8455.americas.hpqcorp.net (16.216.161.94) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Tue, 5 Dec 2017 18:40:56 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.20) by
	CS1PR8401MB0838.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.18) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.282.5; Tue, 5 Dec 2017 18:40:55 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd]) by
	CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd%18]) with mapi id 15.20.0282.012;
	Tue, 5 Dec 2017 18:40:55 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Removing /usr/src/debug from image
Thread-Index: AdNt9/TtreGIy34uQcCUl/lvVFBwvg==
Date: Tue, 5 Dec 2017 18:40:55 +0000
Message-ID: <CS1PR8401MB084040DA37F13966FC9A27DBED3D0@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yannick.koehler@hpe.com; 
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CS1PR8401MB0838;
	6:JsnH3QgyTBumS1Yv1209gtrqeqDXfhsa5VLU1Pzq2WOSX4UWGLTHlJWvguZJ72K8lJAmXASVY3mPrTL9ZCZuyI/rD2PJAl+tfmjsHS4tmtRNMoq6b5rl+qenDGgOjTi2o8HpkkKAb59Qse6uYu6NlJoebRh4SaDt20bNItnZBZEwI3Wb0a5z7QpQgJuleNAth84LmRtAEyTNBkf3Y1qoIhOprY/rc24bUbT6IDP4yy6nhcX8Xcu/JfQVdNr8zpGrkOi0tZI5YWwtDQ5v0eCblDLCy6UGlqd7jXZw5Y7YfsneEbGUFgzikKqe/TRd1Qcas+C/ouQyeQNxQFWXhNkEMcwmg5a3EBEt2iRl6efXfBM=;
	5:3vPvt6d3cL7s3NtMD7gpuvYOgRf7+jMOBsWggIEDkuK64ToiyjRyNHGqkenlW4yfuNY0Dfe1iacrdkvAZloTJ4W+Fwk24JCBghO5cNEFF+gNtWMlV4vMJFrbBKssUDKcwHObz9rLWkDWViJj2aPKM5T9LlplFxaJf6pkNfT+Y54=;
	24:a9QUtv3e8Ni68p+x5wg6LylV48qJYEMm87gQE5bfeA1JKkTrEP+4cAa0n2ygr4pP/8wfGgb7LCzQG59AyUKFcIUYkq5Twb5s/BQN8Oyrgi4=;
	7:OK4S0t0ptLbGofcdASrKcO2M1nztQCDPOSvGkJ3qJZR2nKXMinBTIZ1l2NU93CJ5Yg8oRxDQCvv3SuXyNTDHHdiiH8OoQWvxhVmfgNmRzxbSdSn8wLyI+q4Hh/AiFd140urF51sqrM5cpVUa2gnPCyV2rTpoFJK/bJYrSpD4o+xxUMj9xnK9WVh3xUkd2k5PtNON3qOqfi3sqq+sOmcoFwmNyVBa8Cd7x3S/BHtHdGG+R/RC7TrlB5zRUYvsSlz9
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 992c570d-44db-42ad-5ecc-08d53c0fb809
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(4534020)(4602075)(4627115)(8989060)(201703031133081)(201702281549075)(8990040)(48565401081)(5600026)(4604075)(2017052603286);
	SRVR:CS1PR8401MB0838; 
x-ms-traffictypediagnostic: CS1PR8401MB0838:
x-microsoft-antispam-prvs: <CS1PR8401MB0838C499B2AEC39B000567ECED3D0@CS1PR8401MB0838.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(5005006)(8121501046)(3002001)(3231022)(93006095)(93001095)(10201501046)(6055026)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123564025)(20161123562025)(20161123560025)(20161123555025)(6072148)(201708071742011);
	SRVR:CS1PR8401MB0838; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:CS1PR8401MB0838; 
x-forefront-prvs: 0512CC5201
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39860400002)(366004)(346002)(376002)(189003)(199004)(2900100001)(8936002)(5250100002)(5640700003)(99286004)(25786009)(6436002)(6506006)(2501003)(105586002)(2351001)(101416001)(3660700001)(14454004)(55016002)(66066001)(106356001)(33656002)(3280700002)(5660300001)(68736007)(97736004)(478600001)(53936002)(305945005)(6116002)(102836003)(81166006)(8676002)(81156014)(1730700003)(7736002)(7696005)(2906002)(86362001)(3846002)(9686003)(6916009)(74316002)(316002)(290074003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CS1PR8401MB0838;
	H:CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 992c570d-44db-42ad-5ecc-08d53c0fb809
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2017 18:40:55.1809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CS1PR8401MB0838
X-OriginatorOrg: hpe.com
Subject: Removing /usr/src/debug from image
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
X-List-Received-Date: Tue, 05 Dec 2017 18:41:32 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have edited my local.conf to remove the debug related EXTRA_IMAGE_FEATURE=
S.  My rootfs still contains a /usr/src/debug folder, which I would like to=
 get rid of.  This likely come from -dbg package inclusion, which I would l=
ike to understand how to control/remove.  We are using Yocto 1.9/2.0, and t=
he only thing I found related to this is=20

	INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"

Yet, from documentation this appears to be about generating the -dbg packag=
es which I do not mind, but I do not want them install in my image.  I am t=
rying to understand what pulls them in.  My image recipe pulls the packageg=
roup-core-boot, ROOTFS_PKGMANAGE_BOOTSTRAP, CORE_IMAGE_EXTRA_INSTALL, ca-ce=
rtificates, package-management and some other private package but none of t=
hose include -dbg...

Any help appreciated.

--
Yannick Koehler

