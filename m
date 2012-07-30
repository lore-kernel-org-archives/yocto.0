Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF2A5E00346
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 07:42:50 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 Jul 2012 07:42:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="174857406"
Received: from unknown (HELO helios.localnet) ([10.252.121.40])
	by azsmga001.ch.intel.com with ESMTP; 30 Jul 2012 07:42:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Giovanni Foiani <fnognn@unife.it>
Date: Mon, 30 Jul 2012 15:42:48 +0100
Message-ID: <103362898.T6h1MoqcIn@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-27-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <CANsUPaMnm2UdcbmdHkQoRD3sgvG+bkOqezMopS8DcuoK=31B2A@mail.gmail.com>
References: <CANsUPaMnm2UdcbmdHkQoRD3sgvG+bkOqezMopS8DcuoK=31B2A@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Delete unused hob images
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
X-List-Received-Date: Mon, 30 Jul 2012 14:42:51 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 30 July 2012 15:18:37 Giovanni Foiani wrote:
> I read this section in Poky Reference manual:
> 
> *A.2.13. build/tmp/deploy/images/*
> *
> *
> *This directory receives complete filesystem images. If you want to flash
> the resulting image from a build onto a device, look here for the image.*
> *
> *
> *Note, you should not remove any files from this directory by hand in an
> attempt to rebuild an image. If you want to clean out the cache, re-run the
> build using the following BitBake command: *
> *     $ bitbake -c cleanall <target>*
> 
> I built many images using hob and in my *build/tmp/deploy/images/ *folder
> there are a lot of rootfs images (like
> hob-image-imx53qsb-<timestamp>.rootfs.ext3 etc..) and I want to remove the
> unused ones to free some space..
> 
> I tried tp run:
> 
> *bitbake -c cleanall * hob-image-imx53qsb-<timestamp>
> 
> but I got:
> ERROR: Nothing PROVIDES 'hob-image-imx53qsb-<timestamp>'

I'm not sure where this came from originally, but it is not correct. I'll talk 
to Scott R about fixing this part of the manual.

> Can I safely remove these files by hand?

The hob-image-*, yes. In fact any actual image files in deploy/images are OK to 
delete (excluding *zImage*, *uImage*, etc. - those are kernels). All the 
warnings are trying to prevent is people deleting the entire contents of 
deploy/images and then wondering why the kernel, bootloader etc. that get 
produced as part of the process of building an image but are not part of the 
image itself aren't re-created when they build the image again afterwards.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

