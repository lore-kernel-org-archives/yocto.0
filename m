Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 615BCE0044A
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 16:23:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Jun 2012 16:23:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="164363756"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jun 2012 16:23:38 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 11 Jun 2012 16:23:38 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.113]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.37]) with mapi id
	14.01.0355.002; Mon, 11 Jun 2012 16:23:38 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [yocto] [PATCH 0/1] remove snb rc6 patches from v3.4 kernel
	repository
Thread-Index: AQHNSArG7wLGK4ILB0aLvZ0mPt0ZNpb2BFqA//+TWeA=
Date: Mon, 11 Jun 2012 23:23:37 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C03113E5D@ORSMSX106.amr.corp.intel.com>
References: <cover.1339443379.git.nitin.a.kamble@intel.com>
	<4FD652E3.3060209@windriver.com>
In-Reply-To: <4FD652E3.3060209@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] remove snb rc6 patches from v3.4 kernel repository
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
X-List-Received-Date: Mon, 11 Jun 2012 23:23:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Monday, June 11, 2012 1:20 PM
> To: Kamble, Nitin A
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [PATCH 0/1] remove snb rc6 patches from v3.4 kernel
> repository
>=20
> On 12-06-11 03:38 PM, nitin.a.kamble@intel.com wrote:
> > From: Nitin A Kamble<nitin.a.kamble@intel.com>
> >
> > These patches are already part of v3.4 kernel sources. So there is no
> > need to maintain them in the yocto linux 3.4 repository.
>=20
> dropped. They obviously weren't reference anyway.
>=20
> I assume you'll be doing an associated meta-intel commit to remove the
> reference in:
>=20
> ./meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
>=20

Bruce,
I think these rc6 patches are still needed for linux-yocto_3.2.bbappend. An=
d they are referenced in the sugarbay bsp 3.2 Yocto kernel as you note abov=
e. The commit I sent is for for v3.4 yocto kernel tree.=20
Are you saying about dropping rc6 patches from the 3.2 kernel tree as well?

Nitin

> Cheers,
>=20
> Bruce
>=20
> >
> > Thanks,
> > Nitin
> >
> > The following changes since commit
> 3fd089debe624c642d7b4d9363f853021d1675b2:
> >
> >    checkpoint dir: meta (2012-06-06 16:24:42 -0400)
> >
> > are available in the git repository at:
> >    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib nitin/meta
> >
> > http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h
> > =3Dnitin/meta
> >
> > Nitin A Kamble (1):
> >    rc6: remove rc6 patches for snb
> >
> >   .../features/tmp/rc6/rc6-kernel-params.patch       |   81 -----------=
---------
> >   meta/cfg/kernel-cache/features/tmp/rc6/rc6.scc     |    5 -
> >   .../tmp/rc6/snb-disable-rc6p-fix-precedence.patch  |   26 ------
> >   .../features/tmp/rc6/snb-disable-rc6p.patch        |   39 ----------
> >   .../features/tmp/rc6/snb-enable-rc6.patch          |   54 -----------=
--
> >   5 files changed, 0 insertions(+), 205 deletions(-)
> >   delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/rc6-
> kernel-params.patch
> >   delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/rc6.scc
> >   delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-
> disable-rc6p-fix-precedence.patch
> >   delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-
> disable-rc6p.patch
> >   delete mode 100644
> > meta/cfg/kernel-cache/features/tmp/rc6/snb-enable-rc6.patch
> >


