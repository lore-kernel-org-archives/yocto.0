Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33AEDE00867; Sun, 19 Feb 2017 22:26:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4175E007BA
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 22:26:12 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id 5so11612953pgj.0
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 22:26:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:in-reply-to:user-agent;
	bh=Ghe4ddtv9V3ibxIfXWgsLQe1k5xlnVAc969EF9cMgX8=;
	b=Ng+Eu6u1+RwImPCAnjp69D2BNROz4FN2aIEP+Y9t+Vd687zMSk/gwpvYjwbzvZtAys
	8AveHz3wGouf82hoq1KSE0NCoGoGuaoILfMIxA0nh8q9c08wPeFOmINBer2MGrvTcDcg
	Oj2HYoNj2d4Fl7eeakrZu3BWz+XkY8oEBAisKewCIUnr/IUvmssZnWGcbNVdVOX9AY+D
	a76ghTR95Ql/FbdGYvb8rqs81A7oh0Y+jPm0NPtYLMBVdBCLWUSFQAWw5MrPPjxgS4qw
	DPzLfDC5EiaYSfNA4fWufoPR9XkamfqUl+kMze6Fdg5DKcEcfAhN2abR0/kDnTBTNeFd
	E4Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:in-reply-to:user-agent;
	bh=Ghe4ddtv9V3ibxIfXWgsLQe1k5xlnVAc969EF9cMgX8=;
	b=S/hQUK+CtL1Ae9PTBKLRm7mNjyuAdpv0vIh3HSf3L4RseTz+u9XPaa2jAxAr//piZO
	/nWwaGZ0rBuO5CXbYTK8rl8VziinZMlD1Uu+1cFvIaXmDi00UZVMrQCo9+BvsImEQkVo
	habOtkM84zIwGyyaG0QAIGEHUaWFlk8oWzRFLbtxF8tz61tXEnBmpD3UPFOr5hzAIN+N
	j7A1kSiyWQ3tlUVwgGZoJdadJDwfmWAILpnzcqAli6wHDZ0uRquVdarg5HxvtmLGNO/O
	v7PWI4RJO+GLv3EnkF3QzAvdfxnVjMOBQa2GVQqQdnQATWnEw6HMNNgAifGPfr3emelJ
	WQcQ==
X-Gm-Message-State: AMke39mm4eGomE/4ZwLmxWTJLtsXoHAdlJ+RzpCemyToHnJIppNS58yHFC+oAqx4UAiVmw==
X-Received: by 10.98.21.196 with SMTP id 187mr18066917pfv.110.1487571971644;
	Sun, 19 Feb 2017 22:26:11 -0800 (PST)
Received: from carbonA (c-73-109-7-33.hsd1.wa.comcast.net. [73.109.7.33])
	by smtp.gmail.com with ESMTPSA id
	s26sm32646357pge.33.2017.02.19.22.26.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 Feb 2017 22:26:11 -0800 (PST)
Date: Sun, 19 Feb 2017 22:26:02 -0800
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170220062602.GA15017@carbonA>
References: <20170219111804.20566-1-paul@paulbarker.me.uk>
	<CAMKF1srXgR_uLBujxiy-Lywu4xSE28Nx6PhGDze_C871Nm0TtA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1srXgR_uLBujxiy-Lywu4xSE28Nx6PhGDze_C871Nm0TtA@mail.gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][morty][PATCH 0/2] Stable branch kernel upgrades
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
X-List-Received-Date: Mon, 20 Feb 2017 06:26:15 -0000
Content-Type: text/plain; charset=us-ascii; x-action=pgp-signed

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On Mon, Feb 20, 2017 at 02:04:41AM +0000, Khem Raj wrote:
> Kernel upgrades for kernels are probably fine it's just incompatible
> metadata changes that we have to be careful about
>
> On Sun, Feb 19, 2017 at 3:20 AM Paul Barker <paul@paulbarker.me.uk> wrote:
>
> > I'm not 100% sure what the current policy is for upgrading the kernel in
> > meta-raspberrypi on a stable branch. I think it's a good idea to pull in
> > upgrades from the stable kernel series when available though so that we can
> > incorporate any upstream bugfixes. I'm also only considering backporting
> > upgrades we've already made on master.
> >

I do agree as well that kernel updates are a good idea to backport as
long as they build and boot fine.

> > I've also picked up the upgrade to the 4.9 kernel recipe as the old git
> > hash
> > no longer exists upstream.
> >
> > I've built & boot tested both 4.4 and 4.9 kernels on a rpi3 using morty
> > plus
> > these patches.
> >
> > Let me know if this is wanted for stable branches or not. If it is wanted,
> > I'll
> > try to do this once a month or so for morty (and pyro when it's released)
> > until
> > the end of the 12-month support period for each release.
> >

Sounds good. Thanks Paul.

- --
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAliqi/UACgkQJrqo2vax
FPaEsg//QrALm5iqtKhrCVRlPmBvA9ghQYWB26D/1t6K6W31wa2El3Wqvh0JrqGJ
UhAuRFSly0prwkbpBqTyIMvj2DsVoZXclwk0+58c/scNDzu515PkvjhoUWUvcCq9
yTVNwKgKB2AAZEzOukjm5SgCFej5SxM5nrpuQhx2Gj9GNZVdNMWSoPLuTh8stZ/v
gVAp6Do0SHXHUBlJ1f1CsLERtcDCK6Afne2Vtp4IEXNVgMPH8N/rEtEx0vMv+WN/
ZGtGOa7bV9PVqjHOGQ5YaDOLaAV6MkcKu+GoimnKk7cneBmZ+6EC5V0DPQpOdVmZ
966SEVfOowaddZcbQsAezQZWQxvAtEPTW0FWFCeV+gFc/3O8XipKRhiDZbcGwj1b
x4v+GDbR1+iDf5quR7AT948l73ooKA5WMs+toQ9G3uOVlClbK2TdKM/dt0KOH4cU
JDURJn9FLTJfz85gPS09ILedO8RTJH0Avv1/9xeYDeTMNKhNL83R1G+gZAG4pu0S
bE3CYzy6vjwzkLTqgCo7Ivk460RGzXaIHcrgOo7vBqSlq/8kexC1xBLrOUavVpG7
5DuXokr0XExExTy4xt7jZVGhaUyts62J+pvJwwZGjHYAiTL1HoSUsljA/SAHcog4
d4zgCZtquLa4tBsnqMsvOP0rWX6BPG3kkA6znL/u67O5rjisJ4M=
=g68H
-----END PGP SIGNATURE-----

