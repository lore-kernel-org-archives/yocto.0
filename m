Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29726E00D53; Mon, 13 May 2019 10:55:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.173 listed in list.dnswl.org]
Received: from mail-it1-f173.google.com (mail-it1-f173.google.com
	[209.85.166.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E839BE00B43
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 10:55:44 -0700 (PDT)
Received: by mail-it1-f173.google.com with SMTP id p18so565545itm.1
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 10:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=iJgII+nfjqK0/DIJ34O+Pylub14aCUQNfREEilDxpi4=;
	b=rD6AuaAK1s/lqEW23OWckoKz68/UmuYGVfm/PwZNYO+NFYGalp6KmrjewDBbf03qi8
	PqKWzQcEexMCULHiGYfgY+w/YQyOPmI+yOv67LIzHFe3n15USvL2NDiBplJ5wAaBYy0n
	RWP19KMct7Ng0eiBGPc+4Q4GmLc268Vtx/2Hndqbzo78p6s2qPQKKJ3KIV5XLZoPd0T1
	WC0Xxrty0O02b1/Gu48GRvZ5u/uJ5FJfIVjg4X0kbskqnuVT2CEyXHW8xGV3qHZJYjnF
	+kJHPvifHNE5mgOOJuOOmVi2839dDyMSBUEq2EPlF16qjwBSiK5Vis51SbdsdRGOfleG
	yftQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=iJgII+nfjqK0/DIJ34O+Pylub14aCUQNfREEilDxpi4=;
	b=qIDs2N6aqeV8GcRC80MUfyimIEssXkOr91c8OKZcMJm3QSrtlOrpNjNHlhbwwgVXrN
	QktJpYXeLagmW4ySLMFpCqXLmLn1CMvteG9e6IGGjvi+7o0DGHKYk250YlvQ6urzK0me
	EVk03xlqhDAJVz/8asZzLTV3eMjdvr6PLek36Fzt/iFXs57aO06LcjB36bvFw23FnMIe
	Sdm1QZm3+4GPzE/lsWpu6wfRIBxcEGOcKwMIQ5sS4Heo6alL929NBhZmZtqPChRz0khL
	w57Srnh1bkHhCXye9KIPpjEnSjqdetLzYZufS5WNDyD7gDm9jy4ndCarUqlK5LF2FFXm
	g+UQ==
X-Gm-Message-State: APjAAAVx312ZUo8jwTTFO7YakEWbv24wAKbbHAcbBuPwfzOkDcjoXOvB
	kcjmBMPCFk4/2+vfxpK3BuORZ4HJug9R4dJvVJOWzKlf
X-Google-Smtp-Source: APXvYqwuUFdS8Vc688sa85LjRHYdVVkEiXykChvb6wpP7tIzq4HlIlw0PE0y86DwuA5m+JpDWWJMuAjDOQaoS81d0TA=
X-Received: by 2002:a24:4cd2:: with SMTP id a201mr315734itb.26.1557770144180; 
	Mon, 13 May 2019 10:55:44 -0700 (PDT)
MIME-Version: 1.0
References: <7b3a42c2-1bc2-e739-5ff8-77e27b053c9c@googlemail.com>
In-Reply-To: <7b3a42c2-1bc2-e739-5ff8-77e27b053c9c@googlemail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 13 May 2019 10:55:33 -0700
Message-ID: <CAJTo0LaMbbd4NZdZH-3M-H_OO7HMmSHo3fu4zdtjhRvAXQGF0Q@mail.gmail.com>
To: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Debugging dev-deps
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
X-List-Received-Date: Mon, 13 May 2019 17:55:47 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, 13 May 2019 at 09:54, Matthias Schoepfer
<matthias.schoepfer@googlemail.com> wrote:
> I am trying to write a recipe for a rather tricky component (that has
> plugins and stuff). Anyhow, I cannot get bitbake not to complain that
> <PACKAGENAME> rdepends on <PACKAGENAME>-dev. And if I INSANE_SKIP it,
> the -dev package will get installed. But I cannot figure out which file
> is responsible. I tried to ldd all installed files in <PACKAGENAME>, but
> could not get any results. Any hints on how to debug this further?!

The problem is probably that the plugins are being shipped as
/usr/lib/libpluginfoo.so, and so have the same names as development
library symlinks which get packaged into PN-dev automatically.
Alternatively unversioned libraries will also have the same issue.

Look at what files go into what package (using oe-pkgdata-util), and
ensure that PN-dev only contains headers and the link-time symlinks.
For example libfoo.so -> libfoo.so.1, libfoo.so should be in PN-dev
and libfoo.so.1 should be in PN.

Ross

