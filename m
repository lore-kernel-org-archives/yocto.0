Return-Path: <Oliver.Westermann@cognex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6550EE00DE5; Wed, 23 Oct 2019 04:23:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_SPF_HELO, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.81.111 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-eopbgr810111.outbound.protection.outlook.com [40.107.81.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D09E6E0097C
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 04:23:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=KnFI1bKxs0CoooDrA2vNMO13G4kncLzM2knY0IHkqrHrzZ/iOOKkaQfZ8s2New5NixudecrPJVjjvaQ5R8dpbzrLAHv47dOuOrwzK8BpHspqQRU/2uqjYyQdpsON/f2zDyRTDPQJjQN+ai62LVqwx3qv0q7N/OzigqHqwuOlW1QB+y/OQBHkRtJ4mHNp9aH4RWD5qB8sUy+81T11yxxV/Rk6AYhEcLPC1Xg9Hw+qO7M1zcQ0BBGifEYLPDn+TbtqVrWBRJz3w+1NlSnubl/Agf7/roPMWCt57bDR/UEg9gewQ0L88+6ATRFUd1uT55i+cf91ojY4XhEj30fXPocbeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=lkGHcOpTRKRSpkPvio6oKmvjxuhozeAddbJeH4KsE8Y=;
	b=SyenxzLA0VWmnqvUaO9U/pn3by6olaOI+OrM3E2hvFvNx5fVJ2npekK/jCFbaCbubrx1srfbVGOSpH0pvk7skiMZI6eb70SO0G1eZgid8PY7puqZINZVH1LgmBCxTAqut30I/i+QG7D3Ei+zF3uuDBxpqYe4Qbewgf1Azcf4mvSUXX1N5kDzH1Qe0SqMBupsE4+D/nLza3z8H8WkNPdgJqgtGhBM9q6jlhuQsIXNEtJPBxpaiCsZiEKpDhOtefVLhhajDkdYjBQcigdi3KjHYJR1YIU7cBT5e+5kIB1DwlMHjdbH0JeWQ5Yq00RcbWPHYMezGqZz0TRt6ETPr4wiNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=cognex.com; dmarc=pass action=none header.from=cognex.com;
	dkim=pass header.d=cognex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cognexcorporation.onmicrosoft.com;
	s=selector2-cognexcorporation-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=lkGHcOpTRKRSpkPvio6oKmvjxuhozeAddbJeH4KsE8Y=;
	b=oiTRHuP0cTX/ja22ngNGxgFsFeTgNIZYo8vKWtG7n+rgZjEGPCn+2dDCZi8e2DzdvmA4L+XMs/Mq61mIW9OYqwksYSnKWzEEuI+MGv7AiRdfDhQ0F63hP0Ed2x0uePdEmeA5RBbdCwe+h6+XTb/vFANOJQrUgzbsLy8nSUw2mc8=
Received: from BN6PR06MB3138.namprd06.prod.outlook.com (10.174.95.141) by
	BN6PR06MB3377.namprd06.prod.outlook.com (10.174.234.143) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2347.22; Wed, 23 Oct 2019 11:23:42 +0000
Received: from BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::9041:9ac4:2630:4791]) by
	BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::9041:9ac4:2630:4791%5]) with mapi id 15.20.2347.030;
	Wed, 23 Oct 2019 11:23:42 +0000
From: "Westermann, Oliver" <Oliver.Westermann@cognex.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Issues adding bare meta toolchain to yocto build
Thread-Index: AdWJkytSWiHXV7scTf2QfBcvtaFxMw==
Date: Wed, 23 Oct 2019 11:23:41 +0000
Message-ID: <BN6PR06MB313849AD19D69C793421AE90866B0@BN6PR06MB3138.namprd06.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Oliver.Westermann@cognex.com; 
x-originating-ip: [212.117.79.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 04a981ae-c531-47a4-ea20-08d757ab75b6
x-ms-traffictypediagnostic: BN6PR06MB3377:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BN6PR06MB3377EDC283743B31D16DBFB1866B0@BN6PR06MB3377.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(4636009)(366004)(376002)(346002)(136003)(396003)(39860400002)(189003)(199004)(8936002)(26005)(66066001)(8676002)(316002)(256004)(7736002)(74316002)(14444005)(3846002)(25786009)(1730700003)(81166006)(81156014)(305945005)(6116002)(2501003)(478600001)(6436002)(14454004)(966005)(71200400001)(66556008)(486006)(66946007)(66476007)(2351001)(102836004)(5660300002)(76116006)(66446008)(64756008)(99286004)(6506007)(186003)(33656002)(6916009)(5640700003)(86362001)(9686003)(6306002)(7696005)(52536014)(2906002)(476003)(55016002)(71190400001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR06MB3377;
	H:BN6PR06MB3138.namprd06.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cognex.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +UBPOwvXDsNDJZioEirjMwT1AGJRkthNME6MyriVI4Q+mg3jVWSicjeH8yHBB+Akdgd628Mx3xYNMIVSGelkymR1+akY4Pc9nL83Vd7GIMAvnO7CGegCcgrOGSTwQzH62R1Qv5CcW6iqqIM0rLTqO1ryrBIcO9IzSYfv6+jjg50VHnifex7xGbLgpQMDarP6Pd0F8UmwKU1I6C+MU3KxCJds0LTu17B4Lj76E2p9NjVLn13VTRjnai3Zc2G8SjQRjw86VVi7WxbQa4sDXvHF5SNpXNLLQorERCkm8N+Y1vy9usaOEsnY4kUfqfYZwpyF6C6/ci4d4b1KFiE89LL5l9j+ZNVc4fyGpbj1HSsmob2WA0sSkGuwTgyyQXFhYnBwvMPplIOVKJXTHqrT8vmpimJ4fjNxQ167w3pkV31W7LetLFkEVFWPcU5FoZwi9eK9RtzytlBdhd8GpS+kZIybOMsWfLI2ufOLKz8crXUFJk0=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04a981ae-c531-47a4-ea20-08d757ab75b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 11:23:42.0271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2S9LEA/thefydK7qonHaBJcuopWuXkOXXyphKzTAi/RXyqpH5KK5qBi5FXCLecvwI4EZe71Kb9rpGnvBPHrV0nyPYSt4WZwZdAmoW6jmDrI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR06MB3377
Subject: Issues adding bare meta toolchain to yocto build
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
X-List-Received-Date: Wed, 23 Oct 2019 11:23:46 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hey,

I'm having issues adding a build for a bare metal target to my yocto toolch=
ain. I've a NXP SoC with a M4 core and I would like to integrate the M4 bin=
ary build into yocto.
My M4 binary has a CMAKE file that depends on ARMGCC_DIR being set to locat=
e the toolchain and everything works fine locally.

I've create a recipe for the toolchain that is heavily inspired by a TI rec=
ipe for the gcc-arm-none-eabi (available here: http://git.yoctoproject.org/=
cgit/cgit.cgi/meta-ti/tree/recipes-ti/devtools/gcc-arm-none-eabi_7-2018-q2-=
update.bb?h=3Dmaster).
I've made sure that GCC_ARM_NONE_TOOLCHAIN_RECIPE is set.

After calling bitbake -cpopulate-sysroot gcc-arm-none-eabi-native the image=
/${GCC_ARM_NONE_TOOLCHAIN_RECIPE} path contains the complete toolchain.

My M4 recipe looks like this (plus SUMMARY, LICENSE, SRC_URI, ...):

inherit pkgconfig cmake
DEPENDS =3D "gcc-arm-none-eabi-native"

S =3D "${WORKDIR}/git "

EXTRA_OECMAKE =3D '-DCMAKE_TOOLCHAIN_FILE=3D"../armgcc.cmake" \
                 -G "Unix Makefiles" \
                 -DCMAKE_BUILD_TYPE=3Drelease'

From my understanding depending on gcc-arm-none-eabi-native should result i=
n the native toolchain being installed into the m4's recipe-sysroot-native =
folder.
The sysroot-providers in the recipe-sysroot-native folder does list gcc-arm=
-none-eabi-native, but I don't get the files and therefore have no toolchai=
n.

Any suggestions on what I'm doing wrong or how to debug this further?

Best regards, Olli

