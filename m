Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26D70E0074A
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2012 21:25:47 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q1R5PkwN017655
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 26 Feb 2012 21:25:46 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.20.219) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sun, 26 Feb 2012 21:25:45 -0800
Message-ID: <4F4B13D8.9050601@windriver.com>
Date: Mon, 27 Feb 2012 00:25:44 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: <kishore.k.bodke@intel.com>
References: <cover.1330129499.git.kishore.k.bodke@intel.com>
	<bbd959c5589809e18dbad951a38ec66afbb47e14.1330129499.git.kishore.k.bodke@intel.com>
In-Reply-To: <bbd959c5589809e18dbad951a38ec66afbb47e14.1330129499.git.kishore.k.bodke@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [KERNEL][PATCH 1/1] enable pvr features.
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
X-List-Received-Date: Mon, 27 Feb 2012 05:25:47 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-02-24 7:35 PM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke<kishore.k.bodke@intel.com>
>
> Cedartrail has pvr kernel features and patches.
>
> Signed-off-by: Kishore Bodke<kishore.k.bodke@intel.com>
> ---
>   meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg |    9 +++++++++
>   meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc |    2 ++
>   2 files changed, 11 insertions(+), 0 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg
>   create mode 100644 meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc
>
> diff --git a/meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg b/meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg
> new file mode 100644
> index 0000000..0ab4488
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg
> @@ -0,0 +1,9 @@
> +CONFIG_HIGHMEM4G=y
> +CONFIG_STAGING=y
> +CONFIG_DRM=y
> +CONFIG_SND_HDA_CODEC_HDMI=y
> +CONFIG_DRM_INTEL_CDV=y
> +CONFIG_DRM_CDV_RELEASE=y
> +
> +# CONFIG_DRM_CDV_DEBUG is not set
> +# CONFIG_DRM_PVR_PDUMP is not se
> diff --git a/meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc b/meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc
> new file mode 100644
> index 0000000..fbb8316
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc
> @@ -0,0 +1,2 @@
> +kconf hardware drm-cdvpvr.cfg
> +git merge yocto/pvr

I was just completing the merge on this, and I realized that we
should put the branch merge in the BSP/machine, not in the generic
feature. The configs are good, but we want the cedartrail to do that
merge, not the config.

How does that sound to you ? If it is ok, spin me a patch with that
merge line removed and I'll push it out right away.

Cheers,

Bruce


