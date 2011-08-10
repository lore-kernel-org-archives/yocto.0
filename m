Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF700E011DA
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2011 21:24:51 -0700 (PDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p7A4OuBv027763;
	Tue, 9 Aug 2011 23:24:57 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <4E420695.4030804@linux.intel.com>
Date: Tue, 9 Aug 2011 23:24:57 -0500
Message-Id: <DFB04F62-E333-4697-9967-8DBE77F6420B@kernel.crashing.org>
References: <4E420695.4030804@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: linux-yocto_3.0: pull powerpc compile fix for -0s in BOOTFLAGS
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
X-List-Received-Date: Wed, 10 Aug 2011 04:24:52 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Aug 9, 2011, at 11:18 PM, Darren Hart wrote:

> Bruce,
>=20
> The following patch is needed for qemuppc and fsl-mpc8315e-rdb (same
> reasons as before). Can you pull this in from the 2.6.37 yocto tree?
>=20
> commit 5ff609967ffe87c49d534d7861a7e0b150517726
> Author: Bruce Ashfield <bruce.ashfield@windriver.com>
> Date:   Thu Oct 14 16:38:00 2010 -0400
>=20
>    powerpc/boot: remove -Os from BOOTFLAGS
>=20
> Thanks,

Before we do this I have a query about default toolchain?  I just posted =
a patch that should make this NOT needed if we utilize gcc-4.6

So wondering what the feeling was about a fix to kernel tree needed for =
one version of toolchain and not another?

- k=

