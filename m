Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89B04E01304
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 14:35:00 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Sep 2012 14:35:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,455,1344236400"; d="scan'208";a="195517735"
Received: from unknown (HELO [10.255.13.88]) ([10.255.13.88])
	by orsmga001.jf.intel.com with ESMTP; 20 Sep 2012 14:34:59 -0700
Message-ID: <1348176899.32247.40.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Thu, 20 Sep 2012 16:34:59 -0500
In-Reply-To: <849041c84291bc274805ae375232e7d2eecbd0e7.1347834237.git.nitin.a.kamble@intel.com>
References: <cover.1347834237.git.nitin.a.kamble@intel.com>
	<849041c84291bc274805ae375232e7d2eecbd0e7.1347834237.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, darren.hart@intel.com
Subject: Re: [PATCH 1/2] emgd-driver-bin: Fix package naming issue
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
X-List-Received-Date: Thu, 20 Sep 2012 21:35:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2012-09-16 at 15:27 -0700, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> emgd-driver-bin is generating rpm package with name libegl1.
> This name clashes with a package with sanme name from mesa-dri
> recipe. This name clash blocks installation of emgd user land
> binaries in the image. And due to missing emgd user land
> components X fails to start on BSPs like crownbay.
> 
> Fix this problem by specifying package names in the recipe with the
> PKG_ vars.
> 
> This fixes bug: [YOCTO #3063]

OK, I was finally able to get a build that had X working and was able to
test this and pull it into meta-intel/master.

Thanks,

Tom

> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  .../xorg-driver/emgd-driver-bin_1.14.bb            |    8 +++++++-
>  1 files changed, 7 insertions(+), 1 deletions(-)
> 
> diff --git a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
> index b1ba1b8..2464c38 100644
> --- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
> +++ b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
> @@ -7,7 +7,7 @@ to LICENSE_FLAGS_WHITELIST += \"License_emgd-driver-bin_1.14\" to your \
>  local.conf in order to enable it in a build."
>  LICENSE = "Intel-binary-only"
>  LICENSE_FLAGS = "license_${PN}_${PV}"
> -PR = "r1"
> +PR = "r2"
>  
>  EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
>  EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
> @@ -23,6 +23,12 @@ SRC_URI = "https://edc.intel.com/Download.aspx?id=6190;downloadfilename=LIN_IEMG
>  SRC_URI[md5sum] = "733a7f237ffce21238ce2c9956df4fd6"
>  SRC_URI[sha256sum] = "bcdc333b5edbda7c746a83ef821ded4a0ca55ead30980e4e3680cdb6469f45a2"
>  
> +# make sure generated rpm packages get non conflicting names
> +PKG_${PN} = "emgd-driver"
> +PKG_${PN}-dev = "emgd-driver-dev"
> +PKG_${PN}-dbg = "emgd-driver-dbg"
> +PKG_${PN}-doc = "emgd-driver-doc"
> +
>  # These are closed binaries generated elsewhere so don't check ldflags
>  INSANE_SKIP_${PN} = "ldflags"
>  



