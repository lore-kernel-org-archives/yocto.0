Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08913E003F8
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 03:04:57 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 31 Jul 2013 03:04:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,786,1367996400"; d="scan'208";a="339472837"
Received: from unknown (HELO helios.localnet) ([10.252.122.226])
	by azsmga001.ch.intel.com with ESMTP; 31 Jul 2013 03:04:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: lothar@denx.de
Date: Wed, 31 Jul 2013 11:04:54 +0100
Message-ID: <1384790.3BX6RMkKI6@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <20130730180449.64971389c5lrpxdw@webmail.mnet-online.de>
References: <20130730180449.64971389c5lrpxdw@webmail.mnet-online.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: /lib/ld-linux.so.3: No such file or directory
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
X-List-Received-Date: Wed, 31 Jul 2013 10:05:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Lothar,

On Tuesday 30 July 2013 18:04:49 lothar@denx.de wrote:
> I'm writing a recipe firmware_HEAD.bb. The actions shall be checkout from
> git, run "make", copy the result to ${D}/lib/firmware.
> 
> DESCRIPTION = "external sdma-firmware blob"
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM =
> "file://sdma-gen-image.c;beginline=1;endline=19;md5=8db9f935666ba755af54af9d
> 8611b857" PR = "r1"
> SRC_URI = "git://git.pengutronix.de/git/imx/sdma-firmware.git/"
> ## curr HEAD: "4aede1eb121e8199d33fe6697f4c91405086000a"
> SRCREV = "4aede1eb121e8199d33fe6697f4c91405086000a"
> S = "${WORKDIR}/git"
> do_install(){
>      install -d ${D}/lib/firmware
> # TODO
> }
> 
> 
> 
> Actually an easy task, I thought. Checkout works fine, but the implicit make
> fails, having /lib/ld-linux.so.3 already installed under ${sysroot}/lib.

I'm not sure but it definitely sounds like it's looking on the host rather than 
in the proper target sysroot. I'd suggest looking at other recipes that are 
makefile based; you should define your own do_compile and supply the appropriate 
options to make (or more appropriately oe_runmake) within it.

> $ MACHINE="m53evk" bitbake -b
> /work/lothar/acme/meta-acme/recipes-kernel/sdma-firmware/sdma-firmware_HEAD.
> bb -f
> WARNING: Buildfile specified, dependencies will not be handled. If
> this is not what you want, do not use -b / --buildfile.

You should not use -b; if you do, anything you mention in DEPENDS won't be 
satisfied when it comes time. Use "bitbake recipename" instead of "bitbake -b 
path/to/recipename_version.bb".

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

