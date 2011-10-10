Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77292E006AC
	for <yocto@yoctoproject.org>; Mon, 10 Oct 2011 11:41:06 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Oct 2011 11:41:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,518,1312182000"; d="scan'208";a="60755562"
Received: from unknown (HELO envy.home) ([10.255.14.198])
	by azsmga001.ch.intel.com with ESMTP; 10 Oct 2011 11:41:05 -0700
Message-ID: <4E933C41.4000207@linux.intel.com>
Date: Mon, 10 Oct 2011 11:41:05 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.3.2
Subject: RFC: User configurable recipe features
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
X-List-Received-Date: Mon, 10 Oct 2011 18:41:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

As part of working on meta-tiny, I've come across a need (want?) to
present users with the ability to select some set of features in a local
configuration file that will impact the build of the image and a set of
recipes.

It is currently possible to affect which packages are installed in an
image with variables like POKY_EXTRA_INSTALL. What I'm not finding a way
to do is specify some set of features that will impact how a recipe is
built.

For example, a user may or may not want networking support or virtual
terminal support in their image. This impacts both the kernel and
busybox (at least). The linux-yocto infrastructure provides us with
config fragment functionality, something similar will need to be added
to busybox. Access to that is still bound to the machine config by means
of the SRC_URI machine override mechanism, but it would be useful to be
able to influence it from the image config or the user's local config.

For example, when building a tiny image I may decide I do not want VT
nor INET support. I might wish to specify this like this (by removing
them from the default features):

local.conf:
#CORE_IMAGE_TINY_FEATURES = "VT INET MDEV"
CORE_IMAGE_TINY_FEATURES = "MDEV"

I would want this to affect linux-yocto-tiny by dropping the vt.cfg and
inet.cfg fragments from the SRC_URI (or from the .scc descriptor files
assembled by the linux-yocto meta indrastructure).

Busybox would need a similar configuration mechanism, and would also
need to add a "no-vt-support.patch" patch to the SRC_URI to avoid a
bug/oversight in the busybox init routine.

I'd appreciate some help determining the proper bitbake way of doing
this. I want to avoid having to create a new machine.conf and/or recipes
for every possible combination of features that a user may want to turn
on or off.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

