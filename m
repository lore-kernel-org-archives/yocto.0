Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E264E0030C
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 06:05:55 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Dec 2011 06:05:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,313,1320652800"; d="scan'208";a="93474235"
Received: from unknown (HELO helios.localnet) ([10.252.122.2])
	by fmsmga001.fm.intel.com with ESMTP; 07 Dec 2011 06:05:53 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Larson <kergoth@gmail.com>
Date: Wed, 07 Dec 2011 14:05:52 +0000
Message-ID: <1605255.ltn5bNtJ0l@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-13-generic-pae; KDE/4.7.3; i686; ; )
In-Reply-To: <CABcZANkovWJH9dFUpRngNzrQH5VAxYOiO1dK3H2pPB4SM9GS6A@mail.gmail.com>
References: <88701C38B5D07249817D428430999C910B774261@sestoex09.enea.se>
	<CABcZANkovWJH9dFUpRngNzrQH5VAxYOiO1dK3H2pPB4SM9GS6A@mail.gmail.com>
MIME-Version: 1.0
Cc: David =?ISO-8859-1?Q?Nystr=F6m?= <David.Nystrom@enea.com>,
	yocto@yoctoproject.org
Subject: Re: Variable locality too restricted.
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
X-List-Received-Date: Wed, 07 Dec 2011 14:05:55 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wednesday 07 December 2011 06:52:25 Chris Larson wrote:
> On Wed, Dec 7, 2011 at 6:44 AM, David Nystr=F6m <David.Nystrom@enea.c=
om>=20
wrote:
> > I'm trying to create a setup for qemuppc.
> >=20
> > Goals:
> > core-image-minimal + virtual/kernel.
> > core-image-minimal + virtual/kernel with modified .config for debug=

> > flavoured kernel.
> >=20
> > Problems:
> > PREFERRED_PROVIDER seems to be restricted to local.conf, distro and=

> > machine.
> This is incorrect. It can be anywhere in the configuration metadata.
> bitbake.conf includes a variety of config files, not just
> distro/machine. Read that to see other existing files which get
> included. Further, you could create a .conf/.inc which you include
> from your machine .conf, if your goal is just to avoid duplication.

Changing MACHINE has other implications though; do we not have any othe=
r way=20
to switch out the kernel on a per-image basis?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

