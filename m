Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A9CBE00932; Sun, 12 Mar 2017 03:19:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f45.google.com (mail-pg0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1335E0074B
	for <yocto@yoctoproject.org>; Sun, 12 Mar 2017 03:18:58 -0700 (PDT)
Received: by mail-pg0-f45.google.com with SMTP id 25so53789210pgy.0
	for <yocto@yoctoproject.org>; Sun, 12 Mar 2017 03:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=WlbZxCp4oZowyZ/uv0Pvhicq+WbBJoDiQ+GWn4yNBWQ=;
	b=YylCqgJIdKitl38izLbj4lp+kq39m4qEDpsTwzN14+V0lkGXgyDAKOiobEt5AopIxK
	JzA+WaMnETANgk2Bg5FGowmRyFFOhFQpL9QTzt6d3CKGAwlSC3g8XWrWAilLxKBk/JNF
	ITqdCP20H0goSiyVXybByYZSSFGpKbDvzY54g27gnhqCj71/ckH9yIkCKVTDDn8isAnz
	Q3VYSYfg1R+ZHENoQnfC18/GXNCqAZNXv5OIWzo7rE3uefrGNA1nLJ4llD+9mF8diTJ7
	bLIb0Nyo7iStTYB345jP7iuzeo9sjpi3z9OKVet9bVDEljY3Ts8XddvEbmv64mvaJm4z
	v6CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=WlbZxCp4oZowyZ/uv0Pvhicq+WbBJoDiQ+GWn4yNBWQ=;
	b=WaFfPbNwDFLBZ976fqfTuFSBcOeUJM2ljOv8XAuBXO2s6vDUKd0FPgOEZ/sqBvc8ei
	KIlRLFpBWNSm9Jda2/udIzdhft0e1U9dcPyptS4YZzReiEcidGcoG0jQWsF546fozCWb
	gqgJhxhkrG4h9+lT61ddCabNZm1gZ/jeMjVm6uPoBaFz9Bqw6EnoEdUCq59k9X2r7FyE
	6zaIEKZZW/s9sUakmDgpp/MC0WtZkI7xbTyDMUQVSTxfTqWDpR8gQpgjqQaGnXT4oopM
	5sA8DtcSagtI1jnvBjDTHtLdkqny2mPOqgpl13zo2A2TrOCV++4mh+36H9og56r76UJS
	WnRA==
X-Gm-Message-State: AMke39m3e5KPfLlzf7YqizOSIub9xDXWDorgdkCGFzl+Uu/RELtwgGpZrD8ZP2zq8FLy9Q==
X-Received: by 10.84.149.168 with SMTP id m37mr38424721pla.97.1489313937655;
	Sun, 12 Mar 2017 03:18:57 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	w29sm27764601pfi.131.2017.03.12.03.18.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 12 Mar 2017 03:18:56 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org,
	andrei@gherzan.ro
Date: Sun, 12 Mar 2017 03:18:45 -0700
Message-Id: <20170312101845.30663-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.12.0
MIME-Version: 1.0
Subject: [meta-raspberrypi] Consolidated pull
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
X-List-Received-Date: Sun, 12 Mar 2017 10:19:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The following changes since commit c768a3d1aed8d16d08afe12fddb359914e0a203a:

  linux-raspberrypi_dev: Fix build on rpi3 64bit (2017-02-16 20:53:18 +0100)

are available in the git repository at:

  https://github.com/kraj/meta-raspberrypi kraj/pu

for you to fetch changes up to 6c8ca9ccf1748f6a40e4f30f5df49e2501259cb0:

  sdcard_image: fix sdcard image generation (2017-03-11 17:38:06 -0800)

----------------------------------------------------------------
Andreas Müller (1):
      xserver-xf86-config: remove evdev configuration

Janek Filus (1):
      sdcard_image: fix sdcard image generation

Khem Raj (7):
      omxplayer: Update to latest and disable on rpi64
      linux-firmware: Bring up wifi/ble interface on rpi3
      firmware: Update to 20170303 release
      linux-raspberrypi_4.9.bb: Update to 4.9.13
      linux-raspberrypi: Default to 4.9 kernel
      userland: Update to latest
      userland: Do not provide libgl

Maciej Borzecki (2):
      wic: move sdimage-raspberrypi to toplevel wic location
      rpi-base: wic: generate entries for device tree files

Maxin B. John (1):
      gstreamer1.0-omx: remove bbappend for version 1.2.0 and git

Paul Barker (6):
      linux-raspberrypi: Fix uImage build on 4.9.y and later
      linux-raspberrypi_dev: Use AUTOREV
      linux-raspberrypi_dev: Allow branch override
      linux-raspberrypi_dev: Disable version sanity check
      linux-raspberrypi_4.4: Update to 4.4.50
      linux-raspberrypi_dev: Add back arm64 dtbo rules patch

 classes/sdcard_image-rpi.bbclass                   |   4 +-
 conf/machine/include/rpi-base.inc                  |  32 ++++-
 conf/machine/include/rpi-default-versions.inc      |   2 +-
 conf/machine/raspberrypi3-64.conf                  |   2 -
 recipes-bsp/common/firmware.inc                    |   6 +-
 ...-applications-to-set-next-resource-handle.patch |   6 +-
 ...ayland-Add-support-for-the-Wayland-winsys.patch |  14 +--
 .../0003-wayland-Add-Wayland-example.patch         |   6 +-
 ...-wayland-egl-Add-bcm_host-to-dependencies.patch |   6 +-
 ...emove-faulty-assert-to-make-weston-happy-.patch |   6 +-
 ...6-zero-out-wl-buffers-in-egl_surface_free.patch |   6 +-
 ...007-initialize-front-back-wayland-buffers.patch |   6 +-
 .../userland/userland/0008-Remove-RPC_FLUSH.patch  |   6 +-
 .../userland/0009-fix-cmake-dependency-race.patch  |   8 +-
 ...Fix-for-framerate-with-nested-composition.patch |   6 +-
 .../0011-build-shared-library-for-vchostif.patch   |   8 +-
 ...nt-buffer-wrapping-interface-for-dispmanx.patch |   6 +-
 ...13-Implement-triple-buffering-for-wayland.patch |  11 +-
 recipes-graphics/userland/userland_git.bb          |   4 +-
 .../rpi/xorg.conf.d/10-evdev.conf                  |  40 ------
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |  22 ++--
 .../linux-firmware/files/brcmfmac43430-sdio.txt    |  66 ++++++++++
 .../linux-firmware/linux-firmware_%.bbappend       |  12 ++
 ...-Add-rules-for-.dtbo-files-for-dts-overla.patch |   0
 recipes-kernel/linux/linux-raspberrypi_4.4.bb      |   5 +-
 recipes-kernel/linux/linux-raspberrypi_4.9.bb      |  10 +-
 recipes-kernel/linux/linux-raspberrypi_dev.bb      |  18 ++-
 ...o-acquire-buffer-when-src-pad-isn-t-activ.patch |  48 --------
 .../0001-config-files-path.patch                   | 137 ---------------------
 .../0002-fix-decoder-flushing.patch                |  16 ---
 .../0003-no-timeout-on-get-state.patch             |  16 ---
 ...erly-handle-drain-requests-while-flushing.patch |  69 -----------
 ...-gst_omx_video_dec_set_format-if-there-s-.patch |  30 -----
 ...-unref-allocator-after-getting-it-from-al.patch |  48 --------
 ...mxvideodec-Use-gstglmemoryegl-for-the-RPi.patch | 115 -----------------
 .../gstreamer/gstreamer1.0-omx_1.2.0.bbappend      |  14 ---
 .../gstreamer/gstreamer1.0-omx_git.bbappend        |  13 --
 ...nd-headers-from-ffmpeg-are-installed-in-u.patch |  27 ++--
 ...PEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch |  24 ++--
 recipes-multimedia/omxplayer/omxplayer_git.bb      |  13 +-
 .../canned-wks => wic}/sdimage-raspberrypi.wks     |   0
 41 files changed, 235 insertions(+), 653 deletions(-)
 delete mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-evdev.conf
 create mode 100644 recipes-kernel/linux-firmware/files/brcmfmac43430-sdio.txt
 create mode 100644 recipes-kernel/linux-firmware/linux-firmware_%.bbappend
 rename recipes-kernel/linux/{linux-raspberrypi-4.9 => linux-raspberrypi-dev}/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch (100%)
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-config-files-path.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0002-fix-decoder-flushing.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0003-no-timeout-on-get-state.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0004-Properly-handle-drain-requests-while-flushing.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
 rename {scripts/lib/image/canned-wks => wic}/sdimage-raspberrypi.wks (100%)

