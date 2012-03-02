Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B989E003E1
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 13:15:09 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q22LF893027414
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 2 Mar 2012 13:15:08 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 2 Mar 2012 13:15:08 -0800
Message-ID: <4F513847.6080909@windriver.com>
Date: Fri, 2 Mar 2012 16:14:47 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Darren Hart <darren@dvhart.com>
References: <cover.1330644090.git.darren@dvhart.com>
	<607c67a37d0c27ba5c2c412696c023a9f3182514.1330644090.git.darren@dvhart.com>
In-Reply-To: <607c67a37d0c27ba5c2c412696c023a9f3182514.1330644090.git.darren@dvhart.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/6] Remove boot-live cfg duplication from BSPs
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
X-List-Received-Date: Fri, 02 Mar 2012 21:15:09 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-01 06:59 PM, Darren Hart wrote:
> From: Darren Hart<dvhart@linux.intel.com>
>
> Several BSPs duplicated the boot-live fragment in their BSP
> specific config. Remove the duplication and add CONFIG_RD_GZIP
> and CONFIG_BLK_DEV_SR to the boot-live fragment.

Looks fine to me as well. That's a better place for the common
options.

Bruce

>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> Acked-by: Tom Zanussi<tzanussi@intel.com>
> ---
>   .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   10 ----------
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg    |   10 ----------
>   meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg      |   10 ----------
>   meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg  |   10 ----------
>   meta/cfg/kernel-cache/bsp/fri2/fri2.cfg            |   10 ----------
>   meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg      |    5 -----
>   meta/cfg/kernel-cache/cfg/boot-live.cfg            |    3 +++
>   7 files changed, 3 insertions(+), 55 deletions(-)
>
> diff --git a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
> index 1cc14b1..32cd9e5 100755
> --- a/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
> +++ b/meta/cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg
> @@ -46,13 +46,3 @@ CONFIG_MODULES=y
>   CONFIG_SHMEM=y
>   CONFIG_TMPFS=y
>   CONFIG_PACKET=y
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
>   CONFIG_SHMEM=y
>   CONFIG_TMPFS=y
>   CONFIG_PACKET=y
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
>   CONFIG_SHMEM=y
>   CONFIG_TMPFS=y
>   CONFIG_PACKET=y
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
>   CONFIG_SHMEM=y
>   CONFIG_TMPFS=y
>   CONFIG_PACKET=y
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
>   CONFIG_SHMEM=y
>   CONFIG_TMPFS=y
>   CONFIG_PACKET=y
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
>   CONFIG_SHMEM=y
>   CONFIG_TMPFS=y
>   CONFIG_PACKET=y
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
>   CONFIG_NLS_CODEPAGE_437=y
>   CONFIG_NLS_ISO8859_1=y
>   CONFIG_VFAT_FS=y
> +CONFIG_RD_GZIP=y
> +# Needed for booting (and using) CD images
>   CONFIG_BLK_DEV_IDECD=y
>   CONFIG_ISO9660_FS=y
> +CONFIG_BLK_DEV_SR=y


