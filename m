Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 490DBE00CD5; Tue,  3 Sep 2019 02:28:44 -0700 (PDT)
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
	*      [209.85.160.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC9D3E003E1
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2019 02:28:43 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id l22so6677829qtp.10
	for <yocto@yoctoproject.org>; Tue, 03 Sep 2019 02:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=rvPqElkA8Ptx7ivNElZ8KP5FD69y64u63IlyneV5/38=;
	b=gpoJCDrkQPXnaMdRbjxKY2db6bLO9nVEJmBBVeOKyXBK46e8SEdm1b9nl4SpbE42XA
	1JN3drrY8jmNFjfBuOaEsHhxoMFlHnQj4H2/jW2csQTjOINAYctUIjVQrh5mOuHbiXhP
	C3xGwq99dd6QLYv/i98n6rInYiipWBpZYwzKRcF4pRRaGooouvd0k5sY/bcx/h2hqBM1
	95QaV7qdUx27Bu3bgFjcZb/EqF3qEgJma2gzv26+iCSZntkXZ12Z2SVtaHFhwVSJ/o/4
	ozDGi5IIcqOfkRXcGca4i4/p+rbyzsDqQlmxWDHjaMaaGNB0aH+IoOVVAkSjBcqfPjfO
	JWgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=rvPqElkA8Ptx7ivNElZ8KP5FD69y64u63IlyneV5/38=;
	b=k+7ZfD8Pv3D+Sfui4x7dBKr203pq4WZ5itwu/BSxPWcUIMrqongWs7/mgYmB+pMhKn
	FGJ8V+gmPWUt36aBXVq0l5Y6MhU3mlxYLqpspGlcGyAO1UC8P/i96XjzVKQFJPFTMPDG
	dew74lM6dWL4q3dlhU7NLIugGHdEks2r3hUsamcI1Vwvqz2T3PdSYSpLiOHq/bzdNTkq
	Peg4kyqf2ZfH3AE3ax088Ft7CFbkaZCy2qlFg2GPCHyT2uZsu3+44Gc+Nx+YyfXNUfUl
	Vkmy/6ev0Vya3kmTCslrSmH6llkn0XUwYlk7QvNPWkNvsy7OrkBr/NrdCPpCNWMU/LSy
	AnXQ==
X-Gm-Message-State: APjAAAXcD0Q6GvRBncLIMjUuKuP3u1THsdxDwrgC0A474OzBx2TwAd9n
	1SC1aAJFrUdzYxD1cHXevJfDw8oC/PyTerX4E3AxR8u75RY=
X-Google-Smtp-Source: APXvYqxM5N6jwoyz9vPt4NmiP1cNH17Cl9Ah3+mArVMCsAJ3jgvJT6NmWx3z7z+Bel31vqdSmf575GDQN9UkJ36bESM=
X-Received: by 2002:a0c:b596:: with SMTP id g22mr6698220qve.231.1567502923116; 
	Tue, 03 Sep 2019 02:28:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LwaOtu0OaRR+FuikEgvXTkNst6KUmd2wF_MV+t0UxTwCQ@mail.gmail.com>
	<CAGAf8LwUBUT9SBgEPHO7tYYhhP6d5+SZoOF89-5MDDmj_Y1L=g@mail.gmail.com>
	<754cae97-95fe-55e4-f2f3-f9714fe78ace@intel.com>
In-Reply-To: <754cae97-95fe-55e4-f2f3-f9714fe78ace@intel.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 3 Sep 2019 11:28:32 +0200
Message-ID: <CAGAf8Lw_0idNSgTh9YwExtbC4QoM3U1mSZToQgQ4pv8aX_Bwbg@mail.gmail.com>
To: Ross Burton <ross.burton@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: WARNING: bluez5-5.50-r0 do_fetch: Failed to fetch URL file://variscite-bt.conf
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
X-List-Received-Date: Tue, 03 Sep 2019 09:28:44 -0000
Content-Type: text/plain; charset="UTF-8"

No any time for the investigation..

Here is the workaround. The file variscite-bt.conf (content is here):
https://github.com/ZoranStojsavljevic/imx6-sabre-automotive-bsp/blob/master/Issues/variscite-bt.conf

I inserted in one of the paths searched by fetcher, which are given here:
https://github.com/ZoranStojsavljevic/imx6-sabre-automotive-bsp/blob/master/Issues/Fetch_failed.log

This solved my problem (again, just sticks and ropes workaround, NOT
at all final solution).

Zoran
_______

On Mon, Sep 2, 2019 at 5:04 PM Ross Burton <ross.burton@intel.com> wrote:
>
> That file isn't part of oe-core, given the name you should ask the
> variscite-bsp-platform maintainers.
>
> Ross
>
> On 27/08/2019 06:51, Zoran Stojsavljevic wrote:
> > BTW, I have created the complete description of this problem!
> > https://github.com/ZoranStojsavljevic/imx6-sabre-automotive-bsp/tree/master/Issues
> >
> > Best Regards,
> > Zoran
> > _______
> >
> > On Mon, Aug 26, 2019 at 5:23 PM Zoran Stojsavljevic
> > <zoran.stojsavljevic@gmail.com <mailto:zoran.stojsavljevic@gmail.com>>
> > wrote:
> >
> >     Hello Folks,
> >
> >     While doing the following YOCTO build:
> >     http://variwiki.com/index.php?title=Yocto_Build_Release&release=RELEASE_MORTY_V1
> >
> >     Actually, using the latest available tag:
> >     thud-fslc-4.14.78-mx6ul-v1.1
> >     <https://github.com/varigit/variscite-bsp-platform/releases/tag/thud-fslc-4.14.78-mx6ul-v1.1>
> >      From https://github.com/varigit/variscite-bsp-platform/tags
> >
> >     I've got the following error, while compiling for both:
> >     bitbake -k fsl-image-gui
> >     bitbake -k fsl-image-qt5
> >
> >     Seems, that the local file: file://variscite-bt.conf is somehow
> >     missing?!
> >
> >     I can add this file artificially, but, the question is: why this
> >     file is missing???
> >     _______
> >
> >     Transcript follows:
> >     bluez5-5.50-r0 do_fetch: Failed to fetch variscite-bt.conf
> >     https://pastebin.com/U9LRtNwr
> >
> >     Thank you,
> >     Zoran
> >     _______
> >
> >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

