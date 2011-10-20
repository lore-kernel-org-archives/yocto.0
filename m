Return-Path: <saul.wold@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CC30E01350
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2011 09:18:29 -0700 (PDT)
Received: from mail-ww0-f42.google.com ([74.125.82.42])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 20 Oct 2011 09:17:38 -0700
Received: by wwn22 with SMTP id 22so8044425wwn.1
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2011 09:17:37 -0700 (PDT)
Received: by 10.216.185.4 with SMTP id t4mr529284wem.83.1319127457233;
	Thu, 20 Oct 2011 09:17:37 -0700 (PDT)
Received: from [10.6.18.230] (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117]) by mx.google.com with ESMTPS id
	ei16sm16423553wbb.21.2011.10.20.09.17.34
	(version=SSLv3 cipher=OTHER); Thu, 20 Oct 2011 09:17:36 -0700 (PDT)
Message-ID: <4EA0499D.8020008@intel.com>
Date: Thu, 20 Oct 2011 09:17:33 -0700
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Lauri Hintsala <lauri.hintsala@bluegiga.com>
References: <1318935324-17713-1-git-send-email-lauri.hintsala@bluegiga.com>
In-Reply-To: <1318935324-17713-1-git-send-email-lauri.hintsala@bluegiga.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] poky: fix broken ubifs link in deploy folder
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
X-List-Received-Date: Thu, 20 Oct 2011 16:18:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/18/2011 03:55 AM, Lauri Hintsala wrote:
> Fix broken rootfs image link when ubifs is used.
>
> Function runimagecmd is using image name "${IMAGE_NAME}.rootfs.${type}".
> Let's use the same name in IMAGE_CMD_ubifs.
>
> Signed-off-by: Lauri Hintsala<lauri.hintsala@bluegiga.com>
> ---
>   meta/classes/image_types.bbclass |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta/classes/image_types.bbclass b/meta/classes/image_types.bbclass
> index c24b326..45abdeb 100644
> --- a/meta/classes/image_types.bbclass
> +++ b/meta/classes/image_types.bbclass
> @@ -111,7 +111,7 @@ IMAGE_CMD_ubi () {
>   	echo vol_flags=autoresize>>  ubinize.cfg
>   	mkfs.ubifs -r ${IMAGE_ROOTFS} -o ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.ubifs ${MKUBIFS_ARGS}&&  ubinize -o ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.ubi ${UBINIZE_ARGS} ubinize.cfg
>   }
> -IMAGE_CMD_ubifs = "mkfs.ubifs -r ${IMAGE_ROOTFS} -o ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.ubifs.img ${MKUBIFS_ARGS}"
> +IMAGE_CMD_ubifs = "mkfs.ubifs -r ${IMAGE_ROOTFS} -o ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.ubifs ${MKUBIFS_ARGS}"
>
>   EXTRA_IMAGECMD = ""
>   EXTRA_IMAGECMD_jffs2 ?= "--pad --little-endian --eraseblock=0x40000"

Lauri,

This has been merged to OE-Core.

In the future please send oe-core related changes to 
openembedded-core@lists.openembedded.org.  Any changes in meta, are 
considered part of oe-core.

Thanks for the fix

	Sau!

