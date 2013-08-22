Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B66E3E00747
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 05:44:24 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 22 Aug 2013 05:44:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,934,1367996400"; d="scan'208";a="391560598"
Received: from timevans-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.122.241])
	by orsmga002.jf.intel.com with ESMTP; 22 Aug 2013 05:44:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 22 Aug 2013 13:44:21 +0100
Message-ID: <105939196.r2xLULY86q@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAAfyv35Y0dmnQ2mEfeEKeinKjwhdJ-yNty-M548G2EQ9+8iS_w@mail.gmail.com>
References: <CAAfyv35Y0dmnQ2mEfeEKeinKjwhdJ-yNty-M548G2EQ9+8iS_w@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: omxplayer building for Rpi
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
X-List-Received-Date: Thu, 22 Aug 2013 12:44:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Marek,

On Tuesday 20 August 2013 13:38:58 Belisko Marek wrote:
> I'm trying to build omxplayer for Rpi board but seems libav and other
> dependencies was removed (replaced by meta-oe). But libav was also
> removed from meta-oe [1]. 

These were moved to OE-Core in master. It looks like you're trying to use Poky 
1.4 (dylan) with master of meta-oe - you shouldn't mix versions like that; 
either switch to the dylan branch of meta-oe with your current setup, or use 
poky master and meta-oe master together.

> I was trying to use patches [2] but it
> produce errors:
> ERROR: Multiple .bb files are due to be built which each provide
> virtual/libgles2
> (/home/marek/projects/yocto/1.4.1/poky/meta-raspberrypi/recipes-graphics/use
> rland/userland_git.bb
> /home/marek/projects/yocto/1.4.1/poky/meta/recipes-graphics/mesa/mesa_9.0.2
> .bb). This usually means one provides something the other doesn't and
> should. ERROR: Multiple .bb files are due to be built which each provide
> virtual/egl
> (/home/marek/projects/yocto/1.4.1/poky/meta-raspberrypi/recipes-graphics/us
> erland/userland_git.bb
> /home/marek/projects/yocto/1.4.1/poky/meta/recipes-graphics/mesa/mesa_9.0.2
> .bb). This usually means one provides something the other doesn't and
> should.

This is unrelated as far as I can tell although it may be related to your 
mixing of versions as above.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

