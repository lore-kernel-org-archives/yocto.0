Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E907E009B4; Tue,  5 May 2015 08:22:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20961E00992
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 08:22:03 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 05 May 2015 08:21:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,373,1427785200"; d="scan'208";a="705580777"
Received: from jashore-mobl4.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.3.219])
	by fmsmga001.fm.intel.com with ESMTP; 05 May 2015 08:21:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 05 May 2015 16:21:30 +0100
Message-ID: <158984224.cF8pItULj7@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.6 (Linux/3.19.5-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <5548D75F.3040102@mlbassoc.com>
References: <5548D75F.3040102@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Confusing error
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
X-List-Received-Date: Tue, 05 May 2015 15:22:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Tuesday 05 May 2015 08:44:47 Gary Thomas wrote:
> I'm getting a very confusing error from bitbake.  I'm using a snapshot
> from Poky/Yocto (equivalent to 1.8 release) with my own $DISTRO
> 
>    $ bitbake nand-installer-image
>    NOTE: Started PRServer with DBfile:
> /home/gary/tmp/p0381_2015-05-05/p0381_build/cache/prserv.sqlite3, IP:
> 127.0.0.1, PORT: 41585, PID: 460 Loading cache: 100%
> |##########################################################################
> #########| ETA:  00:00:00 Loaded 1708 entries from dependency cache.
>    NOTE: Resolving any missing task queue dependencies
>    ERROR: Nothing RPROVIDES 'virtual/bootloader' (but
> /home/gary/tmp/p0381_2015-05-05/opt/amltd/poky/meta-amltd/packages/packageg
> roups /packagegroup-amltd.bb RDEPENDS on or otherwise requires it)
>    NOTE: Runtime target 'virtual/bootloader' is unbuildable, removing...
>    Missing or unbuildable dependency chain was: ['virtual/bootloader']
>    NOTE: Runtime target 'packagegroup-amltd-boot' is unbuildable,
> removing... Missing or unbuildable dependency chain was:
> ['packagegroup-amltd-boot', 'virtual/bootloader'] ERROR: Required build
> target 'nand-installer-image' has no buildable providers. Missing or
> unbuildable dependency chain was: ['nand-installer-image',
> 'packagegroup-amltd-boot', 'virtual/bootloader']
> 
> But, there is such a provider and I can build it (from the same build tree):
> $ bitbake virtual/bootloader
>    NOTE: Started PRServer with DBfile:
> /home/gary/tmp/p0381_2015-05-05/p0381_build/cache/prserv.sqlite3, IP:
> 127.0.0.1, PORT: 43428, PID: 515 Loading cache: 100%
> |##########################################################################
> #########| ETA:  00:00:00 Loaded 1708 entries from dependency cache.
>    NOTE: Resolving any missing task queue dependencies
> 
>    Build Configuration:
>    BB_VERSION        = "1.27.0"
>    BUILD_SYS         = "i686-linux"
>    NATIVELSBSTRING   = "Fedora-17"
>    TARGET_SYS        = "arm-amltd-linux-gnueabi"
>    MACHINE           = "teton-p0381"
>    DISTRO            = "amltd"
>    DISTRO_VERSION    = "1.8+snapshot-2015-05-05"
>    TUNE_FEATURES     = "arm armv7a vfp neon callconvention-hard cortexa7"
>    TARGET_FPU        = "vfp-neon"
>    meta
>    meta-oe
>    meta-amltd
>    meta-teton-ls1-p0381
>    meta-fsl-arm
>    meta-fsl-arm-extra
>    meta-browser      = "<unknown>:<unknown>"
> 
>    NOTE: Preparing RunQueue
>    NOTE: Executing SetScene Tasks
>    NOTE: Executing RunQueue Tasks
>          ...
> 
> After much research, I found that this is happening because I have
>    MACHINE_EXTRA_RRECOMMENDS="virtual/bootloader
> linux-firmware-iwlwifi-5xxx"
> 
> If I remove the 'virtual/bootloader' from MACHINE_EXTRA_RRECOMMENDS,
> the confusion (and error) go away.  Any ideas what's happening and why
> I might be getting this confusing error?

The confusion here is between runtime targets (package names, i.e. what you 
should specify in MACHINE_EXTRA_RRECOMMENDS) and build-time targets e.g. 
virtual/bootloader. virtual/bootloader is not a runtime target (hence "Nothing 
RPROVIDES ..." and thus doesn't belong in MACHINE_EXTRA_RRECOMMENDS. I suspect 
what you want instead is:

EXTRA_IMAGEDEPENDS += "virtual/bootloader"

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

