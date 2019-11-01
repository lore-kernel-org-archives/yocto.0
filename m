Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78A91E00DD3; Fri,  1 Nov 2019 11:03:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF569E00D90
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 11:03:34 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Nov 2019 11:03:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,256,1569308400"; d="scan'208";a="194747966"
Received: from koernerm-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.249.41.216])
	by orsmga008.jf.intel.com with ESMTP; 01 Nov 2019 11:03:32 -0700
To: Aaron Solochek <aaron.solochek@sri.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <2d1e4508-35e4-3754-3592-6c555e01a177@sri.com>
	<b796ff6c-a14c-ece3-40f5-713241386cda@intel.com>
	<CY4PR09MB1207D3F1962AADEB9D57E25C9A620@CY4PR09MB1207.namprd09.prod.outlook.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <35d49b26-1c8f-1cf6-5be5-9b62ffd861ee@intel.com>
Date: Fri, 1 Nov 2019 18:03:31 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CY4PR09MB1207D3F1962AADEB9D57E25C9A620@CY4PR09MB1207.namprd09.prod.outlook.com>
Subject: Re: visual studio code packages or building instructions?
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
X-List-Received-Date: Fri, 01 Nov 2019 18:03:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 01/11/2019 17:51, Aaron Solochek wrote:
> Well I grabbed the .deb that one of those links mentioned and converted it to an rpm, but of course there are a ton of unmet dependencies, so I might have to build it anyway.
> 
> I found these instructions for building it, which are pinned to an older version (which is probably fine)
> 
> https://github.com/futurejones/code-oss-aarch64
> 
> I have gotten most of the dependencies built with bitbake, except for the  x11 stuff:
> 
> ERROR: Nothing RPROVIDES 'packagegroup-core-x11' (but /home/aarons/sri/bullitt/nxp/imx-yocto-bsp/sources/meta-fsl-bsp-release/imx/meta-sdk/dynamic-layers/qt5-layer/recipes-fsl/images/fsl-image-qt5-validation-imx.bb RDEPENDS on or otherwise requires it)
> packagegroup-core-x11 was skipped: missing required distro feature 'x11' (not in DISTRO_FEATURES)
> NOTE: Runtime target 'packagegroup-core-x11' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['packagegroup-core-x11']
> ERROR: Required build target 'fsl-image-qt5-validation-imx' has no buildable providers.
> Missing or unbuildable dependency chain was: ['fsl-image-qt5-validation-imx', 'packagegroup-core-x11']
> 
> But this is my local.conf:
> 
> MACHINE ??= 'imx8mqevk'
> DISTRO ?= 'fsl-imx-wayland'
> PACKAGE_CLASSES ?= "package_rpm"
> EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
> USER_CLASSES ?= "buildstats image-mklibs image-prelink"
> PATCHRESOLVE = "noop"
> BB_DISKMON_DIRS ??= "\
>      STOPTASKS,${TMPDIR},1G,100K \
>      STOPTASKS,${DL_DIR},1G,100K \
>      STOPTASKS,${SSTATE_DIR},1G,100K \
>      STOPTASKS,/tmp,100M,100K \
>      ABORT,${TMPDIR},100M,1K \
>      ABORT,${DL_DIR},100M,1K \
>      ABORT,${SSTATE_DIR},100M,1K \
>      ABORT,/tmp,10M,1K"
> PACKAGECONFIG_append_pn-qemu-native = " sdl"
> PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
> CONF_VERSION = "1"
> #IMAGE_FEATURES_append = " package-management tools-sdk  x11-base x11"
> IMAGE_FEATURES += "package-management"
> IMAGE_FEATURES += "tools-sdk"
> IMAGE_FEATURES += "x11-base"
> IMAGE_FEATURES += "x11"
> 
> 
> As you can see, I tried adding x11 both using IMAGE_FEATURES += as well as IMAGE_FEATURES_append (where I would then comment out the += lines)
> Why is x11 never getting added to the DISTRO_FEATURES? I also tried putting x11 in DISTRO_FEATURES and DISTRO_FEATURES_append.
> 
> What is the correct thing here?

Adding x11 to IMAGE_FEATURES doesn't achieve anything, as x11 isn't an 
IMAGE_FEATURE.  It's a DISTRO_FEATURE.

DISTRO ?= 'fsl-imx-wayland'

https://github.com/Freescale/meta-freescale-distro/blob/master/conf/distro/fsl-wayland.conf 
says that this explicitly does DISTRO_FEATURES_remove = "x11" so you 
can't add it back.

I suggest you use a DISTRO that supports X11.

Ross

