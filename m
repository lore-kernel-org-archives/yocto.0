Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18ABCE00E9E; Fri, 25 Sep 2015 12:20:38 -0700 (PDT)
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
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0139.outbound.protection.outlook.com [157.56.110.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96F6BE00BE3
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 12:20:34 -0700 (PDT)
Received: from BN3PR0501MB1091.namprd05.prod.outlook.com (10.160.113.13) by
	BN3PR0501MB1586.namprd05.prod.outlook.com (10.161.217.151) with
	Microsoft
	SMTP Server (TLS) id 15.1.280.20; Fri, 25 Sep 2015 19:20:32 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) by
	BN3PR0501MB1091.namprd05.prod.outlook.com (10.160.113.13) with
	Microsoft SMTP
	Server (TLS) id 15.1.274.16; Fri, 25 Sep 2015 19:20:31 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) with
	mapi id 15.01.0274.009; Fri, 25 Sep 2015 19:20:30 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Bryan Evenson <bevenson@melinkcorp.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: GDB with Eclipse *almost* working...
Thread-Index: AdD3pgDeWRsZeE8CTIyUjOFoKNJfGAAIGcnA
Date: Fri, 25 Sep 2015 19:20:30 +0000
Message-ID: <BN3PR0501MB1090B841C24971279D199125BB420@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <BN3PR0501MB10901E0D24587CDA1AF6D5F1BB420@BN3PR0501MB1090.namprd05.prod.outlook.com>
In-Reply-To: <BN3PR0501MB10901E0D24587CDA1AF6D5F1BB420@BN3PR0501MB1090.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; BN3PR0501MB1091;
	5:ba6M2y13NRN4ednMDEKaqCda8clpnGOrmPaT7kBJlxr8D7fSw1jKmuDU3KOxZyhgwELjC9ws1HT9oi31cc5DwJfyOKxKuradBg+6UvkoueVwyqc/gSjbNdWINJt+mtKNnzUsVSbGRvLiH9C7GTnlVQ==;
	24:O4rNv0K7YWNwCSNQw+0QkehsFyqPa7Z3ImjVaFCisjQ7G+rH4eRa/X1ikPFRvoIIAghNBTpM1RfAF0oxr8GRflbHdYA3OjV9uLYrBgLYI4A=;
	20:Z/uugYySrMUi5EXJ7na+n4b9Rt1LlwVXu+FkBayV/B6ryv/KX4pG4K+g8PlAT+QHDvuEBChlZmpFw0uArzzbXw==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1091;
x-microsoft-antispam-prvs: <BN3PR0501MB10919B9A0480D2FDD69C8481BB420@BN3PR0501MB1091.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(520078)(3002001);
	SRVR:BN3PR0501MB1091; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0501MB1091; 
x-forefront-prvs: 07106EF9B9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(377454003)(13464003)(164054003)(199003)(189002)(77156002)(2501003)(5001830100001)(62966003)(68736005)(105586002)(86362001)(10400500002)(15975445007)(76176999)(54356999)(102836002)(450100001)(5004730100002)(106356001)(77096005)(19580405001)(19580395003)(101416001)(33656002)(76576001)(99286002)(66066001)(50986999)(5001770100001)(5001960100002)(122556002)(97736004)(5001860100001)(40100003)(81156007)(2950100001)(74316001)(5007970100001)(87936001)(2900100001)(189998001)(107886002)(5003600100002)(92566002)(4001540100001)(5001920100001)(46102003)(5002640100001)(64706001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1091;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2015 19:20:30.4851 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1091
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0501MB1586;
	2:+FhnVukIT8ka8kjCi6yyh+LzsLyMIPZOk2F1/nMyd13FGB9tSVmnZgAlBri3OyJNNJIPzeLgjTBbAgVzobDho2WFhpC6SWOQmRZowJHjodqZRpubivE3AU7nSkBRjXSGlXGWtfpaTGZ7Xp86B0qxn6LE9bEwrFWghUsMpC3HuyI=;
	23:fYejk9IYbvavNQYoBgdl5uYoUCWBlSujNp3DzBdu6q5kuvADdHEfbQXzPxKguYb0DsR9DLyYYZJvMf3ugz8ryCqlpzH9CAatUBAP2a4M9dn8bZrPWUfmh7yQfyNI6U1HUA84aGq1ER3KmEpbXvXWfrRM4qkQ4zSR+3p+MZTj7HQ8BSsDcPAnbODUGxkstqUL
X-OriginatorOrg: melinkcorp.com
Subject: Re: GDB with Eclipse *almost* working...
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
X-List-Received-Date: Fri, 25 Sep 2015 19:20:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Bryan Evenson
> Sent: Friday, September 25, 2015 12:17 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] GDB with Eclipse *almost* working...
>=20
> All,
>=20
> I almost have a full working setup with GDB in Eclipse for debugging remo=
tely
> on my target hardware, but it's not quite there.  Here's what I've done a=
nd
> where I'm at so far:
>=20
> 1. I have a custom image that I build, plus a few userspace applications.=
  I use
> bitbake at the command line to build the full image.  I have also built a=
n SDK
> based on my production image and have been successfully using that SDK to
> build applications through Eclipse.
> 2. Followed the instructions for Eclipse as detailed in the "Working with
> Eclipse" section of the manual to install all the remote debugging relate=
d
> tools (GDB, TCF, etc.).
> 3. Created a dev image recipe that is the same as my base image recipe,
> except I added dev-pkgs and eclipse-debug to IMAGE_FEATURES.  For the
> userspace applications I want to debug, I changed their reference in
> IMAGE_INSTALL to list the "-dbg" packages instead of the standard package=
s.
> I also added gdbserver to the IMAGE_INSTALL list.
> 4. Built my dev image and burned it to flash on my target hardware.
> 5. Upon starting my target hardware, I noticed that the executables and
> other supporting files for the packages I listed as -dbg were missing.  I=
 then
> by hand installed the standard packages (opkg install foo) to get all the=
 files I
> needed.
> 6. From Eclipse, I created a new Debug configuration as detailed in
> "Deploying and Debugging the Application" section to setup for Remote
> Application debugging using TCF.
> 7. I added a "set sysroot" line to the .gdbinit for my application to poi=
nt to the
> sysroot listed in the SDK I built in step 1.
> 8. I then launch debug and I am able to start the application on my targe=
t
> hardware.  However, none of the source files are viewable.  I get the err=
or
> "No source available for main()" in the source window.  I can run and pau=
se
> the application and see the disassembly, but I can't see the source and s=
et
> breakpoints.
>=20
> This is the closest I've ever got to debugging with GDB.  Anyone know wha=
t
> final step I may be missing?

The application I was trying to debug was not an Autotooled project.  I hav=
e another application that is an Autotooled project; I tried debugging the =
second one and I could see the source code just fine.  Eclipse had properly=
 set the CFLAGS properly so I could do a debug build.  For the straight Mak=
efile project, I have to set a variable so it does a debug build.  Once I s=
et the environment variable for the Debug configuration so that it would ac=
tually use "-g -O0" in the CFLAGS the source files showed up and I can now =
set breakpoints.  So if you aren't seeing the source file, make sure that y=
our application is really doing a debug build.

Regards,
Bryan

>=20
> Thanks,
> Bryan
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

