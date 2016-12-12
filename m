Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF47AE0085D; Mon, 12 Dec 2016 08:04:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,TVD_PH_BODY_ACCOUNTS_PRE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.96 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* 0.0 TVD_PH_BODY_ACCOUNTS_PRE The body matches phrases such as
	"accounts
	*      suspended", "account credited", "account verification"
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0096.outbound.protection.outlook.com [104.47.36.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89075E004E5
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 08:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=Melink.onmicrosoft.com; s=selector1-melinkcorp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=N7M4oed94uBVY+Es7HGD9stAxC6/9Cr7/4N3pXpGonE=;
	b=R0+6XUKMMS8c8BTgt0+rn/j3mBMOPaDw6qYvEIcc1RDYVbV02tCIV9EQdu2kTs7+07J0ZSEB5MuSok6O3x4XNsdpGyimScAWF/m2icdojtJnrZnZZjCh2uyZN4+qeKC90If5Hiv70/gnH4EeAdP+cu6ciNM7rrOfJa1okmuNZVU=
Received: from DM5PR05MB2954.namprd05.prod.outlook.com (10.168.176.142) by
	DM5PR05MB2956.namprd05.prod.outlook.com (10.168.176.144) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.771.4; Mon, 12 Dec 2016 16:03:56 +0000
Received: from DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) by
	DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) with mapi id
	15.01.0771.014; Mon, 12 Dec 2016 16:03:56 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] suggestions for version controlling multi-layer
	reproducible builds?
Thread-Index: AQHSVIt673uiRqwosE6L8009wxkzPKEEctXw
Date: Mon, 12 Dec 2016 16:03:56 +0000
Message-ID: <DM5PR05MB29544A2B9D67C803ECDD6DB7BB980@DM5PR05MB2954.namprd05.prod.outlook.com>
References: <alpine.LFD.2.20.1612121012290.18661@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.20.1612121012290.18661@localhost.localdomain>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-ms-office365-filtering-correlation-id: 4ae9c858-73f2-44d6-8f9f-08d422a87a2c
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:DM5PR05MB2956;
x-microsoft-exchange-diagnostics: 1; DM5PR05MB2956;
	7:jGH8pynMj4BR85FDgJ43JIuc0Pm/tWyDcmVdT3njzI8uIAoFzwETsvlyA/RhOOiiza307+O62/pf9HZofx+FJEsS1oms/dVm5ziH4t9N5tktwhxgFbDHASJc/GcjGnIl2uvzZoK2jjTckq3/49o0p4MYgppq1p8tHyOEwX17B0raSrTQ2W8UQWa8wxuOfy+sYlSN4l0PEk66zaDCtowl0WVHD5lBLz6XFOgrAfOJ4t+fg+ofwGXaNiTiyR3iBTH5/uUZ62NItTKFpqp7Xc+bmzF3li2L20XoTqHgEu1z+udwWSd37M+gXa96NncBIf27drZSaR5Re0/ZVJnw/S6VldDzoOeOSPhSmjRRru9nkeQ/q5aEXIZICEJ6g0lQK9zCz58NuU/KSxRI/3ZqINY6Ae4Z9XEo3lmBP5yHneT9D/Wsd52+HalUKK+GJwYfl5wY33M3zAfcec070fvI/BYQmg==
x-microsoft-antispam-prvs: <DM5PR05MB2956398157B7AB9E797DB4BBBB980@DM5PR05MB2956.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(148322886591682)(31418570063057)(116415991822766)(81160342030619)(126878219848629);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123562025)(20161123555025)(20161123560025)(20161123564025)(6072148);
	SRVR:DM5PR05MB2956; BCL:0; PCL:0; RULEID:; SRVR:DM5PR05MB2956; 
x-forefront-prvs: 0154C61618
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(39450400003)(189002)(43544003)(13464003)(377454003)(199003)(16601075003)(6506006)(107886002)(81156014)(81166006)(38730400001)(86362001)(2950100002)(7736002)(2906002)(15395725005)(6436002)(102836003)(3846002)(229853002)(97736004)(92566002)(77096006)(5001770100001)(6116002)(2900100001)(189998001)(76576001)(33656002)(68736007)(101416001)(31430400001)(5660300001)(74316002)(1720100001)(9686002)(3280700002)(7696004)(8936002)(3660700001)(122556002)(54356999)(99286002)(305945005)(76176999)(50986999)(66066001)(8676002)(106116001)(106356001)(105586002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR05MB2956;
	H:DM5PR05MB2954.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2016 16:03:56.4542 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR05MB2956
Subject: Re: suggestions for version controlling multi-layer reproducible builds?
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
X-List-Received-Date: Mon, 12 Dec 2016 16:04:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> Sent: Monday, December 12, 2016 10:20 AM
> To: Yocto discussion list <yocto@yoctoproject.org>
> Subject: [yocto] suggestions for version controlling multi-layer reproduc=
ible
> builds?
>=20
>=20
>   (if there's already a doc section for this somewhere, a pointer to it w=
ould be
> just ducky.)
>=20
>   if one is building an image for a releasable, commercial product, and t=
hat
> image involves pulling in numerous layers, then dumping all sorts of
> proprietary apps on top of it, what are the possibilities for how to vers=
ion
> number the released images such that, if a client has an issue, they can
> identify precisely the state of components that went into the system they=
're
> working with?
>=20

For my setup I have a separate package that is the distribution version num=
ber.  Whenever we release an update, the distribution version number is upd=
ated.  We then tag all our layers with the distribution version number for =
proper record keeping.  The Angstrom distribution was (or maybe still is?) =
doing something similar and was the inspiration for our setup.

>   in addition to all of the layers involved in the build, one has to take=
 into
> account that, when critical bugs are identified, an updated RPM might be
> sent out and applied, whereupon that system's version number is no longer
> perfectly accurate. in the end, the state of someone's running system wil=
l be
> determined by a possibly huge combination of selected packages, preferred
> package versions, build config options, additional user space apps, hot f=
ixes
> that have been applied and so on.
>=20
>   what sort of meaningful "version number" can be applied to something li=
ke
> that? i'm sure at least a few other people have to be doing something lik=
e
> that, so i'm open to suggestions.
>=20
> rday


Any time we release an update, no matter how minor, we update the distribut=
ion version package.  Otherwise, as you state, you could have an update tha=
t you can't reproduce.  We also archive the package repository and generate=
d image files for each release so we can flash a board with a previous rele=
ase and test from there.  It can be a pain to get the process down the firs=
t time, but after that a simple Bash script can take care of all the hard w=
ork for you and ensure you don't skip a step.

Bryan

>=20
> --
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>=20
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

