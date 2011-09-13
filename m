Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D712E006CF
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2011 13:18:08 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb [147.11.189.41])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p8DKHlxm006776
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 13 Sep 2011 13:17:47 -0700 (PDT)
Received: from ALA-MBB.corp.ad.wrs.com ([169.254.2.242]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.01.0255.000;
	Tue, 13 Sep 2011 13:17:46 -0700
From: "Ashfield, Bruce" <Bruce.Ashfield@windriver.com>
To: "'nitin.a.kamble@intel.com'" <nitin.a.kamble@intel.com>
Thread-Topic: [yocto] [PATCH 1/1] btrfs: Add a new kernel feature to enable
	the	btrfs support
Thread-Index: AQHMbM8gdPd28oQL+Eaj0n+W60EEVpVBAE6AgAs/hgD//4rzmQ==
Date: Tue, 13 Sep 2011 20:17:45 +0000
Message-ID: <3A933C74C1C9A847A5738584DEE9CCE90E8769DF@ALA-MBB.corp.ad.wrs.com>
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE94DF10E8B8@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.82.31]
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

It's there. Have a look in the cfg Sabourin

Bruce

----- Original Message -----
From: Kamble, Nitin A [mailto:nitin.a.kamble@intel.com]
Sent: Tuesday, September 13, 2011 01:16 PM=0A=
To: Ashfield, Bruce
Cc: yocto@yoctoproject.org <yocto@yoctoproject.org>
Subject: RE: [yocto] [PATCH 1/1] btrfs: Add a new kernel feature to enable =
the	btrfs support

Hi Bruce,=20
  I am seeing that the patch is still not part of the Linux-yocto-3.0 repos=
itory. Is there any reason it is being hold?

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


