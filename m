Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A814E006D9
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 22:50:26 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Jun 2012 22:50:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="161570884"
Received: from unknown (HELO envy.home) ([10.255.12.184])
	by orsmga002.jf.intel.com with ESMTP; 22 Jun 2012 22:50:23 -0700
Message-ID: <4FE558CA.20308@linux.intel.com>
Date: Fri, 22 Jun 2012 22:48:58 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.4.2
Subject: No provider for update-modules-nativesdk
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
X-List-Received-Date: Sat, 23 Jun 2012 05:50:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Has anyone else hit this? I'm running poky master as of the this afternoon:

$ bitbake core-image-base

ERROR: Nothing PROVIDES 'update-modules-nativesdk' (but
virtual:nativesdk:/home/dvhart/source/poky/meta-yocto/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
DEPENDS on or otherwise requires it)

...

Build Configuration:
BB_VERSION        = "1.15.2"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.2+snapshot-20120623"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto        =
"dvhart/modules:ea185e892344c997c6d9019c2f7d9e2d4f3e106f"
meta-intel        = "denzil:3867f2a35323cbe5dd50023e127678325a984e11"
meta-kernel-dev   = "master:97bcab41c14b0d1faec6877fe2aece0f3f059edc"
meta-yocto
meta              =
"dvhart/modules:ea185e892344c997c6d9019c2f7d9e2d4f3e106f"

...

Trying to track down the dependency also had a surprising result.

$ bitbake core-image-minimal -u depexp -g
/home/dvhart/source/poky/scripts/bitbake: line 159: 12526 Segmentation
fault      $BITBAKE $@

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel


