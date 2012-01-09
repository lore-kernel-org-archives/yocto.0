Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B0FBE006E9
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2012 10:00:53 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Jan 2012 10:00:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="94477576"
Received: from btwarden-mobl1.amr.corp.intel.com (HELO envy.home)
	([10.7.199.149])
	by orsmga001.jf.intel.com with ESMTP; 09 Jan 2012 10:00:18 -0800
Message-ID: <4F0B2B20.9070500@linux.intel.com>
Date: Mon, 09 Jan 2012 10:00:00 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Zumeng Chen <zumeng.chen@windriver.com>
References: <cover.1326099771.git.zumeng.chen@windriver.com>
	<4d2eab943403db0472740d4dafbfd99bab659b24.1326099771.git.zumeng.chen@windriver.com>
In-Reply-To: <4d2eab943403db0472740d4dafbfd99bab659b24.1326099771.git.zumeng.chen@windriver.com>
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
X-List-Received-Date: Mon, 09 Jan 2012 18:00:54 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/09/2012 01:24 AM, Zumeng Chen wrote:
> This patch intended to integrate the Linux trace toolkit, which
> is a suite of tools designed to extract program execution details
> from the Linux operating system and interpret them.
> 
> lttng-tools 2.0 is currently in pre-release(-pre16), so we have to
> update it when official released.
> 
> Signed-off-by: Zumeng Chen <zumeng.chen@windriver.com>
> ---
>  ...tools-fix-compiling-error-for-powerpc-arm.patch |   26 ++++++++++++++++++++
>  .../lttng-2.0/lttng-tools_2.0-pre16.bb             |   21 ++++++++++++++++
>  2 files changed, 47 insertions(+), 0 deletions(-)
>  create mode 100644 meta/recipes-kernel/lttng-2.0/lttng-tools-fix-compiling-error-for-powerpc-arm.patch
>  create mode 100644 meta/recipes-kernel/lttng-2.0/lttng-tools_2.0-pre16.bb
> 
> diff --git a/meta/recipes-kernel/lttng-2.0/lttng-tools-fix-compiling-error-for-powerpc-arm.patch b/meta/recipes-kernel/lttng-2.0/lttng-tools-fix-compiling-error-for-powerpc-arm.patch
> new file mode 100644
> index 0000000..47b7b98
> --- /dev/null
> +++ b/meta/recipes-kernel/lttng-2.0/lttng-tools-fix-compiling-error-for-powerpc-arm.patch
> @@ -0,0 +1,26 @@
> +Upstream-Status: Pending
> +
> +lttng-tools: fix compiling error for powerpc, arm
> +
> +For powerpc and arm system, some MAP_ defined in
> +asm/mman.h, so we include it in header.
> +
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
> index 0000000..8a688c9
> --- /dev/null
> +++ b/meta/recipes-kernel/lttng-2.0/lttng-tools_2.0-pre16.bb
> @@ -0,0 +1,21 @@
> +SECTION = "devel"
> +SUMMARY = "Linux Trace Toolkit Control"
> +DESCRIPTION = "The Linux trace toolkit is a suite of tools designed to extract program execution details from the Linux operating system and interpret them."

Please do wrap long lines, just don't indent them with tabs past the
previous line:

DESCRIPTION = "The Linux trace toolkit is a suite of tools designed \
to extract program execution details from the Linux operating system \
and interpret them."

> +LICENSE = "GPLv2.1"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=ab682a4729389c3f11913d758affe98e"
> +
> +DEPENDS = "liburcu popt lttng-ust"
> +
> +SRC_URI = "http://lttng.org/files/lttng-tools/lttng-tools-${PV}.tar.bz2 \
> +           file://lttng-tools-fix-compiling-error-for-powerpc-arm.patch"
> +
> +SRC_URI[md5sum] = "58ed0a15db80a00172d5b0413a55451c"
> +SRC_URI[sha256sum] = "188d262bda80043dd939c9aa7aec1795ca77aeec0cb3c0f23c28bfe754049491"
> +
> +S = "${WORKDIR}/lttng-tools-${PV}"
> +
> +inherit autotools
> +
> +export KERNELDIR="${STAGING_KERNEL_DIR}"
> +

Please include the reason for the COMPATIBLE_HOST test in all recipes.

> +COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|powerpc.*)-linux'

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

