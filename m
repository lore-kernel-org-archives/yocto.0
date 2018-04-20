Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76F0FE00A44; Fri, 20 Apr 2018 13:49:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.229 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[64.235.150.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C7A2E0084E
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 13:49:06 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx3.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Fri, 20 Apr 2018 20:48:57 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Fri, 20 Apr 2018 13:48:55 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Fri, 20 Apr 2018 13:48:55 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: =?iso-8859-1?Q?Martin_Hundeb=F8ll?= <mnhu@prevas.dk>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] How to patch a file in mysql recipe
Thread-Index: AQHT12BTUzX+QhZ9Q0ymd/njdR0+vKQJmm6AgACIiZA=
Date: Fri, 20 Apr 2018 20:48:55 +0000
Message-ID: <da8679153eb34eb4a077a4631d03466e@sakuraus.com>
References: <52faadaa064043c086cefaab5a3e17cf@sakuraus.com>
	<9ac9ec01-17c1-83d1-91fe-bfc461550442@prevas.dk>
In-Reply-To: <9ac9ec01-17c1-83d1-91fe-bfc461550442@prevas.dk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1524257336-298554-25373-68575-1
X-BESS-VER: 2018.5-r1804181636
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.192209
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: Re: How to patch a file in mysql recipe
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
X-List-Received-Date: Fri, 20 Apr 2018 20:49:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Martin,

Your suggestion worked just fine, Thanks for the suggestion.
Regards,
Greg
=20
> -----Original Message-----
> From: Martin Hundeb=F8ll [mailto:mnhu@prevas.dk]
> Sent: Thursday, April 19, 2018 10:39 PM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>; yocto@yoctoproject.org
> Subject: Re: [yocto] How to patch a file in mysql recipe
>=20
> Hi Greg,
>=20
> On 2018-04-19 00:06, Greg Wilson-Lindberg wrote:
> > I need to patch the my.cnf file that is part of the mysql/mariadb
> > recipe. It lives in
> > meta-openembedded/meta-oe/recipes-support/mysql/mariadb/my.cnf with
> > the mariadb_5.5.52.bb file one level down.
> >
> > I've set up a mariadb_5.5.52.bbappend file as:
> >
> > FILESEXTRAPATHS_prepend :=3D "${FILE_DIRNAME}/${PN}:"
> >
> > SRC_URI +=3D "file://my.cnf.patch"
> >
> > # need to enable auto startup
> > SYSTEMD_AUTO_ENABLE_${PN}-server =3D "enable"
> >
> > bitbake finds the my.cnf.patch file but reports that it can't find the
> > my.cnf file to patch. I've set up patching of files that are
> > downloaded as part of a source tree, but never tried to patch a file
> > that is part of a recipe, and apparently I'm missing something. Is it
> > possible to do this, and if so, can someone point out what I need to
> > do to do it correctly?
>=20
> External sources usually lives in ${S}, while recipe local sources are pl=
aced in
> ${WORKDIR}. To make OE apply the patch in ${WORDIR} instead of ${S}, add =
the
> "patchdir"[1] option to the SRC_URI:
>=20
> SRC_URI +=3D "file://my.cnf.patch;patchdir=3D${WORKDIR}"
>=20
> I haven't used this myself, though, so I might be wrong...
>=20
> // Martin
>=20
> [1]
> https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-
> recipe-patching-code

