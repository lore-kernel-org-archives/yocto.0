Return-Path: <prvs=10455cc49=Richard.Leitner@skidata.com>
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E976CE00572
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2014 07:06:59 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AqEEACuv71KsEApK/2dsb2JhbABZhBu+CIEfdIIlAQEBBDo/DAQCAQgNBAQBAQEKFAkHHxMUCQgBAQQOBQgTh2/MdheOWDEHBoMegRQEjmSQNo5egio
X-IPAS-Result: AqEEACuv71KsEApK/2dsb2JhbABZhBu+CIEfdIIlAQEBBDo/DAQCAQgNBAQBAQEKFAkHHxMUCQgBAQQOBQgTh2/MdheOWDEHBoMegRQEjmSQNo5egio
From: Richard Leitner - SKIDATA <Richard.Leitner@skidata.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] SRCREV for BBLAYERS
Thread-Index: Ac8g2b040cUVCtGvRNCe2oYOUKPBUgADI+QAAAJMUtA=
Date: Mon, 3 Feb 2014 15:06:55 +0000
Message-ID: <F7680723A1CA6840825A59020FA7706401032F77@sdexmbx1srv.skidata.net>
References: <F7680723A1CA6840825A59020FA770640102E7D7@sdexmbx1srv.skidata.net>
	<5228382.mhMAFlqhoF@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <5228382.mhMAFlqhoF@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US, de-AT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.111.80]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SRCREV for BBLAYERS
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
X-List-Received-Date: Mon, 03 Feb 2014 15:07:00 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,
thanks for your quick answer!
I'll work with separate checkouts for now...

But now I've got another question:
Is there any possibility to submit something like a feature request for thi=
s?
And is there a (realistic) chance that this feature gets implemented?
If so, where should this request go? To the bitbake-devel list?

best regards,
Richard

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Monday, February 03, 2014 3:46 PM
> To: Richard Leitner - SKIDATA
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] SRCREV for BBLAYERS
>=20
> Hi Richard,
>=20
> On Monday 03 February 2014 12:17:04 Richard Leitner - SKIDATA wrote:
> > I've a question regarding the BBLAYERS variable.
> > Is it possible to set some kind of a SRCREV (=3D> git
> > tag/branch/commit-id) for a path listed in BBLAYERS?
> >
> > I came to this question because I've two different branches in my meta
> > layer: one for development and one for 'stable' releases. Therefore I
> > have also two different build dirs and want to 'pin' the branches/tags
> > to the build dir (preferable via the bblayers.conf). I think this
> > should be possible because at the start of a build the revs are display=
ed like:
> > meta-yocto =3D "[branch]:[commit-id]" The problem is that I wasn't able
> > to find any answers or solutions on the web so I ask you now for help.
>=20
> The build system doesn't actually manage checking out/updating layers for=
 you, it only
> reports the revision if there is one, so this functionality isn't support=
ed. Probably the
> easiest way to handle this would be to keep two separate checkouts.
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

