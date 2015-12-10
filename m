Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D98FE00BDC; Thu, 10 Dec 2015 08:20:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.116 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0116.outbound.protection.outlook.com [157.56.111.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 516D1E006F3
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 08:20:49 -0800 (PST)
Received: from DM2PR0501MB1101.namprd05.prod.outlook.com (10.160.245.11) by
	DM2PR0501MB1101.namprd05.prod.outlook.com (10.160.245.11) with
	Microsoft SMTP
	Server (TLS) id 15.1.355.16; Thu, 10 Dec 2015 16:20:46 +0000
Received: from DM2PR0501MB1101.namprd05.prod.outlook.com ([10.160.245.11]) by
	DM2PR0501MB1101.namprd05.prod.outlook.com ([10.160.245.11]) with
	mapi id 15.01.0355.012; Thu, 10 Dec 2015 16:20:46 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Martin Jansa <martin.jansa@gmail.com>
Thread-Topic: [yocto] Cleanly moving files from one package to another
Thread-Index: AdEyvJ3osGN+mhsrTfSBFGmJ0vOlEAAb0mKAAAnBiDAAAWX6AAADLhqg
Date: Thu, 10 Dec 2015 16:20:45 +0000
Message-ID: <DM2PR0501MB11014F9E6A9F7DB43FC43D53BBE90@DM2PR0501MB1101.namprd05.prod.outlook.com>
References: <BN3PR0501MB10908B9B84564BC25761049BBBE80@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<20151210091943.GF2246@jama>
	<DM2PR0501MB1101580A303198D043E24F39BBE90@DM2PR0501MB1101.namprd05.prod.outlook.com>
	<20151210143906.GJ2246@jama>
In-Reply-To: <20151210143906.GJ2246@jama>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; DM2PR0501MB1101;
	5:nbtYvWH6mvgzVeSbaWeADr0yuwSY11oQwSs7UaXUuxBvosdw+I8mX7LBGFegg6SxoI3BwO7A14TP1dA/dkZEnMUmUZAjysMwN1QNr2kRBCXPUL3/Gg2GKUSMBWSRc+rNxMJXEos0IQFNhFhxXTNJ0Q==;
	24:K384sxfnxDuLab9noz0/wjX+ah4n/ffhxU36jgPGRerK8pKqSGAKHKTrNvhrBsaomh+lyRNa+veKARzkb1HXxVnwtgyrr3K8UHQi+1dRe4M=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM2PR0501MB1101;
x-microsoft-antispam-prvs: <DM2PR0501MB1101E877225FEC925ED55F4BBBE90@DM2PR0501MB1101.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(520078)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:DM2PR0501MB1101; BCL:0; PCL:0; RULEID:;
	SRVR:DM2PR0501MB1101; 
x-forefront-prvs: 078693968A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(13464003)(377454003)(24454002)(189002)(199003)(164054003)(5001960100002)(6116002)(102836003)(110136002)(189998001)(5008740100001)(586003)(74316001)(3846002)(10400500002)(5002640100001)(5003600100002)(76576001)(1096002)(19580395003)(19580405001)(1220700001)(93886004)(33656002)(92566002)(2950100001)(15975445007)(77096005)(81156007)(2900100001)(54356999)(101416001)(76176999)(50986999)(5004730100002)(86362001)(11100500001)(106356001)(40100003)(97736004)(99286002)(87936001)(105586002)(122556002)(66066001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0501MB1101;
	H:DM2PR0501MB1101.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2015 16:20:45.9223 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0501MB1101
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cleanly moving files from one package to another
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
X-List-Received-Date: Thu, 10 Dec 2015 16:20:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Martin,

> -----Original Message-----
> From: Martin Jansa [mailto:martin.jansa@gmail.com]
> Sent: Thursday, December 10, 2015 9:39 AM
> To: Bryan Evenson <bevenson@melinkcorp.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Cleanly moving files from one package to another
>=20
> On Thu, Dec 10, 2015 at 02:15:05PM +0000, Bryan Evenson wrote:
> > Martin,
> >
> > > -----Original Message-----
> > > From: Martin Jansa [mailto:martin.jansa@gmail.com]
> > > Sent: Thursday, December 10, 2015 4:20 AM
> > > To: Bryan Evenson <bevenson@melinkcorp.com>
> > > Cc: yocto@yoctoproject.org
> > > Subject: Re: [yocto] Cleanly moving files from one package to
> > > another
> > >
> > > On Wed, Dec 09, 2015 at 08:19:40PM +0000, Bryan Evenson wrote:
> > > > All,
> > > >
> > > > I'm on poky/dizzy-1.7.3 and I'm using opkg for a package manager.
> > > > I have a
> > > few script files that are part of one package that really belong with
> another.
> > > So I updated both recipes, removed the file from one recipe and
> > > added it to the other recipe.  I built everything, made the opkg
> > > feed repo and tried to upgrade with "opkg update; opkg upgrade" to
> > > see how clean the upgrade was.  For each script file I moved from
> > > one package to the other I get an error message of the form:
> > > >
> > > > * check_data_file_clashes: Package A wants to install file
> > > /path/to/script/file
> > > >         But that file is already provided by package  * B
> > > >
> > > > I know I can do "opkg upgrade --force-overwrite", but I'd like to
> > > > make
> > > recipe changes so that it upgrades cleanly.  All I've done in the
> > > recipes is remove the script files from the FILES variable and the
> > > do_install step of one recipe and added the script to the FILES
> > > variable and do_install step of the other recipe.  I know
> > > update-alternatives can be used if more than one package provides
> > > the same binary, but is that necessary in this case when
> > > transferring ownership to another package?  Is there anything else I =
can
> do in the recipes to prevent the opkg install errors?
> > >
> > > Have you tried to set
> > > RREPLACES_<pkg-new> =3D "<pkg-old>"
> > > ?
> >
> > I haven't tried that because I'm not replacing a package.  Both package=
s still
> exist on the system and are both needed, it's just that ownership of one =
of
> the files is being transferred from one package to another.  Would I stil=
l use
> RREPLACES even if I want to keep both packages on the system?
> >
> > Specifically in this case, I have some script files for scheduled tasks=
 that
> were part of one of my self-made packages.  However, they really belong
> with cronie since this is what is calling the scripts.  So I removed the =
script files
> from my self-made package and added them to cronie.  My package has
> other files still associated with it (that do belong with it) installed o=
n my
> system.  So I want to keep both packages on my system, but I just want to
> change ownership of these script files from my package to cronie.  Is
> RREPLACES the tool for this job?
>=20
> > Is RREPLACES the tool for this job?
>=20
> Yes, see
> https://www.debian.org/doc/debian-policy/ch-relationships.html#s-
> replaces
>=20
> opkg should work the same.

Now I'm having something happen that I haven't seen before with the PR serv=
ice.  I updated my .bbappend to add the RREPLACES as you suggested, but bit=
bake didn't rebuild the package.  I tried doing bitbake -c clean and bitbak=
e -c cleansstate and both times the built package had the same full version=
 number as it did before I made the RREPLACES change.  I opened the ipk wit=
h Archive Manager and looked at DEBIAN/control, and there was no "Depends: =
" line in the control file.  Then I noticed that this .bbappend had "inheri=
t pkgconfig" and it isn't needed in the .bbappend.  So while I was at it I =
deleted the line "inherit pkgconfig" and tried to build the package again (=
without issuing a bitbake -c clean first).  This time it built the package =
and the PR service incremented the version.  I opened the resulting ipk and=
 looked at DEBIAN/control again, and this time there was a "Depends:" line =
in the control file.

Is changing RREPLACES not being seen as a metadata change by bitbake?  Is t=
his a bug or is there something else I'm missing?

Thanks,
Bryan

>=20
> > > If the old package should be removed completely during opkg upgrade,
> > > then you'll need to set whole combo, that is
> RREPLACES,RCONFLICTS,RPROVIDES.
>=20
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

