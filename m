Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D72E2E0044D
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 11:43:43 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Apr 2012 11:43:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="152040047"
Received: from unknown (HELO envy.home) ([10.255.12.43])
	by fmsmga002.fm.intel.com with ESMTP; 10 Apr 2012 11:43:43 -0700
Message-ID: <4F847F3A.8020509@linux.intel.com>
Date: Tue, 10 Apr 2012 11:43:06 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Yang Shi <yang.shi@windriver.com>
References: <1334009754-3012-1-git-send-email-yang.shi@windriver.com>
	<1334009754-3012-3-git-send-email-yang.shi@windriver.com>
In-Reply-To: <1334009754-3012-3-git-send-email-yang.shi@windriver.com>
X-Enigmail-Version: 1.4
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/2] sato: Throw warning when building ISO image without unionfs enabled
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
X-List-Received-Date: Tue, 10 Apr 2012 18:43:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/09/2012 03:15 PM, Yang Shi wrote:
> [YOCTO #1487]
> 
> For the liveCD image, interactive bootup is needed, but psplash prevents from
> booting interactively. In such case ISO image is not usable, so throw warning
> info when building ISO image without unionfs enabled in kernel.
> 
> Signed-off-by: Yang Shi <yang.shi@windriver.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  meta/recipes-sato/images/core-image-sato.bb |   14 ++++++++++++++
>  1 files changed, 14 insertions(+), 0 deletions(-)
> 
> diff --git a/meta/recipes-sato/images/core-image-sato.bb b/meta/recipes-sato/images/core-image-sato.bb
> index 11c3318..871b227 100644
> --- a/meta/recipes-sato/images/core-image-sato.bb
> +++ b/meta/recipes-sato/images/core-image-sato.bb
> @@ -9,3 +9,17 @@ IMAGE_FEATURES += "apps-console-core ${SATO_IMAGE_FEATURES}"
>  LICENSE = "MIT"
>  
>  inherit core-image
> +
> +LIVE = "${@base_contains('IMAGE_FSTYPES', 'live', 'yes', 'no', d)}"
> +
> +do_check_unionfs() {
> +        if [ "${NOISO}" = "1" ]; then
> +                return
> +        fi
> +
> +        if [ "${LIVE}" = "yes" ] && ! grep -q "CONFIG_UNION_FS=y" ${STAGING_KERNEL_DIR}/.config; then
> +                bbwarn "Building LIVE CD without UNION FS enabled in kernel"
> +        fi
> +}
> +
> +addtask check_unionfs before do_build after do_bootimg

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

