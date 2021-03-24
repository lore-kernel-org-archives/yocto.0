Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web11.152.1616546490235871257
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Mar 2021 17:41:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GF5tWH9y;
 spf=pass (domain: gmail.com, ip: 209.85.160.170, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id m7so16387421qtq.11
        for <yocto@lists.yoctoproject.org>; Tue, 23 Mar 2021 17:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=vKVjo1ZroF2bLuTDBYlfBYtZzsdK1WmByfbBM9Hpz14=;
        b=GF5tWH9yp7664ryZBOQCBfTKKKXmsx0VEhZzKOb4qRbrVu8yd3bW8qlDIJoNLdjdAq
         rJvyy8edmIZba60uVFyjlJE9nQms2qWB2jptueUAqH52w7EoLkaxYAozGhN0MUGutQN1
         T8ynaiZ1mqVKjYrDad6392R2WXWE63pMgAqx4PTAtu4iIwoctIKKG8lGiSYC7q4BLhX8
         5+A/8vHKKpfD9Rckqlg7Jxc2coQn4jehE4KQgNxx09gVpWslsCT0vVJePxw/DK6Hwl5O
         rsIHUNXm7ZYoTNRhPWvND0jiBYULv1l9KRk4Rzn0Qr437FQjF12co6c1ahmMf4tZwUjN
         qV9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=vKVjo1ZroF2bLuTDBYlfBYtZzsdK1WmByfbBM9Hpz14=;
        b=DyYu5dB9QeEWyCYfwCUkyorlyZziy69S2aKCVACY51XxKZwc5ksoR7RVO4wTqnc0Rs
         CJAlDF4eyz2F9giR5NHurhyXjG0V2idoTOqq5DN2koJHpUtsh5FE047e09xBXxesVVKN
         J9xCRpkLwpiA2fOzNU5wvShi1W0+ZsGWkpmCF0CqJt94g/i+p93nCcYS/gkPS3m89dQx
         W1ECu1z6pp73frm6PPreo2E0lkqOPfbvbHwrywEh2iMN8ex4vPYFhwitNFze7Qm8EwF5
         0yRJkowsyG5TWPCiX6aCk9S1fD48PVKqcRMug81KlF1jVTdVHivoWBRLBfQy89PA+8sk
         xHuQ==
X-Gm-Message-State: AOAM530aiUbnRc9ka+rO3FnKsHq9lHPOfbRk2N38YPb36q+cGq9x6B9j
	CJ7BfnG18yZ+iHhai3wuO90=
X-Google-Smtp-Source: ABdhPJwwQaryhFRgi6An23gtoUakLUXYfPP6Rndhj6KmILN7+d8gG0sO9dsU9Ll9kTdXn7Gw918L8Q==
X-Received: by 2002:aed:3105:: with SMTP id 5mr863855qtg.123.1616546488725;
        Tue, 23 Mar 2021 17:41:28 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id h5sm473882qko.83.2021.03.23.17.40.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 17:41:08 -0700 (PDT)
Date: Tue, 23 Mar 2021 20:40:55 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: Yann Dirson <yann.dirson@blade-group.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip] defconfig alternatives
Message-ID: <20210324004055.GA26846@localhost>
References: <20210322134212.576790-1-yann@blade-group.com>
 <20210322144753.GA33662@localhost>
 <166EB22A27C12C43.28220@lists.yoctoproject.org>
 <CA+4=imZsRTr40jO+aOHDrXogiEqLRCdkB=5L-tWtOSREC+EDnQ@mail.gmail.com>
 <20210322155021.GA23379@localhost>
 <CA+4=imbGcUVwsz3kF411s1OeSRL=vrWt=Cpsb-3ud+P-86nkTw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+4=imbGcUVwsz3kF411s1OeSRL=vrWt=Cpsb-3ud+P-86nkTw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Tue 2021-03-23 @ 12:59:24 PM, Yann Dirson wrote:
> Hi Trevor,
> 
> Le lun. 22 mars 2021 à 16:50, Trevor Woerner <twoerner@gmail.com> a écrit :
> > > BTW, I'm also unclear on what to do next to better support those
> > > boards: with the default
> > > kernel config only a subset of the hardware is supported, and for
> > > state-of-the-art hw
> > > support we'll also need patches not yet in upstream kernel (from eg.
> > > armbian and libreelec).
> > >
> > > I feel it would be good to provide defconfig files for those machines,
> > > but then there are
> > > several options to handle that.  Would a minimal hw-focused defconfig
> > > suitable for
> > > `KCONFIG_MODE = "--allnoconfig"` be a good option ?
> >
> > I feel exactly the same way.
> >
> > By default all arm64 kernels are configured with the one, in-kernel, generic
> > arm64 defconfig. That gives me a kernel that is over 11MB in size, and
> > includes all sorts of useless drivers.
> >
> > I've been working off-and-on on a mechanism for meta-rockchip that would allow
> > users to decide between the default in-kernel arm64 defconfig (which would
> > be selected by doing nothing) or using a leaner defconfig that I have been
> > tweaking specifically for each board. Currently I only have a lean defconfig
> > for rock-pi-4b, but it was my hope to generate defconfigs for all supported
> > boards.
> >
> > Ideally I had wanted to leverage the linux-yocto kmeta mechanism to generate
> > defconfigs dynamically based on the specific machine and specific user
> > preferences, but that didn't go as smoothly as I was hoping, then I got
> > distracted by other things.
> >
> > I had created a spreadsheet with a comparison between the various boards that
> > would have been a basis for the individual kmeta pieces. Maybe I'll find some
> > more time to poke at it later this week. I could also push my WIP stuff to
> > somewhere if you'd like to take a look.
> >
> > In any case, my point is, I'm very interested in something better than what
> > currently exists :-)
> 
> On my side I have a minimal defconfig for our own board, which is very similar
> to the nanopi-m4, which could be used as a starting point for the latter.
> 
> 
> > One thing that I'd like to keep clear in meta-rockchip is to always allow the
> > user to choose between upstream and "extras". My feeling is: the simplest
> > build, if the user does nothing explicit, will always pull from pure upstream
> > with no out-of-tree patches or vendor pieces. But I'm not opposed to having
> > a mechanism whereby if the user does something explicit, they can choose to
> > use a vendor tree or make use of out-of-tree patches for various things.
> 
> One possibility would be using a KERNEL_CONFIG_VARIANT variable, whose
> values would select consistent sets of KBUILD_DEFCONFIG + KCONFIG_MODE
> + SRC_URI_append.  Standard variants could include "mainline" as the
> default, and
> maybe "customhw" which would bring just the hw features for the board
> in allnoconfig
> mode.
> 
> Or maybe we could try to fit such a selection mechanism in the PACKAGECONFIG
> system, but I'm not sure it would really fit.

The above (if I'm reading it correctly) sounds quite similar to something I
had already started a while back. So I'll go ahead and publish this
work-in-progress. Maybe if I'm lucky it might spark some conversation with
other BSP maintainers.

https://github.com/twoerner/meta-rockchip__twoerner/tree/rockchip-kernel-config-WIP

Here is the text I've added to the README, which I think helps clarify some of
my points:

	Kernel configuration:
	--------------------
	When it comes to configuring the kernel, allow the user to choose between:
		1. using the in-kernel defconfig
		2. using an in-layer defconfig + config fragments

	The in-kernel defconfig is a very generic configuration meant to build a
	kernel that could (theoretically) be run on a wide variety of devices of
	the same architecture. I.e. a kernel built for one aarch64 machine (e.g.
	the Qualcomm-based DragonBoard 410c) could be used without modification on
	a completely different aarch64 machine (e.g. an Amlogic-based Odroid-C4). As
	you can imagine, the in-kernel configuration generates a very large kernel.
	Currently the in-kernel defconfig produces a kernel that is roughly 12MB.

	The in-layer defconfig + config fragments is meant to trim down the kernel
	configuration to remove all the hardware settings that aren't relevant to the
	specific MACHINE being built. I.e. a kernel built for the rock-pi-4b wouldn't
	include, for example, Qualcomm-specific drivers or code.

	Currently, option #2 is only available for the following MACHINE(s):
		- rock-pi-4b

	The user indicates their intent via the RK_KERNEL_CONFIG_TYPE variable. If
	the user does nothing, the default behaviour is to use the in-kernel
	defconfig. If the user sets
		RK_KERNEL_CONFIG_TYPE = "inlayer"
	then the in-layer defconfig + config fragments will be used.

At this point I don't have everything that I'm wishing for. I had started to
try to add everything that I've wanted, but it wasn't working, so I pulled
back and only committed the parts that I was able to get working.

Right now the user can toggle between the generic in-kernel defconfig, or a
leaner defconfig that I've defined by playing with the RK_KERNEL_CONFIG_TYPE
variable (in local.conf, for example). Right now I've only done that for the
rock-pi-4b, but ideally I'd add others as time goes on.

I think it'll always be good to allow users to choose between the in-kernel
defconfig and something custom. We'll always want to be able to say "does it
work with the in-kernel defconfig?".

But better yet, instead of one big monolithic defconfig per board, ideally the
meta-rockchip BSP layer would contain a whole bunch of little kernel config
fragments for turning on just one thing. For example, there would be a kernel
config fragment for turning on basic Rockchip support, another one to enable
the RK808 pmic, and another one for the RK805 pmic. Others config fragments
would enable various ethernet options, wifi, bluetooth, etc. One would enable
the ES8388 audio codec (found on the rock2-square) and another would enable
just the ES8316 audio codec (the one found on the rock-pi-4).

Then, various parts on the configuration would enable the relevant kernel
config fragments. Simply selecting, for example, rock-pi-e, would include
the include/rk3328.inc, which would pull in basic rockchip/rk3328 support
and some other default things. The rock-pi-e.conf would pull in the correct
networking/bt options, and select the RK805 pmic. Eventually all the little
fragments would be pulled in that would be necessary to generate the whole
defconfig for this board.

That's the dream, anyway :-/

Technically, this information could be gleaned from the device tree for this
board… :-S

Then we'll need to take a look at all the DT overlays to see how to
incorporate them as well. Most of these boards have the "Raspberry Pi" 40-pin
interface, so users will expect to be able to reconfigure the pins for the
various alternate devices.
