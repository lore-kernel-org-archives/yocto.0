Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81E70E00CE5; Fri,  9 Dec 2016 10:16:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.108 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3625 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 Dec 2016 10:16:06 PST
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0108.outbound.protection.outlook.com [104.47.41.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3840FE00CA6
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 10:16:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=Melink.onmicrosoft.com; s=selector1-melinkcorp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Jysedq8alqhrT+o0NXwzUjxhy1/LfZ7o0Lo4z3lSyv4=;
	b=XL+pc3Ra6PGb+ThXtWz05zvN8igb96GugGjzfBClz53i83YxEpXc92Vh1sXBF3APzvxYBVr+JVaXYY9qdo4TYeIXb8PY8QpwHrXqp++10YxYM/c/++UMH6Ngl7ZEwzeLS9SyWLgNlY+s4uOVWpNRbDi5kfD971/CgaW3Tj1zs1M=
Received: from DM5PR05MB2954.namprd05.prod.outlook.com (10.168.176.142) by
	DM5PR05MB2954.namprd05.prod.outlook.com (10.168.176.142) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.771.4; Fri, 9 Dec 2016 16:43:14 +0000
Received: from DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) by
	DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) with mapi id
	15.01.0771.010; Fri, 9 Dec 2016 16:43:14 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Bryan Evenson <bevenson@melinkcorp.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Can't enable reverse debugging
Thread-Index: AdJRh7s3U+ajT5gsR0y6A3ueaaSV7AApt/RQ
Date: Fri, 9 Dec 2016 16:43:14 +0000
Message-ID: <DM5PR05MB29547D5AAF9D2D064B8F6DA1BB870@DM5PR05MB2954.namprd05.prod.outlook.com>
References: <DM5PR05MB29540B30AC5BD787AE4D7310BB840@DM5PR05MB2954.namprd05.prod.outlook.com>
In-Reply-To: <DM5PR05MB29540B30AC5BD787AE4D7310BB840@DM5PR05MB2954.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; DM5PR05MB2954;
	7:LfXdMVF4gfvbthKRh4ykQWLcKt8/HicexpG2jVdF4Mu5T4SHPmNb3B9u0lhEF/2AQCF1cDWAVfIFy+6CXuwr8h+UydXjmsFDLIoiVu/xp81rTipVkQBKqPd8NYnaR3h6vqvrj7U7udbWIorYIhpkrB4ijZP8g2kB/HqEdXqYWnXy1BvpR9KMomtqU631HuiO+NadIavsuUK8R0hEj+pU0T+z9KiRl0Z0t7GWD7HGBhf7kYP4LW6xIBaF8famf11B6aFbqnirka4CChodRmdnIVhdYKnDZLJo2+vi8L6eiq3SxbZerLf4tigN7wJ4gBVINyaGvMVIBUi26Z4GkeoD7LpW1o02W2MZSIh2Mqil7A4DEZ6HW2f4lToe/n4GtOM7BegBpsHzWkjh+7rb2oIlJihfRHIpEB9yOkDHOeCljIxXH4HqSXw22gwZU0wnbapkVVjcmjsyo2t8EffIK0jppg==
x-forefront-antispam-report: SFV:SKI; SCL:-1SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(39450400003)(13464003)(377454003)(199003)(189002)(8936002)(2900100001)(9686002)(2501003)(305945005)(3480700004)(122556002)(38730400001)(86362001)(5001770100001)(6506006)(77096006)(189998001)(8676002)(6436002)(102836003)(107886002)(2906002)(6116002)(81166006)(68736007)(97736004)(74316002)(81156014)(3846002)(7736002)(54356999)(33656002)(50986999)(2950100002)(101416001)(76176999)(66066001)(5660300001)(99286002)(105586002)(229853002)(7696004)(92566002)(76576001)(3280700002)(3660700001)(450100001)(106356001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR05MB2954;
	H:DM5PR05MB2954.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
x-ms-office365-filtering-correlation-id: 96717e10-b4e9-44a1-f13c-08d42052785d
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:DM5PR05MB2954;
x-microsoft-antispam-prvs: <DM5PR05MB2954627FCE7B1221AD2E5C01BB870@DM5PR05MB2954.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123564025)(20161123560025)(20161123555025)(20161123562025)(6072148);
	SRVR:DM5PR05MB2954; BCL:0; PCL:0; RULEID:; SRVR:DM5PR05MB2954; 
x-forefront-prvs: 015114592F
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2016 16:43:14.2480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR05MB2954
Subject: Re: Can't enable reverse debugging
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
X-List-Received-Date: Fri, 09 Dec 2016 18:16:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I tried a few other things, see below.

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Bryan Evenson
> Sent: Thursday, December 08, 2016 2:50 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] Can't enable reverse debugging
>=20
> I'm on poky/dizzy and I'm getting a segementation fault in my application
> that I think may be related to a buffer overflow.  I'm using the Eclipse =
plug-in
> (on Eclipse Kepler) to debug on the hardware with GDB.  I'm trying to ena=
ble
> reverse debugging but I have not had any success and I'm looking for some
> help.
>=20
> My target processor is an SAM9G25 (ARM926EJ-S core).  I have been able to
> debug through Eclipse on the target hardware without issue.  I tried enab=
ling
> Reverse Debugging by going to Window->Customize Perspective...-
> >Command Groups Availability and selecting "Reverse Debugging".  Now
> there is a "Reverse Toggle" button on my toolbar, but it is always grayed=
 out
> whether I have a debug session running or not.  I have also tried enterin=
g the
> command "record" from the GDB console after my program breaks at main.
> When I run the program, I get the error message "Process record: failed t=
o
> record execution log".

I tried first running my application, pausing the debugger and then sending=
 the "record" command.  When I continued debugging, I got the following GDB=
 error:

....x86_64-nativesdk-pokysdk-linux/gdb-cross-canadian-arm/7.7.1-r0/gdb-7.7.=
1/gdb/utils.c:1073: internal-error: virtual memory exhausted.
A problem internal to GDB has been detected,
further debugging may prove unreliable.

I did some looking around and I couldn't see any reasonable answer to why t=
his would happen.  I also just noticed that for the Debug Configurations un=
der Eclipse, the debugger settings tab doesn't have "Enable Reverse Debuggi=
ng at startup" option listed for the C/C++ Remote Application debugging typ=
e.  Is this option just not available to me with my environment?

Thanks,
Bryan

>=20
> Is there something that I'm missing from my build steps or some Eclipse
> plugin that I may be missing that is causing issues for reverse debugging=
?  Or
> is there some hardware requirement that my system may not meet?
>=20
> Thanks,
> Bryan
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

