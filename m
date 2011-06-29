Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D4BCB4C800A1
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2011 03:47:56 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 29 Jun 2011 01:47:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,442,1304319600"; d="scan'208";a="24186385"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 29 Jun 2011 01:47:55 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 29 Jun 2011 16:47:50 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 29 Jun 2011 16:47:50 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 29 Jun 2011 16:47:49 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Wed, 29 Jun 2011 16:47:48 +0800
Thread-Topic: configure optimization feature update
Thread-Index: AcwsNlD6Il6mpSvlQ0y9ites+qZzIwAXA0ewAmmbSQA=
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A12D6B85B4A@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A52800155@shsmsx501.ccr.corp.intel.com>
	<1308236462.15712.442.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A12D6721BB7@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A12D6721BB7@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: configure optimization feature update
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 29 Jun 2011 08:47:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Xu, Dongxiao
> Sent: Friday, June 17, 2011 10:19 AM
> To: Richard Purdie
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] configure optimization feature update
>=20
> Hi Richard,
>=20
> > -----Original Message-----
> > From: Richard Purdie [mailto:richard.purdie@linuxfoundation.org]
> > Sent: Thursday, June 16, 2011 11:01 PM
> > To: Xu, Dongxiao
> > Cc: yocto@yoctoproject.org
> > Subject: Re: configure optimization feature update
> >
> > Hi Dongxiao,
> >
> > On Thu, 2011-06-16 at 08:57 +0800, Xu, Dongxiao wrote:
> > > Recently I was doing the "configure optimization" feature and
> > > collecting data for it.
> > >
> > > The main logic of this feature is straight forward:
> > >
> > > 1. Use the diff file as autoreconf cache. (I use command: "diff -ruN
> > > SOURCE-ORIG SOURCE", here "SOURCE-ORIG" is the source directory
> > > before running autoreconf, while "SOURCE" is the directory after
> > > running autoreconf).
> > > 2. Add SRC_URI checksum for all patches of the source code.
> > > 3. Tag each autoreconf cache file with ${PN} and the SRC_URI
> > > checksum of source code and all patches.
> > > 4. If the currently SRC_URI checksum matches the cached checksum,
> > > then we can patch the cache instead of running "autoreconf" stage.
> > >
> > > I did some testings for sato build, the result is not as good as we
> > > expected:
> > >
> > > On a server build machine (Genuine Intel(R) CPU @ 2.40GHz, 2 sockets
> > > with 6
> > core each and hyperthreading, thus 24 logical CPUs in all, 66G memory):
> > >
> > > w/o the optimization:
> > > real    83m40.963s
> > > user    496m58.550s
> > > sys     329m1.590s
> > >
> > > w/ the optimization:
> > > real    79m1.062s
> > > user    460m58.600s
> > > sys     347m42.120s
> > >
> > > It has about 5% performance gain.
> >
> > Whats interesting there is the relatively large sys times compared to
> > user. Any idea why that's happening? Spinning locks?
>=20
> Yes, I also noticed the the in-consistent data of user and sys.
> During the build, sometimes I found the build will suspend for some time =
and
> system is doing "kjournald".
> It happens relatively frequent on that 24 CPU's server with "48" and "-j4=
8"
> assigned for build parallel parameters.
> I am not sure whether this caused the above phenomenon.
>=20
> >
> > > I also tested the patch on a desktop core-i7 machine (Intel(R)
> > > Core(TM) i7
> > CPU 870 @ 2.93GHz, 4 core 8 logical CPU, 4G memory):
> > >
> > > w/o the optimization:
> > > real    105m25.436s
> > > user    372m48.040s
> > > sys     51m23.950s
> > >
> > > w/ the optimization:
> > > real    103m38.314s
> > > user    332m35.770s
> > > sys     49m4.520s
> > >
> > > It only has about 2% performance gain.
> > >
> > > The result is not encouraging.
> >
> > Agreed, this isn't as good as we'd hoped for :(.
> >
> > > There are also some other things we need to take into consideration
> > > for this feature:
> > >
> > > 1. If add this feature, the first build time should be longer than
> > > current since it needs to build the autoreconf cache.
> > > 2. Maintainers needs to maintain the SRC_URI checksums not only for
> > > source code, but also all its patches. For some recipes, it has more
> > > than 20 patches, which needs assignable maintenance effort.
> > > 3. How to distribute the caches will be a problem. The total size of
> > > such cache is about 900M (before compression) and 200M (after
> > > compression). Since the size is not small, distributing it with Poky
> > > source code doesn't make sense. On another aspect, we can use
> > > something like "sstate". But since we already have caches of sstate,
> > > I think it is not necessary for us to enable another similar cache
> > > mechanism with little improvement.
> > >
> > > Therefore my opinion is we may give up this feature. What's your
> > > comments and suggestions?
> >
> > I think we should put the patches together on a branch in contrib so
> > we keep them somewhere in case we want them. Certainly tracking what
> > changes the autoreconf process makes may be useful in other situations
> > in future so its worth keeping the patches. I think you're right and
> > we should shelve the idea for now though as it doesn't look to be worth=
 the
> pain it entails.
>=20
> OK, I will queue my patch into a contrib tree and keep it there.

The contrib tree to queue the configure optimization patch are located at:
http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=3Ddxu4/configure=
-optimization

it should have flaws and is not for merge.
I will keep it there and see if we need it later.

Thanks,
Dongxiao

>=20
> >
> > For reference, we probably do need to start tracking the file
> > checksums for the benefit of sstate.
>=20
> Could you explain more here? Here the file checksums you mentioned is
> SRC_URI checksum?
> How can it help sstate?
>=20
> Thanks,
> Dongxiao
>=20
> >
> > The mediocre performance improvement is likely down to the size of the
> > cache data but I can't immediately think of a way to improve that :(.
> >
> > Cheers,
> >
> > Richard
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

