Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7228EE00596
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2012 10:56:47 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Feb 2012 10:56:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="129976527"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga002.fm.intel.com with ESMTP; 27 Feb 2012 10:56:47 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 27 Feb 2012 10:50:42 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.233]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.120]) with mapi id
	14.01.0355.002; Mon, 27 Feb 2012 10:50:42 -0800
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [KERNEL][PATCH 1/1] enable pvr features.
Thread-Index: AQHM9RBD9bxoKTWqiEakVjgm5feVhpZRFwag
Date: Mon, 27 Feb 2012 18:50:43 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE2035D5245@ORSMSX105.amr.corp.intel.com>
References: <cover.1330129499.git.kishore.k.bodke@intel.com>
	<bbd959c5589809e18dbad951a38ec66afbb47e14.1330129499.git.kishore.k.bodke@intel.com>
	<4F4B13D8.9050601@windriver.com>
In-Reply-To: <4F4B13D8.9050601@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 27 Feb 2012 18:56:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ok.  I sent a new pull request after removing the merge line.

Thanks
Kishore.

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: Sunday, February 26, 2012 9:26 PM
To: Bodke, Kishore K
Cc: yocto@yoctoproject.org
Subject: Re: [KERNEL][PATCH 1/1] enable pvr features.

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
> diff --git a/meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg b/meta/cfg/kernel-c=
ache/cfg/drm-cdvpvr.cfg
> new file mode 100644
> index 0000000..0ab4488
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg
> @@ -0,0 +1,9 @@
> +CONFIG_HIGHMEM4G=3Dy
> +CONFIG_STAGING=3Dy
> +CONFIG_DRM=3Dy
> +CONFIG_SND_HDA_CODEC_HDMI=3Dy
> +CONFIG_DRM_INTEL_CDV=3Dy
> +CONFIG_DRM_CDV_RELEASE=3Dy
> +
> +# CONFIG_DRM_CDV_DEBUG is not set
> +# CONFIG_DRM_PVR_PDUMP is not se
> diff --git a/meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc b/meta/cfg/kernel-c=
ache/cfg/drm-cdvpvr.scc
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


