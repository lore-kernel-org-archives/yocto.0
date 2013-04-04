Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54C6BE0148E
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 03:37:18 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Apr 2013 03:37:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,408,1363158000"; d="scan'208";a="313506906"
Received: from unknown (HELO helios.localnet) ([10.255.13.167])
	by fmsmga001.fm.intel.com with ESMTP; 04 Apr 2013 03:37:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 04 Apr 2013 11:37:16 +0100
Message-ID: <10424141.AW7YeVNGIV@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <1363208280-32663-1-git-send-email-thaytan@noraisin.net>
References: <1363208280-32663-1-git-send-email-thaytan@noraisin.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] sdcard-image: Use the size of the generated rootfs
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
X-List-Received-Date: Thu, 04 Apr 2013 10:37:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 14 March 2013 07:57:59 Jan Schmidt wrote:
> When constructing the SD card image, the code was using
> the inherited ROOTFS_SIZE, which is the size of the
> rootfs contents. When building (for example) a compressed
> rootfs, this allocates a partition much larger than necessary.
> 
> Instead, take the size of the generated rootfs file that is
> about to be written into the generated image, and round it
> up to the IMAGE_ROOTFS_ALIGNMENT size.
> 
> Fix some comments - the alignment is 4MiB, not 4KiB.
> 
> Signed-off-by: Jan Schmidt <thaytan@noraisin.net>
> ---
>  classes/sdcard_image-rpi.bbclass |   30 ++++++++++++++++++------------
>  1 file changed, 18 insertions(+), 12 deletions(-)
> 
> diff --git a/classes/sdcard_image-rpi.bbclass
> b/classes/sdcard_image-rpi.bbclass index 421f561..3f0a16e 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -13,14 +13,14 @@ inherit image_types
>  #                                                     Default Free space =
> 1.3x #                                                     Use
> IMAGE_OVERHEAD_FACTOR to add more space #                                  
>                   <---------> -#            4KiB              20MiB        
>   SDIMG_ROOTFS
> +#            4MiB              20MiB           SDIMG_ROOTFS
>  # <-----------------------> <----------> <---------------------->
> -#  ------------------------ ------------ ------------------------
> ------------------------------- -# | IMAGE_ROOTFS_ALIGNMENT | BOOT_SPACE |
> ROOTFS_SIZE            |     IMAGE_ROOTFS_ALIGNMENT    | -# 
> ------------------------ ------------ ------------------------
> ------------------------------- -# ^                        ^            ^ 
>                       ^                               ^ -# |               
>         |            |                        |                            
>   | -# 0                      4096     4KiB + 20MiB       4KiB + 20Mib +
> SDIMG_ROOTFS   4KiB + 20MiB + SDIMG_ROOTFS + 4KiB +# 
> ------------------------ ------------ ------------------------ +# |
> IMAGE_ROOTFS_ALIGNMENT | BOOT_SPACE | ROOTFS_SIZE            | +# 
> ------------------------ ------------ ------------------------ +# ^        
>                ^            ^                        ^ +# |                
>        |            |                        | +# 0                     
> 4MiB     4MiB + 20MiB       4MiB + 20Mib + SDIMG_ROOTFS
> 
> 
>  # Set kernel and boot loader
> @@ -29,7 +29,7 @@ IMAGE_BOOTLOADER ?= "bcm2835-bootfiles"
>  # Boot partition volume id
>  BOOTDD_VOLUME_ID ?= "${MACHINE}"
> 
> -# Boot partition size [in KiB]
> +# Boot partition size [in KiB] (will be rounded up to
> IMAGE_ROOTFS_ALIGNMENT) BOOT_SPACE ?= "20480"
> 
>  # Set alignment to 4MB [in KiB]
> @@ -60,18 +60,24 @@ IMAGE_CMD_rpi-sdimg () {
>  	# Align partitions
>  	BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE} + ${IMAGE_ROOTFS_ALIGNMENT} - 1)
>  	BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE_ALIGNED} - ${BOOT_SPACE_ALIGNED} %
> ${IMAGE_ROOTFS_ALIGNMENT}) -	SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} +
> ${BOOT_SPACE_ALIGNED} + $ROOTFS_SIZE + ${IMAGE_ROOTFS_ALIGNMENT})
> +	ROOTFS_SIZE=`du -bks ${SDIMG_ROOTFS} | awk '{print $1}'`
> +        # Round up RootFS size to the alignment size as well
> +	ROOTFS_SIZE_ALIGNED=$(expr ${ROOTFS_SIZE} + ${IMAGE_ROOTFS_ALIGNMENT} - 1)
> +	ROOTFS_SIZE_ALIGNED=$(expr ${ROOTFS_SIZE_ALIGNED} -
> ${ROOTFS_SIZE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT}) +	SDIMG_SIZE=$(expr
> ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE_ALIGNED})
> +
> +	echo "Creating filesystem with Boot partition ${BOOT_SPACE_ALIGNED} KiB
> and RootFS ${ROOTFS_SIZE_ALIGNED} KiB"
> 
>  	# Initialize sdcard image file
> -	dd if=/dev/zero of=${SDIMG} bs=1 count=0 seek=$(expr 1024 \*
> ${SDIMG_SIZE}) +	dd if=/dev/zero of=${SDIMG} bs=1024 count=0
> seek=${SDIMG_SIZE}
> 
>  	# Create partition table
>  	parted -s ${SDIMG} mklabel msdos
>  	# Create boot partition and mark it as bootable
>  	parted -s ${SDIMG} unit KiB mkpart primary fat32 
${IMAGE_ROOTFS_ALIGNMENT}
> $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) parted -s
> ${SDIMG} set 1 boot on
> -	# Create rootfs partition
> -	parted -s ${SDIMG} unit KiB mkpart primary ext2 $(expr
> ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) $(expr
> ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT} \+ ${ROOTFS_SIZE}) +	#
> Create rootfs partition to the end of disk
> +	parted -s ${SDIMG} -- unit KiB mkpart primary ext2 $(expr
> ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) -1s parted ${SDIMG}
> print
> 
>  	# Create a vfat image with boot files

Looks like this is a patch for meta-raspberrypi although it isn't marked as 
such. Andrei, have you seen this?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

