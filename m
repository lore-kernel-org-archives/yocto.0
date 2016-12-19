Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93D96E00E3C; Mon, 19 Dec 2016 08:04:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.95 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0095.outbound.protection.outlook.com [104.47.41.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6288E00E0D
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 08:04:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=Melink.onmicrosoft.com; s=selector1-melinkcorp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=I2drJTREzv8bFG2iIxDNnqWwWCwbPlYitdS1RDydHLA=;
	b=Ek6ZRZ9Ka91zIXEzAThlfw7ErmV9cyDBykSq2NU8vB2R2C2i6C7b9ySHmiDcrGJtgzXTIjKzGZ3E52Z0FzbV6VYjSSDexf6wvKY92iet5MZPqsxrAKxjO2kmerofDzITysTyQGFI/gwfY/SDQi8j5eBQG55rpZanPpYncj0WyUg=
Received: from BN6PR05MB2946.namprd05.prod.outlook.com (10.173.18.143) by
	BN6PR05MB2947.namprd05.prod.outlook.com (10.173.18.144) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.803.5; Mon, 19 Dec 2016 15:48:59 +0000
Received: from BN6PR05MB2946.namprd05.prod.outlook.com ([10.173.18.143]) by
	BN6PR05MB2946.namprd05.prod.outlook.com ([10.173.18.143]) with mapi id
	15.01.0803.010; Mon, 19 Dec 2016 15:48:59 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Mirza Krak <mirza.krak@gmail.com>, Bill Randle <bill.randle@gmail.com>
Thread-Topic: [yocto] setting up autobuilder on local machine
Thread-Index: AQHSWVYVwNur+RhaXk2pQbHaqJqKJaEOnsgAgAA1ywCAAHA5AIAAJbzw
Date: Mon, 19 Dec 2016 15:48:59 +0000
Message-ID: <BN6PR05MB294630B36FA4868C016C5FEBBB910@BN6PR05MB2946.namprd05.prod.outlook.com>
References: <CALw8SCUt4XR+LYM7pGAC64gO+0y9k-HuJgdHqHz5DRxh1qgv=A@mail.gmail.com>
	<20161218162554.2dab9f39@nuc.betafive.co.uk>
	<CA+n--H9pd1eY8DuY-OSCKxBNiLvAKMQYoDB2Mpo5ajGncvzd6g@mail.gmail.com>
	<CALw8SCXgz=5TrKE99u4MOhx=tuZvgaPx_4LjO70U_JFK=2GcJA@mail.gmail.com>
	<CALw8SCVifrWUQgObA+FBoNrAfO42wjVrTue+u_b5O5JZjrvuvA@mail.gmail.com>
In-Reply-To: <CALw8SCVifrWUQgObA+FBoNrAfO42wjVrTue+u_b5O5JZjrvuvA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-ms-office365-filtering-correlation-id: 29a3dfdb-b016-4593-8a21-08d428268c58
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:BN6PR05MB2947;
x-microsoft-exchange-diagnostics: 1; BN6PR05MB2947;
	7:jtnjtBbbanKxibm9+wyYwNxqVlYQ9OhzAtLTsxMzwawolBRcldu8FXHaOMbeGfmnL7EnvXvi7I2D1LsymLb2fTSe0V83XuoZfOGgo30MSxG0tK277p4kwlP1BqXRySUsyiN/ApzZd7L5wAmaS9PlzGdufwZE76Q/aqYE+h1Z+IXu+N9N9ViMWP+iBS+9nsDeAeAfV3ssnPzjy/9TsutBauJsVb6B6uRz0EYveyRSmmlfc1MzOu2ALu5SAD+FSnW2BYxwXEhJ36W3rKaxb5iH3/9q50Q8D61Jl4ocmK2FHl6ZcQQh6pn1bhgyZaTwJM1KL8cF4mHB/viiGvIHQNLvC60E/o5CCE4UCVmuTbWQoIN/o//NFDdcWAG2FU4NGooBLJfbarxwgIxQXKNz+IkjBodMa39op0EviBogLlD2eMRp6NmCLnexmbxCbVeFVCmxKnOpAIcPEOMEgQK+3qypWA==
x-microsoft-antispam-prvs: <BN6PR05MB294755BC15F7D2635CC4787FBB910@BN6PR05MB2947.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820)(265634631926514);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123555025)(20161123560025)(20161123558021)(20161123564025)(20161123562025)(6072148);
	SRVR:BN6PR05MB2947; BCL:0; PCL:0; RULEID:; SRVR:BN6PR05MB2947; 
x-forefront-prvs: 01613DFDC8
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(39450400003)(377454003)(199003)(189002)(13464003)(377424004)(24454002)(6506006)(229853002)(39060400001)(38730400001)(77096006)(54356999)(76176999)(3660700001)(3280700002)(6436002)(3846002)(25786008)(102836003)(6116002)(122556002)(4326007)(86362001)(345774005)(76576001)(106356001)(106116001)(33656002)(8676002)(8936002)(105586002)(81156014)(99286002)(50986999)(101416001)(9686002)(551544002)(305945005)(68736007)(7736002)(81166006)(74316002)(5660300001)(2950100002)(66066001)(93886004)(7696004)(92566002)(189998001)(2906002)(5001770100001)(2900100001)(4001150100001)(97736004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR05MB2947;
	H:BN6PR05MB2946.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2016 15:48:59.2211 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR05MB2947
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setting up autobuilder on local machine
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
X-List-Received-Date: Mon, 19 Dec 2016 16:04:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Mirza,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Mirza Krak
> Sent: Monday, December 19, 2016 8:28 AM
> To: Bill Randle <bill.randle@gmail.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] setting up autobuilder on local machine
>=20
> 2016-12-19 7:46 GMT+01:00 Mirza Krak <mirza.krak@gmail.com>:
> > 2016-12-19 4:33 GMT+01:00 Bill Randle <bill.randle@gmail.com>:
> >> On Sun, Dec 18, 2016 at 8:25 AM, Paul Barker <paul@paulbarker.me.uk>
> wrote:
> >>> On Sun, 18 Dec 2016 15:46:19 +0100
> >>> Mirza Krak <mirza.krak@gmail.com> wrote:
> >>>
> >>>> Hi.
> >>>>
> >>>> I have been looking in to the possibility to utilize yocto autobuild=
er
> >>>> for one of my own projects.
> >>>>
> >>>> But I am having some problems setting this up and hopefully someone
> >>>> here can provide some pointers.
> >>>>
> >>>> I did the "quickstart part":
> >>>>
> >>>> git clone git://git.yoctoproject.org/yocto-autobuilder
> >>>> cd yocto-autobuilder
> >>>> . ./yocto-autobuilder-setup
> >>>> yocto-start-autobuilder both
> >>>>
> >>>> Above succeeds without any issues. But now what? :)
> >>>>
> >>>> I went to https://localhost:8010. I tried to login using the
> >>>> information that is in the .htpasswd file but that did not work. Whe=
re
> >>>> are the credentials to login setup?
> >>>
> >>> You'll need to create the .htpasswd file yourself. I think the
> >>> "htpasswd" tool can do this for you, I can't remember the exact
> >>> commands I used to make mine though sorry.
> >>>
> >>>>
> >>>> I also made an attempt to remove all un-wanted buildsets and now
> >>>> buildset-config contains (all other directories are removed)
> >>>>
> >>>> nightly-mender-rpi.conf  yoctoAB.conf
> >>>>
> >>>> Above is parsed correctly on start-up but build is never triggered. =
I
> >>>> probably removed to much :). Looking in to nigthly.conf it seem that
> >>>> is the one that trigger all other nightly builds?
> >>>>
> >>>> My fork can be found at [1].
> >>>>
> >>>> [1]. https://github.com/mirzak/yocto-autobuilder-mender-rpi
> >>>
> >>> This looks good, you just need to setup the scheduler with something
> >>> like this in nightly-mender-rpi.conf:
> >>>
> >>>     scheduler:
> >>>     [{'nightly-build':{'type':'Nightly','hour':23,'minute':0}}]
> >>>
> >>> You should only need a separate nightly.conf when you want that to
> >>> trigger multiple builds.
> >>>
> >>> I've recently setup an autobuilder for meta-raspberrypi which I'll be
> >>> publishing once I've got the last bits of setup done. If you're still
> >>> struggling to get the nightly triggering working let me know and I'll
> >>> put up the configurations I've used as a git repository.
> >>
> >> There is also additional helpful information on the Yocto Autobuilder
> >> wiki page here:
> >> https://wiki.yoctoproject.org/wiki/The_Yocto_Autobuilder. Some of the
> >> information applies to the Yocto Project build cluster, but is still
> >> applicable to local autobuilders. I followed the same instructions to
> >> setup a local AB. Be sure to use the htpasswd command that's in the
> >> autobuilder git tree (in one of the bin directories, as I recall),
> >> rather than a native system one. The AB version defaults to the
> >> shorter crypto scheme that buildbot requires.
> >
> > Thank you for your fast responses. Generating the htpasswd file my
> > self did the trick. Now I can login. The full command was (as you
> > suggested I used the one in autobuilder git repo under ./bin):
> >
> >     ./htpasswd -b -c <path to htpasswd file> <user name> <secret
> password>
> >
> > Forced a build of my configuration now and hoping for the best :).
>=20
> And it was not green all the way.
>=20
> I get an error that I do not get how to get around. The error message is:
>=20
> ERROR: Unable to parse
> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
> rpi/yocto-worker/nightly-mender-rpi/build/meta-mender/conf/layer.conf:
> [Errno 2] file /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-
> mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-
> mender/conf/layer.conf
> not found
>=20
> The error message I understand. But I do not understand why it adds
> meta-mender to bblayers files. I did not tell it to do that, because
> meta-mender contains layers that I want to include. Similar to
> meta-openembedded (which is also added to bblayers).
>=20
> Here is the bblayers.conf also for reference:
> mirzak@debian:~/project/yocto-autobuilder/yocto-autobuilder-mender-
> rpi/yocto-worker/nightly-mender-rpi/build/build/conf$
> cat bblayers.conf
> POKY_BBLAYERS_CONF_VERSION =3D  "2"
> BBPATH =3D "${TOPDIR}"
> BBFILES ?=3D""
> BBLAYERS +=3D " \
> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
> rpi/yocto-worker/nightly-mender-rpi/build/meta
> \
> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
> rpi/yocto-worker/nightly-mender-rpi/build/meta-poky
> \
> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
> rpi/yocto-worker/nightly-mender-rpi/build/meta-yocto-bsp
> \
> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
> rpi/yocto-worker/nightly-mender-rpi/build/meta-mender
> \
> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
> rpi/yocto-worker/nightly-mender-rpi/build/oe-meta-go
> \
> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
> rpi/yocto-worker/nightly-mender-rpi/build/meta-raspberrypi
> \
> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
> rpi/yocto-worker/nightly-mender-rpi/build/meta-openembedded
> \
> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
> rpi/yocto-worker/nightly-mender-rpi/build/meta-yocto
> \
> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
> rpi/yocto-worker/nightly-mender-rpi/build/meta-mender/meta-mender-
> core
> \
> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
> rpi/yocto-worker/nightly-mender-rpi/build/meta-mender/meta-mender-
> raspberrypi
> \
> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-
> rpi/yocto-worker/nightly-mender-rpi/build/meta-openembedded/meta-oe
> \
> "
>=20
> Can I disable the "magic" that added meta-mender and meta-
> openembedded?

Yes, you can.  I just ran into this problem the other week when I updated m=
y autobuilder.  Add 'autoinclude':False to your layer definition in the "re=
pos" section in your build configuration file.  For example, in one of my b=
uild configurations I have:

        {'meta-openembedded':
            {'autoinclude':False, 'repourl':'git://git.openembedded.org/met=
a-openembedded',
             'branch':'fido'}},

Here's the patch description further describing what the autoinclude option=
 does: http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/commit/?=
id=3D1599d458ec078378438aeb011ed706a4474b10a6.

Regards,
Bryan


>=20
> Best Regards
> Mirza
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

