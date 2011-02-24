Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8A2E84C800AC
	for <yocto@yoctoproject.org>; Thu, 24 Feb 2011 16:44:25 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 24 Feb 2011 14:44:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,220,1297065600"; d="scan'208";a="712972161"
Received: from unknown (HELO [10.255.12.104]) ([10.255.12.104])
	by orsmga001.jf.intel.com with ESMTP; 24 Feb 2011 14:44:13 -0800
Message-ID: <4D66DF3C.80707@intel.com>
Date: Thu, 24 Feb 2011 14:44:12 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [PATCH 0/1] Removal of emenlow from poky core
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
X-List-Received-Date: Thu, 24 Feb 2011 22:44:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


Removing Emenlow from core as it is a BSP layer and should be built as such.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: eflanagan/emenlow
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=eflanagan/emenlow

Thanks,
    Beth Flanagan <elizabeth.flanagan@intel.com>
---


Beth Flanagan (1):
  Emenlow Removal from Poky Core: meta-emenlow

 meta-emenlow/COPYING.MIT                           |   17 -
 meta-emenlow/README                                |   78 -
 meta-emenlow/conf/checksums.ini                    |   23 -
 meta-emenlow/conf/layer.conf                       |   10 -
 meta-emenlow/conf/machine/emenlow.conf             |   48 -
 .../formfactor/formfactor/emenlow/machconfig       |    3 -
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 -
 .../libdrm-poulsbo-2.3.0/libdrm-poulsbo.patch      |   61 -
 .../libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb         |   19 -
 .../libva-0.31.0/033_g45_add_rgba_subpic.patch     |  111 -
 .../034_g45_fix_return_for_unimpl.patch            |   83 -
 .../035_g45_add_yv12_image_format.patch            |  102 -
 .../libva-0.31.0/036_g45_add_vaGetImage.patch      |   71 -
 .../libva-0.31.0/037_g45_add_vaPutImage.patch      |  111 -
 .../038_g45_vaPutSurface_cliprects.patch           |  531 ----
 .../libva-0.31.0/102_attribute_visibility.patch    |   47 -
 .../libva/libva-0.31.0/103_fix_vainfo_deps.patch   |   24 -
 .../104_fix_libva_pkgconfig_deps.patch             |   18 -
 .../105_dont_search_LIBGL_DRIVERS_PATH.patch       |   21 -
 .../libva/libva-0.31.0/108_drivers_path.patch      |   25 -
 .../libva-0.31.0/203_fix_fglrx_detection.patch     |  542 ----
 .../libva-0.31.0/204_check_ATIFGLEXTENSION.patch   |  312 --
 .../libva/libva-0.31.0/300_sds_version.patch       |   87 -
 .../libva/libva-0.31.0/301_vdpau_mpeg4.patch       |   26 -
 .../320_move_vaPutSurface_flags_def.patch          |   60 -
 .../libva/libva-0.31.0/321_libva_glx.base.patch    |  212 --
 .../libva/libva-0.31.0/322_libva_glx.patch         | 2024 ------------
 .../libva/libva-0.31.0/390_compat.base.patch       |  135 -
 .../libva/libva-0.31.0/391_compat.patch            | 3273 --------------------
 .../libva/libva-0.31.0/392_compat.dso.patch        |  183 --
 .../libva/libva-0.31.0/libdrm-poulsbo.patch        |   26 -
 .../recipes-graphics/libva/libva_0.31.0.bb         |   40 -
 .../psb-firmware/psb-firmware_0.30.bb              |   15 -
 .../psb-kernel-source-4.42.0/build.patch           |  175 --
 .../psb-kernel-source/psb-kernel-source_4.42.0.bb  |   24 -
 .../xorg-xserver/files/crosscompile.patch          |   19 -
 .../files/fix_open_max_preprocessor_error.patch    |   13 -
 .../xorg-xserver/files/libdrm-poulsbo.patch        |   26 -
 .../xorg-xserver/files/macro_tweak.patch           |   18 -
 .../xorg-xserver/files/nodolt.patch                |   12 -
 .../xorg-xserver/xserver-psb_1.7.99.2.bb           |   21 -
 .../xserver-xf86-config/emenlow/xorg.conf          |   13 -
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 -
 .../xpsb-glx/xpsb-glx-0.18/cross-compile.patch     |   58 -
 .../xpsb-glx/xpsb-glx-0.18/libdrmname.patch        |   63 -
 .../xpsb-glx/xpsb-glx-0.18/native-matypes.patch    |   20 -
 .../recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb     |   46 -
 .../01_disable_lid_timer.patch                     |   12 -
 .../xserver-xorg-video-psb-0.32.1/dri-h.patch      |   20 -
 .../libdrm-poulsbo.patch                           |   13 -
 .../xserver-xorg-video-psb-0.32.1/psb_mixed.patch  |   35 -
 .../psb_xvtempfix.patch                            |   17 -
 .../xserver-xorg-video-psb-0.32.1/stubs.patch      |   23 -
 .../xserver-xorg-video-psb-0.32.1/visibility.patch |   12 -
 .../xorg-x11-drv-psb-0.31.0-ignoreacpi.patch       |   11 -
 .../xorg-x11-drv-psb-0.31.0-xserver17.patch        |   85 -
 .../xserver-xorg-video-psb-0.31.0-assert.patch     |   11 -
 ...rver-xorg-video-psb-0.31.0-comment_unused.patch |   75 -
 .../xserver-xorg-video-psb-0.31.0-greedy.patch     |   19 -
 .../xserver-xorg-video-psb-0.31.0-loader.patch     |   84 -
 .../xserver-xorg-video-psb_0.32.1.bb               |   34 -
 .../recipes-kernel/linux/linux-2.6.33.2/defconfig  |   68 -
 .../linux/linux-yocto-stable_git.bbappend          |    3 -
 .../recipes-kernel/linux/linux_2.6.33.2.bbappend   |    3 -
 meta/conf/bblayers.conf.sample                     |    1 -
 65 files changed, 0 insertions(+), 9378 deletions(-)
 delete mode 100644 meta-emenlow/COPYING.MIT
 delete mode 100644 meta-emenlow/README
 delete mode 100644 meta-emenlow/binary/.gitignore
 delete mode 100644 meta-emenlow/conf/checksums.ini
 delete mode 100644 meta-emenlow/conf/layer.conf
 delete mode 100644 meta-emenlow/conf/machine/emenlow.conf
 delete mode 100644 meta-emenlow/recipes-bsp/formfactor/formfactor/emenlow/machconfig
 delete mode 100644 meta-emenlow/recipes-bsp/formfactor/formfactor_0.0.bbappend
 delete mode 100644 meta-emenlow/recipes-graphics/libdrm-poulsbo/libdrm-poulsbo-2.3.0/libdrm-poulsbo.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libdrm-poulsbo/libdrm-poulsbo_2.3.0.bb
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/033_g45_add_rgba_subpic.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/034_g45_fix_return_for_unimpl.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/035_g45_add_yv12_image_format.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/036_g45_add_vaGetImage.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/037_g45_add_vaPutImage.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/038_g45_vaPutSurface_cliprects.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/102_attribute_visibility.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/103_fix_vainfo_deps.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/104_fix_libva_pkgconfig_deps.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/105_dont_search_LIBGL_DRIVERS_PATH.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/108_drivers_path.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/203_fix_fglrx_detection.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/204_check_ATIFGLEXTENSION.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/300_sds_version.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/301_vdpau_mpeg4.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/320_move_vaPutSurface_flags_def.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/321_libva_glx.base.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/322_libva_glx.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/390_compat.base.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/391_compat.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/392_compat.dso.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva-0.31.0/libdrm-poulsbo.patch
 delete mode 100644 meta-emenlow/recipes-graphics/libva/libva_0.31.0.bb
 delete mode 100644 meta-emenlow/recipes-graphics/psb-firmware/psb-firmware_0.30.bb
 delete mode 100644 meta-emenlow/recipes-graphics/psb-kernel-source/psb-kernel-source-4.42.0/build.patch
 delete mode 100644 meta-emenlow/recipes-graphics/psb-kernel-source/psb-kernel-source_4.42.0.bb
 delete mode 100644 meta-emenlow/recipes-graphics/xorg-xserver/files/crosscompile.patch
 delete mode 100644 meta-emenlow/recipes-graphics/xorg-xserver/files/fix_open_max_preprocessor_error.patch
 delete mode 100644 meta-emenlow/recipes-graphics/xorg-xserver/files/libdrm-poulsbo.patch
 delete mode 100644 meta-emenlow/recipes-graphics/xorg-xserver/files/macro_tweak.patch
 delete mode 100644 meta-emenlow/recipes-graphics/xorg-xserver/files/nodolt.patch
 delete mode 100644 meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2.bb
 delete mode 100644 meta-emenlow/recipes-graphics/xorg-xserver/xserver-xf86-config/emenlow/xorg.conf
 delete mode 100644 meta-emenlow/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 delete mode 100644 meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx-0.18/cross-compile.patch
 delete mode 100644 meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx-0.18/libdrmname.patch
 delete mode 100644 meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx-0.18/native-matypes.patch
 delete mode 100644 meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb
 delete mode 100644
meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/01_disable_lid_timer.patch
 delete mode 100644 meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/dri-h.patch
 delete mode 100644 meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/libdrm-poulsbo.patch
 delete mode 100644 meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/psb_mixed.patch
 delete mode 100644 meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/psb_xvtempfix.patch
 delete mode 100644 meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/stubs.patch
 delete mode 100644 meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/visibility.patch
 delete mode 100644
meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xorg-x11-drv-psb-0.31.0-ignoreacpi.patch
 delete mode 100644
meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xorg-x11-drv-psb-0.31.0-xserver17.patch
 delete mode 100644
meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-assert.patch
 delete mode 100644
meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-comment_unused.patch
 delete mode 100644
meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-greedy.patch
 delete mode 100644
meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb-0.32.1/xserver-xorg-video-psb-0.31.0-loader.patch
 delete mode 100644 meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb
 delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-2.6.33.2/defconfig
 delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
 delete mode 100644 meta-emenlow/recipes-kernel/linux/linux_2.6.33.2.bbappend

