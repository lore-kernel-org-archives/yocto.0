Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75496E01297
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2011 07:24:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p8UEOh3d013405
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 30 Sep 2011 07:24:43 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 30 Sep 2011 07:24:43 -0700
Message-ID: <4E85D12A.1050405@windriver.com>
Date: Fri, 30 Sep 2011 10:24:42 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110925 Thunderbird/7.0
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1317326894.git.tom.zanussi@intel.com>
	<8cd30c00ed8e94e5e4f5d67344a3478c2c6563d5.1317326894.git.tom.zanussi@intel.com>
In-Reply-To: <8cd30c00ed8e94e5e4f5d67344a3478c2c6563d5.1317326894.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/5][KERNEL] crownbay: cleanup bsp config
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
X-List-Received-Date: Fri, 30 Sep 2011 14:24:44 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-29 04:17 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> Remove unnecessary options or options already defined in base configs.

Ack'd. Looks like a nice streamlining.

Bruce

>
> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg |   34 +++++-----------------
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    5 ++-
>   2 files changed, 11 insertions(+), 28 deletions(-)
>
> diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
> index 5daa65b..76a48eb 100644
> --- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
> +++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
> @@ -27,6 +27,12 @@ CONFIG_SOUND=y
>   CONFIG_SND=y
>   CONFIG_SND_HDA_INTEL=y
>   CONFIG_SATA_AHCI=y
> +CONFIG_AGP=y
> +CONFIG_PM=y
> +CONFIG_ACPI=y
> +CONFIG_BACKLIGHT_LCD_SUPPORT=y
> +CONFIG_BACKLIGHT_CLASS_DEVICE=y
> +CONFIG_INPUT=y
>
>   # Make sure these are on, otherwise the bootup won't be fun
>   CONFIG_EXT3_FS=y
> @@ -37,33 +43,9 @@ CONFIG_SHMEM=y
>   CONFIG_TMPFS=y
>   CONFIG_PACKET=y
>
> -# These are needed for the Poulsbo kernel modules
> -CONFIG_I2C=y
> -CONFIG_AGP=y
> -CONFIG_VFAT_FS=y
> -CONFIG_PM=y
> -CONFIG_ACPI=y
> -CONFIG_FB=y
> -CONFIG_BACKLIGHT_LCD_SUPPORT=y
> -CONFIG_BACKLIGHT_CLASS_DEVICE=y
> -CONFIG_INPUT=y
> -CONFIG_VIDEO_V4L2=y
> -CONFIG_VIDEO_IVTV=y
> -CONFIG_MEDIA_SUPPORT=y
> -CONFIG_VIDEO_CAPTURE_DRIVERS=y
> -CONFIG_VIDEO_DEV=y
> -CONFIG_VIDEO_V4L2_COMMON=y
> -CONFIG_I2C_ALGOBIT=y
> -CONFIG_FB_CFB_COPYAREA=y
> -CONFIG_FB_CFB_IMAGEBLIT=y
> -CONFIG_FB_CFB_FILLRECT=y
> -CONFIG_VIDEO_FB_IVTV=y
> -
>   # Needed for booting (and using) USB memory sticks
> -CONFIG_USB_STORAGE=y
> -CONFIG_BLK_DEV_RAM=y
>   CONFIG_BLK_DEV_LOOP=y
> -CONFIG_BLK_DEV_INITRD=y
> -CONFIG_RD_GZIP=y
>   CONFIG_NLS_CODEPAGE_437=y
>   CONFIG_NLS_ISO8859_1=y
> +
> +CONFIG_RD_GZIP=y
> diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
> index 63b7ad6..3114cbc 100644
> --- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
> +++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
> @@ -8,10 +8,11 @@ include features/intel-e1xxxx/intel-e1xxxx.scc
>   include features/drm-emgd/drm-emgd.scc
>   include features/dmaengine/dmaengine.scc
>   include features/serial/8250.scc
> +include features/hpet/hpet.scc
> +include features/framebuffer/vesafb.scc
> +include cfg/usb-mass-storage.scc
>
>   include features/logbuf/size-normal.scc
>
>   include features/latencytop/latencytop.scc
>   include features/profiling/profiling.scc
> -
> -include features/hpet/hpet.scc


