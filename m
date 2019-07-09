Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 313D7E00C7D; Tue,  9 Jul 2019 02:47:04 -0700 (PDT)
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
	*      [209.85.160.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9635CE00BF7
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2019 02:47:03 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id h18so13555272qtm.9
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2019 02:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=0IJhHNbVDn+v5FldkTtx6fcUGbJFK0TytwhPCG37FPk=;
	b=t97uWV0KKFD7xcxqgUP+mZljaH6HyJUP8zHAzksj54uUnt+BuQEzFHGhNvmXw8CK+m
	Da3r10PDGl+0AD9j4wG3ZLJgl+j/b6QHXaqK7imH3c4rDKwyOnfBwhQ4lCxVByNnKDW0
	Hak+8uf9JB9uiv4L1046BOFZ4eiJ8TnW45ze2ZeLyU8vdFmpOmIVP1OEiMjgXcgLdlFx
	TEHjvu4s59HhF/xclXM7LLnnx4dwbLByhoKKSNGQFmoUvlJ+OEH5WC0rUUIzWm19Bin8
	hrdwDJbAIBM/aEN6G88Pi86PX/XzUGNKAWnWkBD4xbigYLCdUYmILSHbMiARIvouOuPR
	gegg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=0IJhHNbVDn+v5FldkTtx6fcUGbJFK0TytwhPCG37FPk=;
	b=Ad2wYvH38RNRTVup30IIb32js1J2dX2qEjjKtsJqQpSyhVZVFiNnMsMlOYyUpM3X3T
	fDuBpXnX6cNOKuuSUkppgdUXhdxRqXylyFQgB2DBmJS0L0Y7uf3XbrMKc1olazZEJOJ+
	gl1+BgXIaq8jiGnRHcDUaznOpaHpDOuYEEIdKrXtO/X5tcAEYDrrDhQ2qlFoREJTu+Mg
	bHppWvnxxlT+JpCIuQdGpkdlqK77oghC8SD/16/1+Jg74Bnsx0Vmnq6GWPrAYtXIQXNg
	JHvF3RQyyLdhb3rboq8Tl/h7Qv0ejOdevVn/F5Uv3mxC1zZlb2mnb47HseRAF6NZTv1G
	8xWw==
X-Gm-Message-State: APjAAAWHxUx/H4/cgxJOgJK0W0RGodJ8ssMII2e5dj8sthplACRxvsME
	VjAC1RNwsZfYwdMxZP+k6zUFxD/JE6b1n4ScL/E=
X-Google-Smtp-Source: APXvYqyWnYPPe07hOkrRHyIOo+gKjzCi/jeUdYUFpP+YmM8PEeIqAF1OsAIaxLoAsJ2Zxzr3XqbE8cMvrM8qnOWHvwM=
X-Received: by 2002:ad4:4466:: with SMTP id s6mr18581418qvt.237.1562665622646; 
	Tue, 09 Jul 2019 02:47:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8ZcYRYaFcyFopckNiTMR8ZTJW5vcM1cO+DZM7-0aR3+rA@mail.gmail.com>
	<CAGAf8LzyVbxJ--aDihMZyokOo+Sn18s=4vQvX91Y5jBpvbc_Bg@mail.gmail.com>
	<CAG+Ob8YYxVf4d9LEjL5Z9KEm3zP4xBMHr-H46rqumXOLLJAZyA@mail.gmail.com>
	<CAGAf8Lx0gUQorBVBGUCURDXW6JexowXTWsfAcdu+DMxTRrb2vQ@mail.gmail.com>
	<CAG+Ob8bWkY+zhVbhfDUu_mfrpA-DNvVb4K-vfu=3BuhGsp_Akw@mail.gmail.com>
In-Reply-To: <CAG+Ob8bWkY+zhVbhfDUu_mfrpA-DNvVb4K-vfu=3BuhGsp_Akw@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 9 Jul 2019 11:46:51 +0200
Message-ID: <CAGAf8LxRTZwp0t1F=ZLZgESPK6Q=34uyw5gu_orUcXzj1r7FEw@mail.gmail.com>
To: Onur Eser <onureser12@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Meta-Qt5] "Unknown Module: declarative" Error While Creating Toolchain
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
X-List-Received-Date: Tue, 09 Jul 2019 09:47:04 -0000
Content-Type: text/plain; charset="UTF-8"

One thing on my prio list is to buy very powerful 16 or 32 INTEL core
6950 or + server. Maybe AMD Ryzen 32 or 64 core (most likely). This
almost eliminates this build problem... But in the current situation I
am presently, I could not even buy extra bubble gum. ;-)

I have only my HP Elite Book 840 G1 which has 4 HW threads (2C +
2HYP), and I have the same problem for YOCTO. To build any YOCTO build
goes forever (the extras is that I have 500GB SSD there, which makes
it much faster).

But, nevertheless, the newer, the better... Hopefully! Toradex YOCTO
gurus may hop to this thread, and help...

Zoran
_______

On Tue, Jul 9, 2019 at 11:12 AM Onur Eser <onureser12@gmail.com> wrote:
>
> Zoran,
>
> I know you are not a Qt Layers expert. I am trying to describe my problem to experts via common mails, so they will not missunderstand my issue.
> Oh lord, whole new building... I am not a time traveller, but I can say that I will wait for 10 hours or something for that to build, and it will fail because of something else.
> The worst part is, it gives the error on the FINAL STEP. After hours and hours and hours.
> Anyway, I will try thud branch. Wish me luck.
>
> Others can still offer solutions, I will keep this build too.
> Onur

