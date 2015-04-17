Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF3F6E009CA; Fri, 17 Apr 2015 05:45:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.101 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0101.outbound.protection.outlook.com [65.55.169.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4DC5E009C2
	for <yocto@yoctoproject.org>; Fri, 17 Apr 2015 05:45:10 -0700 (PDT)
Received: from BN3PR0501MB1089.namprd05.prod.outlook.com (25.160.113.11) by
	BN3PR0501MB1442.namprd05.prod.outlook.com (25.160.117.151) with
	Microsoft
	SMTP Server (TLS) id 15.1.136.25; Fri, 17 Apr 2015 12:45:08 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (25.160.113.12) by
	BN3PR0501MB1089.namprd05.prod.outlook.com (25.160.113.11) with
	Microsoft SMTP
	Server (TLS) id 15.1.136.25; Fri, 17 Apr 2015 12:45:07 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) with
	mapi id 15.01.0136.026; Fri, 17 Apr 2015 12:45:07 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, Laurent Eschenauer
	<laurent@eschenauer.be>
Thread-Topic: [yocto] A simpler way to apply custom config files to an image ?
Thread-Index: AQHQeFAwsQeEziwP8k6apu3HMbFHaJ1PxD+AgADywwCAAGxl4A==
Date: Fri, 17 Apr 2015 12:45:06 +0000
Message-ID: <BN3PR0501MB1090B90EC443702398D1695EBBE30@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <552FAFAF.30005@eschenauer.be>
	<F14AEF751653024287138321000C846AF4814FF5@BOS-DAG1.zone1.flir.net>
	<20150417060034.GA19955@ad.chargestorm.se>
In-Reply-To: <20150417060034.GA19955@ad.chargestorm.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 00302FB7009A0000303104
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;
x-originating-ip: [98.100.91.242]
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:; SRVR:BN3PR0501MB1089;
	UriScan:; BCL:0; PCL:0; RULEID:; SRVR:BN3PR0501MB1442; 
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(51704005)(377454003)(33656002)(106116001)(99286002)(92566002)(122556002)(66066001)(19580395003)(46102003)(107886001)(19580405001)(50986999)(76176999)(54356999)(86362001)(2656002)(87936001)(40100003)(4001410100001)(2950100001)(102836002)(77156002)(62966003)(2900100001)(76576001)(15975445007)(2501003)(74316001)(43043002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1089;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-microsoft-antispam-prvs: <BN3PR0501MB10899A5935655CA6289E158EBBE30@BN3PR0501MB1089.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5002010)(5005006); SRVR:BN3PR0501MB1089; BCL:0;
	PCL:0; RULEID:; SRVR:BN3PR0501MB1089; 
x-forefront-prvs: 0549E6FD50
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2015 12:45:06.8846 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1089
X-OriginatorOrg: melinkcorp.com
Subject: Re: A simpler way to apply custom config files to an image ?
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
X-List-Received-Date: Fri, 17 Apr 2015 12:45:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Laurent,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Anders Darander
> Sent: Friday, April 17, 2015 2:01 AM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] A simpler way to apply custom config files to an ima=
ge ?
>=20
> * Smith, Virgil <Virgil.Smith@flir.com> [150416 17:33]:
>=20
> > > I want to customize various config file of an image I'm building (e.g=
.
> > > network interfaces, sshd banner, hostapd, etc..).
>=20
> > Paul Eggleton just gave a response to a similar question "Force install
> package last"
> > https://lists.yoctoproject.org/pipermail/yocto/2015-April/024548.html
>=20
> > > - If not possible and I have to stick with bbappend to every recipe
> > > concerned, then how could I do it in the case of a config file
> > > coming from the source package instead of the recipe ?
>=20
> > If I understand you correctly, that would be a patch.  For "unchecked"
> > whole replacement of files, I've seen bbappends with a do_patch_append
> > function to copy files (specified individually in SRC_URI like patch
> > files) from the base of the work dir to the correct path under the
> > source directory.
>=20
> Unless the buildprocess heavily modifies the config file, I wouldn't crea=
te a
> patch to patch it in the source tree. I'd rather just add the complete co=
nfig
> file to FILES +=3D... and then replace the one from the source package wi=
th my
> copy in a do_install_appen() function.
>=20
> This is by far the simplest way of those two.

I had similar issues getting my build system to take my copy of the kernel =
defconfig instead of the ones on the other layers.  In bblayers.conf, I mad=
e sure my layer was at the top of the BBLAYERS list and I set the BBFILE_PR=
IORITY for my layer to a higher number than the other layers (in my layer's=
 conf/layer.conf file).  See http://www.yoctoproject.org/docs/1.7.1/mega-ma=
nual/mega-manual.html#var-BBFILE_PRIORITY for details on BBFILE_PRIORITY.  =
I don't think the order in BBLAYERS makes a difference, but it is one way I=
 can easily remember the BBFILE_PRIORITY for the different layers.

I would also suggest using a bbappend in your own layer to modify the confi=
guration file.  It makes it much easier to handle mainline updates.  If the=
 change you are making is not version dependent then you can use a wildcard=
 for the bbappend name in your layer.  For example, I have the cron job lis=
t specified in a configuration file in my layer for cronie.  I named the bb=
append "cronie_%.bbappend".  Now the main cronie package can continue to ge=
t updates for newer versions and there is nothing I have to do with cronie =
in my layer.

Regards,
Bryan

>=20
> Cheers,
> Anders
>=20
> --
> Anders Darander
> ChargeStorm AB / eStorm AB
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

