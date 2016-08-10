Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40FFEE00EFA; Wed, 10 Aug 2016 04:30:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6323E00CF9
	for <yocto@yoctoproject.org>; Wed, 10 Aug 2016 04:29:48 -0700 (PDT)
Received: by mail-ua0-f195.google.com with SMTP id d97so3333016uad.1
	for <yocto@yoctoproject.org>; Wed, 10 Aug 2016 04:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DApnQHDwhDW2r4ddJP+dpAl/L82Q+E1OZvaEvj+aIP4=;
	b=ifNSxMsyR7gV8QnlmBgSS9Mk63iB8LkF+9/8eSP8THo/QVQ8g+zv6X6dnLBtibTmCo
	MKzLBHzyyiRcqq6qCUAf5hDNZsbsY3B64zmG+LZW+oqvUeyDD6W0Pkh6yC85B0rHS172
	F9BoqgY6HLcm3WTlg5cEd6KmuvxIrq/vk3QfrtpOLc6zp+FL9t5kj8yVA0Aj5Hfo9a84
	jXLFcVf1eEpN88PtGLUZ5vLydjXQLixQVREX81ykwtCbYo1MmCGnisZX9C3hFKXlUfP/
	acmTG+/FZShuQXgfJX/RYc4Sj0JtEbpjMNM+KC9KLAi//y5k605LzMQo3OCmIm57Y0Bl
	rb+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DApnQHDwhDW2r4ddJP+dpAl/L82Q+E1OZvaEvj+aIP4=;
	b=acizACGyxc1s4dF8fn+RajABxT/AfIjz9clTmTyF61tUPv4/HUzfKZrP60+QURZSjG
	z4Vte5k3eAddqYsLY1qujA/PN7iUBwFx0dzYkJBH+zZiuuCCcoEEcUKcwl1c9D91heZp
	rhuoGC0ZU0vwh5j51F7kDOtOdXlig0IWhaoebCvQZK6wDX69CEKMstSY8/uHDymDO/4c
	mStGinD/4xLjsLWBbAYNAJ3PwCfe3JRH8GUSLUffJkG3Jl1DSi/b3fzZQc10rtjXpwHH
	g2HtDhoEn+Hl0olaMl8zAIhWNTOkpyF14wAm+KzfdF4Hne0StbpPJ/xwc2w9Kg1gTuE8
	yMLg==
X-Gm-Message-State: AEkoousFJua3lcKvAy+Be+89Vo1bB9tsEBlnEuQEoZj5agpsS1/tIznlqWMkdQ4WZcoVZOlPWRnO5FzJgmZ8/A==
X-Received: by 10.31.9.67 with SMTP id 64mr1600924vkj.89.1470828587741; Wed,
	10 Aug 2016 04:29:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.66.66 with HTTP; Wed, 10 Aug 2016 04:29:47 -0700 (PDT)
In-Reply-To: <CAMKF1sq4dMGCoF3H-4WwHW7t5APvZSHkhmrDHqFPh32hB_b4aQ@mail.gmail.com>
References: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
	<20160731185258.GB29087@resin.home>
	<CAMKF1sq4dMGCoF3H-4WwHW7t5APvZSHkhmrDHqFPh32hB_b4aQ@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Wed, 10 Aug 2016 13:29:47 +0200
Message-ID: <CALbNGRRYOS-YHSiCCQbye6gG8Qrr2QXguQW4vif_a1Jj2qvbsQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v4 00/12] Support for VC4 graphics driver
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
X-List-Received-Date: Wed, 10 Aug 2016 11:30:01 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Jul 31, 2016 at 9:56 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Jul 31, 2016 12:54 PM, "Andrei Gherzan" <andrei@gherzan.ro> wrote:
>>
>> On Thu, Jul 21, 2016 at 08:32:05PM +0800, Herve Jourdain wrote:
>> > v4 series:
>> > a. rebased
>> > b. Upstream-Status added to the patch to the VC4 driver (needed only for
>> > kernel 4.4, accepted upstream in 4.7)
>> >
>> > v3 series:
>> > a. patch rebased
>> > b. new revision of kernel, to get a version of the VC4 graphics driver
>> > that handles render nodes
>> > c. patch to the VC4 driver to enable proper working of the render nodes
>> > (need to add authorization for IOCTLs)
>> >
>> > v2 series:
>> > a. Fix the 4.4.10 kernel revision
>> > b. Effectively add vc4-kms-v3d overlay to the list of overlays to build
>> > (forgotten previously)
>> > c. Make the parameter to the v4c-kms-v3d overlay configurable
>> > d. Add default values for the cma parameter to the v4c-kms-v3d overlay,
>> > depending on the board (and the memory it has)
>> >
>> > This patch series enables the support for the VC4 graphics driver from
>> > Eric Anholt.
>> > There was a previous patch series by Javier Martinez Canillas, but it
>> > required use of a different kernel.
>> > VC4 is now supported in the raspberrypi official kernel, at least for
>> > 4.4.9+.
>> > The support in 4.1 exists, but it is NOT STABLE, so it has been deemed
>> > unreasonable to support VC4 with 4.1 kernels.
>> >
>> > THEREFORE, VC4 graphics is supported ONLY for kernel versions 4.4.9 and
>> > later.
>> >
>> > This patch series proposes to support VC4 by only adding 'vc4graphics'
>> > to MACHINE_FEATURES, for raspberrypi. If this is set, it will trigger all
>> > the necessary configuration/changes to use the VC4 driver, including
>> > mesa/wayland/weston currently, and adding the overlay required.
>> > In order for this series to work, some previous patches are needed
>> > (support for .dtbo, and fix of the mesa packaging when there is no DRI
>> > driver).
>> > The memory reserved for the VC4 driver has default values depending on
>> > the version of the board used, but it can be configured by setting
>> > VC4_CMA_SIZE to a value supported by the overlay ('cma-256', 'cma-192',
>> > 'cma-128', 'cma-96', 'cma-64').
>> > 'cma-256' is the recommended value, but it might not be possible on
>> > boards with 512MB or DRAM, or less...
>> > 'cma-64' is known to not being able to support FHD/1080p.
>> >
>> > It was tested with wayland/weston, without the support for X11.
>> >
>> > This patch series depends on two other patch series previously posted,
>> > that enable the support for .dtbo overlay files.
>> >
>> > Herve Jourdain (12):
>> >   rpi-default-providers.inc: change default providers to support
>> >     vc4graphics
>> >   rpi-base.inc: add vc4-kms-v3d to the overlays to support vc4graphics
>> >   raspberrypi.conf: set the default value of VC4_CMA_SIZE to support
>> >     vc4graphics
>> >   raspberrypi0.conf: set the default value of VC4_CMA_SIZE to support
>> >     vc4graphics
>> >   raspberrypi2.conf: set the default value of VC4_CMA_SIZE to support
>> >     vc4graphics
>> >   raspberrypi3.conf: set the default value of VC4_CMA_SIZE to support
>> >     vc4graphics
>> >   rpi-config_git.bb: add v4c overlay to config.txt to support
>> >     vc4graphics
>> >   wayland/weston_%.bbappend: modify configuration options to support
>> >     vc4graphics
>> >   weston/weston_%.bbappend: modify configuration options to support
>> >     vc4graphics
>> >   mesa_%.bbappend: new file to add the correct configuration options to
>> >     support vc4graphics
>> >   linux-rpi.inc: add the configuration options required to support
>> >     vc4graphics
>> >   linux-raspberrypi-4.4: add patch to enable proper operation of
>> >     renderD128 device
>> >
>> >  conf/machine/include/rpi-base.inc                  |  1 +
>> >  conf/machine/include/rpi-default-providers.inc     |  8 +++---
>> >  conf/machine/raspberrypi.conf                      |  2 ++
>> >  conf/machine/raspberrypi0.conf                     |  2 ++
>> >  conf/machine/raspberrypi2.conf                     |  2 ++
>> >  conf/machine/raspberrypi3.conf                     |  2 ++
>> >  recipes-bsp/bootfiles/rpi-config_git.bb            | 10 +++++++-
>> >  recipes-graphics/mesa/mesa_%.bbappend              |  4 +++
>> >  recipes-graphics/wayland/weston_%.bbappend         |  6 ++---
>> >  recipes-graphics/weston/weston_%.bbappend          | 13 +++++-----
>> >  .../0002-vc4-ioctl-rendering-allow.patch           | 29
>> > ++++++++++++++++++++++
>> >  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
>> >  recipes-kernel/linux/linux-rpi.inc                 | 10 ++++++++
>> >  13 files changed, 75 insertions(+), 15 deletions(-)
>> >  create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>> >  create mode 100644
>> > recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch
>> >
>> > --
>> > 2.7.4
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>> I would have wanted to merge this but they depend on dtbo support which
>> doesn't have the required bits in oe.core. So I can't merge this until
>> that lands in oe-core.
>
> Let's wait for few days. I have staged it in my guthub tree. Until then
>>
>> Regards,
>>
>> --
>> Andrei Gherzan
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
If I am not mistaken, dtbo patch is now in oe-core.

Andreas

