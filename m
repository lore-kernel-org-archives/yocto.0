Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 813394C80044
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 08:11:24 -0600 (CST)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id oAAEBLjJ013045;
	Wed, 10 Nov 2010 08:11:21 -0600
Mime-Version: 1.0 (Apple Message framework v1081)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <4CDAA4F0.1060802@windriver.com>
Date: Wed, 10 Nov 2010 08:11:20 -0600
Message-Id: <BE6DB51E-F39B-4C61-9EA1-9AFBE5E397FA@kernel.crashing.org>
References: <414DA7D8-2E3E-4DEE-9C36-24EF976D7A99@kernel.crashing.org>
	<4CDAA03C.8090004@windriver.com> <4CDAA4F0.1060802@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
X-Mailer: Apple Mail (2.1081)
Cc: yocto@yoctoproject.org
Subject: Re: TARGET_FPU for mpc8315e-rdb listed as SPE??
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
X-List-Received-Date: Wed, 10 Nov 2010 14:11:24 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Nov 10, 2010, at 7:58 AM, Bruce Ashfield wrote:

> On 10-11-10 08:38 AM, Bruce Ashfield wrote:
>> On 10-11-10 01:46 AM, Kumar Gala wrote:
>>> Why does the meta/conf/machine/mpc8315e-rdb.conf list TARGET_FPU as
>>> SPE. This isn't correct for an MPC8313 SoC.
>>=20
>> It isn't used at the moment, so we can safely
>> ignore this.
>>=20
>> It was a hold over from when I initially created
>> the BSP, and I've since changed it locally, but
>> haven't sent the updated BSP yet.
>=20
> To clarify on this point, the kernel configuration
> is NOT using SPE for this, and I was attempting to
> use the FPU setting to trigger some different gcc
> flags during development the base of that test was
> an e500 board, so the SPE setting leaked in, but is
> unused.
>=20
> At the moment, it is actually using soft-float, and
> I had planned to submit a change to clarify that.
>=20
> If there's another option, let me know and I'll
> rebase my patches and change it again.

We should NOT be using soft-float for mpc8315e (it has HW floating point =
on this chip).

Any plans to get an e500 based system going before the rev1.0 release?

- k=

