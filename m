Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9BF6E0044D
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 11:42:01 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Apr 2012 11:42:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="152039410"
Received: from unknown (HELO envy.home) ([10.255.12.43])
	by fmsmga002.fm.intel.com with ESMTP; 10 Apr 2012 11:42:01 -0700
Message-ID: <4F847ED4.3080207@linux.intel.com>
Date: Tue, 10 Apr 2012 11:41:24 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Yang Shi <yang.shi@windriver.com>
References: <1334009754-3012-1-git-send-email-yang.shi@windriver.com>
	<1334009754-3012-2-git-send-email-yang.shi@windriver.com>
In-Reply-To: <1334009754-3012-2-git-send-email-yang.shi@windriver.com>
X-Enigmail-Version: 1.4
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/2] initrdscripts: fix init-live.sh and use unionfs
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
X-List-Received-Date: Tue, 10 Apr 2012 18:42:02 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/09/2012 03:15 PM, Yang Shi wrote:
> [YOCTO #1487]
> 
> When booting up with liveCD image, init scripts can't work well on read-only filesystem. Unionfs,
> which is supported in Yocto kernel, allows a filesystem to appear as writeable, but without
> actually allowing writes to change the filesystem.
> 
> Use unionfs to mount rootfs and make root file system can be writen when using liveCD to boot up.
> Set UNION_FS variable depending on kernel config, so that it can work with kernel which doesn't
> have unionfs feature.
> 
> Signed-off-by: Yang Shi <yang.shi@windriver.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  meta/recipes-core/initrdscripts/files/init-live.sh |   23 ++++++++++++++++---
>  .../initrdscripts/initramfs-live-boot_1.0.bb       |    9 +++++++-
>  2 files changed, 27 insertions(+), 5 deletions(-)
> 
> diff --git a/meta/recipes-core/initrdscripts/files/init-live.sh b/meta/recipes-core/initrdscripts/files/init-live.sh
> index eb5ab5b..737dae4 100644
> --- a/meta/recipes-core/initrdscripts/files/init-live.sh
> +++ b/meta/recipes-core/initrdscripts/files/init-live.sh
> @@ -7,6 +7,7 @@ ROOT_IMAGE="rootfs.img"
>  MOUNT="/bin/mount"
>  UMOUNT="/bin/umount"
>  ISOLINUX=""
> +UNIONFS="no"
>  
>  early_setup() {
>      mkdir /proc
> @@ -89,17 +90,31 @@ case $label in
>  	mkdir $ROOT_MOUNT
>  	mknod /dev/loop0 b 7 0 2>/dev/null
>  
> -	if ! $MOUNT -o rw,loop,noatime,nodiratime /media/$i/$ISOLINUX/$ROOT_IMAGE $ROOT_MOUNT ; then
> -	    fatal "Couldnt mount rootfs image"
> +	
> +	if [ "$UNIONFS" = "yes" ]; then
> +	    mkdir /rootfs-tmp
> +
> +	    if ! $MOUNT -o rw,loop,noatime,nodiratime /media/$i/$ISOLINUX/$ROOT_IMAGE /rootfs-tmp ; then
> +		fatal "Could not mount rootfs image"
> +	    else
> +		mkdir /cow
> +		mount -t tmpfs -o rw,noatime,mode=755 tmpfs /cow
> +		mount -t unionfs -o dirs=/cow:/rootfs-tmp=ro unionfs $ROOT_MOUNT
> +		boot_live_root
> +	    fi
>  	else
> -	    boot_live_root
> +	    if ! $MOUNT -o rw,loop,noatime,nodiratime /media/$i/$ISOLINUX/$ROOT_IMAGE $ROOT_MOUNT ; then
> +		fatal "Could not mount rootfs image"
> +	    else
> +		boot_live_root
> +	    fi
>  	fi
>  	;;
>      install)
>  	if [ -f /media/$i/$ISOLINUX/$ROOT_IMAGE ] ; then
>  	    ./install.sh $i/$ISOLINUX $ROOT_IMAGE $video_mode $vga_mode
>  	else
> -	    fatal "Couldnt find install script"
> +	    fatal "Could not find install script"
>  	fi
>  
>  	# If we're getting here, we failed...
> diff --git a/meta/recipes-core/initrdscripts/initramfs-live-boot_1.0.bb b/meta/recipes-core/initrdscripts/initramfs-live-boot_1.0.bb
> index e85a0e1..f7f0c9d 100644
> --- a/meta/recipes-core/initrdscripts/initramfs-live-boot_1.0.bb
> +++ b/meta/recipes-core/initrdscripts/initramfs-live-boot_1.0.bb
> @@ -2,10 +2,17 @@ DESCRIPTION = "A live image init script"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>  RDEPENDS = "udev"
> +DEPENDS = "virtual/kernel"
>  SRC_URI = "file://init-live.sh"
>  
> -PR = "r7"
> +PR = "r8"
>  
> +do_compile() {
> +	if grep -q "CONFIG_UNION_FS=y" ${STAGING_KERNEL_DIR}/.config; then
> +		sed -i 's/UNIONFS="no"/UNIONFS="yes"/g' ${WORKDIR}/init-live.sh
> +	fi
> +}
> + 
>  do_install() {
>          install -m 0755 ${WORKDIR}/init-live.sh ${D}/init
>  }

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

