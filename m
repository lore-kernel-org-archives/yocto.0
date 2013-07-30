Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4F8CE002EA
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 13:53:00 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Jul 2013 13:52:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,781,1367996400"; d="scan'208";a="378572626"
Received: from unknown (HELO helios.localnet) ([10.252.122.205])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jul 2013 13:52:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Allan Nielsen <anielsen@vitesse.com>
Date: Tue, 30 Jul 2013 21:52:54 +0100
Message-ID: <36192541.OoqkZU033c@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <63BEC3E3AFFFE545A6A066C1E23BBDB9DF867AEE@mbox-txa4.vitesse.com>
References: <63BEC3E3AFFFE545A6A066C1E23BBDB9DF867AEE@mbox-txa4.vitesse.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Build yocto debug images
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
X-List-Received-Date: Tue, 30 Jul 2013 20:53:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Allan,

On Tuesday 30 July 2013 09:54:40 Allan Nielsen wrote:
> I'm new to Yocto and I'm trying to build a debug image.
> 
> My image recipe looks like this:
> 
> IMAGE_INSTALL = "packagegroup-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP} u-boot
> webstax3 vtss-uio-mod" 
> IMAGE_LINGUAS = " "
> 
> LICENSE = "MIT"
> 
> inherit core-image
> 
> DEBUG_BUILD = "1"
> 
> DEBUG_FLAGS = "-ggdb3 -O0 -fno-omit-frame-pointer"
> DEBUG_OPTIMIZATION = "-ggdb3 -O0 -fno-omit-frame-pointer"
> 
> IMAGE_ROOTFS_SIZE = "16384"
> IMAGE_FEATURES = "debug-tweaks tools-debug dbg-pkgs"
> 
> # remove not needed ipkg informations
> ROOTFS_POSTPROCESS_COMMAND += "remove_packaging_data_files ; "
> 
> IMAGE_FSTYPES = "tar.gz ext2.gz.u-boot"
> 
> 
> But when I inspect the build logs of my packets I see that they have not
> been build with "-ggdb3 -O0 -fno-omit-frame-pointer"

You can't set variables in an image recipe that need to be picked up by other 
recipes (in this specific case DEBUG_BUILD, DEBUG_FLAGS and 
DEBUG_OPTIMISATION); you need to set these at a higher level i.e. local.conf 
or a custom distro configuration.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

