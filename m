Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08F0CE00780
	for <yocto@yoctoproject.org>; Wed,  5 Feb 2014 03:48:10 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Feb 2014 03:48:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,786,1384329600"; d="scan'208";a="476332499"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.123.170])
	by fmsmga002.fm.intel.com with ESMTP; 05 Feb 2014 03:48:08 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kazuya Nishimura <kazuya.nisimura@gmail.com>
Date: Wed, 05 Feb 2014 11:48:07 +0000
Message-ID: <2841839.SyqLMEXVIj@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.11.5 (Linux/3.12.9-301.fc20.x86_64; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1391565679-15351-1-git-send-email-kazuya.nisimura@gmail.com>
References: <1391565679-15351-1-git-send-email-kazuya.nisimura@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] tune-arm1176jzfs-s.inc: Add hard float profile, arm1176jzfshf, in AVAILTUNES
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
X-List-Received-Date: Wed, 05 Feb 2014 11:48:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Kazuya,

On Wednesday 05 February 2014 11:01:19 Kazuya Nishimura wrote:
> * arm1176jzfshf uses -mtune=hard.
> * Add -mfpu=vfp if vfp is included in TUNE_FEATURES
> 
> Signed-off-by: Kazuya Nishimura <kazuya.nisimura@gmail.com>
> Change-Id: If81977cacbba052fa30c4a407ec65e93148d2ee3
> ---
>  conf/machine/include/tune-arm1176jzf-s.inc |    7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/conf/machine/include/tune-arm1176jzf-s.inc
> b/conf/machine/include/tune-arm1176jzf-s.inc index ebad588..a5368a3 100644
> --- a/conf/machine/include/tune-arm1176jzf-s.inc
> +++ b/conf/machine/include/tune-arm1176jzf-s.inc
> @@ -4,8 +4,15 @@ require conf/machine/include/arm/arch-armv6.inc
> 
>  TUNEVALID[arm1176jzfs] = "Enable arm1176jzfs specific processor
> optimizations" TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES",
> "arm1176jzfs", "-mtune=arm1176jzf-s", "", d)}" +TUNE_CCARGS +=
> "${@bb.utils.contains("TUNE_FEATURES", "vfp", "-mfpu=vfp", "", d)}"
> 
>  AVAILTUNES += "arm1176jzfs"
>  TUNE_FEATURES_tune-arm1176jzfs = "${TUNE_FEATURES_tune-armv6} arm1176jzfs"
>  ARMPKGARCH_tune-arm1176jzfs = "arm1176jzfs"
>  PACKAGE_EXTRA_ARCHS_tune-arm1176jzfs = "${PACKAGE_EXTRA_ARCHS_tune-armv6}"
> +
> +AVAILTUNES += "arm1176jzfshf"
> +TUNE_FEATURES_tune-arm1176jzfshf = "${TUNE_FEATURES_tune-arm1176jzfs}
> callconvention-hard" +ARMPKGARCH_tune-arm1176jzfshf = "arm1176jzfs"
> +PACKAGE_EXTRA_ARCHS_tune-arm1176jzfshf =
> "${PACKAGE_EXTRA_ARCHS_tune-armv6hf-vfp} arm1176jzfshf-vfp" +

this patch is for a file that is part of OE-Core, and thus should be sent to 
the openembedded-core mailing list (as noted in the poky README file):

http://lists.openembedded.org/mailman/listinfo/openembedded-core

Could you please re-send it there?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

