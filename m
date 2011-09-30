Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 994BDE004E4
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2011 07:23:41 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p8UENdM5013303
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 30 Sep 2011 07:23:39 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 30 Sep 2011 07:23:38 -0700
Message-ID: <4E85D0E9.5070709@windriver.com>
Date: Fri, 30 Sep 2011 10:23:37 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110925 Thunderbird/7.0
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1317326894.git.tom.zanussi@intel.com>
	<b33bc7ad590e46d721bdb16adfb1e90c7d74e221.1317326894.git.tom.zanussi@intel.com>
In-Reply-To: <b33bc7ad590e46d721bdb16adfb1e90c7d74e221.1317326894.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/5][KERNEL] features/drm-psb: add related config options
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
X-List-Received-Date: Fri, 30 Sep 2011 14:23:42 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-29 04:17 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This allows us to move them out of the bsp config.

Good cleanup.

Bruce

>
> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   meta/cfg/kernel-cache/features/drm-psb/drm-psb.cfg |   13 +++++++++++++
>   1 files changed, 13 insertions(+), 0 deletions(-)
>
> diff --git a/meta/cfg/kernel-cache/features/drm-psb/drm-psb.cfg b/meta/cfg/kernel-cache/features/drm-psb/drm-psb.cfg
> index cdd805b..ea7cbfc 100644
> --- a/meta/cfg/kernel-cache/features/drm-psb/drm-psb.cfg
> +++ b/meta/cfg/kernel-cache/features/drm-psb/drm-psb.cfg
> @@ -1,2 +1,15 @@
>   CONFIG_DRM=y
>   CONFIG_DRM_PSB=m
> +
> +CONFIG_I2C=y
> +CONFIG_VIDEO_V4L2=y
> +CONFIG_VIDEO_IVTV=y
> +CONFIG_MEDIA_SUPPORT=y
> +CONFIG_VIDEO_CAPTURE_DRIVERS=y
> +CONFIG_VIDEO_DEV=y
> +CONFIG_VIDEO_V4L2_COMMON=y
> +CONFIG_I2C_ALGOBIT=y
> +CONFIG_FB_CFB_COPYAREA=y
> +CONFIG_FB_CFB_IMAGEBLIT=y
> +CONFIG_FB_CFB_FILLRECT=y
> +CONFIG_VIDEO_FB_IVTV=y


