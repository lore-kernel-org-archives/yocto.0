Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 348F0E00307
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2012 18:10:39 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Jan 2012 18:10:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="54108463"
Received: from unknown (HELO envy.home) ([10.255.13.98])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Jan 2012 18:10:34 -0800
Message-ID: <4F07A985.6070903@linux.intel.com>
Date: Fri, 06 Jan 2012 18:10:13 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Zumeng Chen <zumeng.chen@windriver.com>
References: <cover.1325824274.git.zumeng.chen@windriver.com>
	<38a7991592a5851e09395cc9f07bc6d2880c7bda.1325824274.git.zumeng.chen@windriver.com>
In-Reply-To: <38a7991592a5851e09395cc9f07bc6d2880c7bda.1325824274.git.zumeng.chen@windriver.com>
X-Enigmail-Version: 1.3.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/4] lttng-modules: from lttng-modules 2.0 git repo.
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
X-List-Received-Date: Sat, 07 Jan 2012 02:10:39 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/05/2012 10:11 PM, Zumeng Chen wrote:
> LTTng-modules 2.0 is currently in pre-release phase (-pre11)

If the commit message is identical, one could reasonably expect the
patch to be identical ;-) Please provide a complete commit message.

> 
> Signed-off-by: Zumeng Chen <zumeng.chen@windriver.com>
> ---
>  ...modules-replace-KERNELDIR-with-KERNEL_SRC.patch |   41 ++++++++++++++++++++
>  .../lttng-2.0/lttng-modules_v2.0.pre11.bb          |   23 +++++++++++
>  2 files changed, 64 insertions(+), 0 deletions(-)
>  create mode 100644 meta/recipes-kernel/lttng-2.0/lttng-modules-replace-KERNELDIR-with-KERNEL_SRC.patch
>  create mode 100644 meta/recipes-kernel/lttng-2.0/lttng-modules_v2.0.pre11.bb
> 
> diff --git a/meta/recipes-kernel/lttng-2.0/lttng-modules-replace-KERNELDIR-with-KERNEL_SRC.patch b/meta/recipes-kernel/lttng-2.0/lttng-modules-replace-KERNELDIR-with-KERNEL_SRC.patch
> new file mode 100644
> index 0000000..b7b2fbb
> --- /dev/null
> +++ b/meta/recipes-kernel/lttng-2.0/lttng-modules-replace-KERNELDIR-with-KERNEL_SRC.patch
> @@ -0,0 +1,41 @@
> +Upstream-Status: Inappropriate [embedded specific]
> +
> +lttng-modules: replace KERNELDIR with KERNEL_SRC
> +
> +Since lttng-modules uses the default way of module.bbclass to
> +build and install lttng-modules, so we do this replacement for
> +it as-is.

Since and so are redundant: s/so///

> +
> +Signed-off-by: Zumeng Chen <zumeng.chen@windriver.com>
> +---
> + Makefile |    7 +++----
> + 1 files changed, 3 insertions(+), 4 deletions(-)
> +
> +diff --git a/Makefile b/Makefile
> +index 5ac13d7..25caad5 100644
> +--- a/Makefile
> ++++ b/Makefile
> +@@ -38,17 +38,16 @@ obj-m += lib/
> + endif
> + 
> + else
> +-	KERNELDIR ?= /lib/modules/$(shell uname -r)/build
> + 	PWD := $(shell pwd)
> + 	CFLAGS = $(EXTCFLAGS)
> + 
> + default:
> +-	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
> ++	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) modules
> + 
> + modules_install:
> +-	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules_install
> ++	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) modules_install
> + 
> + clean:
> +-	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean
> ++	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) clean
> + 
> + endif
> +-- 
> +1.7.5.4
> +
> diff --git a/meta/recipes-kernel/lttng-2.0/lttng-modules_v2.0.pre11.bb b/meta/recipes-kernel/lttng-2.0/lttng-modules_v2.0.pre11.bb
> new file mode 100644
> index 0000000..34af847
> --- /dev/null
> +++ b/meta/recipes-kernel/lttng-2.0/lttng-modules_v2.0.pre11.bb
> @@ -0,0 +1,23 @@
> +SECTION = "devel"
> +SUMMARY = "Linux Trace Toolkit KERNEL MODULE"
> +DESCRIPTION = "The lttng-modules 2.0 package contains the kernel tracer modules"
> +LICENSE = "LGPLv2.1 & GPLv2"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=1eb086682a7c65a45acd9bcdf6877b3e \
> +		   "file://gpl-2.0.txt;md5=751419260aa954499f7abaabaa882bbe \
> +		   "file://lgpl-2.1.txt;md5=243b725d71bb5df4a1e5920b344b86ad"

Whitespace errors. Please use spaces here.

> +
> +DEPENDS = virtual/kernel 
> +
> +inherit module
> +
> +SRCREV = "4d3e89e379fc66480d729abe8daa5c86eb585400"
> +PV = "v2.0.pre11+git${SRCPV}"
> +PR = "r0"
> +
> +SRC_URI += "git://git.lttng.org/lttng-modules.git;protocol=git \
> +		file://lttng-modules-replace-KERNELDIR-with-KERNEL_SRC.patch"

Spaces please.

> +
> +export INSTALL_MOD_DIR="kernel/lttng-modules"
> +
> +S = "${WORKDIR}/git"
> +COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|powerpc.*)-linux'

I think you want a solution for TARGET.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

