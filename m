Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2FA2E01213
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2011 09:14:31 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Sep 2011 09:14:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="46686229"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga002.jf.intel.com with ESMTP; 09 Sep 2011 09:14:31 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Fri, 9 Sep 2011 09:14:31 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 9 Sep 2011 09:14:30 -0700
Thread-Topic: [yocto] [PATCH 1/1] btrfs: Add a new kernel feature to enable
	the	btrfs support
Thread-Index: Acxs09eGhTWkGt2ES9eoxspoulci9wCN3Wnw
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE94DF053854@orsmsx504.amr.corp.intel.com>
References: <cover.1315338837.git.nitin.a.kamble@intel.com>
	<b33495af418b4fe8b8a2c6ba1ff8a67e84dd0a29.1315338837.git.nitin.a.kamble@intel.com>
	<4E6682E5.5070907@windriver.com>
In-Reply-To: <4E6682E5.5070907@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: [PATCH 1/1] btrfs: Add a new kernel feature to enable the	btrfs support
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
X-List-Received-Date: Fri, 09 Sep 2011 16:14:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Bruce,
  BTW we should enable this btrfs feature for linux-yocto-3 kernel. What is=
 the right way to do it? Shall I send a patch for the Linux-yocot-3.0 recip=
e in the oe-core repository?

Thanks,
Nitin


> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Tuesday, September 06, 2011 1:30 PM
> To: Kamble, Nitin A
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [PATCH 1/1] btrfs: Add a new kernel feature to
> enable the btrfs support
>=20
> On 11-09-06 03:56 PM, nitin.a.kamble@intel.com wrote:
> > From: Nitin A Kamble<nitin.a.kamble@intel.com>
>=20
> Looks good. If we are merging this as config only, I've been
> putting them in meta/cfg/kernel-cache/cfg/
>=20
> So I relocated this configuration to that directory. I'll have
> it pushed out in the next day or so (I'm getting on a plane
> shortly).
>=20
> Bruce
>=20
> >
> > Signed-off-by: Nitin A Kamble<nitin.a.kamble@intel.com>
> > ---
> >   meta/cfg/kernel-cache/features/btrfs/btrfs.cfg |    1 +
> >   meta/cfg/kernel-cache/features/btrfs/btrfs.scc |    1 +
> >   2 files changed, 2 insertions(+), 0 deletions(-)
> >   create mode 100644 meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
> >   create mode 100644 meta/cfg/kernel-cache/features/btrfs/btrfs.scc
> >
> > diff --git a/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
> b/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
> > new file mode 100644
> > index 0000000..605c183
> > --- /dev/null
> > +++ b/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
> > @@ -0,0 +1 @@
> > +CONFIG_BTRFS_FS=3Dy
> > diff --git a/meta/cfg/kernel-cache/features/btrfs/btrfs.scc
> b/meta/cfg/kernel-cache/features/btrfs/btrfs.scc
> > new file mode 100644
> > index 0000000..cf18a2e
> > --- /dev/null
> > +++ b/meta/cfg/kernel-cache/features/btrfs/btrfs.scc
> > @@ -0,0 +1 @@
> > +kconf non-hardware btrfs.cfg


