Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C4C6E008EC; Thu,  9 Apr 2015 11:31:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.131 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0131.outbound.protection.outlook.com [157.56.111.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 287FFE0049A
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 11:31:39 -0700 (PDT)
Received: from DM2PR0501MB1101.namprd05.prod.outlook.com (25.160.245.11) by
	DM2PR0501MB1102.namprd05.prod.outlook.com (25.160.245.12) with
	Microsoft SMTP
	Server (TLS) id 15.1.130.23; Thu, 9 Apr 2015 18:31:37 +0000
Received: from DM2PR0501MB1101.namprd05.prod.outlook.com ([25.160.245.11]) by
	DM2PR0501MB1101.namprd05.prod.outlook.com ([25.160.245.11]) with
	mapi id 15.01.0130.020; Thu, 9 Apr 2015 18:31:37 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Bryan Evenson <bevenson@melinkcorp.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] RREPLACES and RCONFLICTS when switching from linux-yocto
	to linux-yocto-custom
Thread-Index: AdByOLJm0DghjBRYQIqt5zHc1ra7FAAshdkg
Date: Thu, 9 Apr 2015 18:31:36 +0000
Message-ID: <DM2PR0501MB1101E2513D2CC162137AEC8ABBFB0@DM2PR0501MB1101.namprd05.prod.outlook.com>
References: <DM2PR0501MB11014F9DE77F1555727AB937BBFB0@DM2PR0501MB1101.namprd05.prod.outlook.com>
In-Reply-To: <DM2PR0501MB11014F9DE77F1555727AB937BBFB0@DM2PR0501MB1101.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 017AF9EF00991A017AFB3C
x-originating-ip: [98.100.91.242]
authentication-results: melinkcorp.com; dkim=none (message not signed)
	header.d=none;
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM2PR0501MB1102;
x-microsoft-antispam-prvs: <DM2PR0501MB110269AFF6E442A67A17B77FBBFB0@DM2PR0501MB1102.namprd05.prod.outlook.com>
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(13464003)(377454003)(164054003)(51704005)(76576001)(74316001)(122556002)(2900100001)(230783001)(40100003)(2950100001)(92566002)(99286002)(107886001)(46102003)(19580395003)(86362001)(2501003)(66066001)(76176999)(54356999)(450100001)(2656002)(87936001)(50986999)(33656002)(15975445007)(77156002)(102836002)(62966003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0501MB1102;
	H:DM2PR0501MB1101.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(5002010); SRVR:DM2PR0501MB1102; BCL:0;
	PCL:0; RULEID:; SRVR:DM2PR0501MB1102; 
x-forefront-prvs: 0541031FF6
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2015 18:31:36.7373 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0501MB1102
Subject: Re: RREPLACES and RCONFLICTS when switching from linux-yocto to linux-yocto-custom
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
X-List-Received-Date: Thu, 09 Apr 2015 18:31:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Bryan Evenson
> Sent: Thursday, April 09, 2015 8:27 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] RREPLACES and RCONFLICTS when switching from linux-
> yocto to linux-yocto-custom
>=20
> I am on poky/dizzy and I am using opkg for package management.  I recentl=
y
> discovered I had a problem with my custom kernel image recipe and instead
> of the package name being called "kernel-image-3.10.0-custom" it was call=
ed
> "kernel-image-3.10.0-yocto-standard" (as shown by "opkg list-installed" o=
n
> the device).  However, with the updated package name opkg does not
> recognize the "kernel-image-3.10.0-custom" package as an available upgrad=
e
> for "kernel-image-3.10.0-yocto-standard".  I know I can fix this with
> RREPLACES and RCONFLICTS, but what I have tried has not yet worked and I
> am looking for suggestions.
>=20
> In my kernel bbappend, I have the following lines:
> RREPLACES_${PN} =3D "kernel-image (<=3D 3.10)"
> RCONFLICTS_${PN} =3D "kernel-image (<=3D 3.10)"
>=20
> I tried changing this to:
> RREPLACES_${PN} =3D "kernel-image (<=3D 3.10) kernel-image-3.10.0-yocto-
> standard"
> RCONFLICTS_${PN} =3D "kernel-image (<=3D 3.10) kernel-image-3.10.0-yocto-
> standard"
>=20
> Opkg still does not recognize the custom package as an upgrade option.  I
> also noticed for my installed kernel, I don't see any listing for it prov=
iding
> "kernel-image", but the updated package does provide "kernel-image".
> However, typing "opkg info kernel-image" doesn't report anything.  So I t=
hink
> I may have several problems related to the package naming.  I suspect tha=
t I
> need to do RREPLACES/RCONFLICTS for something other than ${PN} in this
> situation, but I'm not sure what.
>=20
> Any suggestions on how to get opkg to recognize the custom kernel as an
> upgrade for the yocto-standard kernel?

I figured it out.  The PN for this recipe is linux-yocto-custom, but that i=
s not the package name as installed on the device.  So if I instead do:

RREPLACES_kernel-image =3D "kernel-image (<=3D 3.10) kernel-image-3.10.0-yo=
cto-standard"
RCONFLICTS_kernel-image =3D "kernel-image (<=3D 3.10) kernel-image-3.10.0-y=
octo-standard"

Then the old kernel image sees the incoming one as an upgrade.  And if I ha=
dn't previously made a mistake on the RPROVIDES on my previous kernel recip=
es, then I could have done away with "kernel-image-3.10.0-yocto-standard" i=
n the RREPLACES and RPROVIDES.

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

