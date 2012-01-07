Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04C60E0030B
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2012 18:06:17 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Jan 2012 18:06:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="93849174"
Received: from unknown (HELO envy.home) ([10.255.13.98])
	by orsmga001.jf.intel.com with ESMTP; 06 Jan 2012 18:06:13 -0800
Message-ID: <4F07A881.6070104@linux.intel.com>
Date: Fri, 06 Jan 2012 18:05:53 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Zumeng Chen <zumeng.chen@windriver.com>
References: <cover.1325824274.git.zumeng.chen@windriver.com>
	<bc71f5e117ed7093e89b289b00126ad797428eb3.1325824274.git.zumeng.chen@windriver.com>
In-Reply-To: <bc71f5e117ed7093e89b289b00126ad797428eb3.1325824274.git.zumeng.chen@windriver.com>
X-Enigmail-Version: 1.3.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/4] lttng-tools: Integrated from git repo.
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
X-List-Received-Date: Sat, 07 Jan 2012 02:06:18 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

This commit message doesn't tell me anything about what this patch is
intended to do.

> +++ b/meta/recipes-kernel/lttng-2.0/lttng-tools-fix-compiling-error-for-powerpc-arm-and-mips.patch
> @@ -0,0 +1,23 @@
> +Upstream-Status: Pending
> +
> +lttng-tools: fix compiling error for powerpc, arm
> +

Add some commentary here about what the compilation error is.

> +Signed-off-by: Zumeng Chen <zumeng.chen@windriver.com>
> +---
> + librunas/runas.c |    1 +
> + 1 files changed, 1 insertions(+), 0 deletions(-)
> +
> +diff --git a/librunas/runas.c b/librunas/runas.c
> +--- a/librunas/runas.c
> ++++ b/librunas/runas.c
> +@@ -29,6 +29,7 @@
> + #include <fcntl.h>
> + #include <sched.h>
> + #include <sys/mman.h>
> ++#include <asm/mman.h>
> + 
> + #include <lttngerr.h>
> + 
> +-- 
> +1.7.5.4
> +
> diff --git a/meta/recipes-kernel/lttng-2.0/lttng-tools_2.0-pre16.bb b/meta/recipes-kernel/lttng-2.0/lttng-tools_2.0-pre16.bb
> new file mode 100644
> index 0000000..0b7a240
> --- /dev/null
> +++ b/meta/recipes-kernel/lttng-2.0/lttng-tools_2.0-pre16.bb
> @@ -0,0 +1,24 @@
> +SECTION = "devel"
> +SUMMARY = "Linux Trace Toolkit Control"
> +DESCRIPTION = "The Linux trace toolkit is a suite of tools designed to \
> +extract program execution details from the Linux operating system and  \
> +interpret them."
> +LICENSE = "GPLv2.1"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=ab682a4729389c3f11913d758affe98e"
> +
> +DEPENDS = "liburcu popt lttng-ust"
> +
> +SRC_URI = "http://lttng.org/files/lttng-tools/lttng-tools-${PV}.tar.bz2 \
> +	   file://fix-compiling-error-for-powerpc-arm-and-mips.patch"

Whitespace error. Indent with spaces after the initial block indent
(which doesn't exist here).

> +
> +SRC_URI[md5sum] = "58ed0a15db80a00172d5b0413a55451c" 
> +SRC_URI[sha256sum] = "188d262bda80043dd939c9aa7aec1795ca77aeec0cb3c0f23c28bfe754049491"
> +
> +S = "${WORKDIR}/lttng-tools-${PV}"
> +
> +
> +inherit autotools
> +
> +export KERNELDIR="${STAGING_KERNEL_DIR}"
> +
> +COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|powerpc.*)-linux'

This requires a comment as in the previous patch. Again, I don't think
this is what you are looking for. You want to limit which target
architectures you build this for. Right?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

