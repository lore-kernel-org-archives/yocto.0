Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10864E00CC4; Tue, 26 Sep 2017 10:49:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.132 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0132.outbound.protection.outlook.com [104.47.32.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E731CE00C3A
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 10:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=Melink.onmicrosoft.com; s=selector1-melinkcorp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=VRGFvxndE1S91m1H1Y9uVhsTCTgLzmyakjM8B745kjw=;
	b=aLEKmmm73s/Xj5uG1gFzQbc2XOQGKlCZMydCLRFWphq9PnaSQ9WPbvcyo3h0Kv4h5RE2CbWx2jS0IQj6df5FVjEuALXGwjqLOOYSjfCuBqfsuElg5tcrweSCJEtz8CmO8Mug/Nw4KHabFTagtcG1PrdL1Neq06cHnvjMKYxK+ZI=
Received: from DM5PR05MB2954.namprd05.prod.outlook.com (10.168.176.142) by
	DM5PR05MB2953.namprd05.prod.outlook.com (10.168.176.141) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.5; Tue, 26 Sep 2017 17:16:05 +0000
Received: from DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) by
	DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) with mapi id
	15.20.0077.016; Tue, 26 Sep 2017 17:16:05 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Errors building with Windows Subsystem for Linux (aka Bash on
	Ubuntu on Windows)
Thread-Index: AdM2vvT/ayFgE6oJRBOg0n7smNXIyQ==
Date: Tue, 26 Sep 2017 17:16:05 +0000
Message-ID: <DM5PR05MB29545649D8FAD14D890F96C4BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR05MB2953;
	6:p1iIVHTGKroloE3+WhidBkcRS2HCHGIC1ieayOW6IHB52wRQOnIPUqkxuCkOZh20CCAUrvKCgOMr8s8dptXxRepo5Rf4FiQDyyH95jBUlIzr4t2dYImEJUBkftT95srIxjzOYjeqwksp2a8p23DXoRCn2W7Q+ltwygv0RCta3VibJmK12o6mXlVzQ6mUG3z53HjoafbQYr1EGP9hTGQPx2f0UnzhAoE58FyPD8tXWzFsF/IQBEaELh8jns5Fh2Z1n1mN7A3uhiiG7v6G3hTOvHjGuHofYd+luOf2LZu6F27UFOPCnj7QsOqMUMRU7ySHyBznfl4zd1VrV6tFny0JCg==;
	5:AnBujU487n+Vxn8A9dwALWLbcwWGmWHDMW/aZx1MuopwgbDHAPbQZLG/ArNrq5/DK7R7Wk80hi2wllJ8vqqdjGjMX3Fg0tcqL3dQraxYXKGvbzEeThMbS7dDM+BVOXPqFKCTlcvsSlxcBcgnsqBR3Q==;
	24:ubGq5BwAaeMQEil6GP3/gF2QL4Gs/H6X9UUzdxT8v1hKFxLaTODQjdOxrTri9+vrazSGPESRqLf5NJZxsOE0iaDjaJDtIILlBo1sOcUFlkA=;
	7:FI7wFMcBJ6f3YAzfst28maKuyk8/XUvxhxpoPNJTVLeVoZ4Qn9oTtjhhDD3mWj7o7pcIS4N8UVNEUIBazMn0P8Kw/LTq8fOJ/nweyk61NPm9T62r4UPi0I3QAGESFGfMNTI4lA4rK5SaJGvuGYwCybHETIl3CaXscsmma6rIN0V1BFBVh8blRfYJVsRMqnjLYCXsnBW0oXQlYtPET9adTp1T0famIwctN/3xfTh9s0s=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: c7596052-c707-4ef6-d510-08d505024581
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:DM5PR05MB2953; 
x-ms-traffictypediagnostic: DM5PR05MB2953:
x-exchange-antispam-report-test: UriScan:(278428928389397);
x-microsoft-antispam-prvs: <DM5PR05MB295339CD56C15631E7C9BECDBB7B0@DM5PR05MB2953.namprd05.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(10201501046)(100000703101)(100105400095)(93006095)(93001095)(3002001)(6041248)(20161123560025)(20161123562025)(201703131423075)(201703061421075)(20161123564025)(20161123555025)(20161123558100)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DM5PR05MB2953; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DM5PR05MB2953; 
x-forefront-prvs: 0442E569BC
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(376002)(346002)(199003)(189002)(7696004)(3660700001)(55016002)(9686003)(99286003)(508600001)(66066001)(77096006)(50986999)(2906002)(1730700003)(54356999)(25786009)(97736004)(5640700003)(6116002)(102836003)(53936002)(2351001)(6506006)(3846002)(105586002)(106356001)(3280700002)(6436002)(305945005)(86362001)(2501003)(189998001)(74316002)(81156014)(101416001)(6916009)(14454004)(7736002)(8676002)(81166006)(45080400002)(2900100001)(5660300001)(8936002)(33656002)(68736007);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR05MB2953;
	H:DM5PR05MB2954.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2017 17:16:05.4815 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR05MB2953
Subject: Errors building with Windows Subsystem for Linux (aka Bash on Ubuntu on Windows)
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
X-List-Received-Date: Tue, 26 Sep 2017 17:49:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

Due to what our IT department can support, I am issued a Windows laptop for=
 development.  In the past I have used VMWare to make a Linux virtual machi=
ne for my Yocto Project based image builds and application development.  We=
 are starting to get Windows 10 laptops so I am evaluating doing my builds =
using the Windows Subsystem for Linux (WSL) by building a poky/morty image.=
  Overall it seems to be working.  I've had an issue that I've worked throu=
gh and other issues that I'm not quite sure what is going on.

The first major issue was that PATH includes some Windows directory paths s=
o that you can execute certain Windows applications, but that meant PATH in=
cluded filepaths like ".../Program Files (x86) ..." and python didn't like =
the spaces and parentheses in PATH.  The suggested fix for this issue is to=
 set PATH in your ~/.bashrc file to either exclude the Windows directories =
or to escape the spaces and parentheses.  This worked for me.

The second issue I'm seeing is I get the following warning:

  WARNING: The Linux kernel on your build host was not configured to provid=
e process I/O statistics. (CONFIG_TASK_IO_ACCOUNTING is not set)

I searched the Yocto Project documentation and I couldn't figure out what s=
pecifically these I/O statistics are used for.  What affect does this have =
on my build?  Does anybody know if there is a way to enable I/O statistics =
for the WSL?

I'm also seeing a very slow refresh of the build status on the command line=
.  When multiple tasks are running, I can see the lines clear away from the=
 bottom of the screen to the top and then fill in back down.  The resulting=
 flash from the refresh makes it nearly impossible to read what some of the=
 running tasks are.  What is the actual mechanism for updating the task sta=
tus on the command line?  I'm wondering if it's counting on some feature th=
at Microsoft hasn't fully supported yet.

I am also getting a build error with glibc-locale.  In the do_package stage=
 I'm getting a failure in the function sstate_task_postfunc.  The error is =
on the following command:

  cp -afl --preserve=3Dxattr <base_path>/poky/poky-build/tmp/work/armv5e-po=
ky-linux-gnueabi/glibc-locale/2.24-r0/packages-split/* <base_path>/poky/pok=
y-build/tmp/work/armv5e-poky-linux-gnueabi/glibc-locale/2.24-r0/sstate-buil=
d-package//packages-split/*

I am seeing a lot of errors from this command that look like the following:

 cp: cannot create hard link: '<base_path>/poky/poky-build/tmp/work/armv5e-=
poky-linux-gnueabi/glibc-locale/2.24-r0/sstate-build-package//packages-spli=
t/glibc-binary-localedata-ks-in/usr/lib/locale/ks_IN/LC_MEASUREMENT' to '<b=
ase_path>/poky/poky-build/tmp/work/armv5e-poky-linux-gnueabi/glibc-locale/2=
.24-r0/packages-split/glibc-binary-localedata-ks-in/usr/lib/locale/ks_IN/LC=
_MEASUREMENT': Invalid argument

I looked at my working directory, and I see that in the source files are th=
ere.  If I run the cp command from the command line as shown above, I get t=
he same errors.  I'm trying to figure out if this is an issue with hard lin=
ks with WSL or if this is general build issue.  Any suggestions on what els=
e to try?

Thanks,
Bryan


