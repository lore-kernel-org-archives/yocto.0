Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D801E00F7C; Fri, 25 Sep 2015 09:50:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.139 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1995 seconds by postgrey-1.32 at yocto-www;
	Fri, 25 Sep 2015 09:50:01 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0139.outbound.protection.outlook.com [157.56.110.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AE9DE006CD
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 09:50:01 -0700 (PDT)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) by
	BN3PR0501MB1092.namprd05.prod.outlook.com (10.160.113.139) with
	Microsoft
	SMTP Server (TLS) id 15.1.274.16; Fri, 25 Sep 2015 16:16:43 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) with
	mapi id 15.01.0274.009; Fri, 25 Sep 2015 16:16:43 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: GDB with Eclipse *almost* working...
Thread-Index: AdD3pgDeWRsZeE8CTIyUjOFoKNJfGA==
Date: Fri, 25 Sep 2015 16:16:43 +0000
Message-ID: <BN3PR0501MB10901E0D24587CDA1AF6D5F1BB420@BN3PR0501MB1090.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; BN3PR0501MB1092;
	5:uCQNdObl2LLuERP2PrnnWuU7pgq6wpBZ8DHwd0MnVAIH4wGPhBpojLIQ82CnrdVLQbJ3DGamngOXun8xXAGSiWbzoTD/QRumprpNCQfw2W3hyoRly002magiCOlUkaU9NViDrVuqbIWwNmrBkULP7Q==;
	24:uaILRXIneVu6vueAm3uKvncOVup/LQzFipNQLRgzS3D8NQa/KZb6vQJD5BnqVEKctvzUJvH8UOxvIaCYYVTR9nC4W9ZMbYJpH4rVr1/uPoE=;
	20:wacPCMrs8FeW9ES6raqGRonjLieDphrPj/GPo0YOXOk4n9d3Ms6IBkzxI6Xw8hCaiuv0omnF/8EYaA8Xq6ZQmg==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1092;
x-microsoft-antispam-prvs: <BN3PR0501MB10923F96B785A23DD617024CBB420@BN3PR0501MB1092.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(520078)(8121501046)(3002001);
	SRVR:BN3PR0501MB1092; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0501MB1092; 
x-forefront-prvs: 07106EF9B9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(189002)(164054003)(5002640100001)(10400500002)(107886002)(110136002)(5001960100002)(74316001)(66066001)(189998001)(87936001)(122556002)(2501003)(64706001)(105586002)(50986999)(229853001)(92566002)(68736005)(5001830100001)(76576001)(2351001)(46102003)(77096005)(40100003)(5001860100001)(5004730100002)(5007970100001)(5003600100002)(11100500001)(4001540100001)(62966003)(54356999)(2900100001)(106356001)(81156007)(101416001)(77156002)(450100001)(99286002)(102836002)(33656002)(97736004)(86362001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1092;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2015 16:16:43.2240 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1092
Subject: GDB with Eclipse *almost* working...
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
X-List-Received-Date: Fri, 25 Sep 2015 16:50:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I almost have a full working setup with GDB in Eclipse for debugging remote=
ly on my target hardware, but it's not quite there.  Here's what I've done =
and where I'm at so far:

1. I have a custom image that I build, plus a few userspace applications.  =
I use bitbake at the command line to build the full image.  I have also bui=
lt an SDK based on my production image and have been successfully using tha=
t SDK to build applications through Eclipse.
2. Followed the instructions for Eclipse as detailed in the "Working with E=
clipse" section of the manual to install all the remote debugging related t=
ools (GDB, TCF, etc.).
3. Created a dev image recipe that is the same as my base image recipe, exc=
ept I added dev-pkgs and eclipse-debug to IMAGE_FEATURES.  For the userspac=
e applications I want to debug, I changed their reference in IMAGE_INSTALL =
to list the "-dbg" packages instead of the standard packages.  I also added=
 gdbserver to the IMAGE_INSTALL list.
4. Built my dev image and burned it to flash on my target hardware.
5. Upon starting my target hardware, I noticed that the executables and oth=
er supporting files for the packages I listed as -dbg were missing.  I then=
 by hand installed the standard packages (opkg install foo) to get all the =
files I needed.
6. From Eclipse, I created a new Debug configuration as detailed in "Deploy=
ing and Debugging the Application" section to setup for Remote Application =
debugging using TCF.
7. I added a "set sysroot" line to the .gdbinit for my application to point=
 to the sysroot listed in the SDK I built in step 1.
8. I then launch debug and I am able to start the application on my target =
hardware.  However, none of the source files are viewable.  I get the error=
 "No source available for main()" in the source window.  I can run and paus=
e the application and see the disassembly, but I can't see the source and s=
et breakpoints.

This is the closest I've ever got to debugging with GDB.  Anyone know what =
final step I may be missing? =20

Thanks,
Bryan

