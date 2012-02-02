Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91E2AE00594
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 16:36:44 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Feb 2012 16:36:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="102202822"
Received: from unknown (HELO envy.home) ([10.255.14.201])
	by azsmga001.ch.intel.com with ESMTP; 01 Feb 2012 16:36:43 -0800
Message-ID: <4F29DA7D.1000003@linux.intel.com>
Date: Wed, 01 Feb 2012 16:36:13 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.3.5
Subject: meta-kernel-dev forces a rebuild of linux-yocto from do_fetch every time
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
X-List-Received-Date: Thu, 02 Feb 2012 00:36:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

The poky-extras meta-kernel-dev layer seems to force a complete rebuild
of linux-yocto from do_fetch at every invocation of bitbake, even if
nothing changed in the kernel.

For example, if I run:

$ bitbake core-image-minimal

And it builds everything, including linux-yocto, but do_bootimg fails in
core-image-minimal, and I then fix the issue in bootimg.bbclass and run:

$ bitbake core-image-minimal

It starts with do_fetch of linux-yocto.

The linux-yocto_3.0.bbappend in my meta-kernel-dev looks like the following:

    FILESEXTRAPATHS := "${THISDIR}/${PN}"

    COMPATIBLE_MACHINE = ${MACHINE}

    # KMACHINE is the branch to build
    # KMACHINE_<MACHINE> ?= "yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"

    # KERNEL_FEATURES are features to be added to the kernel, and must
    # point to configurations stored on the 'meta' branch of the kernel
    # that is being built.
    # KERNEL_FEATURES ?= <FOO>

    # It is often nice to have a local clone of the kernel repos, to
    # allow patches to be staged, branches created, etc. Modify

    # KSRC_linux_yocto to point to your local clone as appropriate.
    # KSRC_linux_yocto ?= /path/to/local/linux-yocto-3.0
    KMACHINE ?= "yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"

    SRC_URI =
"git://${KSRC_linux_yocto};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"

    KERNEL_REVISION_CHECKING=
    SRCREV=${AUTOREV}
    #BB_LOCALCOUNT_OVERRIDE = "1"
    LOCALCOUNT = "0"



In my bblayers, I have:

$ cat bblayers.conf

    # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
    # changes incompatibly
    LCONF_VERSION = "4"

    #PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"
    #PREFERRED_VERSION_linux-yocto-rt = "3.0+git%"
    KSRC_linux_yocto=/home/dvhart/source/linux/linux-yocto-3.0.git
    KSRC_linux_yocto_dev=/home/dvhart/source/linux/linux-yocto-dev.git

    BBFILES ?= ""
    BBLAYERS = " \
      /home/dvhart/source/poky/meta \
      /home/dvhart/source/poky/meta-yocto \
      /home/dvhart/source/poky/layers/meta-intel \
      /home/dvhart/source/poky/layers/meta-intel/meta-sys940x \
      /home/dvhart/source/poky/layers/poky-extras/meta-kernel-dev \
      "

Bruce says it doesn't behave this way for him. Anyone have any ideas
what might be triggering this?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

