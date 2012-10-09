Return-Path: <darren.hart@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA842E002AB
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 15:41:13 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Oct 2012 15:41:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,562,1344236400"; d="scan'208";a="231934131"
Received: from unknown (HELO envy.home) ([10.255.14.86])
	by fmsmga001.fm.intel.com with ESMTP; 09 Oct 2012 15:41:10 -0700
Message-ID: <5074A7D9.9080906@intel.com>
Date: Tue, 09 Oct 2012 15:40:25 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <cover.1349820369.git.nitin.a.kamble@intel.com>
	<3259734fca50f6ffd7e70ed7829c0a398d4795b0.1349820369.git.nitin.a.kamble@intel.com>
In-Reply-To: <3259734fca50f6ffd7e70ed7829c0a398d4795b0.1349820369.git.nitin.a.kamble@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/5] xf86-video-intel: Bring 2.20.0 version to match released graphics stack
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
X-List-Received-Date: Tue, 09 Oct 2012 22:41:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 10/09/2012 03:10 PM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> The Intel Linux graphics stack version 12.07 released on 2012-07-24
> requires version 2.20.0 as seen here:
>    http://intellinuxgraphics.org/2012.07.html
> 
> Currently oecore has 2.19.0 version. So get this 2.20.0 version in
> meta-intel layer to be used by sugarbay and other BSPs using the
> Intel graphics stack.
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  .../xorg-driver/xf86-video-intel_2.20.0.bb         |   26 +++++++++++++++
>  .../xorg-driver/xorg-driver-common.inc             |   33 ++++++++++++++++++++
>  .../xorg-driver/xorg-driver-video.inc              |    4 ++
>  3 files changed, 63 insertions(+), 0 deletions(-)
>  create mode 100644 common/recipes-graphics/xorg-driver/xf86-video-intel_2.20.0.bb
>  create mode 100644 common/recipes-graphics/xorg-driver/xorg-driver-common.inc
>  create mode 100644 common/recipes-graphics/xorg-driver/xorg-driver-video.inc
> 
> diff --git a/common/recipes-graphics/xorg-driver/xf86-video-intel_2.20.0.bb b/common/recipes-graphics/xorg-driver/xf86-video-intel_2.20.0.bb
> new file mode 100644
> index 0000000..a7bf45a
> --- /dev/null
> +++ b/common/recipes-graphics/xorg-driver/xf86-video-intel_2.20.0.bb
> @@ -0,0 +1,26 @@
> +require xorg-driver-video.inc
> +
> +SUMMARY = "X.Org X server -- Intel integrated graphics chipsets driver"
> +
> +DESCRIPTION = "intel is an Xorg driver for Intel integrated graphics \
> +chipsets. The driver supports depths 8, 15, 16 and 24. On some chipsets, \
> +the driver supports hardware accelerated 3D via the Direct Rendering \
> +Infrastructure (DRI)."
> +
> +LIC_FILES_CHKSUM = "file://COPYING;md5=8730ad58d11c7bbad9a7066d69f7808e"
> +
> +PR = "${INC_PR}.0"
> +
> +DEPENDS += "virtual/libx11 drm xf86driproto glproto \
> +	    virtual/libgl xineramaproto xf86driproto libpciaccess"
> +
> +
> +EXTRA_OECONF += "--disable-xvmc"

I think Ross's version enables xvmc. Any reason to disable it?

Is the new method to use PACKAGECONF instead of EXTRA_OECONF now? Again,
this is what I saw in Ross's layer.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

