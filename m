Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2D8FE00596
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2012 13:03:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q3QK3vpc011347
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 26 Apr 2012 13:03:57 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 26 Apr 2012 13:03:57 -0700
Message-ID: <4F99AA22.40106@windriver.com>
Date: Thu, 26 Apr 2012 16:03:46 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: <rahul.saxena@intel.com>
References: <cover.1335393639.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1335393639.git.rahul.saxena@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [kernel][PATCH 0/3] Cover letter to update pvr patches
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
X-List-Received-Date: Thu, 26 Apr 2012 20:03:58 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-04-26 04:55 AM, rahul.saxena@intel.com wrote:
> From: Rahul Saxena<rahul.saxena@intel.com>
>
> Cover letter to update pvr patches.
> A updated version of linux-3.0.0-cdv patch for pvr driver that
> includes vaapi (Video Acceleration API) related fixes was recently released by MeeGo.
> A revert of the existing version of this patch is done and then the new
> version is added. A new patch to handle TTM page allocation from
> high memory is also added.

Rahul,

Can you confirm for me that this commit:

commit 9d0264753e869d21ec4d9a6dd5558de73d64f94d
Author: Kishore Bodke <kishore.k.bodke@intel.com>
Date:   Fri Mar 9 11:03:56 2012 -0800

     yocto/pvr: add hdmi/acpi definitions

     Adding the identifier for the CedarTrail HDMI to allow peripheral
     detection.

     Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>

:100644 100644 db39e9e... 47a98ff... M  drivers/acpi/video.c
:100644 100644 bd0ae69... 1b05ed1... M  sound/pci/hda/patch_hdmi.c

Should stay on the yocto/pvr branch ?

Bruce

>
> Please pull into yocto/pvr branch of linux-yocto-3.0
>
> Signed-off-by: Rahul Saxena<rahul.saxena@intel.com>
> --
>
> The following changes since commit 9d0264753e869d21ec4d9a6dd5558de73d64f94d:
>
>    yocto/pvr: add hdmi/acpi definitions (2012-03-09 14:50:44 -0500)
>
> are available in the git repository at:
>    git://git.pokylinux.org/linux-yocto-2.6.37-contrib rsaxena-yocto/pvr
>    http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=rsaxena-yocto/pvr
>
> Rahul Saxena (3):
>    Revert "yocto/pvr: integrate pvr support"
>    add updated version of linux-3.0.0-cdv.patch
>    add patch linux-3.0.0-ttm-clear-high.patch
>
>   drivers/gpu/drm/ttm/ttm_page_alloc.c               |    5 +-
>   drivers/staging/cdv/Kconfig                        |    1 +
>   drivers/staging/cdv/Makefile                       |    2 +-
>   drivers/staging/cdv/drv/psb_drm.h                  |    3 +
>   drivers/staging/cdv/drv/psb_drv.c                  |   73 +++--
>   drivers/staging/cdv/drv/psb_drv.h                  |   24 +-
>   drivers/staging/cdv/drv/psb_fb.c                   |  134 ++++-----
>   drivers/staging/cdv/drv/psb_gtt.c                  |   29 +-
>   drivers/staging/cdv/drv/psb_intel_bios.c           |   90 +++++-
>   drivers/staging/cdv/drv/psb_intel_bios.h           |   35 ++-
>   drivers/staging/cdv/drv/psb_intel_display.c        |  310 +++++++++++++-------
>   drivers/staging/cdv/drv/psb_intel_dpll_cdv.c       |   85 +++++-
>   drivers/staging/cdv/drv/psb_intel_drv.h            |   12 +-
>   drivers/staging/cdv/drv/psb_intel_lvds.c           |  178 +++++++++++-
>   drivers/staging/cdv/drv/psb_intel_opregion.c       |    2 +-
>   drivers/staging/cdv/drv/psb_intel_reg.h            |   36 +++-
>   drivers/staging/cdv/drv/psb_irq.c                  |   12 +-
>   drivers/staging/cdv/drv/psb_powermgmt.c            |   29 ++-
>   drivers/staging/cdv/drv/psb_pvr_glue.c             |    4 +-
>   drivers/staging/cdv/drv/psb_reg.h                  |    8 +-
>   drivers/staging/cdv/imgv/psb_msvdx.c               |   25 ++-
>   drivers/staging/cdv/imgv/psb_msvdx.h               |    7 +-
>   drivers/staging/cdv/imgv/psb_msvdxinit.c           |   51 +++-
>   .../3rdparty/linux_framebuffer_mrst/mrstlfb.h      |    6 +
>   .../linux_framebuffer_mrst/mrstlfb_displayclass.c  |  125 +++++++-
>   .../linux_framebuffer_mrst/mrstlfb_linux.c         |    8 +-
>   .../pvr/services4/srvkm/devices/sgx/sgxconfig.h    |   65 ++++
>   .../cdv/pvr/services4/srvkm/hwdefs/sgxerrata.h     |    4 +
>   .../pvr/services4/srvkm/hwdefs/sgxfeaturedefs.h    |    3 +-
>   .../cdv/pvr/services4/system/unified/sysconfig.c   |   11 +-
>   .../cdv/pvr/services4/system/unified/sysconfig.h   |   30 --
>   31 files changed, 1021 insertions(+), 386 deletions(-)
>


