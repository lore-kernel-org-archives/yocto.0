Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F49CE0032E
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 13:01:27 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Oct 2012 13:01:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,642,1344236400"; d="scan'208";a="208708608"
Received: from unknown (HELO [10.255.14.152]) ([10.255.14.152])
	by azsmga001.ch.intel.com with ESMTP; 24 Oct 2012 13:01:25 -0700
Message-ID: <1351108885.27553.43.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 24 Oct 2012 15:01:25 -0500
In-Reply-To: <18eb222d35f55fbf3cbd16afb6509ecffe30b7ca.1351053026.git.dvhart@linux.intel.com>
References: <18eb222d35f55fbf3cbd16afb6509ecffe30b7ca.1351053026.git.dvhart@linux.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/3] fri2: Add linux-yocto-tiny_3.4 support
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
X-List-Received-Date: Wed, 24 Oct 2012 20:01:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-10-23 at 21:31 -0700, Darren Hart wrote:
> Add support for the tiny KTYPE via a liunx-yocto-tiny bbappend
> for the 3.4 kernel. With this kernel, DISTRO="poky-tiny" can be
> used with the fri2 and fri2-noemgd machines.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>

Acked-by: Tom Zanussi <tom.zanussi@intel.com>

> ---
>  .../linux/linux-yocto-tiny_3.4.bbappend            |   14 ++++++++++++++
>  1 files changed, 14 insertions(+), 0 deletions(-)
>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny_3.4.bbappend
> 
> diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto-tiny_3.4.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto-tiny_3.4.bbappend
> new file mode 100644
> index 0000000..bc96859
> --- /dev/null
> +++ b/meta-fri2/recipes-kernel/linux/linux-yocto-tiny_3.4.bbappend
> @@ -0,0 +1,14 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +COMPATIBLE_MACHINE_fri2 = "fri2"
> +KMACHINE_fri2 = "fri2"
> +KBRANCH_fri2 = "standard/tiny/base"
> +#SRCREV_machine_pn-linux-yocto-tiny_fri2 ?= "449f7f520350700858f21a5554b81cc8ad23267d"
> +SRCREV_meta_pn-linux-yocto-tiny_fri2 ?= "2ec32d511b62d44b63e8560a9b1d6895a5dac695"
> +
> +
> +COMPATIBLE_MACHINE_fri2-noemgd = "fri2-noemgd"
> +KMACHINE_fri2-noemgd = "fri2"
> +KBRANCH_fri2-noemgd = "standard/tiny/base"
> +#SRCREV_machine_pn-linux-yocto-tiny_fri2-noemgd ?= "449f7f520350700858f21a5554b81cc8ad23267d"
> +SRCREV_meta_pn-linux-yocto-tiny_fri2-noemgd ?= "2ec32d511b62d44b63e8560a9b1d6895a5dac695"



