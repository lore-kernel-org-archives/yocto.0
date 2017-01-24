Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 976A4E00C0A; Tue, 24 Jan 2017 11:22:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3613FE00B76
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 11:22:08 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga101.jf.intel.com with ESMTP; 24 Jan 2017 11:21:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,279,1477983600"; d="scan'208";a="52022010"
Received: from hnguy31-mobl.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.186.17])
	by orsmga004.jf.intel.com with ESMTP; 24 Jan 2017 11:21:44 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Peter Tulpen <ptulpen@emailn.de>
Date: Wed, 25 Jan 2017 08:21:42 +1300
Message-ID: <2502677.vKdr2oArzh@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/5.3.3 (Linux/4.9.4-201.fc25.x86_64; KDE/5.29.0; x86_64; ; )
In-Reply-To: <19b5983d2bf16e461f6251c84f2e0d76@mail.emailn.de>
References: <b8e51238b7798e9b642c019b120adac0@mail.emailn.de>
	<9523039.54BZtVoRWY@peggleto-mobl.ger.corp.intel.com>
	<19b5983d2bf16e461f6251c84f2e0d76@mail.emailn.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web] issue with webinterface
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
X-List-Received-Date: Tue, 24 Jan 2017 19:22:12 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Right, we have not tested the layer index code with Django > 1.8.x, I would=
=20
expect problems like this until we migrate (which probably won't be for a=20
while I suspect).

Cheers,
Paul

On Tuesday, 24 January 2017 2:57:46 PM NZDT Peter Tulpen wrote:
> Hello Paul,
> you are brilliant:
> I had errors with django 1.10 and uncommented:
> from django.conf.global_settings import TEMPLATE_CONTEXT_PROCESSORS as TCP
> TEMPLATE_CONTEXT_PROCESSORS =3D TCP + (
>     'django.core.context_processors.request',
>     'layerindex.context_processors.layerindex_context',
> )
>=20
> Since it was causing problems and was deprecated and not needed in 1.10
> (according to some websites) But since I cold not get it working with 1.10
> anyway, I downgraded to 1.8 again and forgot about this parts
>=20
> Thanks a lot
>=20
>=20
> --- Urspr=FCngliche Nachricht ---
> Von: Paul Eggleton <paul.eggleton@linux.intel.com>
> Datum: 22.01.2017 20:23:43
> An: Peter Tulpen <ptulpen@emailn.de>
> Betreff: Re: [yocto] [layerindex-web] issue with webinterface
>=20
> > Hi Peter,
> >=20
> > On Thu, 19 Jan 2017 18:05:12 Peter Tulpen wrote:
> > > Hello, I installed the webinterface locally and configured it with
> > > several
> > >=20
> > > branches But when I want to browse it, I can only choose master:
> > >=20
> > > https://postimg.org/image/dq1vj6v7h/
> > >=20
> > > When I browse to http://MYSERVER/layerindex/branch/jethro/layers/, I
> >=20
> > see
> >=20
> > > that the branches are there My installation based on a git clone from
> >=20
> > the
> >=20
> > > master tree.
> > >=20
> > > Did I miss something or did I hit a bug?
> >=20
> > There's no filtering on the query used to get the list of branches to s=
how
> >=20
> > other than the name is not "oe-classic". However, one way I can
> > think of that
> > that could be blank would be if the context processors used to inject t=
he
> >=20
> > "all_branches" queryset results into the context for each page.
> > You haven't
> > modified settings.py such that
> > layerindex.context_processors.layerindex_context has been removed from =
the
> >=20
> > TEMPLATE_CONTEXT_PROCESSORS value by any chance?
> >=20
> > Otherwise, what changes did you make to settings.py? Which Django versi=
on
> > are
> > you using?
> >=20
> > Cheers,
> > Paul
> >=20
> > --
> >=20
> > Paul Eggleton
> > Intel Open Source Technology Centre


=2D-=20

Paul Eggleton
Intel Open Source Technology Centre

