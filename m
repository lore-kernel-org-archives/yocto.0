Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44C92E00746
	for <yocto@yoctoproject.org>; Sun, 10 Jun 2012 15:04:30 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Jun 2012 15:04:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="154466427"
Received: from unknown (HELO helios.localnet) ([10.252.120.99])
	by azsmga001.ch.intel.com with ESMTP; 10 Jun 2012 15:04:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sun, 10 Jun 2012 23:04:28 +0100
Message-ID: <2635559.9iAIfW4lGB@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-24-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <4FCC6DD9.50801@enea.com>
References: <4FC74DF9.3070401@enea.com>
	<CAEsOVNc8n1yqOxc12osvmUB1+qCAxZFo077WEk4+AnaaN6KCgg@mail.gmail.com>
	<4FCC6DD9.50801@enea.com>
MIME-Version: 1.0
Cc: McClintock Matthew-B29882 <B29882@freescale.com>
Subject: Re: PR and bbappends
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
X-List-Received-Date: Sun, 10 Jun 2012 22:04:30 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Monday 04 June 2012 10:12:09 David Nystr=F6m wrote:
> On 06/01/2012 09:32 PM, McClintock Matthew-B29882 wrote:
> > Some based layers should not modify certain packages. Which
> > meta-fsl-ppc is guilty of doing which I would like to cleanup. Chan=
ges
> > to packages should be moved up to a distro layer I believe?
>=20
> I don't mind BSP layers modifying packages, as long as its called for=
.
> It would be helpful if BSP maintainers could try to enforce
> those bbappends only on machines in the BSP layer itself. i.e.
>=20
> Bugfix and other similar bbappends on generic stuff could be placed i=
n a
> separate directory which can be easily BBMASK:ed.

If they're bugfixes that are not in any way machine-specific they reall=
y do not=20
belong in the BSP. They're fine for distro layers, although I would str=
ongly=20
encourage people to be pushing these fixes up to OE-core unless they ar=
e=20
specific to some distro policy.

FYI, for machine specific changes in bbappends you can still make use o=
f a=20
machine override to ensure that the change only applies when building f=
or that=20
specific machine. With a lot of variable changes that could get messy t=
hough :/

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

