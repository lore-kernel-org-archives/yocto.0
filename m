Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F07D8E01561
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 15:23:26 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 25 Jun 2013 15:23:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,939,1363158000"; d="scan'208";a="260111931"
Received: from unknown (HELO [10.255.13.73]) ([10.255.13.73])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Jun 2013 15:23:01 -0700
Message-ID: <1372198981.9056.2.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Tue, 25 Jun 2013 17:23:01 -0500
In-Reply-To: <1372178610-19243-1-git-send-email-ross.burton@intel.com>
References: <1372178610-19243-1-git-send-email-ross.burton@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel][PATCH] intel-gpu-tools: add new package
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Jun 2013 22:23:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-06-25 at 17:43 +0100, Ross Burton wrote:
> This package contains numerous useful tools for working with Intel GPUs.  Add a
> patch to install intel_panel_fitter as it's genuinely useful and not just a
> debugging tool.
> 
> Signed-off-by: Ross Burton <ross.burton@intel.com>

Nice addition.

Pulled into meta-intel/master.

Thanks,

Tom

> ---
>  .../intel-gpu-tools/files/install-fitter.patch     |   26 ++++++++++++++++++++
>  .../intel-gpu-tools/intel-gpu-tools_1.3.bb         |   15 +++++++++++
>  2 files changed, 41 insertions(+)
>  create mode 100644 common/recipes-graphics/intel-gpu-tools/files/install-fitter.patch
>  create mode 100644 common/recipes-graphics/intel-gpu-tools/intel-gpu-tools_1.3.bb
> 
> diff --git a/common/recipes-graphics/intel-gpu-tools/files/install-fitter.patch b/common/recipes-graphics/intel-gpu-tools/files/install-fitter.patch
> new file mode 100644
> index 0000000..2a344c5
> --- /dev/null
> +++ b/common/recipes-graphics/intel-gpu-tools/files/install-fitter.patch
> @@ -0,0 +1,26 @@
> +The panel_fitter is genuinely useful but not installed, so install it.
> +
> +Upstream-Status: Inappropriate
> +Signed-off-by: Ross Burton <ross.burton@intel.com>
> +
> +Index: tools/Makefile.am
> +===================================================================
> +--- a/tools.orig/Makefile.am	2012-08-21 08:30:29.000000000 +0100
> ++++ b/tools/Makefile.am	2013-06-25 16:52:34.220504579 +0100
> +@@ -17,13 +17,13 @@
> + 	intel_forcewaked		\
> + 	intel_dpio_read			\
> + 	intel_dpio_write		\
> +-	intel_l3_parity
> ++	intel_l3_parity			\
> ++	intel_panel_fitter
> + 
> + noinst_PROGRAMS = 			\
> + 	intel_dump_decode 		\
> + 	intel_infoframes		\
> +-	intel_lid			\
> +-	intel_panel_fitter
> ++	intel_lid
> + 
> + dist_bin_SCRIPTS = intel_gpu_abrt
> + 
> diff --git a/common/recipes-graphics/intel-gpu-tools/intel-gpu-tools_1.3.bb b/common/recipes-graphics/intel-gpu-tools/intel-gpu-tools_1.3.bb
> new file mode 100644
> index 0000000..893c418
> --- /dev/null
> +++ b/common/recipes-graphics/intel-gpu-tools/intel-gpu-tools_1.3.bb
> @@ -0,0 +1,15 @@
> +require ${COREBASE}/meta/recipes-graphics/xorg-app/xorg-app-common.inc
> +
> +SUMMARY = "Intel GPU tools"
> +DESCRIPTION = "Variety of small tools for testing intel graphics."
> +
> +SRC_URI += "file://install-fitter.patch"
> +
> +SRC_URI[md5sum] = "67facd6241e26e2c68614728e3a932e9"
> +SRC_URI[sha256sum] = "51d22fdb3d415a1b3b7d0a172c1bb24dec6f16116e80a9ce49873f44527f20a0"
> +
> +LIC_FILES_CHKSUM = "file://COPYING;md5=0918806acfedc3e8c0488f2dd61616dd"
> +
> +DEPENDS += "libdrm libpciaccess cairo udev glib-2.0"
> +
> +EXTRA_OECONF = "--disable-nouveau --disable-shader-debugger"



