Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45D02E0141C
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2012 06:40:09 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Nov 2012 06:40:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,286,1352102400"; d="scan'208";a="222164333"
Received: from unknown (HELO helios.localnet) ([10.252.122.208])
	by orsmga001.jf.intel.com with ESMTP; 20 Nov 2012 06:39:55 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Date: Tue, 20 Nov 2012 14:39:53 +0000
Message-ID: <1433587.ZVlnfl7M25@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.2.0-33-generic-pae; KDE/4.9.3; i686; ; )
In-Reply-To: <0a89eef85ff8ed361ac5a3e2f8fca6869670d74c.1353354792.git.kevin.strasser@linux.intel.com>
References: <cover.1353354792.git.kevin.strasser@linux.intel.com>
	<0a89eef85ff8ed361ac5a3e2f8fca6869670d74c.1353354792.git.kevin.strasser@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-baryon][PATCH 1/3] packagegroup-core-tools: exclude packages that depend on x11
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
X-List-Received-Date: Tue, 20 Nov 2012 14:40:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 19 November 2012 12:20:27 Kevin Strasser wrote:
> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
> ---
>  .../packagegroup-core-tools-profile.bbappend       |   15 +++++++++++++++
>  .../packagegroup-core-tools-testapps.bbappend      |   12 ++++++++++++
>  2 files changed, 27 insertions(+)
>  create mode 100644
> recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend create
> mode 100644
> recipes-core/packagegroups/packagegroup-core-tools-testapps.bbappend
> 
> diff --git
> a/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
> b/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend new
> file mode 100644
> index 0000000..0d13a45
> --- /dev/null
> +++ b/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
> @@ -0,0 +1,15 @@
> +# Only include packages that are useful on a headless device
> +
> +PROFILETOOLS = " \
> +    oprofile \
> +    oprofileui-server \
> +    powertop \
> +    lttng-control \
> +    "
> +
> +RRECOMMENDS_${PN} = " \
> +    perf \
> +    trace-cmd \
> +    kernel-module-oprofile \
> +    blktrace \
> +    "
> diff --git
> a/recipes-core/packagegroups/packagegroup-core-tools-testapps.bbappend
> b/recipes-core/packagegroups/packagegroup-core-tools-testapps.bbappend new
> file mode 100644
> index 0000000..86c7eb5
> --- /dev/null
> +++ b/recipes-core/packagegroups/packagegroup-core-tools-testapps.bbappend
> @@ -0,0 +1,12 @@
> +# Only include packages that are useful on a headless device
> +
> +RDEPENDS_${PN} = " \
> +    blktool \
> +    tslib-calibrate \
> +    tslib-tests \
> +    lrzsz \
> +    ${KEXECTOOLS} \
> +    alsa-utils-amixer \
> +    alsa-utils-aplay \
> +    ltp \
> +    "

This would work, but in this instance I think it would be better if we fixed 
the packagegroup-core-tools-* recipes in OE-Core so that the items that 
require X11 are only included when x11 is in DISTRO_FEATURES, rather than 
making the change here.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

