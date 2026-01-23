Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3885D72379
	for <webhook@archiver.kernel.org>; Fri, 23 Jan 2026 11:22:47 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.65153.1769167226168783382
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Jan 2026 03:20:26 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@kernel.org header.s=k20201202 header.b=JS3R18E+;
 spf=pass (domain: kernel.org, ip: 172.105.4.254, mailfrom: sumit.garg@kernel.org)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 02A1860010;
	Fri, 23 Jan 2026 11:20:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60958C116D0;
	Fri, 23 Jan 2026 11:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769167224;
	bh=jPvxVYxzR+sGGHucO/zgjO9in6TQrVGZXvmlkr5asEw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JS3R18E+wYp//OR+OljlhL7CQFqx8n7rqeZgwPaVGgjHku1fmL0GODbPY6Ej3OUM8
	 Iw3krFNPAjzaJgV4+QzrVQJZI2ROmY2VChUdC0C4YloWOGEWUw9wGV0rGCaRHEG71U
	 QYHpmdYuanCf/qk8NPCY8XIC6I7WK+vWSbsCoy4hn/GzB4eHZ75E4mLHPFQ409R57Y
	 Xphdnq6hj+156PZhg33gkjc1c/aYGNLEjz1AWQ0oa+vaIcKj7l0KjLOPSCMH6dOEhR
	 r+Hg7Qb/KRYXX3OE1eUZL3yaai0w8hBnFURGVWn2Sz/l9rcD06DMrKrgXtJsX9UF+a
	 j1aBMFmlMhnbQ==
Date: Fri, 23 Jan 2026 16:50:18 +0530
From: "Sumit Garg" <sumit.garg@kernel.org>
To: raj.khem@gmail.com, ross.burton@arm.com, thomas.perrot@bootlin.com
Cc: yocto@lists.yoctoproject.org,
	"nylon.chen@sifive.com" <nylon.chen@sifive.com>,
	"peter.lin@sifive.com" <peter.lin@sifive.com>,
	"meta-arm@lists.yoctoproject.org" <meta-arm@lists.yoctoproject.org>,
	ricardo.salveti@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Subject: Re: [meta-arm] [yocto] [RFC] Moving OP-TEE support from meta-arm to oe-core
Message-ID: <aXNZcv9laWEjvB4W@sumit-xelite>
References: <92b1fbe3da82c19ed2ca7a617077f6055a74f7e3.camel@bootlin.com>
 <6C7BC2F4-364D-41C1-87CB-755547FE281E@arm.com>
 <CAMKF1sq=OEHMM97DiKsdBTnCdSCbsfzTLiADfyUb0=RbVBVYeA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1sq=OEHMM97DiKsdBTnCdSCbsfzTLiADfyUb0=RbVBVYeA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Jan 2026 11:22:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66182

On Thu, Jan 22, 2026 at 09:22:27AM -0800, Khem Raj via lists.yoctoproject.o=
rg wrote:
> On Thu, Jan 22, 2026 at 9:05=E2=80=AFAM Ross Burton via lists.yoctoprojec=
t.org
> <ross.burton=3Darm.com@lists.yoctoproject.org> wrote:
>=20
> > On 22 Jan 2026, at 09:33, Thomas Perrot via lists.yoctoproject.org
> > <thomas.perrot=3Dbootlin.com@lists.yoctoproject.org> wrote:
> > >
> > > Hi,
> > >
> > > Currently, OP-TEE support is maintained in the meta-arm layer. Howeve=
r,
> > > OP-TEE is now being adopted by non-ARM platforms as well, notably RIS=
C-
> > > V.
> > >
> > > Given this broader adoption, would it make sense to move the OP-TEE
> > > recipes from meta-arm to oe-core?
> > >
> > > I'd like to hear the community's thoughts on this.
> >

I would be supportive of idea to move upstream aligned OP-TEE recipes to
OE core which can be built in an architecture neutral way.

> > Copying in the meta-arm list.
> >
> > My immediate thought on this is =E2=80=9Cwould the riscv machines actua=
lly use the
> > same recipes=E2=80=9D or is there enough forking and vendor branches ha=
ppening that
> > whilst in theory everyone is using OP-TEE, they=E2=80=99re not all usin=
g the _same_
> > optee.
> >

Agree, I rarely see OP-TEE and TF-A recipes being reused by various
vendor BSP layers. There is enough forking there for sure but the other
reason is that vendor BSP layer maintainers don't typically want to
depend on meta-arm but only OE core. This typically causes the vendor
BSPs to just copy TF-A and OP-TEE recipes rather than using overrides.

Not sure what's the standard practice that OE/Yocto community would
recommend here to avoid duplication.

BTW, compilation for RISC-V can be referred here [1].

[1] https://github.com/OP-TEE/optee_os/blob/master/.github/workflows/ci.yml=
#L331

> > I=E2=80=99m not against moving genuinely shared recipes somewhere commo=
n, but I do
> > think verifying this will actually happen is important.
> >
> > meta-arm tends to have several versions of optee at once for good reaso=
n=E2=80=A6
> > (currently one, but about to be two)
> >
> >
> I think its a good idea, but Ross's point is good too. If optee is forked
> for every architecture that can not be a good thing. However, if we can g=
et
> qemuarm64 and qemuriscv64 based machines use an upstream version reliably=
,
> we might be able to even help upstream to keep things sane
> atleast for emulated machine architecture, similar to u-boot.
>=20

That's right, getting the OP-TEE recipes in OE core would provide better
chances of cross-architecture reuse following the U-Boot example.

Although I would have hoped full boot stack including TF-A recipes to be
in OE-core for emulated machines but not sure if that's really meta-arm
maintainers are looking forward too.

-Sumit

>=20
> > Ross
> >=20
> >
> >

>=20
>=20
>=20


