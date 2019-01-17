Return-Path: <Amol.Lad@4rf.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FF88E00CE5; Thu, 17 Jan 2019 14:15:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.137.108 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 32412 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Jan 2019 14:15:52 PST
Received: from AUS01-SY3-obe.outbound.protection.outlook.com
	(mail-eopbgr1370108.outbound.protection.outlook.com [40.107.137.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45B4CE00C4E
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 14:15:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=4rf.onmicrosoft.com;
	s=selector1-4rf-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=gRWvqKWhYGV9AcPOZhkQG7raiODs/oyV2ypnY7z8uBM=;
	b=EAaMdU8AgMrgePo1cm0Vj0kPwkNbWz2g0CMTuszHJpYVQmphkaIcWYRs839W9jTuaWlJRPx0ertE7o5vihLlE93sp16/3OzXhfr65uxaltznpZiV+44K5KYe1mC+Ku6TwNsMnV1iRQ+iapJXJyK0OQgw+u4+6KsKhdkwGUqCU8c=
Received: from MEXPR01CA0129.ausprd01.prod.outlook.com (2603:10c6:200:2e::14)
	by MEAPR01MB2373.ausprd01.prod.outlook.com (2603:10c6:201:7::20) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1516.18;
	Thu, 17 Jan 2019 12:42:38 +0000
Received: from HK2APC01FT060.eop-APC01.prod.protection.outlook.com
	(2a01:111:f400:7ebc::202) by MEXPR01CA0129.outlook.office365.com
	(2603:10c6:200:2e::14) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1537.25 via
	Frontend Transport; Thu, 17 Jan 2019 12:42:38 +0000
Authentication-Results: spf=pass (sender IP is 114.110.34.227)
	smtp.mailfrom=4rf.com; yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=4rf.com;
Received-SPF: Pass (protection.outlook.com: domain of 4rf.com designates
	114.110.34.227 as permitted sender) receiver=protection.outlook.com;
	client-ip=114.110.34.227; helo=mail.4rf.com;
Received: from mail.4rf.com (114.110.34.227) by
	HK2APC01FT060.mail.protection.outlook.com (10.152.249.160) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1471.13 via Frontend Transport; Thu, 17 Jan 2019 12:42:36 +0000
Received: from 4rf-nz-exchange.local.4rf.com
	(fd00:192:168:0:bd7a:f2d0:7a81:173f) by 4rf-nz-exchange.local.4rf.com
	(fd00:192:168:0:bd7a:f2d0:7a81:173f) with Microsoft SMTP Server (TLS)
	id 15.0.1395.4; Fri, 18 Jan 2019 01:42:33 +1300
Received: from 4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f]) by
	4rf-nz-exchange.local.4rf.com ([fe80::bd7a:f2d0:7a81:173f%14]) with
	mapi id 15.00.1395.000; Fri, 18 Jan 2019 01:42:33 +1300
From: Amol Lad <Amol.Lad@4rf.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Boost recipe compilation failure in Yocto 2.6 with GCC 8.2
Thread-Index: AdSuYdGhWy7IukjKQQ2k1+BQEcvvFA==
Date: Thu, 17 Jan 2019 12:42:33 +0000
Message-ID: <9d39755ec7ed4473ba89918633c04b91@4rf-nz-exchange.local.4rf.com>
Accept-Language: en-US, en-NZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [106.51.241.251]
x-c2processedorg: b87d8f4e-38aa-47ad-a534-2cc14c7a88c7
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:114.110.34.227; IPV:CAL; CTRY:NZ; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(39840400004)(376002)(346002)(136003)(396003)(199004)(189003)(66066001)(9326002)(24736004)(6916009)(14454004)(6306002)(106466001)(486006)(108616005)(508600001)(426003)(5640700003)(55016002)(9456002)(26826003)(54896002)(72206003)(7696005)(2501003)(8936002)(81156014)(2906002)(2351001)(8676002)(81166006)(5660300001)(102836004)(1730700003)(476003)(126002)(84326002)(86362001)(98436002)(7736002)(68736007)(26005)(106002)(14444005)(3846002)(790700001)(6116002)(316002)(16586007)(78486014)(186003)(336012)(53936002)(356004)(5024004)(260700001)(97736004)(71190400001)(473944003)(414714003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MEAPR01MB2373; H:mail.4rf.com;
	FPR:; SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-Microsoft-Exchange-Diagnostics: 1; HK2APC01FT060;
	1:Lb4j0K6/kI7E6nA6og7s+OF59Fs0k8sANcOjcIXmO+V3U2rbnfd2Hp/26lOLDi0WhNhsUkqw8NoNL6dB3rx0fXVw/OCOsFKZawIveogRO1CujGBqcV1EsbvIY/w+xI71
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3e1ec9a0-c371-4f62-e32e-08d67c79429f
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600109)(711020)(4608076)(4709027)(2017052603328)(7153060)(7193020);
	SRVR:MEAPR01MB2373; 
X-Microsoft-Exchange-Diagnostics: 1; MEAPR01MB2373;
	3:67s6K8JVsWvRln8VRclqg7o29MLFm5wKl22SjF61yk8NKm4N3WR5xSKdKuBKAP8we3tRviMUhlM7rqncDudnIN5UfXkbt5tuAL6IBQRMO2zEC5RYKhJZTkwbEIXMvNkBadN3XE5gznOzwXqPEpT0x+oxUgUUb4HHYYpRyma+DQwd+8M39TLiQa5E9eyVq6qyXuyKhHEJUl5tFlwmZHvmU8vnTit5aEdq4yER2cGomma2DgSoKdCFoWHZsuVtAEyLkKZrk9HaF/2FAPQz5dIUqRHmFq/xDUUjvIbQx7YZbMavfl/CxHeWXoBNBp1yRYgZ+36xS/J108TCAcSW3NbGFp09de56HmM8lNnkcgn6qn6ahQR9KLPNd1hBrRdTdWze;
	25:nMg9j8E/PNVPt1kd3rJl7MYRcnz4K8P9hCkfL4E86A0lxCSofnhYSFHZlYO/VfZewZvI4ALqcwciM1lVd6TLiF+zc3gf8sEdB7fvKwzsOkI7qbgiIN0bzo5Z8l9jiu96PJJjFk7Yzs9pK2kw0dG6W60cC/3WWS1ERJ+eQll3wRz/WOia8+lVzNXmDPqXm7xdLPl+1H55HYCDKXTbnFdSraiqgqeI6LiQ/UX5N5j6cojeEPgLmD7VslRtqlkez1mXWy0fo6MSx8N6UJKUqpbql32pXOVVWQJAvk8xCTvQAILA8fdH8NbYI1+c8FdmuF+S8YQWNOo7iUnyMdW/NAAXVg==
X-MS-TrafficTypeDiagnostic: MEAPR01MB2373:
X-Microsoft-Exchange-Diagnostics: 1; MEAPR01MB2373;
	31:C/hx4L2Us0WereU7UqGz6ix5s9RCY4NAofVGrhMNm2Y1AW1bectCubJrTKtecY30jlw2WHGYXcIcF+7HMKL2qlwAvJrsSzdeC+tIMvbK3bHIUVQTtHdhcXVpIYZz/GdL2+m1bZbMoHXKSvf/ZQwi1MWj0ldCEIgZQd7zsl4uTEM8pI4HuwPLa+QwB6I+ShCs2Qf14PpxpRbrwh208H3ZciWSUCU9B4lYKt4F22gO+cI=;
	4:88JtWmUe5s1zDAKQ0R5S9ABxoZqQJtlhUN74RFNY0MrrXT/r1hEjSffuyDcxWo3KB3UTLZZyCbYB76L1+RRRnphEC2L7WSh7w4ijGWcailG7S/Zo7bdaGLzVsrxBD299oyu0ACpSH5t/kRXS+a+g5KfVWdVn4/v1h9Shx0X41ky8NUkFBPD4jNt7gIWkXjF8bKKkH9o0EpjnKRJMv2WSJcKLlNNNvnqK3kcmpWNQoa0DMpW31gn2qH0TPo3o7LTfF+y462j8+FUZCkgsBFpewTYMoATl1GUy4IRwlyVivNpZn9MHjvdsdo7z3wjFD2Py
X-Microsoft-Antispam-PRVS: <MEAPR01MB2373575FB3779EDDB1D4982EDD830@MEAPR01MB2373.ausprd01.prod.outlook.com>
X-Forefront-PRVS: 0920602B08
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; MEAPR01MB2373;
	23:+u4FvPZHbug+Tg2fhv43mtq8B/fL2lheOGUy0Ksny?=
	=?us-ascii?Q?/uddHyko4yayQVu0wZlZUHRevUIbhd+wTvmd63vhg3lkDjixVmZyYPFFoZ0t?=
	=?us-ascii?Q?q2N1vdkp3P58cWb44DrY7QGetpMMr11kOBNa7GMCXCTU8vMY5sLTCUx18tP4?=
	=?us-ascii?Q?/RZGvURaF0uq8SESdX2pYv2CYuo4Y9HZ6kOTLUGSD1vLb7D2jsbKjIxice/m?=
	=?us-ascii?Q?eG3MJilwnA+qnMFR1i6akkCiJfMpEwjcb2laJkNJ/8z8ysATasyFCk+Jo6ya?=
	=?us-ascii?Q?O57GpXC7J8OQwOx5n+ubn6OS2Uk6602eQJtebYfDAmkomJCB+aI18XhCtzMy?=
	=?us-ascii?Q?ZamBKuE+NX2xaso1e/SlX6/eBIu3gqA7H5nT8W/gBmA3YQVvSMZ/MP12OiTo?=
	=?us-ascii?Q?IsOvT8qOTx4hqYlzgqKllXhZlcxg1jBa+Ze89koo5KhqQ611B3TJJsZvpSRW?=
	=?us-ascii?Q?1JuIcjNdYrAs7u064n5Md2MpIUt7r9B/Rt61s6g8TOSyazrKQQOIqVLCuFEy?=
	=?us-ascii?Q?JWcGsAOmP9pxTQ6b2axmauZ3FLhA+wXn5xU4U0annHAwE0kR/XjAHNjT9REw?=
	=?us-ascii?Q?SfchV6JEHljsap1OvjGbKDMDsfCtQsY8oQsEkc4H9K4WBWZ+CRNiYYRAu4iS?=
	=?us-ascii?Q?WNnNF/PlnWFdTwUTgPJ0DYO1al55aUZEZuR1aeqkL3t8P1d2mavePTEkm3AC?=
	=?us-ascii?Q?w5+hnMcNA3+RN4+A3s94HTiBN7MI9N+q/GeM20B/2m2H9qdUvoBuEHH1ddWR?=
	=?us-ascii?Q?xYguBynyFL4NOHh+Ja6ypBRNev9AZjCqc+KyjHehmLI2Cnn8HcHl4a+VHK1j?=
	=?us-ascii?Q?SGQkGJe6yrhn7nEJfk1KCSMZbs65MDEpDi19kJCy9FS8Nuf/rXXna3igM9dR?=
	=?us-ascii?Q?cR76Sj9YZczfYhWGZufvJ5S9VAWwM7unvlSDnf8Ok8Nm3smq3c513vQp9ZKj?=
	=?us-ascii?Q?D6X537UeddxzAul7Yi28mFm71JE6THrx11VfLD3cjKLiW9OZmqdZkyONRBJ/?=
	=?us-ascii?Q?rMRYI1NaPDf1JvbA4802l8AdvyJwEC6U+KhoFrJqNk/y+4TU7frWtm8mlh5I?=
	=?us-ascii?Q?+T9uJNBee527DZWi5JPoRRYuOxplVj7Ikq32aKXUMpwmWmEIY3XO/Calaqzq?=
	=?us-ascii?Q?EWgaPa0VIF9r+wswZT5ziPzbZ1TdTTMRKKaLHAfs4pdszmcpADN/OS1oGkfe?=
	=?us-ascii?Q?QLe83KnPGGEjz27ZCTFzk7B5kTlpLDOp7JKzcL+2+ghbBgNmNLpTAi5R3y+A?=
	=?us-ascii?Q?kjbe49x8/dIisf1+aEIu0wpjEdQ8dIv52cw8pw9J6OjZvFF1aNHP5MOpGBn7?=
	=?us-ascii?Q?x338NFClUhuWd/f95GqQbj4ahNG8wkCc47M1scXjgBbTkiH7dtoa0CEHV3Pc?=
	=?us-ascii?Q?wwOSw=3D=3D?=
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 1dtQmjLEPhhPIF+5bJNArVUcnZSmf6ycaORj5lPi50716PM3yJvU9sc0qdlSPyTal9ERfBhHW0kuuoVyLfeHRzkxFfEE0rhDht9bRr2bsH2Qsu8TGZc/fVdiFXS1DCgq5vLrDtyUm7+z0Isvp0MWtYwVQfzgDfrTwl4a54knak3Vyfl0xgowVcGaKXna2iF4HoG1186hxBO8XEcTOwZ/uq9gniHd84ENMw9sVRSYVwnExfnaf2oOFU/mSwqKAbFZlrZW3rtI1XFIDhgpzVnwoOMpwHmOGRuq3ZsGVQSRbHhKuSLjHx1aiHkzykp4VnJWIS6KfZAs4K2bhHGjrw/d+jpN3uzG4zG6PPXzCZTggShTRBCKb0Qz20pV7L7331izvMGh8xOznGNwxoEY0h7Dc5qePHvYA4YguGqpV68HUi8=
X-Microsoft-Exchange-Diagnostics: 1; MEAPR01MB2373;
	6:BN8x56euk0orj6ABV1ntiZeq4yqIok1wTY/EsUO7G2/RCnrOArS5MMo4oQZfsEoJXHcES2dXwAS/S2NRahGnN73Itra32C5O/jXEMClmdrVviq1wvkTTOyRkRL0QoFgZpyp8RKhahmIjMdMg1e1oytqt4nV0IA3ApjGwz3MQUPOHJYNFnyT8EUBicoPtbjedt0oas5TILt0qE0aWOMPOHq/xu6qgiCLTg/27n+m0Emd89qPqPJy9Z/wMrTWc1YMt3RrVDEJtPtN15VRnvfNak1FvyyYiFc8hBciHRO1phOvORA8rAzJeU4xD3dGjhwXOvegjPVUiKBk0jf4sC8j3ol1PLDntA0KW4kOUu5QaTF038Gig/khdwi4tu5Df/EELKPLZXda+uqlqB2KH/wFMU3d1sGK66PGG+XpAu1vL7SGye1ybw9Heg8JtNl/mdneIE8HQyQQstgoV1OH4tp0uQw==;
	5:lGM3cYzbsvssOjgtaXcptz4yeLu0JhSm75IyBJvg642j3ndv4Kvij0Lr499qqatWaL5aQz37hfXDs1DRrROXfF/JarkJ4Slfi0GyWEQCNrnItwZo6XnuHVdZtNlcltyeC0Xxi9IfwVs6FYuJpYfSYZ8GWYwyubzkhYiJUny9rBs2R9gl3fNosXKekXvFAeMJ6HbnicCEEcnTcd4tV6oGNQ==;
	7:acA/BuQ1Pdl4DH3TKurRdD5kiJ/0X7Ute1CdSPJCq/KqMZ3sgTeX+WL7g2idOISuKpi9X1gITKadffmeetmutw2bjLJ8Xjmn3tIe0YnZZcIRKV9AfS67dXhdAJ43nvRc6fIj2s/oqLZiS1imdLqQtg==
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: 4rf.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2019 12:42:36.2040 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e1ec9a0-c371-4f62-e32e-08d67c79429f
X-MS-Exchange-CrossTenant-Id: 9ffb526e-7b63-4774-8f76-2167f5ab5208
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9ffb526e-7b63-4774-8f76-2167f5ab5208;
	Ip=[114.110.34.227]; Helo=[mail.4rf.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MEAPR01MB2373
Subject: Boost recipe compilation failure in Yocto 2.6 with GCC 8.2
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
X-List-Received-Date: Thu, 17 Jan 2019 22:15:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9d39755ec7ed4473ba89918633c04b914rfnzexchangelocal4rfco_"

--_000_9d39755ec7ed4473ba89918633c04b914rfnzexchangelocal4rfco_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Boost recipe compilation fails with below error. Build is okay if "GCCVERSI=
ON =3D "7.%". Please advise what might be wrong?

{standard input}: Assembler messages:
{standard input}:7896: Warning: end of file not at end of a line; newline i=
nserted
{standard input}:9139: Error: unknown pseudo-op: `.cfi_r'
{standard input}: Error: open CFI at the end of file; missing .cfi_endproc =
directive
arm-next-linux-gnueabi-g++: fatal error: Killed signal terminated program c=
c1plus
compilation terminated.

Details:

Build Configuration:
BB_VERSION           =3D "1.40.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "arm-next-linux-gnueabi"
MACHINE              =3D "clearfog"
DISTRO               =3D "next"
DISTRO_VERSION       =3D "1.0"
TUNE_FEATURES        =3D "arm armv7a vfp neon callconvention-hard"
TARGET_FPU           =3D "hard"
meta
meta-poky
meta-yocto-bsp       =3D "my-yocto-2.6:84eecb017ef92ef36b4df730908828e54aef=
f85c"
meta-oe
..

Detailed log:

    "arm-next-linux-gnueabi-g++" "-march=3Darmv7-a" "-mfpu=3Dneon" "-mfloat=
-abi=3Dhard" "-Wl,-O1" "-Wl,--hash-style=3Dgnu" "-Wl,--as-needed" "--sysroo=
t=3D/home/alad/yocto/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/b=
oost/1.68.0-r0/recipe-sysroot"    -O2 -pipe -g -feliminate-unused-debug-typ=
es -fdebug-prefix-map=3D/home/alad/yocto/poky/build/tmp/work/armv7ahf-neon-=
next-linux-gnueabi/boost/1.68.0-r0=3D/usr/src/debug/boost/1.68.0-r0 -fdebug=
-prefix-map=3D/home/alad/yocto/poky/build/tmp/work/armv7ahf-neon-next-linux=
-gnueabi/boost/1.68.0-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/alad/=
yocto/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/boost/1.68.0-r0/=
recipe-sysroot-native=3D  -fvisibility-inlines-hidden -pthread -O3 -finline=
-functions -Wno-inline -Wall -fno-strict-aliasing -ftemplate-depth-1024 -fv=
isibility=3Dhidden -DBOOST_ALL_NO_LIB=3D1 -DBOOST_ATOMIC_STATIC_LINK=3D1 -D=
BOOST_CHRONO_STATIC_LINK=3D1 -DBOOST_FILESYSTEM_STATIC_LINK=3D1 -DBOOST_LOG=
_BUILDING_THE_LIB=3D1 -DBOOST_LOG_HAS_PTHREAD_MUTEX_ROBUST -DBOOST_LOG_USE_=
NATIVE_SYSLOG -DBOOST_LOG_WITHOUT_DEBUG_OUTPUT -DBOOST_LOG_WITHOUT_EVENT_LO=
G -DBOOST_SPIRIT_USE_PHOENIX_V3=3D1 -DBOOST_SYSTEM_NO_DEPRECATED -DBOOST_SY=
STEM_STATIC_LINK=3D1 -DBOOST_THREAD_BUILD_LIB=3D1 -DBOOST_THREAD_DONT_USE_C=
HRONO=3D1 -DBOOST_THREAD_POSIX -DBOOST_THREAD_USE_LIB=3D1 -DDATE_TIME_INLIN=
E -DNDEBUG -D_XOPEN_SOURCE=3D600 -D__STDC_CONSTANT_MACROS  -I"." -I"libs/lo=
g/src" -c -o "/home/alad/yocto/poky/build/tmp/work/armv7ahf-neon-next-linux=
-gnueabi/boost/1.68.0-r0/boost_1_68_0/arm-next-linux-gnueabi/boost/bin.v2/l=
ibs/log/build/581af9cf1e4e5052d9f06634cc376f39/core.o" "libs/log/src/core.c=
pp"

{standard input}: Assembler messages:
{standard input}:7896: Warning: end of file not at end of a line; newline i=
nserted
{standard input}:9139: Error: unknown pseudo-op: `.cfi_r'
{standard input}: Error: open CFI at the end of file; missing .cfi_endproc =
directive
arm-next-linux-gnueabi-g++: fatal error: Killed signal terminated program c=
c1plus
compilation terminated.
gcc.compile.c++ /home/alad/yocto/poky/build/tmp/work/armv7ahf-neon-next-lin=
ux-gnueabi/boost/1.68.0-r0/boost_1_68_0/arm-next-linux-gnueabi/boost/bin.v2=
/libs/log/build/581af9cf1e4e5052d9f06634cc376f39/process_name.o

________________________________
The information in this email communication (inclusive of attachments) is c=
onfidential to 4RF Limited and the intended recipient(s). If you are not th=
e intended recipient(s), please note that any use, disclosure, distribution=
 or copying of this information or any part thereof is strictly prohibited =
and that the author accepts no liability for the consequences of any action=
 taken on the basis of the information provided. If you have received this =
email in error, please notify the sender immediately by return email and th=
en delete all instances of this email from your system. 4RF Limited will no=
t accept responsibility for any consequences associated with the use of thi=
s email (including, but not limited to, damages sustained as a result of an=
y viruses and/or any action or lack of action taken in reliance on it).

--_000_9d39755ec7ed4473ba89918633c04b914rfnzexchangelocal4rfco_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-NZ" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Boost recipe compilation fails with below error. Bui=
ld is okay if &#8220;GCCVERSION =3D &#8220;7.%&#8221;. Please advise what m=
ight be wrong?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">{standard input}: Assembler messages:<o:p></o:p></p>
<p class=3D"MsoNormal">{standard input}:7896: Warning: end of file not at e=
nd of a line; newline inserted<o:p></o:p></p>
<p class=3D"MsoNormal">{standard input}:9139: Error: unknown pseudo-op: `.c=
fi_r'<o:p></o:p></p>
<p class=3D"MsoNormal">{standard input}: Error: open CFI at the end of file=
; missing .cfi_endproc directive<o:p></o:p></p>
<p class=3D"MsoNormal">arm-next-linux-gnueabi-g&#43;&#43;: fatal error: Kil=
led signal terminated program cc1plus<o:p></o:p></p>
<p class=3D"MsoNormal">compilation terminated.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Details:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Build Configuration:<o:p></o:p></p>
<p class=3D"MsoNormal">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;1.40.0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-linux&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">NATIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &q=
uot;universal&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;arm-next-linux-gnueabi&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;clearfog&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;next&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;1.0&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; =3D &quot;arm armv7a vfp neon callconvention-hard&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;hard&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta<o:p></o:p></p>
<p class=3D"MsoNormal">meta-poky<o:p></o:p></p>
<p class=3D"MsoNormal">meta-yocto-bsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;my-yocto-2.6:84eecb017ef92ef36b4df730908828e54aeff85c&quot;<o:p><=
/o:p></p>
<p class=3D"MsoNormal">meta-oe<o:p></o:p></p>
<p class=3D"MsoNormal">..<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Detailed log:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; &quot;arm-next-linux-gnueabi-g&#4=
3;&#43;&quot; &quot;-march=3Darmv7-a&quot; &quot;-mfpu=3Dneon&quot; &quot;-=
mfloat-abi=3Dhard&quot; &quot;-Wl,-O1&quot; &quot;-Wl,--hash-style=3Dgnu&qu=
ot; &quot;-Wl,--as-needed&quot; &quot;--sysroot=3D/home/alad/yocto/poky/bui=
ld/tmp/work/armv7ahf-neon-next-linux-gnueabi/boost/1.68.0-r0/recipe-sysroot=
&quot;&nbsp;&nbsp;&nbsp;
 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/ala=
d/yocto/poky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/boost/1.68.0-r=
0=3D/usr/src/debug/boost/1.68.0-r0 -fdebug-prefix-map=3D/home/alad/yocto/po=
ky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/boost/1.68.0-r0/recipe-s=
ysroot=3D
 -fdebug-prefix-map=3D/home/alad/yocto/poky/build/tmp/work/armv7ahf-neon-ne=
xt-linux-gnueabi/boost/1.68.0-r0/recipe-sysroot-native=3D&nbsp; -fvisibilit=
y-inlines-hidden -pthread -O3 -finline-functions -Wno-inline -Wall -fno-str=
ict-aliasing -ftemplate-depth-1024 -fvisibility=3Dhidden
 -DBOOST_ALL_NO_LIB=3D1 -DBOOST_ATOMIC_STATIC_LINK=3D1 -DBOOST_CHRONO_STATI=
C_LINK=3D1 -DBOOST_FILESYSTEM_STATIC_LINK=3D1 -DBOOST_LOG_BUILDING_THE_LIB=
=3D1 -DBOOST_LOG_HAS_PTHREAD_MUTEX_ROBUST -DBOOST_LOG_USE_NATIVE_SYSLOG -DB=
OOST_LOG_WITHOUT_DEBUG_OUTPUT -DBOOST_LOG_WITHOUT_EVENT_LOG
 -DBOOST_SPIRIT_USE_PHOENIX_V3=3D1 -DBOOST_SYSTEM_NO_DEPRECATED -DBOOST_SYS=
TEM_STATIC_LINK=3D1 -DBOOST_THREAD_BUILD_LIB=3D1 -DBOOST_THREAD_DONT_USE_CH=
RONO=3D1 -DBOOST_THREAD_POSIX -DBOOST_THREAD_USE_LIB=3D1 -DDATE_TIME_INLINE=
 -DNDEBUG -D_XOPEN_SOURCE=3D600 -D__STDC_CONSTANT_MACROS&nbsp;
 -I&quot;.&quot; -I&quot;libs/log/src&quot; -c -o &quot;/home/alad/yocto/po=
ky/build/tmp/work/armv7ahf-neon-next-linux-gnueabi/boost/1.68.0-r0/boost_1_=
68_0/arm-next-linux-gnueabi/boost/bin.v2/libs/log/build/581af9cf1e4e5052d9f=
06634cc376f39/core.o&quot; &quot;libs/log/src/core.cpp&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">{standard input}: Assembler messages:<o:p></o:p></p>
<p class=3D"MsoNormal">{standard input}:7896: Warning: end of file not at e=
nd of a line; newline inserted<o:p></o:p></p>
<p class=3D"MsoNormal">{standard input}:9139: Error: unknown pseudo-op: `.c=
fi_r'<o:p></o:p></p>
<p class=3D"MsoNormal">{standard input}: Error: open CFI at the end of file=
; missing .cfi_endproc directive<o:p></o:p></p>
<p class=3D"MsoNormal">arm-next-linux-gnueabi-g&#43;&#43;: fatal error: Kil=
led signal terminated program cc1plus<o:p></o:p></p>
<p class=3D"MsoNormal">compilation terminated.<o:p></o:p></p>
<p class=3D"MsoNormal">gcc.compile.c&#43;&#43; /home/alad/yocto/poky/build/=
tmp/work/armv7ahf-neon-next-linux-gnueabi/boost/1.68.0-r0/boost_1_68_0/arm-=
next-linux-gnueabi/boost/bin.v2/libs/log/build/581af9cf1e4e5052d9f06634cc37=
6f39/process_name.o<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<font color=3D"#9a9a9a"><font style=3D"FONT-SIZE: 8pt" face=3D"Arial">
<hr style=3D"FONT-SIZE: 8pt; FONT-FAMILY: Arial">
The information in this email communication (inclusive of attachments) is c=
onfidential to 4RF Limited and the intended recipient(s). If you are not th=
e intended recipient(s), please note that any use, disclosure, distribution=
 or copying of this information
 or any part thereof is strictly prohibited and that the author accepts no =
liability for the consequences of any action taken on the basis of the info=
rmation provided. If you have received this email in error, please notify t=
he sender immediately by return
 email and then delete all instances of this email from your system. 4RF Li=
mited will not accept responsibility for any consequences associated with t=
he use of this email (including, but not limited to, damages sustained as a=
 result of any viruses and/or any
 action or lack of action taken in reliance on it).</font> </font>
</body>
</html>

--_000_9d39755ec7ed4473ba89918633c04b914rfnzexchangelocal4rfco_--
