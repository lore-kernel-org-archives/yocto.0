Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23336E01682
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 03:33:36 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 16 Oct 2013 03:33:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,506,1378882800"; d="scan'208";a="411837974"
Received: from unknown (HELO helios.localnet) ([10.252.121.8])
	by fmsmga001.fm.intel.com with ESMTP; 16 Oct 2013 03:33:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Amit Tomer <amittomer25@gmail.com>
Date: Wed, 16 Oct 2013 11:33:15 +0100
Message-ID: <2360903.vJkMptqlar@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <1453346.6uHgHqcMcF@fedora-fisso>
References: <CABHD4K9CTm3f-p66+aNgb-3ba168G4OveAkU8mPqtLruw1CEgQ@mail.gmail.com>
	<1453346.6uHgHqcMcF@fedora-fisso>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How /etc/passwd packed into my final image
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
X-List-Received-Date: Wed, 16 Oct 2013 10:33:38 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wednesday 16 October 2013 10:20:24 Davide Soldan wrote:
> In data mercoled=EC 16 ottobre 2013 00:01:13, Amit Tomer ha scritto:
> > I wanted to modify the content of /etc/passwd but don't know how
> > /etc/passwd files is packed into final image
> >=20
> > After the build process ,passwd file goes to
> >=20
> > "tmp/work/k2-poky-linux-gnueabi/image-k2/1.0-r0/rootfs/etc/passwd"
> >=20
> > this loaction
> >=20
> > Now I see image-k2.bb file but could not find any rule that will pa=
ck
> > passwd file to
> > final image.
> >=20
> > Can anybody how it is packed and way to modify it.
> >=20
> > Thanks
> > Amit
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
> Hi,
> I think that the recipe that creates passwd file is under
> poky/meta/recipes-core/base-passwd (I'm on dora branch). Maybe with a=

> bbappend of that recipe you can change the passwd file with yours... =
Cheers

Rather than modifying it in base-passwd, with master or 1.5 I'd recomme=
nd=20
using extrausers.bbclass / EXTRA_USERS_PARAMS (see meta-
yocto/conf/local.conf.sample.extended for an example of how to use it).=


Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

