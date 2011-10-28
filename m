Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF053E0132F
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 06:47:49 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 28 Oct 2011 06:47:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,418,1315206000"; d="scan'208";a="31071711"
Received: from unknown (HELO [10.255.15.170]) ([10.255.15.170])
	by AZSMGA002.ch.intel.com with ESMTP; 28 Oct 2011 06:47:48 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "kishore.k.bodke@intel.com" <kishore.k.bodke@intel.com>
In-Reply-To: <cover.1319751104.git.kishore.k.bodke@intel.com>
References: <cover.1319751104.git.kishore.k.bodke@intel.com>
Date: Fri, 28 Oct 2011 08:47:43 -0500
Message-ID: <1319809663.13462.12.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] New meta-romley BSP created.--v3
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
X-List-Received-Date: Fri, 28 Oct 2011 13:47:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-10-27 at 14:37 -0700, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> Hi All
> 
>  This layer provides  new BSP meta-romley and tested against the master branch.
>  This provides the support for Romley + Patsburg Chipset for Intel Systems.
>  Romley refers to the Intel Rosecity Board.
>  This has been verified by Tom Zanussi, and wanted to pull this BSP into the 
>  main line.
>  
>  I had incorporated the comments mentioned by Tom.
> 
>  Please let me know if anything is required further to get into the main line.
>  
>  Please pull.
> 

Pulled into meta-intel/master.

[With one change - I added the above text as the commit message for
PATCH 1/1, since it still didn't have one.]

Thanks,

Tom


> Thanks
> Kishore.
> 
> 
> 
> The following changes since commit b5c9f0af18b80c2b4c478fd7cfb537e0a04a4e22:
> 
>   meta-fri2: README correction (2011-10-25 14:52:36 -0500)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/meta-intel-contrib master0
>   http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=master0
> 
> Kishore Bodke (1):
>   New Romley BSP created. Uses Matrox MGA graphics driver.
> 
>  MAINTAINERS                                        |    4 +
>  meta-romley/COPYING.MIT                            |   17 ++++
>  meta-romley/README                                 |   88 ++++++++++++++++++++
>  meta-romley/README.sources                         |   17 ++++
>  meta-romley/conf/layer.conf                        |   10 ++
>  meta-romley/conf/machine/romley.conf               |   46 ++++++++++
>  .../formfactor/formfactor/romley/machconfig        |    3 +
>  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
>  .../recipes-core/tasks/task-core-tools.bbappend    |    2 +
>  .../xorg-driver/xf86-video-mga_1.4.13.bb           |   19 ++++
>  .../xserver-xf86-config/romley/xorg.conf           |   26 ++++++
>  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
>  .../xorg-xserver/xserver-xorg_1.11.1.bbappend      |    1 +
>  .../linux/linux-yocto-rt_3.0.bbappend              |    8 ++
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    7 ++
>  15 files changed, 254 insertions(+), 0 deletions(-)
>  create mode 100644 meta-romley/COPYING.MIT
>  create mode 100644 meta-romley/README
>  create mode 100644 meta-romley/README.sources
>  create mode 100644 meta-romley/binary/.gitignore
>  create mode 100644 meta-romley/conf/layer.conf
>  create mode 100644 meta-romley/conf/machine/romley.conf
>  create mode 100644 meta-romley/recipes-bsp/formfactor/formfactor/romley/machconfig
>  create mode 100644 meta-romley/recipes-bsp/formfactor/formfactor_0.0.bbappend
>  create mode 100644 meta-romley/recipes-core/tasks/task-core-tools.bbappend
>  create mode 100755 meta-romley/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb
>  create mode 100644 meta-romley/recipes-graphics/xorg-xserver/xserver-xf86-config/romley/xorg.conf
>  create mode 100644 meta-romley/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>  create mode 100644 meta-romley/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bbappend
>  create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
>  create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend
> 



