Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 95DDD4C800FB
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2011 19:33:34 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Jun 2011 17:33:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,340,1304319600"; d="scan'208";a="11484283"
Received: from unknown (HELO [10.255.13.104]) ([10.255.13.104])
	by orsmga001.jf.intel.com with ESMTP; 08 Jun 2011 17:33:33 -0700
Message-ID: <4DF014D8.1080204@linux.intel.com>
Date: Wed, 08 Jun 2011 17:33:28 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Cc: Jeff Mitchell <mitchell@kde.org>,
	Robert Berger <pokylinux@reliableembeddedsystems.com>
Subject: Beagleboard BSP Status
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 09 Jun 2011 00:33:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

As several people have been asking after improved Beagleboard support
with the Yocto Project, and it has been taking longer than I hoped to
refresh the BSP, I thought I'd fill you in on what the plans are and
where we are with those.

We met with the TI folks at ELC to try and sort out how to best support
the Beagleboard in the Yocto Project while still preserving the
excellent community surrounding the Beagleboard and the top-notch
support of the Beagleboard from the meta-texasinstruments layer.

The plan is to merge the contents of the linux-omap_2.6.37.bb recipe
into the linux-yocto_2.6.37.bb recipe. This involves merging linux-omap
into linux-yocto as well as merging the 200 or so patches from the
linux-omap recipe patch series. This work is complete. Thanks to Bruce
Ashfield for merging the linux-omap git tree. Of the 200 patches, I was
able to drop several that reverse applied to the linux-yocto tree, or
that weren't particularly relevant to the Beagleboard.

Beyond the kernel patches, there is the question of the defconfig.
Kernel configs are tricky as they include platform config, optional
driver configs, and various bits of policy. The goal has been to include
all of the platform config and the relevant driver configs, while
ensuring the policy configs are consistent with the yocto/standard
branch. This includes things like filesystem support, networking
protocol options, etc. This work is about half complete.

At this point I ran into the same problem reported by Gary Thomas here:
https://lists.yoctoproject.org/pipermail/poky/2011-June/006634.html

I found that by building with gcc 4.5.1, I am able to boot the
Beagleboard using a linux-yocto-2.6.37 kernel and a core-image-sato
image. I've tested serial, USB, ethernet, audio, and X. There are some
quirks to be ironed out:

o Fix gcc 4.6.0 build
o Sometimes the /dev/fb0 device doesn't appear
  - workaround is to create it manually:
    # mknod /dev/fb0 char 29 0
    but obviously a permanent solution is needed
o Screen resolution doesn't fit on _my_display, need to see if this is
  specific to me, or a general problem
o Finish pruning the kernel config

With that, we'll have decent general purpose support for the Beagleboard
in the Yocto Project. meta-texasinstruments should still be considered
the upstream, and there are some things that will remain only there.
Such as the snazzy Beagleboard Linux boot logo and the orange screen on
DVI from u-boot. At this time, we haven't yet explored video
acceleration or expansion board support, although we will include the
bluetooth and wifi drivers from the meta-ti config.

I'd like to thank everyone who has shown interest in this effort and
especially those who have tried the build, opened bugs, and are helping
to investigate open bugs.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

