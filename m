Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42C94E00C2B; Tue, 12 Jul 2016 21:00:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06869E00C09
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 21:00:13 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Jul 2016 21:00:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,355,1464678000"; d="scan'208";a="994125587"
Received: from cooi12-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.150.222])
	by orsmga001.jf.intel.com with ESMTP; 12 Jul 2016 21:00:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andreas =?ISO-8859-1?Q?M=FCller?= <schnitzeltony@googlemail.com>,
	Yocto Project <yocto@yoctoproject.org>
Date: Wed, 13 Jul 2016 16:00:07 +1200
Message-ID: <1719889.ALCIjRXcpG@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.5.7-202.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CALbNGRRL6-9S_a3r-R=Qtv+_yUbYEW2spNz_v7YT4cPuoy6k1g@mail.gmail.com>
References: <CALbNGRSzRPjO693=9wCsyyBrB8iPWmKhhQ=9MX1NZSzNwcd19Q@mail.gmail.com>
	<CALbNGRSJKT+9wSKE-mSZbeEo4bWpw3XfpBnpenP7vSvtkMXFqg@mail.gmail.com>
	<CALbNGRRL6-9S_a3r-R=Qtv+_yUbYEW2spNz_v7YT4cPuoy6k1g@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: OpenEmbedded Metadata: Recipe update broken
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
X-List-Received-Date: Wed, 13 Jul 2016 04:00:17 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Fri, 19 Feb 2016 08:05:09 Andreas M=FCller wrote:
> On Wed, Feb 3, 2016 at 9:06 PM, Andreas M=FCller
> <schnitzeltony@googlemail.com> wrote:
> > On Wed, Feb 3, 2016 at 8:10 PM, Paul Eggleton
> > <paul.eggleton@linux.intel.com> wrote:
> >> On Wed, 03 Feb 2016 14:41:42 Andreas M=FCller wrote:
> >>> FAQ for layerindex says recipes are updated every 3 hours but I t=
hink
> >>> it does not work. E.g meta-oe geis/grail/frame are not mentioned =
but
> >>> were committed few days ago.
> >>=20
> >> I do know there's a problem, but I'm honestly not sure what's caus=
ing it.
> >> Unfortunately I don't have time to dig into it now but let me see =
if I
> >> can resync meta-oe at least.
> >=20
> > No need for manual update - it was just a heads up. I was not sure
> > that it is a known issue.
>=20
> I checked in history:
>=20
> meta-openwrt added 4 weeks ago is the last layer for that was
> analyzed. meta-cpan and all published after that were not analysed
> anymore - they are reported having no recipes.
>=20
> As this is a strong tool I have at daily use: Is there something I ca=
n
> do to get this working again?

So, it was a long time coming, but I finally figured out what was going=
 wrong=20
at least for some cases - basically, newer versions of GitPython actual=
ly=20
recognise renamed files instead of treating them as an add and a delete=
, but=20
since I didn't know about this change I didn't fix the layer index code=
 to=20
accommodate this. With the recent layer index upgrade to support Python=
 3 for=20
master, the fix for this issue was also applied, and each layer is also=
 now=20
parsed in a separate subprocess which should finally take care of memor=
y leaks=20
and any other rubbish being left behind affecting parsing of subsequent=
=20
layers. Hopefully we shouldn't see any more of this type of problem aga=
in=20
(aside from actually broken metadata) but as always please do let me kn=
ow if=20
you see anything strange.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

