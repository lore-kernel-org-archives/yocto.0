Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A658AE003D7
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2012 16:03:26 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Nov 2012 16:03:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,695,1344236400"; d="scan'208";a="212462248"
Received: from unknown (HELO [10.255.14.39]) ([10.255.14.39])
	by azsmga001.ch.intel.com with ESMTP; 01 Nov 2012 16:03:17 -0700
Message-ID: <1351810997.1601.4.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Thu, 01 Nov 2012 18:03:17 -0500
In-Reply-To: <cover.1351746741.git.nitin.a.kamble@intel.com>
References: <cover.1351746741.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: darren.hart@intel.com, yocto@yoctoproject.org
Subject: Re: [Patch v2 0/4] Misc Fixes for meta-intel 1.3 release
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
X-List-Received-Date: Thu, 01 Nov 2012 23:03:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-10-31 at 22:14 -0700, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> This v2 pull request is with newer version of libva-intel-driver.
> These commits tested on All the BSPs I am maintaining with expected results.
> 

OK, I've confirmed video works on crownbay and have two independent
confirmations that cedartrail works fine too.

All pulled into meta-intel/master.

Thanks,

Tom

> Thanks,
> Nitin
> 
> The following changes since commit 43b2e9c34363ade4241a60f699b47179929c6fb6:
> 
>   n450: Add WEBTITLE and boilerplate README (2012-10-31 08:40:15 -0700)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/meta-intel-contrib nitin/misc
>   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/misc
> 
> Nitin A Kamble (3):
>   libva: update to the latest version
>   libva-intel-driver: update to the latest version
>   mesa-dri.bbappend: avoid conflict with emgd-driver-bin
> 
> Ross Burton (1):
>   libva: remove redundant libva 1.0.12
> 
>  .../recipes-graphics/mesa/mesa-dri_8.0.4.bbappend  |   27 +++++++++++++++++---
>  .../libva/libva-intel-driver.inc                   |    2 +-
>  .../libva/libva-intel-driver_1.0.15.bb             |    8 ------
>  .../libva/libva-intel-driver_1.0.18.bb             |    8 ++++++
>  common/recipes-multimedia/libva/libva_1.0.12.bb    |    8 ------
>  common/recipes-multimedia/libva/libva_1.0.15.bb    |    8 ------
>  common/recipes-multimedia/libva/libva_1.0.16.bb    |    8 ++++++
>  7 files changed, 40 insertions(+), 29 deletions(-)
>  delete mode 100644 common/recipes-multimedia/libva/libva-intel-driver_1.0.15.bb
>  create mode 100644 common/recipes-multimedia/libva/libva-intel-driver_1.0.18.bb
>  delete mode 100644 common/recipes-multimedia/libva/libva_1.0.12.bb
>  delete mode 100644 common/recipes-multimedia/libva/libva_1.0.15.bb
>  create mode 100644 common/recipes-multimedia/libva/libva_1.0.16.bb
> 



