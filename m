Return-Path: <adam.oleksy@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 480E1E0034A; Wed,  4 Jan 2017 13:27:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.105 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 14378 seconds by postgrey-1.32 at yocto-www;
	Wed, 04 Jan 2017 13:27:08 PST
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0105.outbound.protection.outlook.com [104.47.2.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3635E0030B
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2017 13:27:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
	s=selector1-nokia-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=2GXCmqwkmd6IiRSYatLWjxxmPhL0maevUB4yS1jY23I=;
	b=WeTvrGRFQaVstRlqAMkpWbFbC3w9RIVdom0631Z0ANBkpuJir7+TNWW+894S3NvTq4jdMc4qio/SaUDkVXmM9z1mlLxRe385H7ezFtNxE+dGDITuX+g7gc3hgB2q7GkqrbCJhK7ohdlmOH8c8K/p28eaiBTqRvnYUCpJdGhbXJM=
Received: from HE1PR0701MB2409.eurprd07.prod.outlook.com (10.168.128.16) by
	HE1PR0701MB2412.eurprd07.prod.outlook.com (10.168.128.19) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.829.4; Wed, 4 Jan 2017 08:52:23 +0000
Received: from HE1PR0701MB2409.eurprd07.prod.outlook.com ([10.168.128.16]) by
	HE1PR0701MB2409.eurprd07.prod.outlook.com ([10.168.128.16]) with
	mapi id 15.01.0829.003; Wed, 4 Jan 2017 08:52:23 +0000
From: "Oleksy, Adam (Nokia - PL/Wroclaw)" <adam.oleksy@nokia.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: SDK with enabled multilib conf, missing compilers
Thread-Index: AQHSZl6lHJd3ee2B+UCtxEFLKC09jg==
Date: Wed, 4 Jan 2017 08:52:22 +0000
Message-ID: <HE1PR0701MB2409310C9A2F5DB33B7C9F30F7610@HE1PR0701MB2409.eurprd07.prod.outlook.com>
Accept-Language: pl-PL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=adam.oleksy@nokia.com; 
x-originating-ip: [25.167.184.4]
x-ms-office365-filtering-correlation-id: db3f3dea-1276-439e-f31a-08d4347f001e
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:HE1PR0701MB2412; 
x-microsoft-exchange-diagnostics: 1; HE1PR0701MB2412;
	7:C5pJyjETWYUQkBexKfC75+yUvhRAI20RqO/3sFoR+b2OQYBzmzr0FtLCbP6Mbbl5cIfz/srvsdO3Q+PrGmkjjZkfUIV6lVJejE56V9/HDEXExnjBNZo2wsIzIguBRczcSHr89aVe8VC9n+Eu+MiUoaYeNbQqk2ErTsiVt9W8tdiDYoaqmZeXPqtHUz1dYgPEdDlJYcxK+e8Eb0/FiPoZyGC36bDQEqmkgK/dmTT1VpgHHIrVhBSO27E2mjURCXcMlePY8eUxJGTj1FLSsvgqRDNXNdxzntGjL0N0l7ynHbtZ0r4ThuN+DJqtWcF9Y+2EVlxDHzBbwKzOHLgx9XpA9Q+r/3l8vts/7xx4UxgKuS2V/JiMFs+t92fL8xO4osaIeCH6v/G/54y4gKeCm0NCj620WeIWbdx78Xg9pTrlVHafB4KJexqPCSiAZbZuQiZO7HFP0bse/Ca+AupmA4JC3A==
x-microsoft-antispam-prvs: <HE1PR0701MB2412A7E957778B470B414C8BF7610@HE1PR0701MB2412.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(278428928389397)(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6055026)(6041248)(20161123560025)(20161123555025)(20161123562025)(20161123564025)(20161123558021)(6072148);
	SRVR:HE1PR0701MB2412; BCL:0; PCL:0; RULEID:;
	SRVR:HE1PR0701MB2412; 
x-forefront-prvs: 0177904E6B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(39410400002)(39850400002)(39450400003)(39860400002)(39840400002)(174864002)(199003)(189002)(450100001)(2900100001)(97736004)(189998001)(7736002)(54356999)(107886002)(5640700003)(25786008)(50986999)(99286003)(55016002)(101416001)(122556002)(106356001)(2351001)(105586002)(3660700001)(77096006)(38730400001)(106116001)(74316002)(305945005)(6436002)(92566002)(68736007)(102836003)(6116002)(3846002)(8676002)(7696004)(66066001)(6506006)(1730700003)(81166006)(81156014)(5660300001)(6916009)(2906002)(33656002)(3280700002)(110136003)(8936002)(86362001)(2501003)(9686002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0701MB2412;
	H:HE1PR0701MB2409.eurprd07.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nokia.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2017 08:52:22.5995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0701MB2412
X-Mailman-Approved-At: Mon, 09 Jan 2017 07:33:33 -0800
Subject: SDK with enabled multilib conf, missing compilers
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
X-List-Received-Date: Wed, 04 Jan 2017 21:27:12 -0000
Content-Language: pl-PL
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Hi,
I'm int the process of enabling multlib configuration for my distro, by add=
ing following lines to local.conf file:
# Define multilib target
require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7athf-neon"

I'm able to produce images, where applications are 32 bits apps, and the sy=
stem is 64 bits. However, I've faced problems with SDK... Neither 32bit nor=
 64bit application can be compiled.

I've produced SDK by typink: bitbake
After installing SDK, I get instruction how to source the SDK:
 $ . ~/sdk-multilib/environment-setup-aarch64-poky-linux
 $ . ~/sdk-multilib/environment-setup-armv7ahf-vfp-neon-pokymllib32-linux-g=
nueabi

When I source environment-setup-armv7ahf-vfp-neon-pokymllib32-linux-gnueabi=
 file, then the environment is set up, e.g.:
$ echo $CC
arm-pokymllib32-linux-gnueabi-gcc -march=3Darmv7-a -marm -mthumb-interwork =
-mfloat-abi=3Dhard -mfpu=3Dneon --sysroot=3D~/sdk-multilib/sysroots/aarch64=
-poky-linux

however, arm-pokymllib32-linux-gnueabi-gcc compiler does not exists in the =
SDK:
$ find /home/oleksy/workspace/sdk-multilib/ -name arm-pokymllib32-linux-gnu=
eabi-gcc | wc -l
0

It exists in directory structure, where SDK was built:
./tmp/sysroots/x86_64-linux/usr/bin/arm-pokymllib32-linux-gnueabi/arm-pokym=
llib32-linux-gnueabi-gcc

So, it seems that this compiler is built but not included into SDK installe=
r. The question is: how to force putting this compiler into SDK?
I'm using poky jethro (I now there is newer version, but I have to use this=
) with meta-xilinx (https://github.com/Xilinx/meta-xilinx).

.....................
Best Regards,
Adam Oleksy

Nokia Solutions and Networks Sp. z o.o.

