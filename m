Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3C44E0030B
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 13:36:43 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Mar 2012 13:36:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="131917870"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 01 Mar 2012 13:36:43 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 1 Mar 2012 13:36:43 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.233]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.137]) with mapi id
	14.01.0355.002; Thu, 1 Mar 2012 13:36:42 -0800
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [PATCH 0/1] [KERNEL] enable Cedarview config parameters
Thread-Index: AQHM9z/5hKeXvpgcFEytrRzlZtkQ/pZWdDkA//+DHpA=
Date: Thu, 1 Mar 2012 21:36:42 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE2035D5D4D@ORSMSX105.amr.corp.intel.com>
References: <cover.1330560414.git.kishore.k.bodke@intel.com>
	<4F4FE362.8040706@windriver.com>
In-Reply-To: <4F4FE362.8040706@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] [KERNEL] enable Cedarview config parameters
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
X-List-Received-Date: Thu, 01 Mar 2012 21:36:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

We got the patches from Cedartrail Meego team and applied to Yocto/pvr bran=
ch.  Below is the link where we have taken the patches from.

http://build.meego.com/package/files?package=3Dkernel-adaptation-pc&project=
=3DMeeGo%3A1.2.0%3ACedarTrail%3Aoss&rev=3D10

We have tested it on 3.0, but not yet tried on 3.2.

Thanks
Kishore.


-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: Thursday, March 01, 2012 1:00 PM
To: Bodke, Kishore K
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] [KERNEL] enable Cedarview config parameters

On 12-02-29 07:13 PM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke<kishore.k.bodke@intel.com>
>
> Hi,
>
> This patch is to enable Cedarview config parameters and add the kernel pa=
tches to the yocto/pvr branch in linux-yocto-3.0 and linux-yocto-3.2 tree.

The patch itself looks ok. When merging features like this, we
typically want the upstream reference. That makes carrying them
much easier as we march forward.

Where did these come from ? If we can get that in the header, that
would be great.

Often these patches can be broken up into subsystem chunks, but looking
through this, the breaks would largely be artificial (unless there's
an upstream repo we can leverage), so we can take a pass on breaking
these into smaller parts.

And you've tested the same content on 3.0 and 3.2 ?

Cheers,

Bruce

>
> Thanks
> Kishore.
>
>
> The following changes since commit 07e83cbd3e62a0bf91f558337aa7e37bc09f10=
0b:
>
>    Merge commit 'v3.0.22' into yocto/base (2012-02-26 00:02:48 -0500)
>
> are available in the git repository at:
>
>    git://git.pokylinux.org/linux-yocto-2.6.37-contrib kishore/pvr-patch
>    http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=3D=
kishore/pvr-patch
>
> Kishore Bodke (1):
>    enable Cedarview config parameters.
>
>   drivers/staging/Kconfig                            |    2 +
>   drivers/staging/Makefile                           |    1 +
>   drivers/staging/cdv/Kconfig                        |   50 +
>   drivers/staging/cdv/Makefile                       |  198 +
>   drivers/staging/cdv/bc_video/bufferclass_video.c   |  327 ++
>   drivers/staging/cdv/bc_video/bufferclass_video.h   |  171 +
>   .../staging/cdv/bc_video/bufferclass_video_linux.c |  838 ++++
>   .../staging/cdv/bc_video/bufferclass_video_linux.h |   67 +
>   drivers/staging/cdv/drv/psb_bl.c                   |  135 +
>   drivers/staging/cdv/drv/psb_dpst.c                 |  283 ++
>   drivers/staging/cdv/drv/psb_dpst.h                 |   98 +
>   drivers/staging/cdv/drv/psb_drm.h                  |  562 +++
>   drivers/staging/cdv/drv/psb_drv.c                  | 1881 ++++++++
>   drivers/staging/cdv/drv/psb_drv.h                  | 1203 +++++
>   drivers/staging/cdv/drv/psb_fb.c                   |  812 ++++
>   drivers/staging/cdv/drv/psb_fb.h                   |   59 +
>   drivers/staging/cdv/drv/psb_gtt.c                  | 1045 +++++
>   drivers/staging/cdv/drv/psb_gtt.h                  |  112 +
>   drivers/staging/cdv/drv/psb_hotplug.c              |  439 ++
>   drivers/staging/cdv/drv/psb_hotplug.h              |   90 +
>   drivers/staging/cdv/drv/psb_intel_bios.c           |  289 ++
>   drivers/staging/cdv/drv/psb_intel_bios.h           |  470 ++
>   drivers/staging/cdv/drv/psb_intel_crt.c            |  353 ++
>   drivers/staging/cdv/drv/psb_intel_display.c        | 1675 +++++++
>   drivers/staging/cdv/drv/psb_intel_display.h        |   25 +
>   drivers/staging/cdv/drv/psb_intel_dpll_cdv.c       |  262 ++
>   drivers/staging/cdv/drv/psb_intel_drv.h            |  252 +
>   drivers/staging/cdv/drv/psb_intel_hdmi.c           |  684 +++
>   drivers/staging/cdv/drv/psb_intel_hdmi.h           |  935 ++++
>   drivers/staging/cdv/drv/psb_intel_hdmi_edid.h      | 1057 +++++
>   drivers/staging/cdv/drv/psb_intel_hdmi_reg.h       |  130 +
>   drivers/staging/cdv/drv/psb_intel_i2c.c            |  171 +
>   drivers/staging/cdv/drv/psb_intel_lvds.c           |  701 +++
>   drivers/staging/cdv/drv/psb_intel_modes.c          |   77 +
>   drivers/staging/cdv/drv/psb_intel_opregion.c       |  340 ++
>   drivers/staging/cdv/drv/psb_intel_reg.h            | 1461 ++++++
>   drivers/staging/cdv/drv/psb_irq.c                  |  681 +++
>   drivers/staging/cdv/drv/psb_irq.h                  |   49 +
>   drivers/staging/cdv/drv/psb_powermgmt.c            |  875 ++++
>   drivers/staging/cdv/drv/psb_powermgmt.h            |   98 +
>   drivers/staging/cdv/drv/psb_pvr_glue.c             |   74 +
>   drivers/staging/cdv/drv/psb_pvr_glue.h             |   26 +
>   drivers/staging/cdv/drv/psb_reg.h                  |  596 +++
>   drivers/staging/cdv/drv/psb_reset.c                |  144 +
>   drivers/staging/cdv/drv/psb_schedule.c             |   51 +
>   drivers/staging/cdv/drv/psb_schedule.h             |   79 +
>   drivers/staging/cdv/drv/psb_sgx.c                  |  943 ++++
>   drivers/staging/cdv/drv/psb_sgx.h                  |   32 +
>   drivers/staging/cdv/drv/psb_socket.c               |  374 ++
>   drivers/staging/cdv/drv/psb_umevents.c             |  491 ++
>   drivers/staging/cdv/drv/psb_umevents.h             |  161 +
>   drivers/staging/cdv/imgv/msvdx_power.c             |  166 +
>   drivers/staging/cdv/imgv/msvdx_power.h             |   48 +
>   drivers/staging/cdv/imgv/psb_buffer.c              |  442 ++
>   drivers/staging/cdv/imgv/psb_fence.c               |  167 +
>   drivers/staging/cdv/imgv/psb_mmu.c                 | 1041 +++++
>   drivers/staging/cdv/imgv/psb_msvdx.c               | 1451 ++++++
>   drivers/staging/cdv/imgv/psb_msvdx.h               | 1388 ++++++
>   drivers/staging/cdv/imgv/psb_msvdxinit.c           | 1164 +++++
>   drivers/staging/cdv/imgv/psb_ttm_fence.c           |  603 +++
>   drivers/staging/cdv/imgv/psb_ttm_fence_api.h       |  272 ++
>   drivers/staging/cdv/imgv/psb_ttm_fence_driver.h    |  302 ++
>   drivers/staging/cdv/imgv/psb_ttm_fence_user.c      |  237 +
>   drivers/staging/cdv/imgv/psb_ttm_fence_user.h      |  140 +
>   drivers/staging/cdv/imgv/psb_ttm_glue.c            |  376 ++
>   drivers/staging/cdv/imgv/psb_ttm_placement_user.c  |  631 +++
>   drivers/staging/cdv/imgv/psb_ttm_placement_user.h  |  252 +
>   drivers/staging/cdv/imgv/psb_ttm_userobj_api.h     |   85 +
>   drivers/staging/cdv/pvr/COPYING                    |  351 ++
>   drivers/staging/cdv/pvr/INSTALL                    |   76 +
>   drivers/staging/cdv/pvr/README                     |   48 +
>   drivers/staging/cdv/pvr/eurasiacon/.gitignore      |    6 +
>   drivers/staging/cdv/pvr/include4/dbgdrvif.h        |  328 ++
>   drivers/staging/cdv/pvr/include4/img_defs.h        |  121 +
>   drivers/staging/cdv/pvr/include4/img_types.h       |  151 +
>   drivers/staging/cdv/pvr/include4/pdumpdefs.h       |  108 +
>   drivers/staging/cdv/pvr/include4/pvr_debug.h       |  148 +
>   drivers/staging/cdv/pvr/include4/pvrmodule.h       |   31 +
>   drivers/staging/cdv/pvr/include4/pvrversion.h      |   61 +
>   drivers/staging/cdv/pvr/include4/services.h        | 1235 +++++
>   drivers/staging/cdv/pvr/include4/servicesext.h     |  846 ++++
>   drivers/staging/cdv/pvr/include4/sgx_options.h     |  237 +
>   drivers/staging/cdv/pvr/include4/sgxapi_km.h       |  423 ++
>   drivers/staging/cdv/pvr/include4/sgxscript.h       |   81 +
>   .../3rdparty/linux_framebuffer_mrst/.gitignore     |    6 +
>   .../linux_framebuffer_mrst/makefile.linux.common   |   37 +
>   .../3rdparty/linux_framebuffer_mrst/mrstlfb.h      |  303 ++
>   .../linux_framebuffer_mrst/mrstlfb_displayclass.c  | 1652 +++++++
>   .../linux_framebuffer_mrst/mrstlfb_linux.c         |  192 +
>   .../include/env/linux-intel/pvr_drm_shared.h       |   50 +
>   .../services4/include/env/linux/pvr_drm_shared.h   |   50 +
>   .../cdv/pvr/services4/include/kernelbuffer.h       |   72 +
>   .../cdv/pvr/services4/include/kerneldisplay.h      |  165 +
>   drivers/staging/cdv/pvr/services4/include/pdump.h  |   37 +
>   .../staging/cdv/pvr/services4/include/pvr_bridge.h | 1784 ++++++++
>   .../cdv/pvr/services4/include/pvr_bridge_km.h      |  305 ++
>   .../staging/cdv/pvr/services4/include/pvrmmap.h    |   44 +
>   .../cdv/pvr/services4/include/pvrsrv_errors.h      |  266 ++
>   .../cdv/pvr/services4/include/servicesint.h        |  391 ++
>   .../staging/cdv/pvr/services4/include/sgx_bridge.h |  644 +++
>   .../cdv/pvr/services4/include/sgx_mkif_km.h        |  347 ++
>   .../staging/cdv/pvr/services4/include/sgxinfo.h    |  470 ++
>   .../cdv/pvr/services4/srvkm/bridged/.gitignore     |    5 +
>   .../services4/srvkm/bridged/bridged_pvr_bridge.c   | 4782 +++++++++++++=
+++++++
>   .../services4/srvkm/bridged/bridged_pvr_bridge.h   |  252 +
>   .../pvr/services4/srvkm/bridged/bridged_support.c  |   89 +
>   .../pvr/services4/srvkm/bridged/bridged_support.h  |   47 +
>   .../srvkm/bridged/sgx/bridged_sgx_bridge.c         | 3744 +++++++++++++=
++
>   .../srvkm/bridged/sgx/bridged_sgx_bridge.h         |   42 +
>   .../cdv/pvr/services4/srvkm/common/.gitignore      |    5 +
>   .../pvr/services4/srvkm/common/buffer_manager.c    | 2531 +++++++++++
>   .../cdv/pvr/services4/srvkm/common/deviceclass.c   | 2013 ++++++++
>   .../cdv/pvr/services4/srvkm/common/deviceid.h      |   36 +
>   .../cdv/pvr/services4/srvkm/common/devicemem.c     | 1797 ++++++++
>   .../cdv/pvr/services4/srvkm/common/handle.c        | 1873 ++++++++
>   .../staging/cdv/pvr/services4/srvkm/common/hash.c  |  506 +++
>   .../staging/cdv/pvr/services4/srvkm/common/lists.c |   99 +
>   .../staging/cdv/pvr/services4/srvkm/common/mem.c   |  153 +
>   .../cdv/pvr/services4/srvkm/common/mem_debug.c     |  250 +
>   .../cdv/pvr/services4/srvkm/common/metrics.c       |  160 +
>   .../cdv/pvr/services4/srvkm/common/osfunc_common.c |   31 +
>   .../cdv/pvr/services4/srvkm/common/pdump_common.c  | 2371 ++++++++++
>   .../cdv/pvr/services4/srvkm/common/perproc.c       |  305 ++
>   .../staging/cdv/pvr/services4/srvkm/common/power.c |  719 +++
>   .../cdv/pvr/services4/srvkm/common/pvrsrv.c        | 1338 ++++++
>   .../staging/cdv/pvr/services4/srvkm/common/queue.c | 1079 +++++
>   .../staging/cdv/pvr/services4/srvkm/common/ra.c    | 1725 +++++++
>   .../cdv/pvr/services4/srvkm/common/resman.c        |  751 +++
>   .../cdv/pvr/services4/srvkm/devices/sgx/.gitignore |    5 +
>   .../cdv/pvr/services4/srvkm/devices/sgx/mmu.c      | 3696 +++++++++++++=
++
>   .../cdv/pvr/services4/srvkm/devices/sgx/mmu.h      |  154 +
>   .../cdv/pvr/services4/srvkm/devices/sgx/pb.c       |  466 ++
>   .../services4/srvkm/devices/sgx/sgx_bridge_km.h    |  160 +
>   .../srvkm/devices/sgx/sgx_ukernel_status_codes.h   | 1024 +++++
>   .../pvr/services4/srvkm/devices/sgx/sgxconfig.h    |  361 ++
>   .../pvr/services4/srvkm/devices/sgx/sgxinfokm.h    |  574 +++
>   .../cdv/pvr/services4/srvkm/devices/sgx/sgxinit.c  | 2824 ++++++++++++
>   .../cdv/pvr/services4/srvkm/devices/sgx/sgxkick.c  |  784 ++++
>   .../cdv/pvr/services4/srvkm/devices/sgx/sgxpower.c |  481 ++
>   .../cdv/pvr/services4/srvkm/devices/sgx/sgxreset.c |  667 +++
>   .../pvr/services4/srvkm/devices/sgx/sgxtransfer.c  |  750 +++
>   .../cdv/pvr/services4/srvkm/devices/sgx/sgxutils.c | 1168 +++++
>   .../cdv/pvr/services4/srvkm/devices/sgx/sgxutils.h |  114 +
>   .../cdv/pvr/services4/srvkm/env/linux/.gitignore   |    5 +
>   .../cdv/pvr/services4/srvkm/env/linux/env_data.h   |   66 +
>   .../pvr/services4/srvkm/env/linux/env_perproc.h    |   56 +
>   .../cdv/pvr/services4/srvkm/env/linux/event.c      |  293 ++
>   .../cdv/pvr/services4/srvkm/env/linux/event.h      |   32 +
>   .../cdv/pvr/services4/srvkm/env/linux/linkage.h    |   52 +
>   .../cdv/pvr/services4/srvkm/env/linux/lock.h       |   32 +
>   .../staging/cdv/pvr/services4/srvkm/env/linux/mm.c | 2027 +++++++++
>   .../staging/cdv/pvr/services4/srvkm/env/linux/mm.h |  336 ++
>   .../cdv/pvr/services4/srvkm/env/linux/mmap.c       | 1151 +++++
>   .../cdv/pvr/services4/srvkm/env/linux/mmap.h       |  122 +
>   .../cdv/pvr/services4/srvkm/env/linux/module.c     |  771 ++++
>   .../cdv/pvr/services4/srvkm/env/linux/mutex.h      |   85 +
>   .../cdv/pvr/services4/srvkm/env/linux/mutils.c     |  136 +
>   .../cdv/pvr/services4/srvkm/env/linux/mutils.h     |  103 +
>   .../cdv/pvr/services4/srvkm/env/linux/osfunc.c     | 3115 +++++++++++++
>   .../cdv/pvr/services4/srvkm/env/linux/osperproc.c  |  113 +
>   .../cdv/pvr/services4/srvkm/env/linux/pdump.c      |  628 +++
>   .../pvr/services4/srvkm/env/linux/private_data.h   |   69 +
>   .../cdv/pvr/services4/srvkm/env/linux/proc.c       |  835 ++++
>   .../cdv/pvr/services4/srvkm/env/linux/proc.h       |  108 +
>   .../pvr/services4/srvkm/env/linux/pvr_bridge_k.c   |  432 ++
>   .../cdv/pvr/services4/srvkm/env/linux/pvr_debug.c  |  424 ++
>   .../cdv/pvr/services4/srvkm/env/linux/pvr_drm.c    |  479 ++
>   .../cdv/pvr/services4/srvkm/env/linux/pvr_drm.h    |  107 +
>   .../cdv/pvr/services4/srvkm/hwdefs/mnemedefs.h     |   94 +
>   .../cdv/pvr/services4/srvkm/hwdefs/sgx535defs.h    |  650 +++
>   .../cdv/pvr/services4/srvkm/hwdefs/sgx540defs.h    |  547 +++
>   .../pvr/services4/srvkm/hwdefs/sgx543_v1.164defs.h | 1284 ++++++
>   .../cdv/pvr/services4/srvkm/hwdefs/sgx544defs.h    | 1367 ++++++
>   .../cdv/pvr/services4/srvkm/hwdefs/sgx545defs.h    | 1180 +++++
>   .../cdv/pvr/services4/srvkm/hwdefs/sgxdefs.h       |   90 +
>   .../cdv/pvr/services4/srvkm/hwdefs/sgxerrata.h     |  693 +++
>   .../pvr/services4/srvkm/hwdefs/sgxfeaturedefs.h    |  240 +
>   .../cdv/pvr/services4/srvkm/hwdefs/sgxmmu.h        |   72 +
>   .../cdv/pvr/services4/srvkm/hwdefs/sgxmpdefs.h     |  332 ++
>   .../pvr/services4/srvkm/include/buffer_manager.h   |  219 +
>   .../cdv/pvr/services4/srvkm/include/device.h       |  323 ++
>   .../cdv/pvr/services4/srvkm/include/handle.h       |  404 ++
>   .../staging/cdv/pvr/services4/srvkm/include/hash.h |   80 +
>   .../cdv/pvr/services4/srvkm/include/lists.h        |  244 +
>   .../cdv/pvr/services4/srvkm/include/metrics.h      |  130 +
>   .../cdv/pvr/services4/srvkm/include/osfunc.h       |  606 +++
>   .../cdv/pvr/services4/srvkm/include/osperproc.h    |   76 +
>   .../cdv/pvr/services4/srvkm/include/pdump_int.h    |   67 +
>   .../cdv/pvr/services4/srvkm/include/pdump_km.h     |  412 ++
>   .../cdv/pvr/services4/srvkm/include/pdump_osfunc.h |  142 +
>   .../cdv/pvr/services4/srvkm/include/perproc.h      |  126 +
>   .../cdv/pvr/services4/srvkm/include/power.h        |  120 +
>   .../cdv/pvr/services4/srvkm/include/queue.h        |  110 +
>   .../staging/cdv/pvr/services4/srvkm/include/ra.h   |  159 +
>   .../cdv/pvr/services4/srvkm/include/resman.h       |  118 +
>   .../pvr/services4/srvkm/include/services_headers.h |   49 +
>   .../cdv/pvr/services4/srvkm/include/srvkm.h        |   78 +
>   .../cdv/pvr/services4/srvkm/include/ttrace.h       |  184 +
>   .../pvr/services4/srvkm/include/ttrace_common.h    |   81 +
>   .../pvr/services4/srvkm/include/ttrace_tokens.h    |   84 +
>   .../cdv/pvr/services4/system/include/syscommon.h   |  262 ++
>   .../cdv/pvr/services4/system/unified/extsyscache.h |   44 +
>   .../cdv/pvr/services4/system/unified/oemfuncs.h    |   72 +
>   .../services4/system/unified/sys_pvr_drm_export.c  |  202 +
>   .../services4/system/unified/sys_pvr_drm_export.h  |   97 +
>   .../services4/system/unified/sys_pvr_drm_import.h  |   46 +
>   .../cdv/pvr/services4/system/unified/sysconfig.c   | 1022 +++++
>   .../cdv/pvr/services4/system/unified/sysconfig.h   |  161 +
>   .../cdv/pvr/services4/system/unified/sysinfo.h     |   43 +
>   .../cdv/pvr/services4/system/unified/sysirq.h      |   49 +
>   .../cdv/pvr/services4/system/unified/syslocal.h    |   75 +
>   .../cdv/pvr/services4/system/unified/sysutils.c    |   30 +
>   .../cdv/pvr/tools/intern/debug/client/linuxsrv.h   |   48 +
>   .../tools/intern/debug/dbgdriv/common/dbgdriv.c    | 2357 ++++++++++
>   .../tools/intern/debug/dbgdriv/common/dbgdriv.h    |  122 +
>   .../intern/debug/dbgdriv/common/dbgdriv_ioctl.h    |   35 +
>   .../pvr/tools/intern/debug/dbgdriv/common/handle.c |  121 +
>   .../tools/intern/debug/dbgdriv/common/hostfunc.h   |   58 +
>   .../pvr/tools/intern/debug/dbgdriv/common/hotkey.c |  135 +
>   .../pvr/tools/intern/debug/dbgdriv/common/hotkey.h |   60 +
>   .../pvr/tools/intern/debug/dbgdriv/common/ioctl.c  |  586 +++
>   .../tools/intern/debug/dbgdriv/linux/hostfunc.c    |  324 ++
>   .../intern/debug/dbgdriv/linux/kbuild/Makefile     |   35 +
>   .../pvr/tools/intern/debug/dbgdriv/linux/main.c    |  315 ++
>   .../debug/dbgdriv/linux/makefile.linux.common      |   39 +
>   225 files changed, 109967 insertions(+), 0 deletions(-)
>   create mode 100644 drivers/staging/cdv/Kconfig
>   create mode 100644 drivers/staging/cdv/Makefile
>   create mode 100644 drivers/staging/cdv/bc_video/bufferclass_video.c
>   create mode 100644 drivers/staging/cdv/bc_video/bufferclass_video.h
>   create mode 100644 drivers/staging/cdv/bc_video/bufferclass_video_linux=
.c
>   create mode 100644 drivers/staging/cdv/bc_video/bufferclass_video_linux=
.h
>   create mode 100644 drivers/staging/cdv/drv/psb_bl.c
>   create mode 100644 drivers/staging/cdv/drv/psb_dpst.c
>   create mode 100644 drivers/staging/cdv/drv/psb_dpst.h
>   create mode 100644 drivers/staging/cdv/drv/psb_drm.h
>   create mode 100644 drivers/staging/cdv/drv/psb_drv.c
>   create mode 100644 drivers/staging/cdv/drv/psb_drv.h
>   create mode 100644 drivers/staging/cdv/drv/psb_fb.c
>   create mode 100644 drivers/staging/cdv/drv/psb_fb.h
>   create mode 100644 drivers/staging/cdv/drv/psb_gtt.c
>   create mode 100644 drivers/staging/cdv/drv/psb_gtt.h
>   create mode 100644 drivers/staging/cdv/drv/psb_hotplug.c
>   create mode 100644 drivers/staging/cdv/drv/psb_hotplug.h
>   create mode 100644 drivers/staging/cdv/drv/psb_intel_bios.c
>   create mode 100644 drivers/staging/cdv/drv/psb_intel_bios.h
>   create mode 100644 drivers/staging/cdv/drv/psb_intel_crt.c
>   create mode 100644 drivers/staging/cdv/drv/psb_intel_display.c
>   create mode 100644 drivers/staging/cdv/drv/psb_intel_display.h
>   create mode 100644 drivers/staging/cdv/drv/psb_intel_dpll_cdv.c
>   create mode 100644 drivers/staging/cdv/drv/psb_intel_drv.h
>   create mode 100644 drivers/staging/cdv/drv/psb_intel_hdmi.c
>   create mode 100644 drivers/staging/cdv/drv/psb_intel_hdmi.h
>   create mode 100644 drivers/staging/cdv/drv/psb_intel_hdmi_edid.h
>   create mode 100644 drivers/staging/cdv/drv/psb_intel_hdmi_reg.h
>   create mode 100644 drivers/staging/cdv/drv/psb_intel_i2c.c
>   create mode 100644 drivers/staging/cdv/drv/psb_intel_lvds.c
>   create mode 100644 drivers/staging/cdv/drv/psb_intel_modes.c
>   create mode 100644 drivers/staging/cdv/drv/psb_intel_opregion.c
>   create mode 100644 drivers/staging/cdv/drv/psb_intel_reg.h
>   create mode 100644 drivers/staging/cdv/drv/psb_irq.c
>   create mode 100644 drivers/staging/cdv/drv/psb_irq.h
>   create mode 100644 drivers/staging/cdv/drv/psb_powermgmt.c
>   create mode 100644 drivers/staging/cdv/drv/psb_powermgmt.h
>   create mode 100644 drivers/staging/cdv/drv/psb_pvr_glue.c
>   create mode 100644 drivers/staging/cdv/drv/psb_pvr_glue.h
>   create mode 100644 drivers/staging/cdv/drv/psb_reg.h
>   create mode 100644 drivers/staging/cdv/drv/psb_reset.c
>   create mode 100644 drivers/staging/cdv/drv/psb_schedule.c
>   create mode 100644 drivers/staging/cdv/drv/psb_schedule.h
>   create mode 100644 drivers/staging/cdv/drv/psb_sgx.c
>   create mode 100644 drivers/staging/cdv/drv/psb_sgx.h
>   create mode 100644 drivers/staging/cdv/drv/psb_socket.c
>   create mode 100644 drivers/staging/cdv/drv/psb_umevents.c
>   create mode 100644 drivers/staging/cdv/drv/psb_umevents.h
>   create mode 100644 drivers/staging/cdv/imgv/msvdx_power.c
>   create mode 100644 drivers/staging/cdv/imgv/msvdx_power.h
>   create mode 100644 drivers/staging/cdv/imgv/psb_buffer.c
>   create mode 100644 drivers/staging/cdv/imgv/psb_fence.c
>   create mode 100644 drivers/staging/cdv/imgv/psb_mmu.c
>   create mode 100644 drivers/staging/cdv/imgv/psb_msvdx.c
>   create mode 100644 drivers/staging/cdv/imgv/psb_msvdx.h
>   create mode 100644 drivers/staging/cdv/imgv/psb_msvdxinit.c
>   create mode 100644 drivers/staging/cdv/imgv/psb_ttm_fence.c
>   create mode 100644 drivers/staging/cdv/imgv/psb_ttm_fence_api.h
>   create mode 100644 drivers/staging/cdv/imgv/psb_ttm_fence_driver.h
>   create mode 100644 drivers/staging/cdv/imgv/psb_ttm_fence_user.c
>   create mode 100644 drivers/staging/cdv/imgv/psb_ttm_fence_user.h
>   create mode 100644 drivers/staging/cdv/imgv/psb_ttm_glue.c
>   create mode 100644 drivers/staging/cdv/imgv/psb_ttm_placement_user.c
>   create mode 100644 drivers/staging/cdv/imgv/psb_ttm_placement_user.h
>   create mode 100644 drivers/staging/cdv/imgv/psb_ttm_userobj_api.h
>   create mode 100644 drivers/staging/cdv/pvr/COPYING
>   create mode 100644 drivers/staging/cdv/pvr/INSTALL
>   create mode 100644 drivers/staging/cdv/pvr/README
>   create mode 100644 drivers/staging/cdv/pvr/eurasiacon/.gitignore
>   create mode 100644 drivers/staging/cdv/pvr/include4/dbgdrvif.h
>   create mode 100644 drivers/staging/cdv/pvr/include4/img_defs.h
>   create mode 100644 drivers/staging/cdv/pvr/include4/img_types.h
>   create mode 100644 drivers/staging/cdv/pvr/include4/pdumpdefs.h
>   create mode 100644 drivers/staging/cdv/pvr/include4/pvr_debug.h
>   create mode 100644 drivers/staging/cdv/pvr/include4/pvrmodule.h
>   create mode 100644 drivers/staging/cdv/pvr/include4/pvrversion.h
>   create mode 100644 drivers/staging/cdv/pvr/include4/services.h
>   create mode 100644 drivers/staging/cdv/pvr/include4/servicesext.h
>   create mode 100644 drivers/staging/cdv/pvr/include4/sgx_options.h
>   create mode 100644 drivers/staging/cdv/pvr/include4/sgxapi_km.h
>   create mode 100644 drivers/staging/cdv/pvr/include4/sgxscript.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/3rdparty/linux_fra=
mebuffer_mrst/.gitignore
>   create mode 100644 drivers/staging/cdv/pvr/services4/3rdparty/linux_fra=
mebuffer_mrst/makefile.linux.common
>   create mode 100644 drivers/staging/cdv/pvr/services4/3rdparty/linux_fra=
mebuffer_mrst/mrstlfb.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/3rdparty/linux_fra=
mebuffer_mrst/mrstlfb_displayclass.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/3rdparty/linux_fra=
mebuffer_mrst/mrstlfb_linux.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/include/env/linux-=
intel/pvr_drm_shared.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/include/env/linux/=
pvr_drm_shared.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/include/kernelbuff=
er.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/include/kerneldisp=
lay.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/include/pdump.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/include/pvr_bridge=
.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/include/pvr_bridge=
_km.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/include/pvrmmap.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/include/pvrsrv_err=
ors.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/include/servicesin=
t.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/include/sgx_bridge=
.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/include/sgx_mkif_k=
m.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/include/sgxinfo.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/bridged/.git=
ignore
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/bridged/brid=
ged_pvr_bridge.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/bridged/brid=
ged_pvr_bridge.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/bridged/brid=
ged_support.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/bridged/brid=
ged_support.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/bridged/sgx/=
bridged_sgx_bridge.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/bridged/sgx/=
bridged_sgx_bridge.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/.giti=
gnore
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/buffe=
r_manager.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/devic=
eclass.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/devic=
eid.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/devic=
emem.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/handl=
e.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/hash.=
c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/lists=
.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/mem.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/mem_d=
ebug.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/metri=
cs.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/osfun=
c_common.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/pdump=
_common.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/perpr=
oc.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/power=
.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/pvrsr=
v.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/queue=
.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/ra.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/common/resma=
n.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/devices/sgx/=
.gitignore
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/devices/sgx/=
mmu.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/devices/sgx/=
mmu.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/devices/sgx/=
pb.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/devices/sgx/=
sgx_bridge_km.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/devices/sgx/=
sgx_ukernel_status_codes.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/devices/sgx/=
sgxconfig.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/devices/sgx/=
sgxinfokm.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/devices/sgx/=
sgxinit.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/devices/sgx/=
sgxkick.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/devices/sgx/=
sgxpower.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/devices/sgx/=
sgxreset.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/devices/sgx/=
sgxtransfer.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/devices/sgx/=
sgxutils.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/devices/sgx/=
sgxutils.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/.g=
itignore
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/en=
v_data.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/en=
v_perproc.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/ev=
ent.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/ev=
ent.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/li=
nkage.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/lo=
ck.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/mm=
.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/mm=
.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/mm=
ap.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/mm=
ap.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/mo=
dule.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/mu=
tex.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/mu=
tils.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/mu=
tils.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/os=
func.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/os=
perproc.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/pd=
ump.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/pr=
ivate_data.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/pr=
oc.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/pr=
oc.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/pv=
r_bridge_k.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/pv=
r_debug.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/pv=
r_drm.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/env/linux/pv=
r_drm.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/hwdefs/mneme=
defs.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/hwdefs/sgx53=
5defs.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/hwdefs/sgx54=
0defs.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/hwdefs/sgx54=
3_v1.164defs.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/hwdefs/sgx54=
4defs.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/hwdefs/sgx54=
5defs.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/hwdefs/sgxde=
fs.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/hwdefs/sgxer=
rata.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/hwdefs/sgxfe=
aturedefs.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/hwdefs/sgxmm=
u.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/hwdefs/sgxmp=
defs.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/buff=
er_manager.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/devi=
ce.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/hand=
le.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/hash=
.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/list=
s.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/metr=
ics.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/osfu=
nc.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/ospe=
rproc.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/pdum=
p_int.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/pdum=
p_km.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/pdum=
p_osfunc.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/perp=
roc.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/powe=
r.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/queu=
e.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/ra.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/resm=
an.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/serv=
ices_headers.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/srvk=
m.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/ttra=
ce.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/ttra=
ce_common.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/srvkm/include/ttra=
ce_tokens.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/system/include/sys=
common.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/system/unified/ext=
syscache.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/system/unified/oem=
funcs.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/system/unified/sys=
_pvr_drm_export.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/system/unified/sys=
_pvr_drm_export.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/system/unified/sys=
_pvr_drm_import.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/system/unified/sys=
config.c
>   create mode 100644 drivers/staging/cdv/pvr/services4/system/unified/sys=
config.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/system/unified/sys=
info.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/system/unified/sys=
irq.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/system/unified/sys=
local.h
>   create mode 100644 drivers/staging/cdv/pvr/services4/system/unified/sys=
utils.c
>   create mode 100644 drivers/staging/cdv/pvr/tools/intern/debug/client/li=
nuxsrv.h
>   create mode 100644 drivers/staging/cdv/pvr/tools/intern/debug/dbgdriv/c=
ommon/dbgdriv.c
>   create mode 100644 drivers/staging/cdv/pvr/tools/intern/debug/dbgdriv/c=
ommon/dbgdriv.h
>   create mode 100644 drivers/staging/cdv/pvr/tools/intern/debug/dbgdriv/c=
ommon/dbgdriv_ioctl.h
>   create mode 100644 drivers/staging/cdv/pvr/tools/intern/debug/dbgdriv/c=
ommon/handle.c
>   create mode 100644 drivers/staging/cdv/pvr/tools/intern/debug/dbgdriv/c=
ommon/hostfunc.h
>   create mode 100644 drivers/staging/cdv/pvr/tools/intern/debug/dbgdriv/c=
ommon/hotkey.c
>   create mode 100644 drivers/staging/cdv/pvr/tools/intern/debug/dbgdriv/c=
ommon/hotkey.h
>   create mode 100644 drivers/staging/cdv/pvr/tools/intern/debug/dbgdriv/c=
ommon/ioctl.c
>   create mode 100644 drivers/staging/cdv/pvr/tools/intern/debug/dbgdriv/l=
inux/hostfunc.c
>   create mode 100644 drivers/staging/cdv/pvr/tools/intern/debug/dbgdriv/l=
inux/kbuild/Makefile
>   create mode 100644 drivers/staging/cdv/pvr/tools/intern/debug/dbgdriv/l=
inux/main.c
>   create mode 100644 drivers/staging/cdv/pvr/tools/intern/debug/dbgdriv/l=
inux/makefile.linux.common
>


