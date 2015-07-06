Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CCA7E00AA6; Mon,  6 Jul 2015 08:05:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.141 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0141.outbound.protection.outlook.com [157.56.111.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C00CCE00A0A
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 08:05:00 -0700 (PDT)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) by
	BN3PR0501MB1218.namprd05.prod.outlook.com (10.160.113.26) with
	Microsoft SMTP
	Server (TLS) id 15.1.207.19; Mon, 6 Jul 2015 15:04:59 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) by
	BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) with
	Microsoft SMTP
	Server (TLS) id 15.1.207.19; Mon, 6 Jul 2015 15:04:58 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) with
	mapi id 15.01.0207.004; Mon, 6 Jul 2015 15:04:58 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	=?iso-8859-2?Q?Marcin_Krzemi=F1ski?= <mar.krzeminski@gmail.com>
Thread-Topic: [yocto] Multiple conncetion to svn (svn+ssh)
Thread-Index: AQHQtYcrO2U7l52cKEq8+428AKBrBJ3OZfhQgAAZXwCAAA3qIA==
Date: Mon, 6 Jul 2015 15:04:57 +0000
Message-ID: <BN3PR0501MB1090F5833858888228C52DAFBB930@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <CABc_YGAQqOMTMavBTQ+gjq1grteY_n9fy_2xSqVgfCc9ijf3=w@mail.gmail.com>
	<BN3PR0501MB10902B0E1BAF6F95F9FE2BA7BB930@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<2853092.imoTbB5xtm@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2853092.imoTbB5xtm@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux.intel.com; dkim=none (message not signed)
	header.d=none;
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; BN3PR0501MB1090;
	5:TEYNMw0VxwTuVTzw8NreQIQNRU/glaYTBEv6olOLCODnCmrkx3WxMYnvLndGPgAT6hPnaagt2MBcTNxLTfTU1djKaj9NsjTH16AS51om4ROpoYFC35XEdP4kCTL5HgEp5tQBiH1c6mumInCAnQPkZg==;
	24:lJ7kxd7kL74e/H2AwI+hJZE8LCkazjU9xw2EsSt00HvXtouOaSbpGANAh4iq3/jaqnj3bW6vbynr00UBawgN86uOvSomSRZ1neOJ/xySzgo=;
	20:xPr0gAX7ItXnTXVswv02LiavR7W5ip7xkUrgLC3jd9KKAaIwV9rF21WT/6ZobKxdG/Bb/DBKZElSAChaSxBbDA==
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:; SRVR:BN3PR0501MB1090;
	UriScan:; BCL:0; PCL:0; RULEID:; SRVR:BN3PR0501MB1218; 
x-microsoft-antispam-prvs: <BN3PR0501MB109019D639F375E30324E6A3BB930@BN3PR0501MB1090.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(3002001); SRVR:BN3PR0501MB1090; BCL:0;
	PCL:0; RULEID:; SRVR:BN3PR0501MB1090; 
x-forefront-prvs: 06290ECA9D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(51704005)(13464003)(24454002)(377454003)(66066001)(76576001)(189998001)(5002640100001)(5001770100001)(5001960100002)(46102003)(92566002)(86362001)(74316001)(106116001)(2656002)(5003600100002)(99286002)(77156002)(19580405001)(19580395003)(87936001)(102836002)(62966003)(40100003)(2900100001)(77096005)(122556002)(76176999)(54356999)(33656002)(50986999)(2950100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1090;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2015 15:04:58.0062 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1090
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0501MB1218;
	2:c1XfQsz0TY435mudpfgug+MA3Ouu4rI2XXRUQYz+WrNo4sPv2iFq8rV/x96RGhr4;
	3:2RB50qIwhGgYiBQ5nBtecBF1DusyjuxoUkAyBoQyvlflgbsiGwKxJlB/fhkK/NxkPTks9c10Ac1YEx1z5JtODIDU6vBSC2Z1JavNJo0oHr4ysrwHATwzLXPNRkFMrG9XoDC9HlIWbW7kEc06Nd4BdA==;
	25:+OjBIXlD1GsAIX3k3ETlN1ao7x+0FgDQxB/4yF6fFAVnt9E3lU8+sUzCA8k0ASpJUKBR9UoxfTM0dGarXVAhNGhvGMeZzswWv5J0g2np3OjNp2tEpb60NTqiM9AhGx8zHnPGgij68AYyDq4Kk6CBrC1WCM7+uXmGWcGtZIjpMQg0vOqkgoK0qEEWin52hH6NBP44F+0KNHPF8eIE2KAtygI9hts6CnwtqV6e3GZ/N2aNseaeSH6/BX9il06wSpgw;
	23:VuYFzI1rn4/OQ8HcQA9zaBY8nceOleZ3fEwvnvtrfV8+hjLDbypOaTBVv8oRhpYP5uk73PAxNxhN7itRPvHhYZ2au/SV+4XkH7KBljsSeSHXvjqiZ03wy1i2XZAq/Bag3lWGTBbHklJXhXghsxbZ64/2HFqbH9wPqRKnzKFUmJkIIfG3j+MeUj87wEveZR3k7jvGJnetOra0X/zy7EGNiMZ6ab+zoLaf1DO5l0HOgEgrXvrpn+98qBUQLYpHpCJp
X-OriginatorOrg: melinkcorp.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Multiple conncetion to svn (svn+ssh)
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
X-List-Received-Date: Mon, 06 Jul 2015 15:05:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Paul,

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Monday, July 06, 2015 10:08 AM
> To: Marcin Krzemi=F1ski
> Cc: Bryan Evenson; yocto@yoctoproject.org
> Subject: Re: [yocto] Multiple conncetion to svn (svn+ssh)
>=20
> On Monday 06 July 2015 12:57:39 Bryan Evenson wrote:
> > Marcin,
> >
> > > From: yocto-bounces@yoctoproject.org
> > > [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Marcin
> > > Krzeminski
> > > Sent: Friday, July 03, 2015 7:55 AM
> > > To: yocto@yoctoproject.org
> > > Subject: [yocto] Multiple conncetion to svn (svn+ssh)
> > >
> > > Hello again,
> > >
> > > I have 12 recipes that download code from same svn repository (using
> > > svn+ssh)protocol. Recipes are grouped in packagegroup.
> > > When I want to bitbake packagegroup fetcher fail, but when I run
> > > recipe alone all is ok. I think it is because I want to open 8
> > > connection to one svn repository.How can I fix this, for example by
> > > allowing only eg. 2 recipes from packagegroup to be executed in paral=
ell.
> > There is no fetcher-specific variable that I know of, but I think you
> > can set PARALLEL_MAKE=3D"2" in your recipes to reduce the number of
> > fetches on your repository at a time.  The downside is your build will
> > go slower when it is building your recipes as it won't be doing as
> > many things in parallel.
>=20
> That's not going to help. The parallelism we are talking about here is ac=
ross
> recipes - PARALLEL_MAKE is just passed through to make within one task in
> one recipe, and make isn't even involved at the fetch stage.

Sorry, I grabbed the wrong variable.  I meant BB_NUMBER_THREADS, not PARALL=
EL_MAKE.

>=20
> Something that might work would be to set a lockfile on the do_fetch task
> such that only one of the recipes could fetch at once. That could not all=
ow
> two executing at once, but at least it would solve the problem. e.g. you =
could
> add this to all of the recipes:
>=20
> do_fetch[lockfiles] +=3D "${TMPDIR}/mysvnlock.lock"
>=20
> (The file name isn't critical, it just needs to be the same for all of th=
e recipes
> you wish to participate in the exclusive fetching.)

I had no idea that we could do this.  I don't see any documentation on lock=
files anywhere.
If you use a lockfile, do the all recipes with the same lockfile wait until=
 the lockfile is available
before continuing on with that step?  Is there a timeout for waiting for th=
e lockfile or does
the recipe wait indefinitely?

Regards,
Bryan

>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

