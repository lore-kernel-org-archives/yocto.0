Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C0ECE00957; Thu,  9 Apr 2015 05:26:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.135 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0135.outbound.protection.outlook.com [65.55.169.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC7E8E008EC
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 05:26:48 -0700 (PDT)
Received: from DM2PR0501MB1101.namprd05.prod.outlook.com (25.160.245.11) by
	DM2PR0501MB1101.namprd05.prod.outlook.com (25.160.245.11) with
	Microsoft SMTP
	Server (TLS) id 15.1.130.23; Thu, 9 Apr 2015 12:26:47 +0000
Received: from DM2PR0501MB1101.namprd05.prod.outlook.com ([25.160.245.11]) by
	DM2PR0501MB1101.namprd05.prod.outlook.com ([25.160.245.11]) with
	mapi id 15.01.0130.020; Thu, 9 Apr 2015 12:26:46 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: RREPLACES and RCONFLICTS when switching from linux-yocto to
	linux-yocto-custom
Thread-Index: AdByOLJm0DghjBRYQIqt5zHc1ra7FA==
Date: Thu, 9 Apr 2015 12:26:46 +0000
Message-ID: <DM2PR0501MB11014F9DE77F1555727AB937BBFB0@DM2PR0501MB1101.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [98.100.91.242]
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM2PR0501MB1101;
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(164054003)(92566002)(110136001)(87936001)(230783001)(54356999)(2656002)(102836002)(33656002)(66066001)(99286002)(107886001)(2351001)(86362001)(229853001)(76576001)(122556002)(46102003)(2900100001)(2501003)(74316001)(62966003)(77156002)(50986999)(450100001)(40100003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0501MB1101;
	H:DM2PR0501MB1101.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-microsoft-antispam-prvs: <DM2PR0501MB11017D0F1E1CF2261DE362BDBBFB0@DM2PR0501MB1101.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5002010)(5005006); SRVR:DM2PR0501MB1101; BCL:0;
	PCL:0; RULEID:; SRVR:DM2PR0501MB1101; 
x-forefront-prvs: 0541031FF6
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2015 12:26:46.0685 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0501MB1101
Subject: RREPLACES and RCONFLICTS when switching from linux-yocto to linux-yocto-custom
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
X-List-Received-Date: Thu, 09 Apr 2015 12:26:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am on poky/dizzy and I am using opkg for package management.  I recently =
discovered I had a problem with my custom kernel image recipe and instead o=
f the package name being called "kernel-image-3.10.0-custom" it was called =
"kernel-image-3.10.0-yocto-standard" (as shown by "opkg list-installed" on =
the device).  However, with the updated package name opkg does not recogniz=
e the "kernel-image-3.10.0-custom" package as an available upgrade for "ker=
nel-image-3.10.0-yocto-standard".  I know I can fix this with RREPLACES and=
 RCONFLICTS, but what I have tried has not yet worked and I am looking for =
suggestions.

In my kernel bbappend, I have the following lines:
RREPLACES_${PN} =3D "kernel-image (<=3D 3.10)"
RCONFLICTS_${PN} =3D "kernel-image (<=3D 3.10)"

I tried changing this to:
RREPLACES_${PN} =3D "kernel-image (<=3D 3.10) kernel-image-3.10.0-yocto-sta=
ndard"
RCONFLICTS_${PN} =3D "kernel-image (<=3D 3.10) kernel-image-3.10.0-yocto-st=
andard"

Opkg still does not recognize the custom package as an upgrade option.  I a=
lso noticed for my installed kernel, I don't see any listing for it providi=
ng "kernel-image", but the updated package does provide "kernel-image".  Ho=
wever, typing "opkg info kernel-image" doesn't report anything.  So I think=
 I may have several problems related to the package naming.  I suspect that=
 I need to do RREPLACES/RCONFLICTS for something other than ${PN} in this s=
ituation, but I'm not sure what.

Any suggestions on how to get opkg to recognize the custom kernel as an upg=
rade for the yocto-standard kernel?

Thanks,
Bryan

