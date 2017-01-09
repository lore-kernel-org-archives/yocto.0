Return-Path: <Richard.Schmitt@commscope.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDA46E0050B; Mon,  9 Jan 2017 09:33:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.77 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3568 seconds by postgrey-1.32 at yocto-www;
	Mon, 09 Jan 2017 09:33:01 PST
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0077.outbound.protection.outlook.com [104.47.32.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31F55E003E4
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 09:33:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=commscope.onmicrosoft.com; s=selector1-commscope-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=8BZhq0EXE/7mx7Qz/NyKjMgqXe7/dkm07qtngDXK68E=;
	b=QCcqFgS2acZhuXOSG6aD7u9rI64PuguaLUx7I/jZAsz68WHWmvOv/hCa/zGKsOt8Hfdx7Q9gfbKmunAy4BkkAkjRXWjX9wf8vTudP+Q99uUuYfmwnckUzZJN1Lu9fJ4JnTmCenXgtLlonqGq0iDxP9uIUODaZeJ0ImHtKGhfLbM=
Received: from BLUPR0601MB1649.namprd06.prod.outlook.com (10.163.212.143) by
	BLUPR0601MB1652.namprd06.prod.outlook.com (10.163.212.146) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.829.7;
	Mon, 9 Jan 2017 15:59:58 +0000
Received: from BLUPR0601MB1649.namprd06.prod.outlook.com ([10.163.212.143]) by
	BLUPR0601MB1649.namprd06.prod.outlook.com ([10.163.212.143]) with
	mapi id 15.01.0829.013; Mon, 9 Jan 2017 15:59:58 +0000
From: "Schmitt, Richard" <Richard.Schmitt@commscope.com>
To: "Oleksy, Adam (Nokia - PL/Wroclaw)" <adam.oleksy@nokia.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: SDK with enabled multilib conf, missing compilers
Thread-Index: AQHSZl6lHJd3ee2B+UCtxEFLKC09jqEwVZ2w
Date: Mon, 9 Jan 2017 15:59:57 +0000
Message-ID: <BLUPR0601MB1649147ACA9B84CDC2A72421E6640@BLUPR0601MB1649.namprd06.prod.outlook.com>
References: <HE1PR0701MB2409310C9A2F5DB33B7C9F30F7610@HE1PR0701MB2409.eurprd07.prod.outlook.com>
In-Reply-To: <HE1PR0701MB2409310C9A2F5DB33B7C9F30F7610@HE1PR0701MB2409.eurprd07.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Richard.Schmitt@commscope.com; 
x-originating-ip: [131.239.32.100]
x-ms-office365-filtering-correlation-id: 20d1f523-e366-4a73-7486-08d438a88fa8
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:BLUPR0601MB1652; 
x-microsoft-exchange-diagnostics: 1; BLUPR0601MB1652;
	7:JvIKsNb1FymVeVTnCjgMMCRru3UnIKHyGG1KxCoxrm5QsE1HAbSIjyW1mHz+Q5C+v/atjCZhUWfjYcikKKadH+zYry+GeBtuDkmxTI81j4IVK168yieOJmsmBzTPaBRf/8laeEHXqCO9Gh54LYgqW2O27DLRotuTduiKshGnC4Mbhg3BB0SwOIjg8WgtBu2rpHyQ0ygb+/Kec913n5ccgxO2pGf6xhmD74YBMxQkVIk8PHYyUAtv6U7ehdgK6TblPkz7IxHy8TbJ24ZtyXbBHm9ZWocyQXhMHttBhC8ZFWfRQxCim+htJx96NgjLd+eiTJoN8L2f9tAcpf0UIV2MN13wcJuHGKd+nJVxa7r4TuveBrRMhN5ezN+JG03dgl0I8rbaIVs8Moh+rQfym/lBDgeV8jNwrykJWJ/BvcshJWWqW49okNjDKWXsFE+NuAtoFKl0ff364D1yhU/6HoTYOQ==
x-microsoft-antispam-prvs: <BLUPR0601MB165249FAE343A9C8FA694799E6640@BLUPR0601MB1652.namprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(278428928389397)(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123562025)(20161123555025)(20161123564025)(20161123560025)(6072148);
	SRVR:BLUPR0601MB1652; BCL:0; PCL:0; RULEID:;
	SRVR:BLUPR0601MB1652; 
x-forefront-prvs: 0182DBBB05
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(39450400003)(13464003)(377454003)(174864002)(189002)(199003)(2900100001)(8676002)(81156014)(6116002)(8936002)(3846002)(68736007)(2906002)(102836003)(2950100002)(101416001)(33656002)(92566002)(81166006)(7736002)(3280700002)(77096006)(305945005)(3660700001)(50986999)(9686003)(2501003)(6506006)(6436002)(25786008)(55016002)(99286003)(74316002)(6306002)(54356999)(76176999)(97736004)(5660300001)(105586002)(106356001)(7696004)(189998001)(66066001)(38730400001)(107886002)(106116001)(122556002)(5001770100001)(86362001)(229853002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR0601MB1652;
	H:BLUPR0601MB1649.namprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: commscope.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: commscope.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2017 15:59:57.7752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31472f81-8fe4-49ec-8bc3-fa1c295640d7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0601MB1652
Subject: Re: SDK with enabled multilib conf, missing compilers
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
X-List-Received-Date: Mon, 09 Jan 2017 17:33:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I believe you need to apply a patch that is already in the poky git tree bu=
t might not be in the branch you are on.  Try:

git fetch origin
git cherry-pick b6253350fb86d8e54792905342a5892af570d526

Rich

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Oleksy, Adam (Nokia - PL/Wroclaw)
Sent: Wednesday, January 04, 2017 2:52 AM
To: yocto@yoctoproject.org
Subject: [yocto] SDK with enabled multilib conf, missing compilers

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
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

