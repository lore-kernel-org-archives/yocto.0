Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2AD0E006B5
	for <yocto@yoctoproject.org>; Sat,  7 Jan 2012 07:54:24 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 07 Jan 2012 07:54:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="104611379"
Received: from unknown (HELO envy.home) ([10.255.13.211])
	by fmsmga001.fm.intel.com with ESMTP; 07 Jan 2012 07:54:23 -0800
Message-ID: <4F086A9E.3080306@linux.intel.com>
Date: Sat, 07 Jan 2012 07:54:06 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Zumeng Chen <zumeng.chen@windriver.com>
References: <cover.1325824274.git.zumeng.chen@windriver.com>
	<6d11d61757dd2d5f41496f929f46653e25b2870e.1325824274.git.zumeng.chen@windriver.com>
In-Reply-To: <6d11d61757dd2d5f41496f929f46653e25b2870e.1325824274.git.zumeng.chen@windriver.com>
X-Enigmail-Version: 1.3.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 4/4] babeltrace: Integrated from version 0.8
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
X-List-Received-Date: Sat, 07 Jan 2012 15:54:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/05/2012 10:11 PM, Zumeng Chen wrote:
> It provides trace read and write libraries, as well as a trace converter.
> 
> Signed-off-by: Zumeng Chen <zumeng.chen@windriver.com>
> ---
>  meta/recipes-kernel/lttng-2.0/babeltrace_0.8.bb |   30 +++++++++++++++++++++++
>  1 files changed, 30 insertions(+), 0 deletions(-)
>  create mode 100644 meta/recipes-kernel/lttng-2.0/babeltrace_0.8.bb
> 
> diff --git a/meta/recipes-kernel/lttng-2.0/babeltrace_0.8.bb b/meta/recipes-kernel/lttng-2.0/babeltrace_0.8.bb
> new file mode 100644
> index 0000000..86a9d01
> --- /dev/null
> +++ b/meta/recipes-kernel/lttng-2.0/babeltrace_0.8.bb
> @@ -0,0 +1,30 @@
> +SUMMARY = "Babeltrace - Trace Format Babel Tower"
> +DESCRIPTION = "Babeltrace provides trace read and write libraries in host side,\
> +	       as well as a trace converter, which used to convert LTTng 2.0 \
> +	       traces into human-readable log."

In the previous patches you aligned the additional lines with column 0,
here you indent with tabs and spaces. A quick survey of the existing
sources suggest the DESCRIPTION field typically does not indent the
subsequent lines.

> +HOMEPAGE = "http://www.efficios.com/babeltrace/"
> +BUGTRACKER = "n/a"
> +
> +LICENSE = "MIT & GPLV2"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=8d1a03b3c17bdd158b3cbb34813b1423"
> +
> +inherit autotools
> +
> +DEPENDS = "gtk+ util-linux"
> +
> +SRCREV = "31e670293588d7882a232bc14b93d5e956fa43f4"
> +PV = "0.8+git${SRCPV}"
> +PR = "r0"
> +
> +SRC_URI += "git://git.efficios.com/babeltrace.git;protocol=git"
> +

This should be a "=" assignment, not "+=".

> +S = "${WORKDIR}/git"
> +
> +do_configure_prepend () {
> +  ${S}/bootstrap

Please use tabs for indentation here.

> +}
> +
> +# Due to liburcu not building on MIPS currently this recipe needs to
> +# be limited also.
> +# So here let us first suppport x86/arm/powerpc platforms now.
> +COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|powerpc.*)-linux'

Again, I think you want to filter based on target arch.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

