Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5788E00D53; Mon, 13 May 2019 11:03:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45F79E00B5F
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 11:03:42 -0700 (PDT)
Received: by mail-qt1-f182.google.com with SMTP id y42so1092914qtk.6
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 11:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=pJyhmPeSYsP6k2303V+DLJAYRZg3t2gJYz1DR7DdCs0=;
	b=Et23/tjVTpUEPC/YlkQ9rdyiYxmu83uxHtRHVD8T0h64psdsGA028yp/aK8c/asi+F
	Td36SbfujSe7rfpm0KRNz8cg/eaOT2KitUscgSmhu73GzI9HSmd+9+i9T9T4q1C9y2A7
	M3gtJQhwM1QEOn3ciQ7KIGIsuziiy2afZLz/GCmUKu8MSIueH7ik8ok9v7F/LvlnSJK5
	5MW/d34sL0Ytc3K+AejejAoZPxfxjpmDQRxbfO8HVd33SW4Yybcp17pcXDME5SdB8fFQ
	1QDZeg2hnzGLU59rJpNp7J8oGOJ51DyZmQeZiTRvGC/Vt1pmAUxyRWqNz3qgSJcYTago
	awXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=pJyhmPeSYsP6k2303V+DLJAYRZg3t2gJYz1DR7DdCs0=;
	b=A+D0qSNGWRLWBcYXjem1v3rBIgA0Iyy521roMyPPMBVS8EH9YZUElEah7ZGHiSTrSj
	iY0An4QtY0WPD4spt1BmPet4kXtVvvuZp153Ffx5Nq66QWGsGtWJjMcWWkrTzJSgaU9S
	9xERkLUWNj0nKzkwYm/pUIw8M2F0qbDQii4HNe9pjGn0BN+OfKCSbbkrFB/q26DZyPnx
	Y+pM02F8y1v3uAjat6buk+6tIHLY5ulaF1KXN3ssglKfzCYDL6P5W+2jHWjbFwawkd5D
	JOvslH1uUZqZhoBWvzSzo3SPLKKvtlBl6kFs+IYix+6PhcRa+Ck7d83IgGMZPSbdvKoh
	/oVw==
X-Gm-Message-State: APjAAAVtnRAMdCEXlCNC8xGjk79XM2DwHpjI/XypvNUs7UWlT99ZqO9p
	Xudy8DleudPa67gJRjMYx2Y33eVG+MtLI6qk1vk=
X-Google-Smtp-Source: APXvYqx4jezh0fxbT29e8d6R6Pa14SNxuvzzu89kQIcHK7yShApvBRVhwAVJJxo4C2Ak+ug2I3MzNqKBC5tjzCzhWSs=
X-Received: by 2002:aed:3827:: with SMTP id j36mr24661248qte.196.1557770621383;
	Mon, 13 May 2019 11:03:41 -0700 (PDT)
MIME-Version: 1.0
References: <7b3a42c2-1bc2-e739-5ff8-77e27b053c9c@googlemail.com>
	<CAJTo0LaMbbd4NZdZH-3M-H_OO7HMmSHo3fu4zdtjhRvAXQGF0Q@mail.gmail.com>
In-Reply-To: <CAJTo0LaMbbd4NZdZH-3M-H_OO7HMmSHo3fu4zdtjhRvAXQGF0Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 13 May 2019 11:03:15 -0700
Message-ID: <CAMKF1sonhrFMVasdvCPon5xtiMaSUYUG_SW7wEV2wVYiNRZdDQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Mon, 13 May 2019 18:03:42 -0000
Content-Type: text/plain; charset="UTF-8"

also read through
https://wiki.yoctoproject.org/wiki/TipsAndTricks/Packaging_Prebuilt_Libraries

This might be helpful especially  section under Non-versioned Libraries

On Mon, May 13, 2019 at 10:56 AM Burton, Ross <ross.burton@intel.com> wrote:
>
> On Mon, 13 May 2019 at 09:54, Matthias Schoepfer
> <matthias.schoepfer@googlemail.com> wrote:
> > I am trying to write a recipe for a rather tricky component (that has
> > plugins and stuff). Anyhow, I cannot get bitbake not to complain that
> > <PACKAGENAME> rdepends on <PACKAGENAME>-dev. And if I INSANE_SKIP it,
> > the -dev package will get installed. But I cannot figure out which file
> > is responsible. I tried to ldd all installed files in <PACKAGENAME>, but
> > could not get any results. Any hints on how to debug this further?!
>
> The problem is probably that the plugins are being shipped as
> /usr/lib/libpluginfoo.so, and so have the same names as development
> library symlinks which get packaged into PN-dev automatically.
> Alternatively unversioned libraries will also have the same issue.
>
> Look at what files go into what package (using oe-pkgdata-util), and
> ensure that PN-dev only contains headers and the link-time symlinks.
> For example libfoo.so -> libfoo.so.1, libfoo.so should be in PN-dev
> and libfoo.so.1 should be in PN.
>
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

