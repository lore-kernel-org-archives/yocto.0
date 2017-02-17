Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EE8DE0095F; Fri, 17 Feb 2017 02:57:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.67 listed in dnsbl.sorbs.net]
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12D9BE00724
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 02:57:49 -0800 (PST)
Received: by mail-it0-f67.google.com with SMTP id e137so2152453itc.0
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 02:57:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=vyQlza1CQZpYzEZdRTqI+TF3//w1oXH8kug7aQL/CLk=;
	b=VEjHJxoZtYkA0VgMa1/bxJeGxD/BUHOCazmt5R2pP6wPjIjciSmVgr6iEzEnHJJrp3
	GwxxbGHp/9CeLcRg7wS3iD6cg/zEJ4TYPpJA308TGR0VDoJhzfCC+x4OZ83vG0ySLr08
	tpPjpBWLjPeP/TKuqAhtEhds7RPzhBJdFoJ/03UJrlKTFPyrwDULhZeyRaaq6IPqOWOH
	lj770cbKW/yFhDUvQfRbipoKHulzGN18+qjiBs+36yYQYKjNnEhZbUi2txr1y3NFX7mT
	IEl0mUSdS+et9i7+qPPOpkXgIEBXYmyRymtr5fLciyCBBQopARO+/qTaXcIBcQxtioug
	Bleg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=vyQlza1CQZpYzEZdRTqI+TF3//w1oXH8kug7aQL/CLk=;
	b=RHb7s9nhGEg/8LjoR+RtFFkimPHKJOJfDpOnlV9/ZQ5MeG1SfhksTtJNDRSE/rspSk
	kEjmMzRAM+YwX0LC0CLnKhWbgnYUGoi8UKwxDNLKWn9s7wlqZlpitemowCTYD829eGDT
	03BV2xPlCie56IZivfv+JADRslJQX1SKCVznoJ6ybT428VXVdhkgStXe8E/dRcUKzngY
	xUFjsnc0OsuQjdRjvUyHHFxPcr0O8PcHfsjL6hXSvwSEtktIsaeprlL6jmhOpoP3OHiJ
	C4HuLgkYpsq9nie51+Fa1vXZNFM59XdC7AGK/5kciXAgwnibqrYtc7it2vTvwtIWdqbM
	9vCw==
X-Gm-Message-State: AMke39k1jbThk9XQBVJO9OVRwoQZcZxglAvpHGY0smp29UWUNWMsWy/gZTsS0+A/vBqiDw==
X-Received: by 10.36.200.9 with SMTP id w9mr2885938itf.113.1487329068942;
	Fri, 17 Feb 2017 02:57:48 -0800 (PST)
Received: from linux-uys3 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id k66sm405828itg.8.2017.02.17.02.57.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 Feb 2017 02:57:47 -0800 (PST)
Date: Fri, 17 Feb 2017 05:57:45 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Message-ID: <20170217105745.GA10517@linux-uys3>
References: <1487051666-20888-1-git-send-email-eddie.cai.linux@gmail.com>
	<20170217033349.GA12618@linux-uys3>
	<CAJrj+DPJ5ZC4bxMsrHYD+kY1ur28hTBnfPSd+RNKd+kpnHZxOQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJrj+DPJ5ZC4bxMsrHYD+kY1ur28hTBnfPSd+RNKd+kpnHZxOQ@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][morty][PATHV2 0/6] add main line kernel support
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
X-List-Received-Date: Fri, 17 Feb 2017 10:57:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Eddie,

On Fri 2017-02-17 @ 04:56:28 PM, Eddie Cai wrote:
> 2017-02-17 11:33 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
> > You've put "morty" in the subject lines which to me means you're hoping these
> > patches will be applied against the morty branch of meta-rockchip. Morty was
> > released in October of 2016 which, at this point, is almost 5 months ago. At
> > this point patches should only go against morty to fix critical issues. These
> > patches look more like they're adding functionality, so I'll apply them to
> > master instead. The next release is Pyro which is expected around April 2017.
> I will remove branch next time i send patches.

You're welcome to add a branch name to any patch you send :-) But ideally a
patch that adds new functionality would be applied to master and a patch that
fixes a serious bug, a security issue, or makes a broken build succeed again
could be branch-specific.

> > On Tue 2017-02-14 @ 01:54:20 PM, Eddie Cai wrote:
> >> This patch set add main line kernel support for meta-rockchip
> >>
> >> Eddie Cai (6):
> >>   machine: Use cortexa17hf-neon-vfpv4 as default tune for rk3288.inc
> >
> > As I've mentioned before, Yocto/OE is a _distribution_ builder, not just an
> > image builder. As such most people in the community consider DEFAULTTUNES to
> > be a DISTRO-level policy. In other words, this is not something that should be
> > set by the BSP. One distro might want to use softfloat, while another wants
> > hard-float. It will be easier for people who make distributions using Yocto/OE
> > to use this layer when these types of things are not set at this level. Users
> > are free to use these distributions (by adding their layers) or they can set a
> > DEFAULTTUNE in their conf/local.conf file.
> >
> > I'll add a note to the README pointing this out so people can be aware of this
> > configuration tweak, but I won't take this patch into the BSP. I've been able
> > to build and run images where the DEFAULTTUNE is not set and they run just
> > fine. Another patch (which I'll be happy to create) will need to look for this
> > tune in recipes that provide things like mali support.
> I found there are many meta using hardfloat. see below for example.

I wouldn't say there are many, there are some but that doesn't mean they're
correct in doing this :-) The Yocto/OE community is very lax; nobody's going
to take down a layer that doesn't play nicely with other layers, but that
doesn't mean they're correct :-)

> So
> i think what meta-xxx(could be rockchip, freescale, allwinner etc)
> means building optimized distribution for xxx.

I disagree (please see my next response)

> If people come to
> meta-rockchip.  They must want to build a image/distribuition run on
> rockchip platform. If not, They should go to meta-debian or other
> generic meta rather than meta-rockchip.  ie. we won't expect a image
> built by meta-amd can run on rockchip platform. right?

If you wanted to run debian on your rockchip device then you would include
meta-debian in your bblayers. But while bitbake is building your debian image
for your rockchip device it will need to know what kernel to use, what kernel
configuration to use (device tree, .config, etc) and it will need to know what
bootloader to use (e.g. maybe u-boot, and if so, which version? and from where
do you clone the repository? denx? or vendor-specific github?) Who is going
to answer these questions? Who is going to tell bitbake which bootloader to
use for your rockchip device? That's what meta-rockchip is for, and that's why
people add it to their bblayers.

When people add meta-rockchip to their build it's because their build needs to
know which kernel and bootloader to use (and various other bits).

But the decision whether the user wants to build an image that will run on as
many boards as possible, or whether they want a build that will run as fast as
possible on only one board is actually a distro-level decision.

If you download an x86, 64-bit version of Fedora, openSUSE, or debian to
install on your desktop machine, you won't find different installs that are
tweaked for i7, Xeon, or AMD processors. You'll find one generic x86-64
download that works on as many desktop computers as possible. But if you
want a Linux distribution that is as tweaked out as possible for exactly the
processor you're running, you would look at Arch or Gentoo. The distribution
decides whether your code is as generic as possible, or tweaked for exactly
your hardware.

For many years I too believed exactly the same things you're saying, and I too
argued exactly the same arguments you're now making. I hope it doesn't take
you as long as it took me to realize that a BSP layer is for informing the
build where to find board-specific code (such as vendor kernels and
bootloaders) and tuning the build is for distro layers to decide ;-)

https://github.com/96boards/meta-rpb/blob/master/conf/distro/include/arm-defaults.inc
provides an example of the hoops people have to jump through in order to try
to create a distro based on BSP layers that set tunes however they wish. Also
https://github.com/Angstrom-distribution/meta-angstrom/blob/master/conf/distro/include/arm-defaults.inc



> raspberrypi:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/conf/machine/raspberrypi2.conf?h=master
> freescale:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-freescale/tree/conf/machine/include/imx-base.inc
> amd:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-amd/tree/meta-amdfalconx86/conf/machine/include/tune-amdfalconx86.inc
> allwinner:
> https://github.com/linux-sunxi/meta-sunxi/blob/master/conf/machine/orange-pi-one.conf

In the case of the meta-sunxi layer, that layer provides 18 machine
configuration files. Only two of them have a DEFAULTTUNE. I think it would be
easy to argue that these two files are out of place, rather than to try to
argue they represent the common way of doing things ;-)

If you read through meta-sunxi's README.md file you'll see that it explicitly
talks about how by default this layer allows for the most flexible build, but
how if the user wants performance instead, they are welcome to add the
DEFAULTTUNE to their build's configuration (i.e. local.conf) themselves.

It would be easy to create a list of BSP layers that either don't provide a
DEFAULTTUNE or, if they do, provide a tune that is not hf but essentially the
same tune you would get by just specifying something like cortexa9 (for
example).

meta-altera: sets a tune in conf/machine/include to nios and talks about
setting hf tunes in its README.

meta-cubox: set a generic tune and talks about a hf tune in the README.

meta-efikamx: no default tune

meta-ettus: provides a generic tune and mentions how a user can set more
specific tunes in conf/local.conf.sample

meta-exynos: no defaulttunes

meta-pine64: no defaulttune

meta-qcom: no defaulttune

meta-udoo: no defaulttune

meta-zync: no defaulttune

Best regards,
	Trevor

