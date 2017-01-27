Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BEC1E0050B; Fri, 27 Jan 2017 12:24:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.178 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBB38E003DB
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 12:24:41 -0800 (PST)
Received: by mail-qt0-f178.google.com with SMTP id v23so154206029qtb.0
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 12:24:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5ESdCf+2MpDwSDBB8VsLgN0TmY9enhamzq/4JlXu0kw=;
	b=RBhsyLdG1cyn3cZymyItbrckqFmpNB7N/k6E2K7u0+7M3Hkdz5ofngWhqdPvf0xh6r
	jAyfDOAJZCyvgEVWAGJelohjQexCqbu039zE43bfK+dqxRDIZMu2vvXSYqXhjVW/9FHO
	GAxvxXYKYPl9yl1vBmHyr4iavCkjhf/oFIeKrxpa+E0BX9h5o93X1LSZ1SnnlCbfO+9Q
	9eFRnCPfAcxSgszy250S/uPmVqaioPsjHKU600AC+wzgILQWqjKTmo9PvzV5BnDIvVIh
	j5Cpx1jHVlMx2ItRDzmWcj7vkvCjpONCLFYqggzxIACiffrAhNn8fltELmQ/7Rd5DM7w
	1vJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5ESdCf+2MpDwSDBB8VsLgN0TmY9enhamzq/4JlXu0kw=;
	b=miKlYtq7q/1Njd4+eedUyaJS7AjrF/co3op+BdiJWjWPPClRabjiOg7qoqVfpaXome
	dXHTVR7MHDtcitOd03QFb7gAWIpNjqtR/Alsq2Tok+O+p3CXhhRtuMeBlJiadL9Gr5jJ
	j7e5AbesPVyeQPiiix9KSALeZd0ry2aCVM+LL4S90LujAMcwXkbn87fYxgKZnfRtTfYG
	80B6DWycjaRznNUxNYjVkdGXskMjmTIxmxyN9EDIoQsN6t+n9ieAe26nsrziCVPrxT+e
	FWN0bQjkWnA+0SGgURb+/fU13h2TCJpTN8DcasTxopwUvGp4y/YP/anmr89qk0UxHurs
	j1KQ==
X-Gm-Message-State: AIkVDXJ76N6odORLSyj+baZimADEqJGa03LHwlKer8CSLZm8dSfkxCp52SNe1vL0G/F2UZZR3PbRp6Gc3XMOCA==
X-Received: by 10.55.24.76 with SMTP id j73mr9822012qkh.267.1485548680226;
	Fri, 27 Jan 2017 12:24:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.39.252 with HTTP; Fri, 27 Jan 2017 12:24:39 -0800 (PST)
In-Reply-To: <CABgxDoKoJ+2FznE89F7v89w_t0p0Z_9-1KZt2DrdU-NdDSQ2GA@mail.gmail.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
	<1484834687-15746-7-git-send-email-jacob-chen@iotwrt.com>
	<CABgxDoKoJ+2FznE89F7v89w_t0p0Z_9-1KZt2DrdU-NdDSQ2GA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 27 Jan 2017 15:24:39 -0500
Message-ID: <CAHUNapTaveEHDiF7VPTDYbLVJM8EbDJ6PcMbNxCjvOepj2sxzw@mail.gmail.com>
To: Romain Perier <romain.perier@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Jacob Chen <jacob-chen@iotwrt.com>, Eddie Cai <eddie.cai@rock-chips.com>
Subject: Re: [meta-rockchip][PATCH 6/7] rk3288.inc: add some variables
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
X-List-Received-Date: Fri, 27 Jan 2017 20:24:42 -0000
Content-Type: text/plain; charset=UTF-8

Hi Romain,

On Fri, Jan 27, 2017 at 10:01 AM, Romain Perier <romain.perier@gmail.com> wrote:
> Hi all,
>
> It remembers me a discussion that I wanted to have with Trevor:  do we want
> specific TUNES (like these ones) in the machines files ? it is distro
> specific ?

Awesome! I'm happy to see we're both thinking along the same lines!
That was exactly the same thought I had too :-) I even had a couple
private conversations with some other BSP maintainers I know to ask
them about this, and I spent some time surveying other BSP layers to
see what other people are doing.

Unfortunately there's no consensus, which means that there is no
absolute right or wrong.

I personally do feel that a good BSP layer should not be providing a
DEFAULTTUNE, this decision should be up to the user and/or a DISTRO
layer.

In practice, however, this topic is complicated (especially in the ARM
world) by the existence of the binaries for things like MALI
(accelerated graphics). Other devices could potentially have binary
blobs for various other reasons.

BSPs which provide support for aarch64 devices are lucky because they
can skirt this entire issue; aarch64 implies hard float, so the
default tunes are always going to enable hard float and therefore work
with binaries. 32-bit BSPs are going to have this problem. Looking at
other BSP layers many specify a DEFAULTTUNE:

- meta-raspberrypi
- meta-xilinx
- meta-gumstix
- meta-intel
- meta-odroid (akuster)
- meta-freescale
- meta-sunxi

Most of these DEFAULTTUNE suggestions, however, are found in
conf/machine/include/<processor>.inc files, not in
conf/machine/<board>.bb files directly. Looking closely, however, in
many cases a BSP layer might have configurations for many different
devices, only some of which have DEFAULTTUNEs (this is true for
meta-sunxi, for example).

BSP layers that I can find that don't have DEFAULTTUNES are:

- meta-qcom
- meta-beaglebone (koen)
- meta-exynos
- meta-ettus

In meta-beaglebone's case, it requires conf/machine/include/ti33x.inc
(which comes from meta-ti), that file then has a "DEFAULTTUNE ?=" but
it could be argued that meta-ti is a chip layer and not a BSP layer.

At the very least, it should not be something that is provided with an
equals sign, it should be specified in a BSP layer with ?=. Also, the
general consensus is that a DEFAULTTUNE should not be given in a
machine file directly. Most BSP layers have a "chip include file" in
which a DEFAULTTUNE is given. Many layers don't include DEFAULTTUNE
but have notes in their README files that explain this to the user and
give suggestions for what they might put in their conf/local.conf
files.

meta-sunxi, for example, doesn't give DEFAULTTUNEs for all their
machine files, but they do provide recipes for mali. They handle this
in the mali recipe by checking to see if the user has enabled hf. If
the user is trying to use mali but hasn't enabled hf then that recipe
will error out and let the user know they have to enable hf if they
want mali or they have to not try to use mali if they prefer to use
soft-float. I think that's a good way of handling this situation (see
meta-sunxi/recipes-graphics/libgles/sunxi-mali_git.bb).

There is some debate on whether a default tune should point to a
specific chip (e.g. cortexa17) or whether it should only specify an
ABI (e.g. armv7a). Overwhelmingly in the ARM BSPs specific chips are
used.

