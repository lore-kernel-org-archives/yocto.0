Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D1A0E0059A
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 11:55:32 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 01 Feb 2012 11:55:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="62193864"
Received: from unknown (HELO [10.255.14.106]) ([10.255.14.106])
	by AZSMGA002.ch.intel.com with ESMTP; 01 Feb 2012 11:55:30 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <8ea769ff408f8228617b2f9b7a332f04eea72b67.1328121321.git.dvhart@linux.intel.com>
References: <cover.1328121321.git.dvhart@linux.intel.com>
	<8ea769ff408f8228617b2f9b7a332f04eea72b67.1328121321.git.dvhart@linux.intel.com>
Date: Wed, 01 Feb 2012 13:55:23 -0600
Message-ID: <1328126123.2304.127.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/2] Remove boot-live cfg duplication from BSPs
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
X-List-Received-Date: Wed, 01 Feb 2012 19:55:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-02-01 at 10:45 -0800, Darren Hart wrote:
> Several BSPs duplicated the boot-live fragment in their BSP
> specific config. Remove the duplication and add CONFIG_RD_GZIP
> and CONFIG_BLK_DEV_SR to the boot-live fragment.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> CC: Tom Zanussi <tom.zanussi@intel.com>

Nice cleanup, thanks!

Acked-by: Tom Zanussi <tom.zanussi@intel.com>


> ---
>  .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   10 ----------
>  meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg    |   10 ----------
>  meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg      |   10 ----------
>  meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg  |   10 ----------
>  meta/cfg/kernel-cache/bsp/fri2/fri2.cfg            |   10 ----------
>  meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg      |    5 -----
>  meta/cfg/kernel-cache/cfg/boot-live.cfg            |    3 +++
>  7 files changed, 3 insertions(+), 55 deletions(-)
> 
> diff --git a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
> index 1cc14b1..32cd9e5 100755
> --- a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
> +++ b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
> @@ -46,13 +46,3 @@ CONFIG_MODULES=y
>  CONFIG_SHMEM=y
>  CONFIG_TMPFS=y
>  CONFIG_PACKET=y
> -
> -# Needed for booting (and using) USB memory sticks
> -CONFIG_BLK_DEV_LOOP=y
> -CONFIG_NLS_CODEPAGE_437=y
> -CONFIG_NLS_ISO8859_1=y
> -
> -CONFIG_RD_GZIP=y
> -
> -# Needed for booting (and using) CD images
> -CONFIG_BLK_DEV_SR=y
> diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
> index e93c0b8..b101419 100644
> --- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
> +++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
> @@ -42,13 +42,3 @@ CONFIG_MODULES=y
>  CONFIG_SHMEM=y
>  CONFIG_TMPFS=y
>  CONFIG_PACKET=y
> -
> -# Needed for booting (and using) USB memory sticks
> -CONFIG_BLK_DEV_LOOP=y
> -CONFIG_NLS_CODEPAGE_437=y
> -CONFIG_NLS_ISO8859_1=y
> -
> -CONFIG_RD_GZIP=y
> -
> -# Needed for booting (and using) CD images
> -CONFIG_BLK_DEV_SR=y
> diff --git a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
> index b9704c5..b1e72bd 100644
> --- a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
> +++ b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg
> @@ -40,13 +40,3 @@ CONFIG_MODULES=y
>  CONFIG_SHMEM=y
>  CONFIG_TMPFS=y
>  CONFIG_PACKET=y
> -
> -# Needed for booting (and using) USB memory sticks
> -CONFIG_BLK_DEV_LOOP=y
> -CONFIG_NLS_CODEPAGE_437=y
> -CONFIG_NLS_ISO8859_1=y
> -
> -CONFIG_RD_GZIP=y
> -
> -# Needed for booting (and using) CD images
> -CONFIG_BLK_DEV_SR=y
> diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
> index e93c0b8..b101419 100644
> --- a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
> +++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
> @@ -42,13 +42,3 @@ CONFIG_MODULES=y
>  CONFIG_SHMEM=y
>  CONFIG_TMPFS=y
>  CONFIG_PACKET=y
> -
> -# Needed for booting (and using) USB memory sticks
> -CONFIG_BLK_DEV_LOOP=y
> -CONFIG_NLS_CODEPAGE_437=y
> -CONFIG_NLS_ISO8859_1=y
> -
> -CONFIG_RD_GZIP=y
> -
> -# Needed for booting (and using) CD images
> -CONFIG_BLK_DEV_SR=y
> diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
> index e93c0b8..b101419 100644
> --- a/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
> +++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
> @@ -42,13 +42,3 @@ CONFIG_MODULES=y
>  CONFIG_SHMEM=y
>  CONFIG_TMPFS=y
>  CONFIG_PACKET=y
> -
> -# Needed for booting (and using) USB memory sticks
> -CONFIG_BLK_DEV_LOOP=y
> -CONFIG_NLS_CODEPAGE_437=y
> -CONFIG_NLS_ISO8859_1=y
> -
> -CONFIG_RD_GZIP=y
> -
> -# Needed for booting (and using) CD images
> -CONFIG_BLK_DEV_SR=y
> diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
> index 3d45fe8..b101419 100644
> --- a/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
> +++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
> @@ -42,8 +42,3 @@ CONFIG_MODULES=y
>  CONFIG_SHMEM=y
>  CONFIG_TMPFS=y
>  CONFIG_PACKET=y
> -
> -CONFIG_RD_GZIP=y
> -
> -# Needed for booting (and using) CD images
> -CONFIG_BLK_DEV_SR=y
> diff --git a/meta/cfg/kernel-cache/cfg/boot-live.cfg b/meta/cfg/kernel-cache/cfg/boot-live.cfg
> index 8ff7674..a102052 100644
> --- a/meta/cfg/kernel-cache/cfg/boot-live.cfg
> +++ b/meta/cfg/kernel-cache/cfg/boot-live.cfg
> @@ -2,5 +2,8 @@ CONFIG_BLK_DEV_LOOP=y
>  CONFIG_NLS_CODEPAGE_437=y
>  CONFIG_NLS_ISO8859_1=y
>  CONFIG_VFAT_FS=y
> +CONFIG_RD_GZIP=y
> +# Needed for booting (and using) CD images
>  CONFIG_BLK_DEV_IDECD=y
>  CONFIG_ISO9660_FS=y
> +CONFIG_BLK_DEV_SR=y



