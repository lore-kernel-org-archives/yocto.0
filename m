Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA1B5E0044D
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 10:56:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Apr 2012 10:56:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="126946338"
Received: from unknown (HELO [10.255.12.48]) ([10.255.12.48])
	by orsmga001.jf.intel.com with ESMTP; 09 Apr 2012 10:56:58 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: kishore.k.bodke@intel.com
In-Reply-To: <64382e0b94ea439163d2f2dfa4681afac8e70e67.1333496206.git.kishore.k.bodke@intel.com>
References: <cover.1333496206.git.kishore.k.bodke@intel.com>
	<64382e0b94ea439163d2f2dfa4681afac8e70e67.1333496206.git.kishore.k.bodke@intel.com>
Date: Mon, 09 Apr 2012 12:56:11 -0500
Message-ID: <1333994171.2335.65.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/7] Cedartrail: Add PVR graphics support.
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
X-List-Received-Date: Mon, 09 Apr 2012 17:56:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Kishore,

Comments below...

On Tue, 2012-04-03 at 16:43 -0700, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> Adding PVR Graphics support and separate out
> xorg.conf for building both with pvr and no-pvr.
> 
> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
> ---
>  conf/machine/include/ia32-base.inc                 |    2 +
>  .../xorg-driver/cdv-pvr-driver.inc                 |   39 ++++++++
>  .../xorg-driver/cdv-pvr-driver_1.0.bb              |  101 ++++++++++++++++++++
>  .../xserver-xf86-config/cedartrail-nopvr/xorg.conf |   26 +++++
>  .../xserver-xf86-config/cedartrail/xorg.conf       |   24 ++---
>  5 files changed, 176 insertions(+), 16 deletions(-)
>  create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
>  create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
>  create mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf
> 
> diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
> index 9b2ef5a..d1bd0d7 100644
> --- a/conf/machine/include/ia32-base.inc
> +++ b/conf/machine/include/ia32-base.inc
> @@ -64,3 +64,5 @@ XSERVER_IA32_EMGD = "emgd-driver-bin \
>             "
>  
>  XSERVER_IA32_VESA = "xf86-video-vesa"
> +
> +XSERVER_IA32_PVR = "cdv-pvr-driver"

Since this is modifying a common file, can you please add this as a
separate commit?

Also, since you're adding this to common code, it won't work for any
other BSP since the recipe is in meta-cedartrail only.  Is this meant to
be usable by other BSPs, maybe in the near future?  If so, you should
move this to common/ to match the above definition, otherwise, just keep
it all local to your BSP.

Also, either way, since the cdv-pvr-driver is a new recipe, please keep
that as a separate commit as well.

> diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
> new file mode 100644
> index 0000000..0de6cbe
> --- /dev/null
> +++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
> @@ -0,0 +1,39 @@
> +SUMMARY = "Cedartrail PowerVR Graphics Driver version [Gold] 1.0 binaries"
> +DESCRIPTION = "2D, 3D and Media user space driver for Cedartrail platform \
> +The binaries are covered by the Intel Free Distribution Binary License. \ 
> +The user must make himself/herself aware of the Licensing terms \
> +before enabling build of the Cedartrail PowerVR Graphics Driver via \
> +this recipe.  Please see the README in meta-cedartrail for instructions \
> +for enabling the build of the driver "
> + 
> +MEEGO_MIRROR = "http://download.meego.com/live/MeeGo:/1.2.0:/CedarTrail:"
> +
> +LICENSE_FLAGS = "license_${PN}_${PV}"
> +LICENSE = "Intel Free Distribution Binary License"
> +LIC_FILES_CHKSUM = " \
> +    file://${S}/usr/share/doc/psb-video-cdv-0.12/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65  \
> +    file://${S}/usr/share/doc/pvr-bin-cdv-1.7.788837_05/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65"
> +
> +
> +INC_PR = "r0"
> +
> +DEPENDS = "rpm-native"
> +
> +FILES_${PN} += "${libdir}/dri ${libdir}/pvr/cdv/dri ${libdir}/pvr/cdv ${libdir}/xorg/modules/drivers"
> +FILES_${PN}-dev += "${libdir}/dri ${libdir}/pvr/cdv/dri ${libdir}/xorg/modules/drivers"
> +FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug ${libdir}/pvr/cdv/dri/.debug"
> +
> +FILES_${PN} += "${base_libdir}/firmware"
> +FILES_${PN} += "${sysconfdir}/X11/xorg.conf.d"
> +
> +FILES_${PN} += "${libdir}/lib*.so"
> +FILES_${PN}-dev += "${libdir}/lib*.so"
> +FILES_${PN}-dbg += "${libdir}/.debug"
> +
> +FILES_${PN} += "${libdir}/pvr/cdv/xorg/modules/drivers"
> +
> +FILES_${PN} += "${datadir}/doc/psb-video-cdv-0.12/license.txt"
> +FILES_${PN} += "${datadir}/doc/pvr-bin-cdv-1.7.788837_05/license.txt"
> +
> +
> +                        
> diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
> new file mode 100644
> index 0000000..496da1e
> --- /dev/null
> +++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
> @@ -0,0 +1,101 @@
> +require cdv-pvr-driver.inc
> +
> +PR = "${INC_PR}.0"
> +
> +DEPENDS = "libva"
> +
> +SRC_URI = "${MEEGO_MIRROR}/non-oss/MeeGo_1.2.0_CedarTrail/i586/psb-video-cdv-0.12-1.1.i586.rpm;name=psbrpm \ 
> +	   ${MEEGO_MIRROR}/oss/standard/i586/libwsbm-cdv-1.1.0-3.1.i586.rpm;name=wsbmrpm \
> +	   ${MEEGO_MIRROR}/non-oss/MeeGo_1.2.0_CedarTrail/i586/pvr-bin-cdv-1.7.788837_05-1.1.i586.rpm;name=pvrrpm \
> +           "
> +
> +SRC_URI[pvrrpm.md5sum] = "951fa9edcbc2a3ddb30450079869362e"
> +SRC_URI[pvrrpm.sha256sum] = "537dd8a98ac2e3a101063abc62682c3be8c37ac29782a876eafce113ffa5b421"
> +
> +SRC_URI[psbrpm.md5sum] =  "d4b6b383722264f3b781aeb240c88037"
> +SRC_URI[psbrpm.sha256sum] = "e88f95fc73a79adf76ee33d3d9874cec23bb1afe8149d7dc5842d67e58da72f5"
> +
> +SRC_URI[wsbmrpm.md5sum] = "8d90436b151ddf72f620771f2552b597"
> +SRC_URI[wsbmrpm.sha256sum] = "82f78f47c151f0e7d567574ee372504e5b395fb13796caa765f9c30754b5bf63"
> +
> +
> +S  = "${WORKDIR}/cdv-graphics-drivers_${PV}"
> +
> +do_configure () {
> +
> +# Extract  license files from rpms
> +rpm2cpio ${WORKDIR}/psb-video-cdv-0.12-1.1.i586.rpm |cpio -ivd ./usr/share/doc/psb-video-cdv-0.12/license.txt
> +rpm2cpio ${WORKDIR}/pvr-bin-cdv-1.7.788837_05-1.1.i586.rpm |cpio -ivd ./usr/share/doc/pvr-bin-cdv-1.7.788837_05/license.txt
> +
> +}
> +
> +
> +do_install() {
> + 	
> +	
> +	mv ${WORKDIR}/*.rpm  ${S}	
> +				
> +	rpm2cpio ${S}/libwsbm-cdv-1.1.0-3.1.i586.rpm | cpio -id
> +	
> +	install -d -m 0755                                    ${D}${libdir}/dri
> +
> +	install -m 0755 ${S}/usr/lib/*                        ${D}${libdir}/
> +
> +	rpm2cpio ${S}/psb-video-cdv-0.12-1.1.i586.rpm | cpio -id
> +
> +
> +	install -d -m 0755				      ${D}${base_libdir}/firmware
> +
> +	install -m 0755 ${S}/usr/lib/dri/*     		      ${D}${libdir}/dri/
> +
> +	install -m 0755 ${S}/lib/firmware/*		      ${D}${base_libdir}/firmware
> +
> +	rpm2cpio ${S}/pvr-bin-cdv-1.7.788837_05-1.1.i586.rpm  | cpio -id
> +	
> +	install -d -m 0755                                    ${D}${libdir}/pvr/cdv/dri
> +
> +	install -m 0755 ${S}/usr/lib/pvr/cdv/dri/*            ${D}${libdir}/pvr/cdv/dri
> +
> +	install -d -m 0755                                    ${D}${sysconfdir}/X11/xorg.conf.d
> +	install -m 0755 ${S}/etc/powervr.ini		      ${D}${sysconfdir}/	
> +	install -m 0755 ${S}/etc/X11/xorg.conf.d/*            ${D}${sysconfdir}/X11/xorg.conf.d/
> +	install -m 0755 ${S}/usr/lib/dri/pvr_dri.so    	      ${D}${libdir}/dri/
> +	install -m 0755 ${S}/usr/lib/*.so.*                   ${D}${libdir}/    
> +
> +	
> +	install -m 0755 ${S}/usr/lib/libegl4ogl.so.1.7.788837   			${D}${libdir}/libegl4ogl.so
> +	install -m 0755 ${S}/usr/lib/libEGL.so.1.7.788837  				${D}${libdir}/libEGL.so
> +	install -m 0755 ${S}/usr/lib/libGLES_CM.so.1.7.788837 				${D}${libdir}/libGLES_CM.so
> +	install -m 0755 ${S}/usr/lib/libGLES_CM.so.1.7.788837  				${D}${libdir}/libGLESv1_CM.so
> +	install -m 0755 ${S}/usr/lib/libGLESv2.so.1.7.788837  				${D}${libdir}/libGLESv2.so
> +	install -m 0755 ${S}/usr/lib/libglslcompiler.so.1.7.788837 			${D}${libdir}/libglslcompiler.so
> +	install -m 0755 ${S}/usr/lib/libIMGegl.so.1.7.788837  				${D}${libdir}/libIMGegl.so
> +	install -m 0755 ${S}/usr/lib/libOpenVG.so.1.7.788837 				${D}${libdir}/libOpenVG.so
> +	install -m 0755 ${S}/usr/lib/libOpenVGU.so.1.7.788837 				${D}${libdir}/libOpenVGU.so
> +	install -m 0755 ${S}/usr/lib/libpvr2d.so.1.7.788837  				${D}${libdir}/libpvr2d.so
> +	install -m 0755 ${S}/usr/lib/libPVROGL_MESA.so.1.7.788837 			${D}${libdir}/libPVROGL_MESA.so
> +	install -m 0755 ${S}/usr/lib/libpvrPVR2D_BLITWSEGL.so.1.7.788837 		${D}${libdir}/libpvrPVR2D_BLITWSEGL.so
> +	install -m 0755 ${S}/usr/lib/libpvrPVR2D_DRIWSEGL.so.1.7.788837 		${D}${libdir}/libpvrPVR2D_DRIWSEGL.so
> +	install -m 0755 ${S}/usr/lib/libpvrPVR2D_FLIPWSEGL.so.1.7.788837  		${D}${libdir}/libpvrPVR2D_FLIPWSEGL.so
> +	install -m 0755 ${S}/usr/lib/libpvrPVR2D_LINUXFBWSEGL.so.1.7.788837  		${D}${libdir}/libpvrPVR2D_LINUXFBWSEGL.so
> +	install -m 0755 ${S}/usr/lib/libPVRScopeServices.so.1.7.788837  		${D}${libdir}/libPVRScopeServices.so
> +	install -m 0755 ${S}/usr/lib/libsrv_init.so.1.7.788837  			${D}${libdir}/libsrv_init.so
> +	install -m 0755 ${S}/usr/lib/libsrv_um.so.1.7.788837 				${D}${libdir}/libsrv_um.so
> +	install -m 0755 ${S}/usr/lib/libusc.so.1.7.788837 				${D}${libdir}/libusc.so
> +
> +	install -m 0755 ${S}/usr/lib/pvr/cdv/*.so.*           				${D}${libdir}/pvr/cdv/    
> +
> +	install -d -m 0755 ${D}${libdir}/pvr/cdv/xorg/modules/drivers
> +	install -m 0755 ${S}/usr/lib/pvr/cdv/xorg/modules/drivers/* 			${D}${libdir}/pvr/cdv/xorg/modules/drivers/
> +
> +    	install -d -m 0755                                    				${D}${libdir}/xorg/modules/drivers
> +   
> +	install -m 0755 ${S}/usr/lib/xorg/modules/drivers/*   				${D}${libdir}/xorg/modules/drivers/
> +   
> +	install -d -m 0755 ${D}${datadir}/doc/psb-video-cdv-0.12
> +	install -d -m 0755 ${D}${datadir}/doc/pvr-bin-cdv-1.7.788837_05
> +
> +    	install -m 0755 ${S}/usr/share/doc/psb-video-cdv-0.12/license.txt 		${D}${datadir}/doc/psb-video-cdv-0.12/license.txt
> +	install -m 0755 ${S}/usr/share/doc/pvr-bin-cdv-1.7.788837_05/license.txt	${D}${datadir}/doc/pvr-bin-cdv-1.7.788837_05/license.txt
> +
> +}

> diff --git a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf
> new file mode 100644
> index 0000000..da4fc3c
> --- /dev/null
> +++ b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf
> @@ -0,0 +1,26 @@
> +Section "Device"
> +    Identifier	"Generic VESA"
> +    Driver	"vesa"
> +EndSection
> +
> +Section "Monitor"
> +    Identifier    "Generic Monitor"
> +    Option        "DPMS"
> +EndSection
> +
> +Section "Screen"
> +    Identifier    "Default Screen"
> +    Device	  "Generic VESA"
> +    Monitor       "Generic Monitor"
> +    DefaultDepth  24
> +EndSection
> +
> +Section "ServerLayout"
> +    Identifier     "Default Layout"
> +    Screen         "Default Screen"
> +EndSection
> +
> +Section "ServerFlags"
> +    Option        "DontZap"  "0"
> +    Option        "AutoAddDevices"  "False"
> +EndSection
> diff --git a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
> index da4fc3c..1d085a4 100644
> --- a/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
> +++ b/meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
> @@ -1,23 +1,15 @@
>  Section "Device"
> -    Identifier	"Generic VESA"
> -    Driver	"vesa"
> -EndSection
> -
> -Section "Monitor"
> -    Identifier    "Generic Monitor"
> -    Option        "DPMS"
> -EndSection
> -
> -Section "Screen"
> -    Identifier    "Default Screen"
> -    Device	  "Generic VESA"
> -    Monitor       "Generic Monitor"
> -    DefaultDepth  24
> +        Option     "DRIDisableVSync"    "False"
> +        Identifier  "Card0"
> +        Driver      "pvr"
> +        BusID       "PCI:0:2:0"
> +        Option      "SoftEXA"           "Off"
> +        Option      "FlipChain"         "On"
>  EndSection
>  
>  Section "ServerLayout"
> -    Identifier     "Default Layout"
> -    Screen         "Default Screen"
> +        Identifier "default screen"
> +        Option  "AIGLX" "on"
>  EndSection
>  
>  Section "ServerFlags"

Also, please keep the xorg.conf changes separate as well...

Thanks,

Tom


