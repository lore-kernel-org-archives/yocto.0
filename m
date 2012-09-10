Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C9A3E0146B
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2012 10:14:03 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Sep 2012 10:14:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,398,1344236400"; d="scan'208";a="220155394"
Received: from unknown (HELO [10.255.13.118]) ([10.255.13.118])
	by fmsmga002.fm.intel.com with ESMTP; 10 Sep 2012 10:14:02 -0700
Message-ID: <1347297241.25993.1.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: kishore.k.bodke@intel.com
Date: Mon, 10 Sep 2012 12:14:01 -0500
In-Reply-To: <cover.1346954020.git.kishore.k.bodke@intel.com>
References: <cover.1346954020.git.kishore.k.bodke@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] [meta-intel] Crystal Forest BSP Created.
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
X-List-Received-Date: Mon, 10 Sep 2012 17:14:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-09-06 at 11:03 -0700, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> This is the Initial Checkin for the new Crystal Forest BSP.
> This BSP has two versions of platform.
> 1. Stargo Platform is based on Intel Sandy Bridge Gladden Processor,plus the Cave Creek chipset.
> 2. Shumway Platform is based on two Intel Sandy Bridge (SNB-EP ES2 Grade and SNB-EN ES2 Grade)
>    Processors plus two Cave Creek Chipsets.
> 
> Both Platforms uses Matrox graphics Card.
> 
> Both the Platforms have been successfully booted and done basic testing for 3.4 kernel.
> 
> Please pull this into meta-intel/master.
> 

Pulled into meta-intel/master.

Thanks,

Tom

> Thanks
> Kishore.
> 
> The following changes since commit 66b516f3d3a287eecbf8804b2221bfc27e36db63:
> 
>   README: add info explaining meta-tlk layer purpose (2012-09-06 10:36:02 -0500)
> 
> are available in the git repository at:
> 
>   git://git.pokylinux.org/meta-intel-contrib Kishore/CrystalForest
>   http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=Kishore/CrystalForest
> 
> Kishore Bodke (1):
>   meta-crystalforest: Crystal Forest BSP Created.
> 
>  meta-crystalforest/COPYING.MIT                     |   17 +++
>  meta-crystalforest/README                          |  139 ++++++++++++++++++++
>  meta-crystalforest/README.sources                  |   17 +++
>  meta-crystalforest/conf/layer.conf                 |   12 ++
>  .../conf/machine/crystalforest-shumway.conf        |   26 ++++
>  .../conf/machine/crystalforest-stargo.conf         |   27 ++++
>  .../formfactor/crystalforest-shumway/machconfig    |    3 +
>  .../formfactor/crystalforest-stargo/machconfig     |    3 +
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
>  .../crystalforest-shumway/xorg.conf                |   26 ++++
>  .../crystalforest-stargo/xorg.conf                 |   26 ++++
>  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
>  .../linux/linux-yocto-rt_3.4.bbappend              |   18 +++
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   17 +++
>  14 files changed, 337 insertions(+)
>  create mode 100644 meta-crystalforest/COPYING.MIT
>  create mode 100644 meta-crystalforest/README
>  create mode 100644 meta-crystalforest/README.sources
>  create mode 100644 meta-crystalforest/binary/.gitignore
>  create mode 100644 meta-crystalforest/conf/layer.conf
>  create mode 100644 meta-crystalforest/conf/machine/crystalforest-shumway.conf
>  create mode 100644 meta-crystalforest/conf/machine/crystalforest-stargo.conf
>  create mode 100644 meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-shumway/machconfig
>  create mode 100644 meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-stargo/machconfig
>  create mode 100644 meta-crystalforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
>  create mode 100644 meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-shumway/xorg.conf
>  create mode 100644 meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-stargo/xorg.conf
>  create mode 100644 meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>  create mode 100644 meta-crystalforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
>  create mode 100644 meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
> 



