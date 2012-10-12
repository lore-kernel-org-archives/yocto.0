Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B378E0027E
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2012 15:55:54 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 12 Oct 2012 15:55:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,578,1344236400"; d="scan'208";a="155691708"
Received: from unknown (HELO [10.255.14.130]) ([10.255.14.130])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Oct 2012 15:55:44 -0700
Message-ID: <1350082543.27257.5.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Fri, 12 Oct 2012 17:55:43 -0500
In-Reply-To: <cover.1349998086.git.nitin.a.kamble@intel.com>
References: <cover.1349998086.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: darren.hart@intel.com, yocto@yoctoproject.org
Subject: Re: [PATCHv4 0/8] Misc meta-intel commits
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
X-List-Received-Date: Fri, 12 Oct 2012 22:55:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


On Thu, 2012-10-11 at 16:30 -0700, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> This v4 pull request add these extra  commits compared to v3
>   mesa-dri.bbappend: avoid conflict with emgd-driver-bin
>   emgd-driver-bin: note all the EMGD licenses
>   custom-licenses dir for emgd recipe Licenses
> 

All except 'mesa-dri.bbappend: avoid conflict with emgd-driver-bin'
pulled in to meta-intel/master.

The one change I made was to tweak the commit subject lines to the
proper format for each of the commits that didn't have the normal
[component: short-description] form like the other commits in
meta-intel.

Thanks,

Tom

> Thanks,
> Nitin
> 
> The following changes since commit 5d8a05811101f7d69994f4028ec620c4480f6da4:
> 
>   Fix use of PRINC in meta-intel BSPs (2012-10-09 16:04:30 -0700)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/meta-intel-contrib nitin/misc
>   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/misc
> 
> Nitin A Kamble (8):
>   xf86-video-intel: Bring 2.20.0 version to match released graphics
>     stack
>   crownbay.conf: specify the 8.0.4 version as preferred version of
>     mesa-dri
>   emgd-driver_bin_1.10: Remove in favor of 1.14
>   fishriver BSP retirement
>   update maintainers of various BSPs
>   mesa-dri.bbappend: avoid conflict with emgd-driver-bin
>   emgd-driver-bin: note all the EMGD licenses
>   custom-licenses dir for emgd recipe Licenses
> 
>  MAINTAINERS                                        |   16 +-
>  .../Intel-software-license-emgd-1.14               |   42 ++
>  ...-space-graphics-driver-binary-license-emgd-1.14 |  559 ++++++++++++++++++++
>  .../recipes-graphics/mesa/mesa-dri_8.0.4.bbappend  |   24 +
>  .../xorg-driver/emgd-driver-bin_1.10.bb            |   93 ----
>  .../xorg-driver/emgd-driver-bin_1.14.bb            |    5 +-
>  .../xorg-driver/xf86-video-intel_2.20.0.bb         |   27 +
>  .../xorg-driver/xorg-driver-common.inc             |   33 ++
>  .../xorg-driver/xorg-driver-video.inc              |    4 +
>  conf/layer.conf                                    |    3 +
>  meta-chiefriver/README                             |   11 +
>  meta-crownbay/README                               |    2 +-
>  meta-crownbay/conf/machine/crownbay.conf           |    2 +-
>  meta-emenlow/README                                |    2 +-
>  meta-fishriver/COPYING.MIT                         |   17 -
>  meta-fishriver/README                              |  114 ----
>  meta-fishriver/README.sources                      |   17 -
>  meta-fishriver/conf/layer.conf                     |   12 -
>  meta-fishriver/conf/machine/fishriver.conf         |   17 -
>  .../formfactor/formfactor/fishriver/machconfig     |    3 -
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 -
>  .../xserver-xf86-config/fishriver/xorg.conf        |   26 -
>  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    1 -
>  .../linux/linux-yocto-rt_3.0.bbappend              |    8 -
>  .../linux/linux-yocto-rt_3.2.bbappend              |    8 -
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    9 -
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    8 -
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 -
>  meta-jasperforest/README                           |    2 +-
>  meta-sugarbay/README                               |    2 +-
>  30 files changed, 717 insertions(+), 361 deletions(-)
>  create mode 100644 common/custom-licenses/Intel-software-license-emgd-1.14
>  create mode 100644 common/custom-licenses/Intel-user-space-graphics-driver-binary-license-emgd-1.14
>  create mode 100644 common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
>  delete mode 100644 common/recipes-graphics/xorg-driver/emgd-driver-bin_1.10.bb
>  create mode 100644 common/recipes-graphics/xorg-driver/xf86-video-intel_2.20.0.bb
>  create mode 100644 common/recipes-graphics/xorg-driver/xorg-driver-common.inc
>  create mode 100644 common/recipes-graphics/xorg-driver/xorg-driver-video.inc
>  delete mode 100644 meta-fishriver/COPYING.MIT
>  delete mode 100644 meta-fishriver/README
>  delete mode 100644 meta-fishriver/README.sources
>  delete mode 100644 meta-fishriver/binary/.gitignore
>  delete mode 100644 meta-fishriver/conf/layer.conf
>  delete mode 100644 meta-fishriver/conf/machine/fishriver.conf
>  delete mode 100644 meta-fishriver/recipes-bsp/formfactor/formfactor/fishriver/machconfig
>  delete mode 100644 meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
>  delete mode 100644 meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config/fishriver/xorg.conf
>  delete mode 100644 meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>  delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
>  delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
>  delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_3.0.bbappend
>  delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
>  delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_3.4.bbappend
> 



