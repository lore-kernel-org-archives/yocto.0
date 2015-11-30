Return-Path: <saul.wold@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F246E008C8; Mon, 30 Nov 2015 15:29:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36BC1E00855
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 15:29:12 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 30 Nov 2015 15:29:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,366,1444719600"; d="scan'208";a="610257904"
Received: from krogan-mobl.amr.corp.intel.com ([10.254.66.205])
	by FMSMGA003.fm.intel.com with ESMTP; 30 Nov 2015 15:29:12 -0800
Message-ID: <1448926152.12905.55.camel@intel.com>
From: Saul Wold <saul.wold@intel.com>
To: "Daniel." <danielhilst@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 30 Nov 2015 15:29:12 -0800
In-Reply-To: <CAF3SDA531vpWpfiSuKSr8FhbdMdt=1ma8LMhG55_uTia=E7q2A@mail.gmail.com>
References: <CAF3SDA531vpWpfiSuKSr8FhbdMdt=1ma8LMhG55_uTia=E7q2A@mail.gmail.com>
X-Mailer: Evolution 3.18.1 (3.18.1-1.fc23) 
Mime-Version: 1.0
Subject: Re: One kernel tree, two BSP layers, two defconfigs. How to pickup the right one based on MACHINE value?
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
X-List-Received-Date: Mon, 30 Nov 2015 23:29:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2015-11-30 at 17:25 -0200, Daniel. wrote:
> Hi,
> 
> I have one kernel tree where I keep all my modules in-tree. Inside
> kernel I have two FOO_defconfig and BAR_defconfig which are
> configurations for FOO-board and BAR-board. On Yocto I have
> core-layer, FOO-bsp layer and BAR-bsp layer. At core-layer I have
> linux-custom.bb file which has the URI for kernel tree with a dummy
> defconfig. At FOO-bsp and BAR-bsp a have a .bbappend that adds a
> folder with the right defconfig for each board.
> 
> My doubt is: I have two .bbappends, on two distinct layers being
> applied at same time? Both layers are pointed at
> build/conf/bblayers.conf.
> 
So you are including both your BSP Layers in the bblayers, that will
probably cause problems based on your description above.

Another option is to look at using overrides and have 1 layer that
supports both boards if they are similar and share other items.

> How can I have sure to pick up the right defconfig at build time?
> 
> I've tried to delete core-layer and have two kernel recipes with
> distinct names, but Yocto complains about two recipes being selected
> at same time for build (because of virtual/kernel feature or
> something
> alike). So I want to keep one kernel recipe and select the right
> defconfig based on MACHINE value.
> 
You can use PREFERRED_PROVIDER_virtual/kernel to have multiple
alternate kernel present and set it in your <machine>.conf to select
the kernel you want.

If your kernel recipe does not inherit kernel.bbclass you will need to
set PROVIDES

You should also be sure to set COMPATIBLE_MACHINE for each machine

> Both defconfig are present on arch/arm/configs. Can I overwrite
> do_config()? Is that safe? About the .bbappends: Should be two
> .bbappends on same .bb file be avoided?
> 
You can use a do_config_prepend() to deal with moving the correct
defconfig.

Honestly there are many ways you can make this work and even more to
make is fail!

Sau!

> 
> Regards,
> - dhs
> -- 
> "Do or do not. There is no try"
>   Yoda Master

