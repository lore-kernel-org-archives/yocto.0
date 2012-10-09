Return-Path: <darren.hart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08C50E002AB
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 15:45:05 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 09 Oct 2012 15:45:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,562,1344236400"; d="scan'208";a="154362064"
Received: from unknown (HELO envy.home) ([10.255.14.86])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Oct 2012 15:45:04 -0700
Message-ID: <5074A8C3.4050501@intel.com>
Date: Tue, 09 Oct 2012 15:44:19 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <cover.1349820369.git.nitin.a.kamble@intel.com>
	<14fc20369024f6e7b85640fc4fde431a0f23de4c.1349820369.git.nitin.a.kamble@intel.com>
In-Reply-To: <14fc20369024f6e7b85640fc4fde431a0f23de4c.1349820369.git.nitin.a.kamble@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/5] emgd-driver_bin_1.10: drop it as all BSP using EMGD have switched to 1.14 version now
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
X-List-Received-Date: Tue, 09 Oct 2012 22:45:06 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I'm taking a hard line in meta-intel on commit messages. There are no 1
line commit messages in meta-intel. They must also not have lines over
72 characters or so - this prevent truncation when using "git log" from
an 80 character terminal.

Consider this instead:

----
emgd-driver_bin_1.10: Remove in favor of 1.14

All BSPs have been migrated to 1.14, we can now
safely retire 1.10

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
----

--
Darren

On 10/09/2012 03:10 PM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  .../xorg-driver/emgd-driver-bin_1.10.bb            |   93 --------------------
>  1 files changed, 0 insertions(+), 93 deletions(-)
>  delete mode 100644 common/recipes-graphics/xorg-driver/emgd-driver-bin_1.10.bb
> 
> diff --git a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.10.bb b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.10.bb
> deleted file mode 100644
> index 6d80bee..0000000
> --- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.10.bb
> +++ /dev/null
> @@ -1,93 +0,0 @@
> -SUMMARY = "EMGD 1.10 xserver binaries"
> -DESCRIPTION = "EMGD 1.10 includes some userspace binaries that use non-free \
> -licensing, which are now available via a non-click-through downloadable \
> -tarball, and is what this recipe now uses.  Since it is a non-free license, \
> -this recipe is marked as 'License_emgd-driver-bin_1.10' and you need to add \
> -to LICENSE_FLAGS_WHITELIST += \"License_emgd-driver-bin_1.10\" to your \
> -local.conf in order to enable it in a build."
> -LICENSE = "Intel-binary-only"
> -LICENSE_FLAGS = "license_${PN}_${PV}"
> -PR = "r1"
> -
> -EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
> -EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
> -EMGD_VIDEO_PLUGIN_DIR = "../common/video_plugin"
> -
> -LIC_FILES_CHKSUM = "file://${WORKDIR}/${EMGD_LIC_DIR}/License.txt;md5=b54f01caaf8483b3cb60c0c40f2bf22d"
> -
> -DEPENDS = "rpm-native xz-native"
> -
> -SRC_URI = "https://edc.intel.com/App_Shared/Downloads/LIN_EMGD_1_10_RC_2209.tgz"
> -
> -SRC_URI[md5sum] = "e4a38d9efa0b086ae21b68145c4db4e9"
> -SRC_URI[sha256sum] = "acea5f0f93a31553553428623c007d7ed0c604cf715fd87dfe075751da4be548"
> -
> -# These are closed binaries generated elsewhere so don't check ldflags
> -INSANE_SKIP_${PN} = "ldflags"
> -# Inhibit warnings about files being stripped, we can't do anything about it.
> -INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> -
> -FILES_${PN} += "${libdir}/dri ${libdir}/gstreamer-0.10 ${libdir}/xorg/modules/drivers"
> -FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug"
> -
> -S = "${WORKDIR}/${EMGD_RPM_DIR}"
> -
> -do_install () {
> -    # A gstreamer VA buffer library
> -    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/gst-vabuffer*.rpm | cpio -id
> -
> -    # MIX Common contains common classes, datatype, header files used by other MIX components
> -    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/mixcommon*.rpm | cpio -id
> -
> -    # MIX Video Bitstream Parser is an user library interface for various video format bitstream parsing
> -    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/mixvbp*.rpm | cpio -id
> -
> -    # MIX Video is an user library interface for various video codecs available on the platform.
> -    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/mixvideo*.rpm | cpio -id
> -
> -    install -d -m 0755                                    ${D}${libdir}/gstreamer-0.10
> -    install -m 0755 ${S}/usr/lib/*                        ${D}${libdir}/
> -
> -    # A gstreamer plugin that uses MIX Video for hardware accelerated video decoding and rendering.
> -    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/gst-plugins-mixvideo*.rpm | cpio -id
> -
> -    # A collection of gstreamer plugins that uses VA libraries for hardware accelerated video rendering and text overlay.
> -    rpm2cpio ${S}/${EMGD_VIDEO_PLUGIN_DIR}/gst-plugins-va*.rpm | cpio -id
> -
> -    install -m 0755 ${S}/usr/lib/gstreamer-0.10/*         ${D}${libdir}/gstreamer-0.10/
> -
> -    # EMGD runtime graphics libraries
> -    rpm2cpio ${S}/emgd-bin*.rpm | xz -d | cpio -id
> -
> -    install -d -m 0755                                    ${D}${libdir}/dri
> -    install -d -m 0755                                    ${D}${libdir}/xorg/modules/drivers
> -    install -d -m 0755                                    ${D}${sysconfdir}
> -    install -d -m 0755                                    ${D}${mandir}/man4
> -    install -m 0755 ${S}/usr/lib/*.so.*                   ${D}${libdir}/
> -    install -m 0755 ${S}/usr/lib/dri/*                    ${D}${libdir}/dri/
> -    install -m 0755 ${S}/usr/lib/xorg/modules/drivers/*   ${D}${libdir}/xorg/modules/drivers/
> -    install -m 0755 ${S}/etc/*                            ${D}${sysconfdir}/
> -    install -m 0755 ${S}/usr/share/man/man4/*             ${D}${mandir}/man4/
> -
> -    # Khronos development headers needed for EGL, OpenGL-ES, and OpenVG development
> -    rpm2cpio ${S}/emgd-devel*.rpm | xz -d | cpio -id
> -
> -    install -d -m 0755                                    ${D}${includedir}/EGL
> -    install -m 0755 ${S}/usr/include/EGL/*.h              ${D}${includedir}/EGL/
> -    install -d -m 0755                                    ${D}${includedir}/GLES
> -    install -m 0755 ${S}/usr/include/GLES/*.h             ${D}${includedir}/GLES/
> -    install -d -m 0755                                    ${D}${includedir}/GLES2
> -    install -m 0755 ${S}/usr/include/GLES2/*.h            ${D}${includedir}/GLES2/
> -    install -d -m 0755                                    ${D}${includedir}/KHR
> -    install -m 0755 ${S}/usr/include/KHR/*.h              ${D}${includedir}/KHR/
> -    install -d -m 0755                                    ${D}${includedir}/VG
> -    install -m 0755 ${S}/usr/include/VG/*.h               ${D}${includedir}/VG/
> -
> -    ln -sf libEGL.so.1                                    ${D}${libdir}/libEGL.so
> -    ln -sf libGLES_CM.so.1                                ${D}${libdir}/libGLES_CM.so
> -    ln -sf libGLESv2.so.2                                 ${D}${libdir}/libGLESv2.so
> -    ln -sf libOpenVG.so.1                                 ${D}${libdir}/libOpenVG.so
> -    ln -sf libOpenVGU.so.1                                ${D}${libdir}/libOpenVGU.so
> -}
> -
> -LEAD_SONAME = "libEGL.so"
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

