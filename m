Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74624E0027E
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 09:14:28 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Aug 2012 09:14:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,797,1336374000"; d="scan'208";a="182975706"
Received: from unknown (HELO envy.home) ([10.7.199.146])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2012 09:14:27 -0700
Message-ID: <503261EC.6070603@linux.intel.com>
Date: Mon, 20 Aug 2012 09:12:28 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: rahul.saxena@intel.com
References: <cover.1345077384.git.rahul.saxena@intel.com>
	<4954b5758bd9b020dcfd2bb1283698af07499ba1.1345077384.git.rahul.saxena@intel.com>
In-Reply-To: <4954b5758bd9b020dcfd2bb1283698af07499ba1.1345077384.git.rahul.saxena@intel.com>
X-Enigmail-Version: 1.4.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-cedartrail: update PVR graphics driver to version 1.0.2
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
X-List-Received-Date: Mon, 20 Aug 2012 16:14:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Rahul,

A few questions for you below.

On 08/16/2012 11:36 AM, rahul.saxena@intel.com wrote:
> From: Rahul Saxena <rahul.saxena@intel.com>
> 
> This update of the driver enables support for B3 stepping of Cedarview
> processor and also support for DP/eDP ports.
> 
> Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
> ---
>  meta-cedartrail/README                             |    2 +-
>  meta-cedartrail/conf/machine/cedartrail.conf       |    2 +-
>  .../xorg-driver/cdv-pvr-driver.inc                 |   37 -----
>  .../xorg-driver/cdv-pvr-driver_1.0.2.bb            |  143 ++++++++++++++++++++
>  .../xorg-driver/cdv-pvr-driver_1.0.bb              |   99 --------------
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    6 +-
>  6 files changed, 148 insertions(+), 141 deletions(-)
>  delete mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
>  create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.2.bb
>  delete mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
> 
> diff --git a/meta-cedartrail/README b/meta-cedartrail/README
> index 493e831..715cad9 100755
> --- a/meta-cedartrail/README
> +++ b/meta-cedartrail/README
> @@ -61,7 +61,7 @@ Power VR Graphics user-space driver binaries are covered by a
>  "Intel Free Distribution Binary License". The build of this driver
>  can be enabled by adding the following line to the local.conf file:
>  
> -LICENSE_FLAGS_WHITELIST += "license_cdv-pvr-driver_1.0"
> +LICENSE_FLAGS_WHITELIST += "license_cdv-pvr-driver_1.0.2"
>  
>  To enable the layer that does not support Power VR graphics
>  add the following to the local.conf file:
> diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
> index dbd7d95..f00219e 100644
> --- a/meta-cedartrail/conf/machine/cedartrail.conf
> +++ b/meta-cedartrail/conf/machine/cedartrail.conf
> @@ -19,4 +19,4 @@ PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
>  
>  SYSLINUX_OPTS = "serial 0 115200"
>  SERIAL_CONSOLE = "115200 ttyS0"
> -APPEND += "console=ttyS0,115200 console=tty0"
> +APPEND += "console=ttyS0,115200 console=tty0 vmalloc=256MB"

Why is the vmalloc change required? This is a non-obvious change and
should be called out in the commit log.

> diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
> deleted file mode 100644
> index 787c1fb..0000000
> --- a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
> +++ /dev/null
> @@ -1,37 +0,0 @@
> -SUMMARY = "Cedartrail PowerVR Graphics Driver version [Gold] 1.0 binaries"
> -DESCRIPTION = "2D, 3D and Media user space driver for Cedartrail platform \
> -The binaries are covered by the Intel Free Distribution Binary License. \ 
> -The user must make himself/herself aware of the Licensing terms \
> -before enabling build of the Cedartrail PowerVR Graphics Driver via \
> -this recipe.  Please see the README in meta-cedartrail for instructions \
> -for enabling the build of the driver "
> - 
> -LICENSE_FLAGS = "license_${PN}_${PV}"
> -LICENSE = "Intel Free Distribution Binary License"
> -
> -LIC_FILES_CHKSUM = " \
> -    file://${S}/usr/share/doc/psb-video-cdv-0.16/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65  \
> -    file://${S}/usr/share/doc/pvr-bin-cdv-1.7.788837_10/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65"
> -
> -INC_PR = "r1"
> -
> -DEPENDS = "rpm-native"
> -
> -FILES_${PN} += "${libdir}/dri ${libdir}/pvr/cdv/dri ${libdir}/pvr/cdv ${libdir}/xorg/modules/drivers"
> -FILES_${PN}-dev += "${libdir}/dri ${libdir}/pvr/cdv/dri ${libdir}/xorg/modules/drivers"
> -FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug ${libdir}/pvr/cdv/dri/.debug"
> -
> -FILES_${PN} += "${base_libdir}/firmware"
> -FILES_${PN} += "${sysconfdir}/X11/xorg.conf.d"
> -
> -FILES_${PN} += "${libdir}/lib*.so"
> -FILES_${PN}-dev += "${libdir}/lib*.so"
> -FILES_${PN}-dbg += "${libdir}/.debug"
> -
> -FILES_${PN} += "${libdir}/pvr/cdv/xorg/modules/drivers"
> -
> -FILES_${PN} += "${datadir}/doc/psb-video-cdv-0.16/license.txt"
> -FILES_${PN} += "${datadir}/doc/pvr-bin-cdv-1.7.788837_10/license.txt"
> -
> -
> -                        
> diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.2.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.2.bb
> new file mode 100644
> index 0000000..047a7fd
> --- /dev/null
> +++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.2.bb
> @@ -0,0 +1,143 @@
> +SUMMARY = "Cedartrail PowerVR Graphics Driver version 1.0.2 binaries"
> +DESCRIPTION = "2D, 3D and Media user space driver for Cedartrail platform \
> +The binaries are covered by the Intel Free Distribution Binary License. \ 
> +The user must make himself/herself aware of the Licensing terms \
> +before enabling build of the Cedartrail PowerVR Graphics Driver via \
> +this recipe.  Please see the README in meta-cedartrail for instructions \
> +for enabling the build of the driver "
> + 
> +LICENSE_FLAGS = "license_${PN}_${PV}"
> +LICENSE = "Intel Free Distribution Binary License"
> +LIC_FILES_CHKSUM = " \
> +    file://${S}/usr/share/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65  \
> +    file://${S}/usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt;md5=b14d99f8d4ed664e9ce95057f0bb5b65"
> +
> +DEPENDS = "rpm-native libva"
> +
> +PR = "r0"
> +
> +PSB-VIDEO = "psb-video-cdv-0.17-2.1.i586.rpm"
> +PSB-VIDEO-REV = "0.17"
> +
> +PVR-BIN = "pvr-bin-cdv-1.7.862890_05-1.1.i586.rpm"
> +PVR-BIN-REV = "1.7.862890"
> +PVR-BIN-REV_N = "1.7.862890_05"
> +
> +LIBWSBM = "libwsbm-cdv-1.1.0-3.1.i586.rpm"
> +
> +
> +NON-OSS-PATH = "http://repo.meego.com/MeeGo/builds/1.2.0/1.2.0.10.1.20120723.1/repos/non-oss/ia32/packages/"
> +OSS-PATH =     "http://repo.meego.com/MeeGo/updates/1.2.0/repos/oss/ia32/packages/"
> +
> +
> +SRC_URI = "${NON-OSS-PATH}${PSB-VIDEO};name=psbrpm \
> +	   ${NON-OSS-PATH}${PVR-BIN};name=pvrrpm \
> +	   ${OSS-PATH}${LIBWSBM};name=wsbmrpm \
> +		"
> +SRC_URI[pvrrpm.md5sum] = "92dbb85a259dff73c6e4de68d158ef10"
> +SRC_URI[pvrrpm.sha256sum] = "46356021efa990cde367b2cdec8626db8c1457234771c6459a106b8342c549c1"
> +
> +SRC_URI[psbrpm.md5sum] =  "0300f7485306bb039ee33e6238a00ae3"
> +SRC_URI[psbrpm.sha256sum] = "8e71f2ff7464b20823d7f552729d39cb9e3d75badc9b206d43bcc2429849f6c0"
> +
> +SRC_URI[wsbmrpm.md5sum] = "b8b21ca8325abd7850d197f9bf3071c7"
> +SRC_URI[wsbmrpm.sha256sum] = "f436386967c1adec5211e662251bd542bbe0b8cd55e1d9f9c203da5ee934d4f0"
> +
> +S  = "${WORKDIR}/cdv-graphics-drivers_${PV}"
> +
> +FILES_${PN} +=     "${libdir}/dri ${libdir}/pvr/cdv/dri ${libdir}/pvr/cdv ${libdir}/xorg/modules/drivers"
> +FILES_${PN}-dev += "${libdir}/dri ${libdir}/pvr/cdv/dri ${libdir}/xorg/modules/drivers"

This uses ${libdir}/dri in both FILES_* variables. I believe this means
FILES_${PN} gets those files and the -dev package will not. These should
be cleaned up to accurately reflect the desired packaging.

Same with ${libdir}/pvr/cdv/dri and ${libdir}/xorg/modules/drivers

Similar problems below, although I see this is carried over from the
previous recipe. I won't hold up the pull for this, but please consider
cleaning it up.

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
> +FILES_${PN} += "${datadir}/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt"
> +FILES_${PN} += "${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt"
> +
> +
> +TARGET_CC_ARCH += "${CFLAGS}{LDFLAGS}"
> +INSANE_SKIP_${PN} += "ldflags"
> +INSANE_SKIP_${PN}-dbg += "ldflags"
> +
> +do_configure () {
> +
> +# Extract  license files from rpms
> +rpm2cpio.sh ${WORKDIR}/${PSB-VIDEO} |cpio -ivd ./usr/share/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt
> +rpm2cpio.sh ${WORKDIR}/${PVR-BIN} |cpio -ivd ./usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt
> +
> +}
> +
> +do_install() {
> +	
> +	mv ${WORKDIR}/*.rpm  ${S}	
> +				
> +	rpm2cpio.sh ${S}/${LIBWSBM} | cpio -id
> +	
> +	install -d -m 0755                                    ${D}${libdir}/dri
> +
> +	install -m 0755 ${S}/usr/lib/*                        ${D}${libdir}/
> +
> +	rpm2cpio.sh ${S}/${PSB-VIDEO} | cpio -id
> +
> +	install -d -m 0755				      ${D}${base_libdir}/firmware
> +
> +	install -m 0755 ${S}/usr/lib/dri/*     		      ${D}${libdir}/dri/
> +
> +	install -m 0755 ${S}/lib/firmware/*		      ${D}${base_libdir}/firmware
> +
> +	rpm2cpio.sh  ${S}/${PVR-BIN}  | cpio -id
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
> +	install -m 0755 ${S}/usr/lib/libegl4ogl.so.${PVR-BIN-REV}   	${D}${libdir}/libegl4ogl.so
> +	install -m 0755 ${S}/usr/lib/libEGL.so.${PVR-BIN-REV}  		${D}${libdir}/libEGL.so
> +	install -m 0755 ${S}/usr/lib/libGLES_CM.so.${PVR-BIN-REV} 	${D}${libdir}/libGLES_CM.so
> +	install -m 0755 ${S}/usr/lib/libGLES_CM.so.${PVR-BIN-REV}  	${D}${libdir}/libGLESv1_CM.so
> +	install -m 0755 ${S}/usr/lib/libGLESv2.so.${PVR-BIN-REV}  	${D}${libdir}/libGLESv2.so
> +	install -m 0755 ${S}/usr/lib/libglslcompiler.so.${PVR-BIN-REV} 	${D}${libdir}/libglslcompiler.so
> +	install -m 0755 ${S}/usr/lib/libIMGegl.so.${PVR-BIN-REV}  	${D}${libdir}/libIMGegl.so
> +	install -m 0755 ${S}/usr/lib/libOpenVG.so.${PVR-BIN-REV} 	${D}${libdir}/libOpenVG.so
> +	install -m 0755 ${S}/usr/lib/libOpenVGU.so.${PVR-BIN-REV} 	${D}${libdir}/libOpenVGU.so
> +	install -m 0755 ${S}/usr/lib/libpvr2d.so.${PVR-BIN-REV}  	${D}${libdir}/libpvr2d.so
> +	install -m 0755 ${S}/usr/lib/libPVROGL_MESA.so.${PVR-BIN-REV} 	${D}${libdir}/libPVROGL_MESA.so
> +	install -m 0755 ${S}/usr/lib/libpvrPVR2D_BLITWSEGL.so.${PVR-BIN-REV} 	${D}${libdir}/libpvrPVR2D_BLITWSEGL.so
> +	install -m 0755 ${S}/usr/lib/libpvrPVR2D_DRIWSEGL.so.${PVR-BIN-REV} 	${D}${libdir}/libpvrPVR2D_DRIWSEGL.so
> +	install -m 0755 ${S}/usr/lib/libpvrPVR2D_FLIPWSEGL.so.${PVR-BIN-REV}  	${D}${libdir}/libpvrPVR2D_FLIPWSEGL.so
> +	install -m 0755 ${S}/usr/lib/libpvrPVR2D_LINUXFBWSEGL.so.${PVR-BIN-REV}	${D}${libdir}/libpvrPVR2D_LINUXFBWSEGL.so
> +	install -m 0755 ${S}/usr/lib/libPVRScopeServices.so.${PVR-BIN-REV}  	${D}${libdir}/libPVRScopeServices.so
> +	install -m 0755 ${S}/usr/lib/libsrv_init.so.${PVR-BIN-REV}  	${D}${libdir}/libsrv_init.so
> +	install -m 0755 ${S}/usr/lib/libsrv_um.so.${PVR-BIN-REV} 	${D}${libdir}/libsrv_um.so
> +	install -m 0755 ${S}/usr/lib/libusc.so.${PVR-BIN-REV} 		${D}${libdir}/libusc.so
> +
> +	install -m 0755 ${S}/usr/lib/pvr/cdv/*.so.*           		${D}${libdir}/pvr/cdv/    
> +
> +	install -d -m 0755 ${D}${libdir}/pvr/cdv/xorg/modules/drivers
> +	install -m 0755 ${S}/usr/lib/pvr/cdv/xorg/modules/drivers/* 	${D}${libdir}/pvr/cdv/xorg/modules/drivers/
> +
> +    	install -d -m 0755                                    		${D}${libdir}/xorg/modules/drivers
> +   
> +	install -m 0755 ${S}/usr/lib/xorg/modules/drivers/*   		${D}${libdir}/xorg/modules/drivers/
> +   
> +	install -d -m 0755 ${D}${datadir}/doc/psb-video-cdv-${PSB-VIDEO-REV}
> +	install -d -m 0755 ${D}${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_N}
> +
> +	install -m 0755 ${S}/usr/share/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt ${D}${datadir}/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt
> +	install -m 0755 ${S}/usr/share/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt	${D}${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_N}/license.txt
> +
> +}
> diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
> deleted file mode 100644
> index 9af0eb8..0000000
> --- a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
> +++ /dev/null
> @@ -1,99 +0,0 @@
> -require cdv-pvr-driver.inc
> -
> -PR = "${INC_PR}.1"
> -
> -DEPENDS = "libva"
> -
> -SRC_URI = "http://repo.meego.com/MeeGo/updates/1.2.0/repos/non-oss/ia32/packages/psb-video-cdv-0.16-1.1.i586.rpm;name=psbrpm \
> -	   http://repo.meego.com/MeeGo/updates/1.2.0/repos/non-oss/ia32/packages/pvr-bin-cdv-1.7.788837_10-1.1.i586.rpm;name=pvrrpm \
> -	   http://repo.meego.com/MeeGo/updates/1.2.0/repos/oss/ia32/packages/libwsbm-cdv-1.1.0-3.1.i586.rpm;name=wsbmrpm \
> -		"
> -SRC_URI[pvrrpm.md5sum] = "06dbacd7f0f5bb10132eb5477ae9267a"
> -SRC_URI[pvrrpm.sha256sum] = "1e42c57485e46a1712e26f48df44a2f5305a82ca98afc5bf4f90a93c9631f509"
> -
> -SRC_URI[psbrpm.md5sum] =  "fd213baa2af33d35e8b552e586b02b90"
> -SRC_URI[psbrpm.sha256sum] = "cda281798ebbd280b6d2caf2a09961db0d719f929b808c6360c81db323aeee71"
> -
> -SRC_URI[wsbmrpm.md5sum] = "b8b21ca8325abd7850d197f9bf3071c7"
> -SRC_URI[wsbmrpm.sha256sum] = "f436386967c1adec5211e662251bd542bbe0b8cd55e1d9f9c203da5ee934d4f0"
> -
> -
> -S  = "${WORKDIR}/cdv-graphics-drivers_${PV}"
> -
> -do_configure () {
> -
> -# Extract  license files from rpms
> -rpm2cpio ${WORKDIR}/psb-video-cdv-0.16-1.1.i586.rpm |cpio -ivd ./usr/share/doc/psb-video-cdv-0.16/license.txt
> -rpm2cpio ${WORKDIR}/pvr-bin-cdv-1.7.788837_10-1.1.i586.rpm |cpio -ivd ./usr/share/doc/pvr-bin-cdv-1.7.788837_10/license.txt
> -
> -}
> -
> -
> -do_install() {
> - 	
> -	
> -	mv ${WORKDIR}/*.rpm  ${S}	
> -				
> -	rpm2cpio ${S}/libwsbm-cdv-1.1.0-3.1.i586.rpm | cpio -id
> -	
> -	install -d -m 0755                                    ${D}${libdir}/dri
> -
> -	install -m 0755 ${S}/usr/lib/*                        ${D}${libdir}/
> -
> -	rpm2cpio ${S}/psb-video-cdv-0.16-1.1.i586.rpm | cpio -id
> -
> -	install -d -m 0755				      ${D}${base_libdir}/firmware
> -
> -	install -m 0755 ${S}/usr/lib/dri/*     		      ${D}${libdir}/dri/
> -
> -	install -m 0755 ${S}/lib/firmware/*		      ${D}${base_libdir}/firmware
> -
> -	rpm2cpio ${S}/pvr-bin-cdv-1.7.788837_10-1.1.i586.rpm  | cpio -id
> -
> -	install -d -m 0755                                    ${D}${libdir}/pvr/cdv/dri
> -
> -	install -m 0755 ${S}/usr/lib/pvr/cdv/dri/*            ${D}${libdir}/pvr/cdv/dri
> -
> -	install -d -m 0755                                    ${D}${sysconfdir}/X11/xorg.conf.d
> -	install -m 0755 ${S}/etc/powervr.ini		      ${D}${sysconfdir}/	
> -	install -m 0755 ${S}/etc/X11/xorg.conf.d/*            ${D}${sysconfdir}/X11/xorg.conf.d/
> -	install -m 0755 ${S}/usr/lib/dri/pvr_dri.so    	      ${D}${libdir}/dri/
> -	install -m 0755 ${S}/usr/lib/*.so.*                   ${D}${libdir}/    
> -
> -	
> -	install -m 0755 ${S}/usr/lib/libegl4ogl.so.1.7.788837   			${D}${libdir}/libegl4ogl.so
> -	install -m 0755 ${S}/usr/lib/libEGL.so.1.7.788837  				${D}${libdir}/libEGL.so
> -	install -m 0755 ${S}/usr/lib/libGLES_CM.so.1.7.788837 				${D}${libdir}/libGLES_CM.so
> -	install -m 0755 ${S}/usr/lib/libGLES_CM.so.1.7.788837  				${D}${libdir}/libGLESv1_CM.so
> -	install -m 0755 ${S}/usr/lib/libGLESv2.so.1.7.788837  				${D}${libdir}/libGLESv2.so
> -	install -m 0755 ${S}/usr/lib/libglslcompiler.so.1.7.788837 			${D}${libdir}/libglslcompiler.so
> -	install -m 0755 ${S}/usr/lib/libIMGegl.so.1.7.788837  				${D}${libdir}/libIMGegl.so
> -	install -m 0755 ${S}/usr/lib/libOpenVG.so.1.7.788837 				${D}${libdir}/libOpenVG.so
> -	install -m 0755 ${S}/usr/lib/libOpenVGU.so.1.7.788837 				${D}${libdir}/libOpenVGU.so
> -	install -m 0755 ${S}/usr/lib/libpvr2d.so.1.7.788837  				${D}${libdir}/libpvr2d.so
> -	install -m 0755 ${S}/usr/lib/libPVROGL_MESA.so.1.7.788837 			${D}${libdir}/libPVROGL_MESA.so
> -	install -m 0755 ${S}/usr/lib/libpvrPVR2D_BLITWSEGL.so.1.7.788837 		${D}${libdir}/libpvrPVR2D_BLITWSEGL.so
> -	install -m 0755 ${S}/usr/lib/libpvrPVR2D_DRIWSEGL.so.1.7.788837 		${D}${libdir}/libpvrPVR2D_DRIWSEGL.so
> -	install -m 0755 ${S}/usr/lib/libpvrPVR2D_FLIPWSEGL.so.1.7.788837  		${D}${libdir}/libpvrPVR2D_FLIPWSEGL.so
> -	install -m 0755 ${S}/usr/lib/libpvrPVR2D_LINUXFBWSEGL.so.1.7.788837  		${D}${libdir}/libpvrPVR2D_LINUXFBWSEGL.so
> -	install -m 0755 ${S}/usr/lib/libPVRScopeServices.so.1.7.788837  		${D}${libdir}/libPVRScopeServices.so
> -	install -m 0755 ${S}/usr/lib/libsrv_init.so.1.7.788837  			${D}${libdir}/libsrv_init.so
> -	install -m 0755 ${S}/usr/lib/libsrv_um.so.1.7.788837 				${D}${libdir}/libsrv_um.so
> -	install -m 0755 ${S}/usr/lib/libusc.so.1.7.788837 				${D}${libdir}/libusc.so
> -
> -	install -m 0755 ${S}/usr/lib/pvr/cdv/*.so.*           				${D}${libdir}/pvr/cdv/    
> -
> -	install -d -m 0755 ${D}${libdir}/pvr/cdv/xorg/modules/drivers
> -	install -m 0755 ${S}/usr/lib/pvr/cdv/xorg/modules/drivers/* 			${D}${libdir}/pvr/cdv/xorg/modules/drivers/
> -
> -    	install -d -m 0755                                    				${D}${libdir}/xorg/modules/drivers
> -   
> -	install -m 0755 ${S}/usr/lib/xorg/modules/drivers/*   				${D}${libdir}/xorg/modules/drivers/
> -   
> -	install -d -m 0755 ${D}${datadir}/doc/psb-video-cdv-0.16
> -	install -d -m 0755 ${D}${datadir}/doc/pvr-bin-cdv-1.7.788837_10
> -
> -	install -m 0755 ${S}/usr/share/doc/psb-video-cdv-0.16/license.txt 		${D}${datadir}/doc/psb-video-cdv-0.16/license.txt
> -	install -m 0755 ${S}/usr/share/doc/pvr-bin-cdv-1.7.788837_10/license.txt	${D}${datadir}/doc/pvr-bin-cdv-1.7.788837_10/license.txt
> -
> -}
> diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
> index 7a0a2a3..682aa08 100644
> --- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
> +++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
> @@ -15,9 +15,9 @@ KMACHINE_cedartrail-nopvr  = "cedartrail"
>  KBRANCH_cedartrail-nopvr  = "yocto/standard/cedartrail"
>  KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
>  
> -SRCREV_machine_pn-linux-yocto_cedartrail ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
> +SRCREV_machine_pn-linux-yocto_cedartrail ?= "3b5b629560f2a36426c19f4f18e3633aa93c955e"
>  SRCREV_meta_pn-linux-yocto_cedartrail ?= "46e8fc2bbbe73514e8d99101adaaa373f760ffa7"
> -SRCREV_pvr_pn-linux-yocto_cedartrail ?= "997f5644664b31ebefd6e16c451c4a3729eb378a"
> +SRCREV_pvr_pn-linux-yocto_cedartrail ?= "7828ab82533828b924dbfad5158e274a8bb04df3"
>  
> -SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
> +SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "3b5b629560f2a36426c19f4f18e3633aa93c955e"
>  SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
> 

The SRCREV changes should be done independently if they can be without
breakage between commits. This simplifies the process of reverting just
the kernel changes should that be needed.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

