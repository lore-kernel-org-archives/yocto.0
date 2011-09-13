Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAA6AE006CE
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2011 14:21:03 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Sep 2011 14:21:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,375,1312182000"; d="scan'208";a="48421357"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 13 Sep 2011 14:20:01 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 13 Sep 2011 14:20:01 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi;
	Tue, 13 Sep 2011 14:20:01 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Ashfield, Bruce" <Bruce.Ashfield@windriver.com>
Date: Tue, 13 Sep 2011 14:19:59 -0700
Thread-Topic: [yocto] [PATCH 1/1] btrfs: Add a new kernel feature to enable
	the	btrfs support
Thread-Index: AQHMbM8gdPd28oQL+Eaj0n+W60EEVpVBAE6AgAs/hgD//4rzmYAAEVGQ
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE94DF10E9A8@orsmsx504.amr.corp.intel.com>
References: <9DA5872FEF993D41B7173F58FCF6BE94DF10E8B8@orsmsx504.amr.corp.intel.com>
	<3A933C74C1C9A847A5738584DEE9CCE90E8769DF@ALA-MBB.corp.ad.wrs.com>
In-Reply-To: <3A933C74C1C9A847A5738584DEE9CCE90E8769DF@ALA-MBB.corp.ad.wrs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 15 Sep 2011 03:50:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes, I found it. Thank you !
Nitin


> -----Original Message-----
> From: Ashfield, Bruce [mailto:Bruce.Ashfield@windriver.com]
> Sent: Tuesday, September 13, 2011 1:18 PM
> To: Kamble, Nitin A
> Cc: 'yocto@yoctoproject.org'
> Subject: Re: [yocto] [PATCH 1/1] btrfs: Add a new kernel feature to
> enable the btrfs support
>=20
> It's there. Have a look in the cfg Sabourin
>=20
> Bruce
>=20
> ----- Original Message -----
> From: Kamble, Nitin A [mailto:nitin.a.kamble@intel.com]
> Sent: Tuesday, September 13, 2011 01:16 PM
> To: Ashfield, Bruce
> Cc: yocto@yoctoproject.org <yocto@yoctoproject.org>
> Subject: RE: [yocto] [PATCH 1/1] btrfs: Add a new kernel feature to
> enable the	btrfs support
>=20
> Hi Bruce,
>   I am seeing that the patch is still not part of the Linux-yocto-3.0
> repository. Is there any reason it is being hold?
>=20
> Thanks,
> Nitin
>=20
>=20
> > -----Original Message-----
> > From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> > Sent: Tuesday, September 06, 2011 1:30 PM
> > To: Kamble, Nitin A
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] [PATCH 1/1] btrfs: Add a new kernel feature to
> > enable the btrfs support
> >
> > On 11-09-06 03:56 PM, nitin.a.kamble@intel.com wrote:
> > > From: Nitin A Kamble<nitin.a.kamble@intel.com>
> >
> > Looks good. If we are merging this as config only, I've been
> > putting them in meta/cfg/kernel-cache/cfg/
> >
> > So I relocated this configuration to that directory. I'll have
> > it pushed out in the next day or so (I'm getting on a plane
> > shortly).
> >
> > Bruce
> >
> > >
> > > Signed-off-by: Nitin A Kamble<nitin.a.kamble@intel.com>
> > > ---
> > >   meta/cfg/kernel-cache/features/btrfs/btrfs.cfg |    1 +
> > >   meta/cfg/kernel-cache/features/btrfs/btrfs.scc |    1 +
> > >   2 files changed, 2 insertions(+), 0 deletions(-)
> > >   create mode 100644 meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
> > >   create mode 100644 meta/cfg/kernel-cache/features/btrfs/btrfs.scc
> > >
> > > diff --git a/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
> > b/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
> > > new file mode 100644
> > > index 0000000..605c183
> > > --- /dev/null
> > > +++ b/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
> > > @@ -0,0 +1 @@
> > > +CONFIG_BTRFS_FS=3Dy
> > > diff --git a/meta/cfg/kernel-cache/features/btrfs/btrfs.scc
> > b/meta/cfg/kernel-cache/features/btrfs/btrfs.scc
> > > new file mode 100644
> > > index 0000000..cf18a2e
> > > --- /dev/null
> > > +++ b/meta/cfg/kernel-cache/features/btrfs/btrfs.scc
> > > @@ -0,0 +1 @@
> > > +kconf non-hardware btrfs.cfg


