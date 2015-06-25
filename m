Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91D46E00A38; Thu, 25 Jun 2015 08:57:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.132 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 898 seconds by postgrey-1.32 at yocto-www;
	Thu, 25 Jun 2015 08:57:15 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0132.outbound.protection.outlook.com [157.56.111.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFECEE00A07
	for <yocto@yoctoproject.org>; Thu, 25 Jun 2015 08:57:15 -0700 (PDT)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) by
	BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) with
	Microsoft SMTP
	Server (TLS) id 15.1.195.15; Thu, 25 Jun 2015 15:42:15 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) with
	mapi id 15.01.0195.005; Thu, 25 Jun 2015 15:42:15 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] is there a doc section on yocto distribution
	creation/versioning?
Thread-Index: AQHQrzHRqduo165yxEivHVMnhu1z1529VSbw
Date: Thu, 25 Jun 2015 15:42:15 +0000
Message-ID: <BN3PR0501MB10900D0C13CEEC030AC648C5BBAE0@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <alpine.LFD.2.11.1506250625460.5572@localhost>
In-Reply-To: <alpine.LFD.2.11.1506250625460.5572@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: crashcourse.ca; dkim=none (message not signed)
	header.d=none;
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; BN3PR0501MB1090;
	5:OWW3bl26C02PAiOSvVywjw+us+sgzWPQlSo4PHnEFlBr8OEo/sp7EX5Lw41Srayxj5i6KyH2GsarWO/DpHMMew0Ew6JPS1nU7wg//+HrPs6GcGsgkQ6v7YCP7ptjR5QlfCkK8gruheB2tg6bc7FkhA==;
	24:jZvLVkJhzq7S9REEkkXNVL7KXSYsCHjpXJeZWT9y4hJvMxYGsgNJxq2W7m7sJDvXzpUC5fkJ4tx+aOopdWRapB31xenrLnrGdTU+xXzDdjM=;
	20:qvNWXz/+C1ZRX1HbUOuZZqe1AukHJLe4jw0x8BvE6kpJYAvRiuR1j+tPrAQN5RvoIdzY0TQyZfjPmSS8XWmwfQ==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1090;
x-microsoft-antispam-prvs: <BN3PR0501MB10904821BAABFC8D658B763CBBAE0@BN3PR0501MB1090.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(3002001); SRVR:BN3PR0501MB1090; BCL:0;
	PCL:0; RULEID:; SRVR:BN3PR0501MB1090; 
x-forefront-prvs: 0618E4E7E1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(51704005)(13464003)(377454003)(62966003)(77156002)(2656002)(76176999)(19580395003)(19580405001)(46102003)(87936001)(50986999)(40100003)(122556002)(74316001)(5003600100002)(99286002)(92566002)(102836002)(1720100001)(77096005)(2900100001)(15395725005)(106116001)(16601075003)(33656002)(66066001)(86362001)(5001960100002)(76576001)(107886002)(15975445007)(54356999)(189998001)(5001770100001)(5002640100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1090;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2015 15:42:15.0491 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1090
Subject: Re: is there a doc section on yocto distribution	creation/versioning?
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
X-List-Received-Date: Thu, 25 Jun 2015 15:57:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> Sent: Thursday, June 25, 2015 6:29 AM
> To: Yocto discussion list
> Subject: [yocto] is there a doc section on yocto distribution
> creation/versioning?
>=20
>=20
>   is there a recommended workflow for tagging/versioning one's own builds
> from yocto? that is, given the collection of layers that might go into on=
e's
> local builds, in order to properly version your builds for release, one w=
ould
> have to keep track of not only the checkouts of the various layers, but a=
ny
> local fixes added to them, combined with all of the local conf settings u=
sed
> for that build, and so on.
>=20
>   is there a writeup on this?

If there is a writeup on this I have not seen it.  I've developed a workflo=
w on my own for our setup that works okay.  Whether it'd be a recommended w=
orkflow or not is a different question.

We have a local Git server which houses our clones of the yocto/oe layers a=
nd our own layers.  We are on the dizzy branch now, so we have a local dizz=
y branch on our Git servers that are a clone of the official repos with a f=
ew extra commits (I believe there were a few master patches we incorporated=
 to fix some issues we were seeing).  We then have two layers of our own.  =
One layer is a public layer and the other is a private layer.  The public l=
ayer contains our base image recipe and all the bbappends for yocto/oe reci=
pes to setup the image the way we want.  The private layer has our propriet=
ary applications and then a bbappend for the image to add the proprietary a=
pplications.  This way we can do a build without our private layer to ensur=
e we aren't accidentally deploying any proprietary code for FOSS compliance=
.  We have an autobuilder setup to build the public image and the full imag=
e to verify both builds are working.

We also have a distribution recipe similar to the angstrom-version recipe t=
hat Angstrom uses for its distribution versioning.  This is how our system =
can tell which distribution version it is on and report it to the user.

When we do a new distribution release, we tag all the layers with the distr=
ibution version name and commit the tags to our local Git server.  Then we =
can retrieve all our local layers based up on a tag and get back to a speci=
fic release if we need to.

If anyone else has a different method that they think works better, I'd lov=
e to hear it. =20

-Bryan

>=20
> rday
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
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

