Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C62EEE01570
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 01:14:16 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Aug 2013 01:13:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,974,1367996400"; d="scan'208";a="393127040"
Received: from unknown (HELO helios.localnet) ([10.252.123.7])
	by fmsmga002.fm.intel.com with ESMTP; 28 Aug 2013 01:13:54 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Amit Kumar <Amit.Kumar@lntinfotech.com>
Date: Wed, 28 Aug 2013 09:13:52 +0100
Message-ID: <3808315.9VeeB8TmeS@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C5E1101C5@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5E1101C5@BLRINMSMBX01.bglrodc.lntinfotech.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: OE recipes- linphone build error in poky-9.0.0 build environment
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
X-List-Received-Date: Wed, 28 Aug 2013 08:14:17 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Amit,

On Wednesday 28 August 2013 09:05:28 Amit Kumar wrote:
>      I wants to build the recipes name linphone(SIP-based IP phone) with
> poky-9.0.0 build environment. I found he linphone recipes under the
> "angstrom-openembedded". In my poky build environment I have created the
> new layer, name linphone, and copy the .bb files. But when i am building it
> through an dependency error.
> 
> Do anyone have done it before, please guide me how to fix this error.
> 
> ////////////////////////////////////////////////////////////////////////////
> //////////////////// yocto@yocto-HP:~/YOCTO/poky-dylan-9.0.0/build$ bitbake
> linphone-image Loading cache: 100%
> |##########################################################################
> #######################| ETA:  00:00:00 Loaded 1126 entries from dependency
> cache.
> 
> Build Configuration:
> BB_VERSION        = "1.18.0"
> BUILD_SYS         = "i686-linux"
> NATIVELSBSTRING   = "Ubuntu-12.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "qemuarm"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.4"
> TUNE_FEATURES     = "armv5 thumb dsp"
> TARGET_FPU        = "soft"
> meta
> meta-yocto
> meta-yocto-bsp
> meta-linphone     = "<unknown>:<unknown>"
> 
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'libosip2' (but
> /home/yocto/YOCTO/poky-dylan-9.0.0/meta-linphone/recipes-linphone/linphone/
> linphone_1.6.0.bb DEPENDS on or otherwise requires it) NOTE: Runtime target
> 'linphone' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['linphone', 'libosip2']
> ERROR: Required build target 'linphone-image' has no buildable providers.
> Missing or unbuildable dependency chain was: ['linphone-image', 'linphone',
> 'libosip2']

Looks like you've copied the linphone recipe and not its dependencies.

As far as I know this is an OE-Classic recipe so it won't be a straight copy - 
it will need to be migrated. See here for information on what you will need to 
do:

http://www.openembedded.org/wiki/Migrating_metadata_to_OE-Core

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

