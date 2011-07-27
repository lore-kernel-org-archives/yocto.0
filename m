Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 89CD94C80094
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 08:56:26 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6RDto3F006844;
	Wed, 27 Jul 2011 08:55:51 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <4E3012D8.3080106@windriver.com>
Date: Wed, 27 Jul 2011 08:55:51 -0500
Message-Id: <E7A956EE-C5D1-49A9-902B-9A0F8973688C@kernel.crashing.org>
References: <FCF6621D-EE24-4113-AB03-A1FD94E3375C@kernel.crashing.org>	<1311756356.2344.332.camel@rex>
	<66F46EDD-010E-41CC-BE5E-196894B3BA22@kernel.crashing.org>
	<4E3012D8.3080106@windriver.com>
To: Bruce Ashfield <Bruce.Ashfield@windriver.com>
X-Mailer: Apple Mail (2.1084)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Additional / new BSP collection?
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
X-List-Received-Date: Wed, 27 Jul 2011 13:56:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

> Hi Kumar,
>=20
> As you know, I've been working on several kernel efforts
> around the FSL parts as well (in particular the ones that
> have enough pieces upstream to work out of the box).  I
> definitely don't want to overlap in a way that doesn't
> create complimentary efforts.
>=20
> What are your current thoughts around kernels and the
> (nearly religious) kernel version question ? It would be
> great to get some alignment on features (-rt, tracing,
> boot, footprint reduction, etc, etc) and save some effort
> on maintenance and validation. Also if we want to create
> some yocto reference BSPs, having a kernel version and feature
> set match is important as well (i.e. what we've done for
> the intel ones).
>=20
> To that end, do you have an thoughts about using linux-yocto
> as a base to any BSP work ? That statement doesn't do it
> justice though, since when I say 'use linux-yocto as a base',
> it really means that linux-yocto uses your BSPs as an
> upstream/official reference and can pull support for them
> into branches, and have the configuration and other tooling
> get them any functionality that is being developed.
>=20
> No control over BSP content, or anything like this, is being
> suggested or asserted here. Just looking to all push in the
> same direction (embedded features and BSPs to upstream) and
> re-use the work of BSPs available in the community. If the
> base is the same (and hence kernel version), then this relationship
> and workflow is very simple.
>=20
> ... and as a bonus, if the workflow doesn't work easily, then
> there's a problem with it and we can work on something that
> is suitable (change tools, etc).
>=20
> Thanks,
>=20
> Bruce

What I'm envisioning as a start is we'd offer a meta layer on yocto =
sites for the upstream supported boards & feature set.

I'm still looking at what we do for a FSL delivered BSP (via =
freescale.com) that would be based on that.  My initial concerns are =
that the yocto community will probably move and change things too =
frequently for our customer base (kernel version, toolchain version, =
etc).  Thus my thinking of de-coupling the two a bit.  The yocto =
versions of BSPs would track yocto development.  The FSL delivered BSPs =
would probably track to an older yocto version & slower update cycle.

- k=

