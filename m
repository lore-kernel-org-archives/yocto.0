Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBDB0E00307
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 10:09:45 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Nov 2011 10:09:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,522,1315206000"; d="scan'208";a="91446274"
Received: from unknown (HELO envy.home) ([10.255.15.228])
	by fmsmga002.fm.intel.com with ESMTP; 16 Nov 2011 10:09:45 -0800
Message-ID: <4EC3FC68.9080200@linux.intel.com>
Date: Wed, 16 Nov 2011 10:09:44 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.3.3
Subject: EXTRA_IMAGEDEPENDS documentation
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
X-List-Received-Date: Wed, 16 Nov 2011 18:09:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

For the situation where a recipe is required to build a final image, but
the output is not needed in the root filesystem, the EXTRA_IMAGEDEPENDS
variable can be used to define this dependency. Bootloaders seem to be
the common example for this (such as the beagleboard dependency on uboot).

This variable is not defined in the poky manual nor in the documentation
tags (meta/conf/documentation.conf).

Another aspect of this that could be made more explicit in the manual is
that the various *RRECOMMENDS and *RDEPENDS variables impact what is
installed in the root filesystem (because they operate on packages - not
recipes). Scott, I'd recommend a few extra words in the *RRECOMMENDS and
*RDEPENDS documentation to this effect. For example, "... a list of
packages to install TO THE ROOT FILESYSTEM ...".

As for the EXTRA_IMAGEDEPENDS definition, perhaps something like this:

in documentation.conf:

EXTRA_IMAGEDEPENDS[doc] = "Recipes to build that do not install packages
to the root filesystem, such as bootloaders."

in the reference manual:

EXTRA_IMAGEDEPENDS
A list of recipes to be built that do not provide packages to be
installed in the root filesystem. This is typically used to specify a
required bootloader in a machine config.

Note: To add packages to the root filesystem, see the various *DEPENDS
and *RECOMMENDS variables.

Scott, I'll leave the reference manual changes to you. RP, if you agree
with my doc tag, I can submit a patch for that.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

