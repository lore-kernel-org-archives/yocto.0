Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9205DE00B11; Tue, 24 May 2016 02:59:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D00C5E00AD2
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 02:59:29 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id z87so17007540wmh.0
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 02:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=4Z0KHy9kuvZqHCWik/L2yF4bo44DuSMQ+lNiihBEu0A=;
	b=gjiclMUU1toWkKc2gaflYAMUxoPOMRYEY01XJ7vxKofAIpwQvKw62lzGtZirEYc+n8
	wPOu97hjlKenvaAHy8Dky1fyDtwBENnZGBjK/luZYBU1OqKA154YxH5Gtf0j8GpcWaSu
	s5Q+IqlcuU5HDh9GFvVHYrnKhWMcQv5sSSyJ5yoMNddL4DysKqboMtrvS9S4x1fDFtZq
	9g3m1r4JzvfKCY1tzv5Lm2rOpOW6KcpHxoNKpXrbGMLh5y5xTwYcib544pkKvtPSzFfr
	5sDJ9Il9mHLVyB5nxOmaviVa/V7RKE3gykWsdMPW8plgTj0bTm5wpxVnCIjgxlM0501T
	1qpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=4Z0KHy9kuvZqHCWik/L2yF4bo44DuSMQ+lNiihBEu0A=;
	b=Hq8wlzIGLgRJvFMZZ2N9+dZDtyjOZ42eZc1BU+z178UP696dTkCfK1ODwQ+QnbVbTN
	0rf1bKCWXa5JJHqWKdaUNs0yZYw/r8dVBPHz90SagOhq0XpbZD16d3zRDKTzt9fMvujr
	rcPc/PItB98+j4C1iE/q/T+CgrQndf0adlr1Z/jDwRQj0eOgoa+mFOyHs15X2cQ7xOkP
	aPhn4nqmRZlTXHK0jct9qUpXBpPmNgc1tbkgif/0mZ333YbF5MvhiTh3ujKf+qjQllFw
	rp7LChWydIpziVq8FG4Bfcihq0riHlJYcfRnSAF3NLH8W1Z8lm5r60GUp1aDxYY6dJEO
	TmEg==
X-Gm-Message-State: AOPr4FXv4W+YQoI3/x5lLcPfdjHxdFFIfIg5LlPQk+iq3bSGhnpgupnWky81uTViQSFTNg==
X-Received: by 10.28.91.209 with SMTP id p200mr21584502wmb.19.1464083968040;
	Tue, 24 May 2016 02:59:28 -0700 (PDT)
Received: from [192.168.2.170] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114])
	by smtp.gmail.com with ESMTPSA id r5sm2270769wjy.37.2016.05.24.02.59.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 24 May 2016 02:59:27 -0700 (PDT)
To: Herve Jourdain <herve.jourdain@neuf.fr>, yocto@yoctoproject.org
References: <1463745113-55142-1-git-send-email-herve.jourdain@neuf.fr>
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <574425FE.1030909@elfin.de>
Date: Tue, 24 May 2016 11:59:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <1463745113-55142-1-git-send-email-herve.jourdain@neuf.fr>
Subject: Re: [meta-raspberrypi][PATCH v2 00/13] Support for VC4 graphics driver
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 24 May 2016 09:59:37 -0000
X-Groupsio-MsgNum: 30147
Content-Type: multipart/mixed; boundary="------------050805030608090400050801"

--------------050805030608090400050801
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

I have tried these patches, but there were some hunks and errors during 
applying to current master revision 
(69840c0bbe03c2e61601e2377c8e2adc264e0478).
Building 'rpi-hwup-image' passed, but while building 'rpi-test-image' 
(omxplayer recipe) I have noticed some errors due to missing files:
- IL/OMX_Core.h
- VG/openvg.h
- bcm_host.h

I'm attaching omxplayer_build_errors.txt with build log and my patch 
with changes created by Herve (adapted to current master revision) - 
Support_for_VC4_graphics_driver.patch (Herve- if you decide to use that 
and resend v3 of patches - please remove my TODO from 
"conf/machine/include/rpi-base.inc"

Could you take a look at that and help me resolve those issues?


I currently have a problem that I'm forced to use Raspbian because 
playing FHD/1080p videos with omxplayer from Yocto runs choppy (I'm not 
sure if that's the right word, but playback is not smooth) while with 
Raspbian it works perfect.
Do you think that enabling VC4 graphics driver can solve my issue?
Did any of you experienced similar problems? Do you have some other 
solution or do you know what's the cause of this?


Thanks,
Piotr Lewicki


On 20.05.2016 13:51, Herve Jourdain wrote:
> This v2 series addresses the following issues with the first series:
> a. Fix the 4.4.10 kernel revision
> b. Effectively add vc4-kms-v3d overlay to the list of overlays to build (forgotten previously)
> c. Make the parameter to the v4c-kms-v3d overlay configurable
> d. Add default values for the cma parameter to the v4c-kms-v3d overlay, depending on the board (and the memory it has)
>
> This patch series enables the support for the VC4 graphics driver from Eric Anholt.
> There was a previous patch series by Javier Martinez Canillas, but it required use of a different kernel.
> VC4 is now supported in the raspberrypi official kernel, at least for 4.4.9+.
> The support in 4.1 exists, but it is NOT STABLE, so it has been deemed unreasonable to support VC4 with 4.1 kernels.
>
> THEREFORE, VC4 graphics is supported ONLY for kernel versions 4.4.9 and later.
>
> This patch series proposes to support VC4 by only adding 'vc4graphics' to MACHINE_FEATURES, for raspberrypi. If this is set, it will trigger all the necessary configuration/changes to use the VC4 driver, including mesa/wayland/weston currently, and adding the overlay required.
> In order for this series to work, some previous patches are needed (support for .dtbo, and fix of the mesa packaging when there is no DRI driver).
> The memory reserved for the VC4 driver has default values depending on the version of the board used, but it can be configured by setting VC4_CMA_SIZE to a value supported by the overlay ('cma-256', 'cma-192', 'cma-128', 'cma-96', 'cma-64').
> 'cma-256' is the recommended value, but it might not be possible on boards with 512MB or DRAM, or less...
> 'cma-64' is known to not being able to support FHD/1080p.
>
> It was tested with wayland/weston, without the support for X11.
>
> This patch series depends on two other patch series previously posted, that enable the support for .dtbo overlay files.
>
> Herve Jourdain (13):
>    rpi-default-providers.inc: change default providers to support
>      vc4graphics
>    rpi-base.inc: add vc4-kms-v3d to the overlays to support vc4graphics
>    raspberrypi.conf: set the default value of VC4_CMA_SIZE to support
>      vc4graphics
>    raspberrypi0.conf: set the default value of VC4_CMA_SIZE to support
>      vc4graphics
>    raspberrypi2.conf: set the default value of VC4_CMA_SIZE to support
>      vc4graphics
>    raspberrypi3.conf: set the default value of VC4_CMA_SIZE to support
>      vc4graphics
>    firmware.inc: bump version to support vc4graphics
>    rpi-config_git.bb: add v4c overlay to config.txt to support
>      vc4graphics
>    wayland/weston_%.bbappend: modify configuration options to support
>      vc4graphics
>    weston/weston_%.bbappend: modify configuration options to support
>      vc4graphics
>    mesa_%.bbappend: new file to add the correct configuration options to
>      support vc4graphics
>    linux-raspberrypi_4.4.bb: bump the kernel revision to 4.4.10 to
>      support vc4graphics
>    linux-rpi.inc: add the configuration options required to support
>      vc4graphics
>
>   conf/machine/include/rpi-base.inc              |  1 +
>   conf/machine/include/rpi-default-providers.inc |  8 ++++----
>   conf/machine/raspberrypi.conf                  |  2 ++
>   conf/machine/raspberrypi0.conf                 |  2 ++
>   conf/machine/raspberrypi2.conf                 |  2 ++
>   conf/machine/raspberrypi3.conf                 |  2 ++
>   recipes-bsp/bootfiles/rpi-config_git.bb        | 10 +++++++++-
>   recipes-bsp/common/firmware.inc                |  4 ++--
>   recipes-graphics/mesa/mesa_%.bbappend          |  4 ++++
>   recipes-graphics/wayland/weston_%.bbappend     |  6 ++----
>   recipes-graphics/weston/weston_%.bbappend      | 13 +++++++------
>   recipes-kernel/linux/linux-raspberrypi_4.4.bb  |  4 ++--
>   recipes-kernel/linux/linux-rpi.inc             | 10 ++++++++++
>   13 files changed, 49 insertions(+), 19 deletions(-)
>   create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>


--------------050805030608090400050801
Content-Type: text/plain; charset=UTF-8;
 name="omxplayer_build_errors.txt"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="omxplayer_build_errors.txt"

| In file included from linux/RBP.h:45:0,
|                  from linux/RBP.cpp:22:
| ./DllBCM.h:34:22: fatal error: bcm_host.h: No such file or directory
| compilation terminated.
| make: *** [linux/RBP.o] Error 1
| make: *** Waiting for unfinished jobs....
| In file included from SubtitleRenderer.cpp:27:0:
| SubtitleRenderer.h:30:23: fatal error: VG/openvg.h: No such file or directory
| compilation terminated.
| make: *** [SubtitleRenderer.o] Error 1
| In file included from OMXCore.h:32:0,
|                  from OMXVideo.h:25,
|                  from OMXVideo.cpp:28:
| DllOMX.h:36:25: fatal error: IL/OMX_Core.h: No such file or directory
| compilation terminated.
| make: *** [OMXVideo.o] Error 1
| In file included from OMXCore.h:32:0,
|                  from OMXCore.cpp:31:
| DllOMX.h:36:25: fatal error: IL/OMX_Core.h: No such file or directory
| compilation terminated.
| make: *** [OMXCore.o] Error 1
| In file included from OMXCore.h:32:0,
|                  from OMXAudio.h:34,
|                  from OMXAudio.cpp:27:
| DllOMX.h:36:25: fatal error: IL/OMX_Core.h: No such file or directory
| compilation terminated.
| make: *** [OMXAudio.o] Error 1
| In file included from OMXCore.h:32:0,
|                  from OMXClock.h:27,
|                  from OMXReader.cpp:29:
| DllOMX.h:36:25: fatal error: IL/OMX_Core.h: No such file or directory
| compilation terminated.
| In file included from OMXCore.h:32:0,
|                  from OMXClock.h:27,
|                  from OMXPlayerAudio.h:32,
|                  from OMXPlayerAudio.cpp:28:
| DllOMX.h:36:25: fatal error: IL/OMX_Core.h: No such file or directory
| compilation terminated.
| In file included from OMXCore.h:32:0,
|                  from OMXClock.h:27,
|                  from OMXClock.cpp:32:
| DllOMX.h:36:25: fatal error: IL/OMX_Core.h: No such file or directory
| compilation terminated.
| In file included from OMXCore.h:32:0,
|                  from OMXClock.h:27,
|                  from OMXPlayerSubtitles.h:23,
|                  from OMXPlayerSubtitles.cpp:19:
| DllOMX.h:36:25: fatal error: IL/OMX_Core.h: No such file or directory
| compilation terminated.
| In file included from OMXCore.h:32:0,
|                  from OMXClock.h:27,
|                  from OMXPlayerVideo.h:30,
|                  from OMXPlayerVideo.cpp:28:
| DllOMX.h:36:25: fatal error: IL/OMX_Core.h: No such file or directory
| compilation terminated.
| make: *** [OMXReader.o] Error 1
| make: *** [OMXPlayerAudio.o] Error 1
| make: *** [OMXClock.o] Error 1
| make: *** [OMXPlayerSubtitles.o] Error 1
| make: *** [OMXPlayerVideo.o] Error 1
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (log file is located at /home/piotr.lewicki/yocto-raspberry/pi3-16.05.19/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/omxplayer/git-r4/temp/log.do_compile.6167)
ERROR: Task 928 (/home/piotr.lewicki/yocto-raspberry/pi3-16.05.19/layers/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3680 tasks of which 3639 didn't need to be rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /home/piotr.lewicki/yocto-raspberry/pi3-16.05.19/layers/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb, do_compile
  Summary: There were 2 ERROR messages shown, returning a non-zero exit code.


--------------050805030608090400050801
Content-Type: text/x-patch;
 name="Support_for_VC4_graphics_driver.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="Support_for_VC4_graphics_driver.patch"

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 56ca83e..21bf9c0 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -37,7 +37,9 @@ KERNEL_DEVICETREE ?= " \
     overlays/w1-gpio-overlay.dtb \
     overlays/w1-gpio-pullup-overlay.dtb \
     overlays/pi3-miniuart-bt-overlay.dtb \
+    overlays/vc4-kms-v3d-overlay.dtb \
     "
+# TODO line with overlays/vc4-kms-v3d.dtbo : decide whether it is .dtb or .dtbo
 KERNEL_IMAGETYPE ?= "Image"
 
 MACHINE_FEATURES += "apm usbhost keyboard vfat ext2 screen touchscreen alsa bluetooth wifi sdio"
diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index cabbd43..0bc8838 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -3,8 +3,8 @@
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-raspberrypi"
 PREFERRED_PROVIDER_u-boot ?= "u-boot-rpi"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-PREFERRED_PROVIDER_virtual/egl ?= "userland"
-PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
-PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
-PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
+PREFERRED_PROVIDER_virtual/egl ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "userland", d)}"
+PREFERRED_PROVIDER_virtual/libgles2 ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "userland", d)}"
+PREFERRED_PROVIDER_virtual/libgl ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "mesa-gl", d)}"
+PREFERRED_PROVIDER_virtual/mesa ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "mesa-gl", d)}"
 PREFERRED_PROVIDER_jpeg ?= "jpeg"
diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
index 0f95f1a..b369c67 100644
--- a/conf/machine/raspberrypi.conf
+++ b/conf/machine/raspberrypi.conf
@@ -8,3 +8,5 @@ require conf/machine/include/tune-arm1176jzf-s.inc
 include conf/machine/include/rpi-base.inc
 
 SERIAL_CONSOLE = "115200 ttyAMA0"
+VC4_CMA_SIZE_raspberrypi ?= "cma-64"
+
diff --git a/conf/machine/raspberrypi0.conf b/conf/machine/raspberrypi0.conf
index ccf9ae7..0df9121 100644
--- a/conf/machine/raspberrypi0.conf
+++ b/conf/machine/raspberrypi0.conf
@@ -6,3 +6,5 @@ MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
 include conf/machine/raspberrypi.conf
 
 SERIAL_CONSOLE = "115200 ttyAMA0"
+VC4_CMA_SIZE ?= "cma-128"
+
diff --git a/conf/machine/raspberrypi2.conf b/conf/machine/raspberrypi2.conf
index b6346e6..3a82d66 100644
--- a/conf/machine/raspberrypi2.conf
+++ b/conf/machine/raspberrypi2.conf
@@ -8,3 +8,5 @@ require conf/machine/include/tune-cortexa7.inc
 include conf/machine/include/rpi-base.inc
 
 SERIAL_CONSOLE = "115200 ttyAMA0"
+VC4_CMA_SIZE ?= "cma-256"
+
diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
index cb6056e..438c6e6 100644
--- a/conf/machine/raspberrypi3.conf
+++ b/conf/machine/raspberrypi3.conf
@@ -9,3 +9,5 @@ MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
 include conf/machine/raspberrypi2.conf
 
 SERIAL_CONSOLE = "115200 ttyS0"
+VC4_CMA_SIZE ?= "cma-256"
+
diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
index 4bc8eb7..f610718 100644
--- a/recipes-bsp/bootfiles/rpi-config_git.bb
+++ b/recipes-bsp/bootfiles/rpi-config_git.bb
@@ -13,12 +13,14 @@ SRC_URI = "git://github.com/Evilpaul/RPi-config.git;protocol=git;branch=master \
 
 S = "${WORKDIR}/git"
 
-PR = "r4"
+PR = "r5"
 
 PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
 PITFT22="${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0", d)}"
 PITFT28r="${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", "0", d)}"
 
+VC4GRAPHICS="${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "1", "0", d)}"
+
 inherit deploy
 
 do_deploy() {
@@ -102,6 +104,12 @@ do_deploy() {
         echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
         echo "enable_uart=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
     fi
+
+    # VC4 Graphics support
+    if [ "${VC4GRAPHICS}" = "1" ]; then
+        echo "# Enable VC4 Graphics" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+        echo "dtoverlay=vc4-kms-v3d,${VC4_CMA_SIZE}" >> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
+    fi
 }
 
 addtask deploy before do_package after do_install
diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index bf11e4c..b467fc6 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,5 +1,5 @@
-RPIFW_SRCREV ?= "3816e1ce1e6ebc6d2bf0596dbd52849e16aa7e94"
-RPIFW_DATE ?= "20160512"
+RPIFW_SRCREV ?= "c17fa41b8e8321d891230f97837fee98feebc1ac"
+RPIFW_DATE ?= "20160513"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
new file mode 100644
index 0000000..b182388
--- /dev/null
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -0,0 +1,4 @@
+PACKAGECONFIG_append_rpi = " gallium"
+GALLIUMDRIVERS_rpi = "vc4"
+DRIDRIVERS_rpi = ""
+
diff --git a/recipes-graphics/wayland/weston_%.bbappend b/recipes-graphics/wayland/weston_%.bbappend
index c3a7421..57b8079 100644
--- a/recipes-graphics/wayland/weston_%.bbappend
+++ b/recipes-graphics/wayland/weston_%.bbappend
@@ -1,4 +1,2 @@
-EXTRA_OECONF_append_rpi = "\
-        --enable-rpi-compositor \
-        WESTON_NATIVE_BACKEND=rpi-backend.so \
-       "
+EXTRA_OECONF_append_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' --enable-rpi-compositor WESTON_NATIVE_BACKEND=rpi-backend.so', d)}"
+
diff --git a/recipes-graphics/weston/weston_%.bbappend b/recipes-graphics/weston/weston_%.bbappend
index 3ec311d..70f4360 100644
--- a/recipes-graphics/weston/weston_%.bbappend
+++ b/recipes-graphics/weston/weston_%.bbappend
@@ -1,7 +1,8 @@
-EXTRA_OECONF += "--enable-rpi-compositor \
-             --disable-resize-optimization \
-             --disable-setuid-install \
-             --disable-xwayland-test \
-             --disable-simple-egl-clients \
-             WESTON_NATIVE_BACKEND=rpi-backend.so \
+PACKAGECONFIG_rpi_remove = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', ' fbdev', '', d)}"
+EXTRA_OECONF += "--disable-xwayland-test \
+                 --disable-simple-egl-clients \
 "
+EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--enable-rpi-compositor', d)}"
+EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--disable-resize-optimization', d)}"
+EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--disable-setuid-install', d)}"
+EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', 'WESTON_NATIVE_BACKEND=rpi-backend.so', d)}"
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index ba47b22..b8d6028 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.9"
+LINUX_VERSION ?= "4.4.10"
 
-SRCREV = "3b440738b5c1adc3ec3ee72ceca799d1b8d264df"
+SRCREV = "c317a023583b17a4350f066924d5fff47a81f91e"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
 "
 require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/linux-rpi.inc
index 1755685..c120dbd 100644
--- a/recipes-kernel/linux/linux-rpi.inc
+++ b/recipes-kernel/linux/linux-rpi.inc
@@ -111,6 +111,16 @@ do_configure_prepend() {
     # Activate CONFIG_LEGACY_PTYS
     kernel_configure_variable LEGACY_PTYS y
 
+    # Activate the configuration options for VC4
+    VC4GRAPHICS="${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "1", "0", d)}"
+    if [ ${VC4GRAPHICS} = "1" ]; then
+        kernel_configure_variable I2C_BCM2835 y
+        kernel_configure_variable DRM y
+        kernel_configure_variable DRM_FBDEV_EMULATION n
+        kernel_configure_variable DRM_VC4 y
+        kernel_configure_variable FB_BCM2708 n
+    fi
+
     # Keep this the last line
     # Remove all modified configs and add the rest to .config
     sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config'

--------------050805030608090400050801--
