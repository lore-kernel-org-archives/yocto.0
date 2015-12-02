Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA9AFE005B7; Wed,  2 Dec 2015 13:08:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.104 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0104.outbound.protection.outlook.com [65.55.169.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56E9FE00404
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 13:08:11 -0800 (PST)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) by
	BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) with
	Microsoft SMTP
	Server (TLS) id 15.1.337.19; Wed, 2 Dec 2015 21:08:09 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) with
	mapi id 15.01.0337.015; Wed, 2 Dec 2015 21:08:09 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Fixing build when changing kernel PREFERRED_PROVIDER
Thread-Index: AdEtQf98Ui/b3lzDSxSA37QEe6kNjA==
Date: Wed, 2 Dec 2015 21:08:08 +0000
Message-ID: <BN3PR0501MB1090C01F20FE5C9C83BFAB6CBB0E0@BN3PR0501MB1090.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; BN3PR0501MB1090;
	5:uT+vJWBJBu/vC2Sxp9BEGS9tgwzgCEpF77lWgWUYA59p5Lk1BJTPVQm8C24TTG0kkkzWJJ6RDqJgj/lJxjrW98xrXHpMJfaIZIC/43bsLjwkuMRadOJXEfBbLfcSWSxzX5wQVPBQ27pLBTxzMwcAJQ==;
	24:1UNy3oR0xo3rdNZKxEsqmBEXdXWBCZp+S7QaqASbuFRbhcfhyqk20N+vXTj/8Hg8ye6S5PohIfJO5c5N0iNVunZpUEuFtFfTujYh6j6b5n4=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1090;
x-microsoft-antispam-prvs: <BN3PR0501MB1090FBC263B584243DB415B9BB0E0@BN3PR0501MB1090.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(520078)(3002001)(10201501046);
	SRVR:BN3PR0501MB1090; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0501MB1090; 
x-forefront-prvs: 077884B8B5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(189002)(199003)(164054003)(54356999)(189998001)(101416001)(40100003)(105586002)(107886002)(110136002)(33656002)(5001960100002)(50986999)(2501003)(81156007)(92566002)(97736004)(15975445007)(99286002)(106356001)(77096005)(2900100001)(586003)(5008740100001)(5003600100002)(87936001)(122556002)(3846002)(19580395003)(2351001)(10400500002)(5002640100001)(229853001)(6116002)(76576001)(11100500001)(66066001)(86362001)(450100001)(102836003)(1096002)(5004730100002)(74316001)(1220700001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1090;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2015 21:08:08.6551 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1090
Subject: Fixing build when changing kernel PREFERRED_PROVIDER
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
X-List-Received-Date: Wed, 02 Dec 2015 21:08:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm on poky/dizzy-1.7.2 and I'm in the process of updating to poky/dizzy-1.=
7.3.  I'm using an Atmel processor, so while I'm at it I'm pulling in chang=
es from meta-atmel (over at https://github.com/linux4sam/meta-atmel, dizzy =
branch).  One of the commits I pulled in was this one: https://github.com/l=
inux4sam/meta-atmel/commit/ae10c274a681adebb1b59ea1173e6a8c603b66f1.  This =
renamed the kernel package from linux-yocto-custom to linux-at91.  After th=
is change when I tried to build the image, I was greeted with a very long l=
ist of files and the following error:=20

The build has stopped as continuing in this scenario WILL break things, if =
not now, possibly in the future (we've seen builds fail several months late=
r). If the system knew how to recover from this automatically it would howe=
ver there are several different scenarios which can result in this and we d=
on't know which one this is. It may be you have switched providers of somet=
hing like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), in tha=
t case you need to execute the clean task for both recipes and it will reso=
lve this error. It may be you changed DISTRO_FEATURES from systemd to udev =
or vice versa. Cleaning those recipes should again resolve this error howev=
er switching DISTRO_FEATURES on an existing build directory is not supporte=
d, you should really clean out tmp and rebuild (reusing sstate should be sa=
fe). It could be the overlapping files detected are harmless in which case =
adding them to SSTATE_DUPWHITELIST may be the correct solution. It could al=
so be your build is including two different conflicting versions of things =
(e.g. bluez 4 and bluez 5 and the correct solution for that would be to res=
olve the conflict. If in doubt, please ask on the mailing list, sharing the=
 error and filelist above.
ERROR: If the above message is too much, the simpler version is you're advi=
sed to wipe out tmp and rebuild (reusing sstate is fine). That will likely =
fix things in most (but not all) cases.
ERROR: Function failed: sstate_task_postfunc

I issued 'bitbake -c clean linux-at91' and then 'bitbake -c clean linux-yoc=
to-custom'.  Linux-at91 cleaned without issue, but when I tried to clean li=
nux-yocto-custom I got an error saying "Nothing PROVIDES 'linux-yocto-custo=
m'".  That in itself makes sense as there is no longer any recipe for linux=
-yocto-custom.  However, I'd like to avoid deleting the entire tmp director=
y.  I don't have the speediest machine and I'd like to avoid wasting a day =
if there was a simpler solution.

Is there a less destructive fix to this problem than deleting the tmp direc=
tory, or is that the only safe way to fix this problem?

Thanks,
Bryan

