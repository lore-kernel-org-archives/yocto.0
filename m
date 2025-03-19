Return-Path: <kanakshilledar111@protonmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A82C35FFA
	for <webhook@archiver.kernel.org>; Wed, 19 Mar 2025 10:50:40 +0000 (UTC)
Received: from mail-10698.protonmail.ch (mail-10698.protonmail.ch [79.135.106.98])
 by mx.groups.io with SMTP id smtpd.web10.4857.1742381438718114612
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Mar 2025 03:50:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@protonmail.com header.s=protonmail3 header.b=EKcVIZCV;
 spf=pass (domain: protonmail.com, ip: 79.135.106.98, mailfrom: kanakshilledar111@protonmail.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1742381435; x=1742640635;
	bh=GerS/VBnCk+IqiZM4AnnFYVWcwLYbsPh2xI4G6xr3Ak=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=EKcVIZCVftII2aXmihzxFg5QmHCpjM8d5dx7bPs8T1hWEhl8wYeiiENq1XkPM67W8
	 6m8pXzOvLzKjuqaSH3sXhdl0ChJGF+nX0CKavQ/Zz6sTdoBXhs5GYvwxdDjCC8vhHc
	 Z0wYPUm2F3WclFYDh2CR9XQZ6QkghC9STxUwFaN68w+zuGn89KL1pELde+V7iSoWM/
	 nkQu8rvp5vwlzB2hwEBeAUKO3kFHhP1Ca7YO4MJaP4hr/4ZzMjGOj6suBGjks7rHkI
	 tLlcIXOJFA4kAEXEhSILZYOyyTQ4HLOT7XblHx1TBP/ihIQm4TvPuz/T4a0Akl5Q0i
	 jnGGbwk60V0dg==
Date: Wed, 19 Mar 2025 10:50:30 +0000
To: yocto@lists.yoctoproject.org
From: Kanak Shilledar <kanakshilledar111@protonmail.com>
Subject: Re: [yocto] Build failing at do_compile_kernelmodules
Message-ID: <f_CG0aQxt7AnNFNsAL7VA66IkBF1UbFjQ0nMiV3mU15cmnRNpjvwyyW3wTRvLK4wjEK6W_cvTJVdBH5NhoKzOOWYZ0CMg4y3tSiH5SKIzdg=@protonmail.com>
In-Reply-To: <4f88c962-b369-4e8c-9b3c-cc7de9ebb2b3@gmail.com>
References: <3qt5x0zk7wn1MKNt8VOP6UosjPF_bny1MEmXm4G5FWrCpT3tdMVFyNyDChg5F4fHYKsXk_b02Zu0ZjjTTiD1JNwhJEt61NT4XPVkKYH_xYM=@protonmail.com> <4f88c962-b369-4e8c-9b3c-cc7de9ebb2b3@gmail.com>
Feedback-ID: 26271244:user:proton
X-Pm-Message-ID: dc082f97fb51af8ea5e250e7fd0ad089c5db19aa
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Mar 2025 10:50:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64980

I will try compiling with the suggested changes as well as report this to t=
he vendor.

Thanks for helping out.
Best Regards,
Kanak Shilledar

On Tuesday, March 18th, 2025 at 11:07 PM, Gyorgy Sarvari via lists.yoctopro=
ject.org <skandigraun=3Dgmail.com@lists.yoctoproject.org> wrote:

> The problem seems to be with the vendor kernel's additions. For example,
> check this line[1].
>=20
> It is defined as "-I$(src)..." - this works when you build it on your
> machine, because most likely you are building it in the sourcetree.
>=20
> However when it is compiled with yocto, the PWD is
> "$WORKDIR/standard-build...", but $(srctree) value is
> ".../work-shared/kernel-source" - the source and build folder are not
> the same, and $(src) is a relative path compared to $(srctree).
>=20
> To solve the missing file issues, you could try patching these
> Makefiles, by prefixing these include paths as $(srctree)/$(src)
> (instead of only $(src)). You might also want to report this to the vendo=
r.
>=20
> I don't know if there are other issues also with this kernel - your logs
> have some other errors too, though maybe they will disappear once this
> is solved.
>=20
> [1]:
> https://github.com/revyos/th1520-linux-kernel/blob/th1520-lts/drivers/soc=
/xuantie/nna/vha/Makefile#L52
>=20
> On 3/17/25 12:28, Kanak Shilledar via lists.yoctoproject.org wrote:
>=20
> > Hi,
> > I am trying to write a recipe for compiling vendor kernel
> > [https://github.com/revyos/th1520-linux-kernel <https://github.com/
> > revyos/th1520-linux-kernel>] for beaglev ahead in meta-riscv.
> > It is failing at the do_compile_kernelmodules task. I have attached the
> > full error log below.
> > I tried to manually clone the git tree and compile the source and it go=
t
> > fully built.
> >=20
> > Further analyzing the log file, the first error shows that "vha_plat.h"
> > is missing. I tried running
> > the find command to locate the file in the vendor's tree and it was
> > available. Secondly, when
> > the package was extracted by yocto, I was able to find the file in "./
> > tmp/work-shared/beaglev-ahead/kernel-source/drivers/soc/xuantie/nna/vha=
/
> > platform/vha_plat.h" but the file is missing in "/tmp/work/
> > beaglev_ahead-poky-linux/linux-beaglev-vendor/6.6.82+git/linux-
> > beaglev_ahead-standard-build/"
> >=20
> > There are multiple such file not found errors. How can I fix these issu=
es?
> > You can have a look at my linux-beaglev-vendor.bb recipe here: https://
> > github.com/kanakshilledar/meta-riscv/commit/
> > f97e4f771db19b1195cbb35849e781a659854a96 <https://github.com/
> > kanakshilledar/meta-riscv/commit/f97e4f771db19b1195cbb35849e781a659854a=
96>
> > I am using the th1520_defconfig for building the kernel.
> >=20
> > Thanks and Regards,
> > Kanak Shilledar
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64976): https://lists.yoctoproject.org/g/yocto/messag=
e/64976
> Mute This Topic: https://lists.yoctoproject.org/mt/111747161/6769341
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kanakshilledar=
111@protonmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

