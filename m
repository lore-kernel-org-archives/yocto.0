Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCFA2E00D94; Wed, 17 Jul 2019 23:19:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AFAAE00D89
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 23:19:15 -0700 (PDT)
Received: by mail-qt1-f193.google.com with SMTP id y26so26000327qto.4
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 23:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=MQEKNO1hCfQHooOxKLPT9DbNINYrMuYECg29Dkb8+l8=;
	b=FEx0ZF6lXmvvNGWMUbxbzj03SBmjHW5aJ5G/zG8t0pSmL4L7PAZZjnD7+O6zt6iwB6
	vLf62d4u/bL4PxsukwBdzY9fMIK06cS5sjiinHRvZhR4AOoYAykg3mdv2t5CsUdpQpP7
	bPmBgMxGmEn5Z9qdrb6re4NQjAb2srSXt9+lJznyYxVkCcXV4YCe5gVxs5qRzKQnIj8T
	rk/LY3Ahgw/EgLOdnDvQgftwNAd05dcDMDqShE72K2voK/uWARG4bXs/NQV2AuR1yTwg
	6iaA//aCjEAFIsa5oWJmxOxZVdV4wnHlcBJd7oRWp3OYHptDMabtXF4PSaITalXcAUdo
	3HjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=MQEKNO1hCfQHooOxKLPT9DbNINYrMuYECg29Dkb8+l8=;
	b=jCwU2T3J5ZWkubfZcLKl/4gUUWmTZg0CL25CRaB/d9cwGv+wbSTHLjiOCyudb+ihcO
	FLvi0wvvGQ2Ep298Y9TAEdy56eP4yNDwrBMbY5xJjynMX+/pn1H4bcPbFUtir2xyHzYf
	5qZq3zn/soQqDMO6WkiNZVCnAVfCCwVB2QgzqEjrW+EukBWWIhrXQXJ8juPJppEl97wo
	PARL6WSjwy7wIMabMWDSM8Zd1Tdv68bHSWLel1104TQIjDllPNMwlPWIF6b9WdpKhx6B
	ERxFTuGRoF2Itd/+mL2CHN4VGimtVCvAZvyn07P3Ukig7MieWanUFHUEzAsVYd1Kp6fD
	XhFA==
X-Gm-Message-State: APjAAAV1PCZY0iYkYz3p+nHARUbAYJAZSYivhCfo+co3KGHaBmyurTwA
	6oaBku4b8yjAej6mIuP68e6IglfsDl3P5dOS9R0=
X-Google-Smtp-Source: APXvYqwSycOr2k4VGIrXekjUPXmsAI8264dKD8tljQ2cGtk9b1Zr28Y2ZBh9V4gZYo+ZCwlt1bnVIQy1t6i/0gVy7wM=
X-Received: by 2002:ac8:42d4:: with SMTP id g20mr31018868qtm.78.1563430754580; 
	Wed, 17 Jul 2019 23:19:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAJTo0LaOHbSB75OGLsHJ3Vxd5eVgg9+7Cq3k0=P-BwPLpFiyjg@mail.gmail.com>
	<20190718060409.GA27459@localhost>
In-Reply-To: <20190718060409.GA27459@localhost>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 18 Jul 2019 08:19:03 +0200
Message-ID: <CAGAf8Lwe1_w9BjCqfP7x1DgZYXx5H6_736jsd6uT2y_+qHF8+g@mail.gmail.com>
To: Adrian Bunk <bunk@stusta.de>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] RFC: dropping official support for Debian 8 / Opensuse 42.3
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
X-List-Received-Date: Thu, 18 Jul 2019 06:19:15 -0000
Content-Type: text/plain; charset="UTF-8"

> Fedora 28 is also unsupported (but will be the basis of CentOS 8).

Yesterday I upgraded my host Fedora 29 to Fedora 30. With Fedora, all
clear. F30 is the newest release, F31 is in preparation. F28 support
ceased to exist one month after F30 was released. The algorithm is the
following: Support ceased to exist for F(XY) after a month from the
official date F(XY+2) was introduced/released. The introduction cycle
for new release is 6 months. YOCTO wise. ;-)

Hope this clears the confusion for Fedora distro (official first
relative of kernel.org, which usually finishes testing cycle for
kernel.org)!

Zoran
_______

On Thu, Jul 18, 2019 at 8:04 AM Adrian Bunk <bunk@stusta.de> wrote:
>
> On Wed, Jul 17, 2019 at 09:37:31PM +0100, Burton, Ross wrote:
> > Hi,
> >
> > Now that both Debian 8 and OpenSuse 42.3 are end-of-life and no longer
> > formally supported, we think it's time to drop them from the supported
> > distribution list.
>
> Debian 8 is still LTS-supported for a year, unless there is urgency to
> drop support for it the right time for dropping would be after 2.8
> (2.9 release and Debian 8 LTS EOL will both be in Q2 2020).
>
> Should OpenSuse be dropped, or just the version upgraded to 15.1?
>
> Fedora 28 is also unsupported (but will be the basis of CentOS 8).
>
> > Initially this involves removing them from the
> > SANITY_TESTED_DISTROS list in Poky, at some point during this cycle we
> > may remove those distributions from the Yocto Project autobuilder to
> > add more workers for other supported distributions.
> >
> > It is expected that the next release will probably work on those two
> > distributions, there are no plans to do new and exciting things
> > dropping these unsupported distributions enables -- like increasing
> > the minimum Python version to 3.5 until after the 2.8 release in
> > October.
>
> CentOS 7 is based on Fedora 19 from 2013.
>
> This is the oldest currently supported distribution, and when to remove
> support for it (replacing it with the not yet existing CentOS 8) should
> IMHO be part of this discussion.
>
> >...
> > Ross
>
> cu
> Adrian
>
> --
>
>        "Is there not promise of rain?" Ling Tan asked suddenly out
>         of the darkness. There had been need of rain for many days.
>        "Only a promise," Lao Er said.
>                                        Pearl S. Buck - Dragon Seed
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

