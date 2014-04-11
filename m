Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-2.stofanet.dk (mx-aarh-2.stofanet.dk [212.10.10.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E181AE00CED
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 08:03:27 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-2.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1WYczE-0007dA-0k; Fri, 11 Apr 2014 17:03:24 +0200
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id EB7117ED3C;
	Fri, 11 Apr 2014 17:03:23 +0200 (CEST)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 11 Apr 2014 17:03:23 +0200
Message-ID: <3576503.mNsH0YDmIl@koontz>
User-Agent: KMail/4.13 (Linux/3.13.0-23-lowlatency; KDE/4.13.0; i686; ; )
In-Reply-To: <5347F2E9.208@windriver.com>
References: <2489555.PeAzndN2bA@koontz> <2289397.7FZuMHCiSt@koontz>
	<5347F2E9.208@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: defconfig on daisy
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
X-List-Received-Date: Fri, 11 Apr 2014 15:03:31 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Bruce

I just check if AUFS is enabled. It should be since that's in my defcon=
fig.

Fredag den 11. april 2014 09:49:29 skrev Bruce Ashfield:
> On 14-04-11 03:39 AM, S=F8ren Holm wrote:
> > Sure
> >=20
> > I guess this is what you need :
> >=20
> > http://sgh.dk/~sgh/cb16_kernel.tar.bz2
> >=20
> > It's just the machine-configuration and my append-file and defconfi=
g.
>=20
> replying again .. with the list this time.
>=20
> Great. I did a build here and I see the defconfig being applied. How
> were you determining that it wasn't happening ? I want to make sure
> I'm checking the same config options.
>=20
--=20
S=F8ren Holm

