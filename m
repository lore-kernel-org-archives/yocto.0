Return-Path: <pkonopel@visteon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0208E0074C; Fri,  6 Mar 2015 07:31:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.119 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 891 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Mar 2015 07:31:14 PST
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0119.outbound.protection.outlook.com [157.55.234.119])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 463CCE00477
	for <yocto@yoctoproject.org>; Fri,  6 Mar 2015 07:31:14 -0800 (PST)
Received: from DB4PR06MB491.eurprd06.prod.outlook.com (10.141.239.18) by
	DB4PR06MB491.eurprd06.prod.outlook.com (10.141.239.18) with Microsoft
	SMTP Server (TLS) id 15.1.99.14; Fri, 6 Mar 2015 15:16:22 +0000
Received: from DB4PR06MB491.eurprd06.prod.outlook.com ([10.141.239.18]) by
	DB4PR06MB491.eurprd06.prod.outlook.com ([10.141.239.18]) with mapi id
	15.01.0099.004; Fri, 6 Mar 2015 15:16:22 +0000
From: "Konopelko, Pavel (P.)" <pkonopel@visteon.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Missing line numbers for .so files in systemd-dbg
Thread-Index: AdBYH76OZQ3t0cFqROe43M3BDY5YRA==
Date: Fri, 6 Mar 2015 15:16:22 +0000
Message-ID: <DB4PR06MB49104B1A838176D6E28DBDBC51C0@DB4PR06MB491.eurprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [88.78.195.108]
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB4PR06MB491;
x-forefront-antispam-report: BMV:0; SFV:NSPM;
	SFS:(10019020)(6009001)(61754003)(252514010)(53754006)(164054003)(40100003)(5890100001)(76576001)(19580405001)(77156002)(450100001)(2900100001)(19580395003)(50986999)(102836002)(46102003)(33656002)(2656002)(107886001)(122556002)(87936001)(110136001)(74316001)(2351001)(229853001)(62966003)(86362001)(2501003)(54356999)(92566002)(77096005)(66066001)(142923001)(567094001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB4PR06MB491;
	H:DB4PR06MB491.eurprd06.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-microsoft-antispam-prvs: <DB4PR06MB4910382E63847CD5237D055DB1C0@DB4PR06MB491.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5001007)(5005006); SRVR:DB4PR06MB491; BCL:0;
	PCL:0; RULEID:; SRVR:DB4PR06MB491; 
x-forefront-prvs: 05079D8470
MIME-Version: 1.0
X-OriginatorOrg: visteon.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2015 15:16:22.1485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a147aaf-01ec-498c-80a1-e34a8c63c548
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR06MB491
Subject: Missing line numbers for .so files in systemd-dbg
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
X-List-Received-Date: Fri, 06 Mar 2015 15:31:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello everybody,

In a core-image-minimal built with Yocto 1.7.1+, I was trying to step with =
a debugger through libsystemd.so, but discovered that the systemd-dbg packa=
ge produced by Yocto build does not include the information on source files=
 and line numbers.  This does not seem to be a global problem since at leas=
t some .so's (e.g., glibc and glib-2.0) from the same image do come with fu=
ll debugging information.  All non-.so files built with systemd recipe also=
 have line numbers included.  Any hints on what might be wrong and how to g=
et full debugging symbols for libsystemd.so would be appreciated.  More det=
ails on my configuration are provided below.

Build Configuration:
BB_VERSION        =3D "1.24.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Fedora-21"
TARGET_SYS        =3D "x86_64-poky-linux"
MACHINE           =3D "qemux86-64"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.7.1"
TUNE_FEATURES     =3D "m64 core2"
TARGET_FPU        =3D ""
meta             =20
meta-yocto       =20
meta-yocto-bsp    =3D "work-1.7.1:b630f2f53645fa8f5890b4732f251c354ad525a7"

Only .so files build for systemd seem to affected.  All other binaries (e.g=
. daemons) do have line numbers included.  It also seems that the problem o=
ccurs before packaging.  After do_compile, all .so files found in the direc=
tory build/.libs/ already have no line numbers included.  However, the corr=
esponding .o files in build/src/libsystemd/*/ do have the line numbers incl=
uded.

I also tried to build systemd v216 natively and figured out that with the d=
efault build parameters all .so files have their line numbers included.  Co=
mparing the linker parameters between the native build and Yocto build reve=
als the following difference:

Native build:
...
-O0
-Wl,--as-needed
-Wl,--no-undefined
-Wl,--gc-sections
-Wl,-z
-Wl,relro
-Wl,-z
-Wl,now
-Wl,-fuse-ld=3Dgold
-Wl,--version-script=3D./src/libsystemd/libsystemd.sym
-pthread
-Wl,-soname
-Wl,libsystemd.so.0
-o .libs/libsystemd.so.0.4.0

Yocto build:
...
-O2
-Wl,--as-needed
-Wl,--no-undefined
-Wl,--gc-sections
-Wl,-z
-Wl,relro
-Wl,-z
-Wl,now
-Wl,--version-script=3D./src/libsystemd/libsystemd.sym
-Wl,-O1
-Wl,--hash-style=3Dgnu
-Wl,--as-needed
-pthread
-Wl,-soname
-Wl,libsystemd.so.0
-o .libs/libsystemd.so.0.4.0

Is it possible that the linker optimizations (e.g. -Wl,-O1) are causing the=
 problem?  I did not manage to find any hints that this could be the case, =
though.  Should this be the case, how can I fix the systemd recipe to have =
the line numbers included?


Thanks,
--Pavel Konopelko

Regards,
--Pavel Konopelko

Software Architect

Tel: 49 (0) 2273-595-2829
Fax: 49 (0) 2273-595-2261
Email: pkonopel@visteon.com

Visteon Innovation & Technology GmbH=20
Sitz der Gesellschaft: Kerpen=A0=20
Registergericht: K=F6ln HRB 71036
Gesch=E4ftsf=FChrung:=A0 Christian Feltgen, Radboud Vaessen, Andrea Eichelb=
erg
=A0
CONFIDENTIALITY NOTICE: This e-mail message including attachments, if any, =
is intended only for the person or entity to which it is addressed and may =
contain confidential and /or privileged material. Any unauthorized review, =
use, disclosure or distribution is prohibited. If you are not the intended =
recipient, please contact the sender by reply e-mail and destroy all copies=
 of the original message. If you are the intended recipient but do not wish=
 to receive communications through this medium, please so advise the sender=
 immediately.


