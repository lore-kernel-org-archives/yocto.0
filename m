Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F350E00978; Mon,  6 Jul 2015 08:11:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1AADE004D2
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 08:11:18 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 06 Jul 2015 08:11:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,415,1432623600"; d="scan'208";a="759224098"
Received: from tgsmith2-mobl5.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.6.176])
	by orsmga002.jf.intel.com with ESMTP; 06 Jul 2015 08:11:18 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Date: Mon, 06 Jul 2015 16:11:15 +0100
Message-ID: <31918961.8Ai7UFDIn8@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.6-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <BN3PR0501MB1090F5833858888228C52DAFBB930@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <CABc_YGAQqOMTMavBTQ+gjq1grteY_n9fy_2xSqVgfCc9ijf3=w@mail.gmail.com>
	<2853092.imoTbB5xtm@peggleto-mobl.ger.corp.intel.com>
	<BN3PR0501MB1090F5833858888228C52DAFBB930@BN3PR0501MB1090.namprd05.prod.outlook.com>
MIME-Version: 1.0
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
X-List-Received-Date: Mon, 06 Jul 2015 15:11:23 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Monday 06 July 2015 15:04:57 Bryan Evenson wrote:
> Paul,
>=20
> > -----Original Message-----
> > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > Sent: Monday, July 06, 2015 10:08 AM
> > To: Marcin Krzemi=C5=84ski
> > Cc: Bryan Evenson; yocto@yoctoproject.org
> > Subject: Re: [yocto] Multiple conncetion to svn (svn+ssh)
> >=20
> > On Monday 06 July 2015 12:57:39 Bryan Evenson wrote:
> > > Marcin,
> > >=20
> > > > From: yocto-bounces@yoctoproject.org
> > > > [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Marcin
> > > > Krzeminski
> > > > Sent: Friday, July 03, 2015 7:55 AM
> > > > To: yocto@yoctoproject.org
> > > > Subject: [yocto] Multiple conncetion to svn (svn+ssh)
> > > >=20
> > > > Hello again,
> > > >=20
> > > > I have 12 recipes that download code from same svn repository (=
using
> > > > svn+ssh)protocol. Recipes are grouped in packagegroup.
> > > > When I want to bitbake packagegroup fetcher fail, but when I ru=
n
> > > > recipe alone all is ok. I think it is because I want to open 8
> > > > connection to one svn repository.How can I fix this, for exampl=
e by
> > > > allowing only eg. 2 recipes from packagegroup to be executed in=

> > > > paralell.
> > >=20
> > > There is no fetcher-specific variable that I know of, but I think=
 you
> > > can set PARALLEL_MAKE=3D"2" in your recipes to reduce the number =
of
> > > fetches on your repository at a time.  The downside is your build=
 will
> > > go slower when it is building your recipes as it won't be doing a=
s
> > > many things in parallel.
> >=20
> > That's not going to help. The parallelism we are talking about here=
 is
> > across recipes - PARALLEL_MAKE is just passed through to make withi=
n one
> > task in one recipe, and make isn't even involved at the fetch stage=
.
>=20
> Sorry, I grabbed the wrong variable.  I meant BB_NUMBER_THREADS, not
> PARALLEL_MAKE.

Sure, but that's not going to work either from within a recipe. It woul=
d work at the configuration level but that'll quite severely impact bui=
ld performance.

> > Something that might work would be to set a lockfile on the do_fetc=
h task
> > such that only one of the recipes could fetch at once. That could n=
ot
> > allow
> > two executing at once, but at least it would solve the problem. e.g=
. you
> > could add this to all of the recipes:
> >=20
> > do_fetch[lockfiles] +=3D "${TMPDIR}/mysvnlock.lock"
> >=20
> > (The file name isn't critical, it just needs to be the same for all=
 of the
> > recipes you wish to participate in the exclusive fetching.)
>=20
> I had no idea that we could do this.  I don't see any documentation o=
n
> lockfiles anywhere. If you use a lockfile, do the all recipes with th=
e same
> lockfile wait until the lockfile is available before continuing on wi=
th
> that step?  Is there a timeout for waiting for the lockfile or does t=
he
> recipe wait indefinitely?

Yes, it's just a lock on the specified file - whoever gets there first =
can
continue, everyone else blocks, and it's an indefinite wait as far as
I'm aware.

It's a little obscure perhaps, but it is in the BitBake manual:

http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-us=
er-manual.html#variable-flags

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

