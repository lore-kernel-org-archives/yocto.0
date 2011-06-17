Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6A8414C800BA
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2011 18:18:39 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Jun 2011 16:18:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,384,1304319600"; d="scan'208";a="14937820"
Received: from unknown (HELO localhost) ([10.255.13.112])
	by orsmga002.jf.intel.com with ESMTP; 17 Jun 2011 16:18:38 -0700
From: Darren Hart <darren@dvhart.com>
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Fri, 17 Jun 2011 16:18:33 -0700
Message-Id: <cover.1308351938.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PULL][linux-yocto] beagleboard: sync with meta-ti linux-omap_2.6.37
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
X-List-Received-Date: Fri, 17 Jun 2011 23:18:39 -0000

From: Darren Hart <dvhart@linux.intel.com>

The following commits have been pulled in from the meta-ti linux-omap_2.6.37
recipe, with the exception of:
  USB: ehci: remove structure packing from ehci_def
which hails from mainline and should be applied to yocto/base, while the rest
should be applied to yocto/standard/beagleboard.

Fixes [YOCTO #764]
Fixes [YOCTO #765]
Fixes [YOCTO #767]

This brings linux-yocto in sync with the meta-ti linux-omap_2.6.37 recipe and
significantly improves Beagleboard support in linux-yocto. As there are 115
patches in total, and none of them are new, I have omitted them from the email.

The following changes since commit 9cb5c3fb1634e541cacceeb8c8cabe88afa5b080:

  Merge branch 'yocto/standard/base' into yocto/standard/beagleboard (2011-06-06 10:35:20 -0400)

are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib dvhart/yocto/standard/beagleboard
  http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/yocto/standard/beagleboard

Alexander Holler (1):
  arm: omap3: beagle: Ensure msecure is mux'd to be able to set the RTC

Antti Koskipaa (1):
  v4l: v4l2_subdev userspace crop API

Arik Nemtsov (1):
  wl12xx: Read MAC address from NVS file on HW startup

Darren Hart (2):
  board-omap3beagle: whitespace cleanup
  board-omap3beagle: allow for building without wl1271

Eliad Peller (1):
  wl1271: set wl->vif only if add_interface succeeded.

Florian Westphal (1):
  bridge: stp: ensure mac header is set

Jesper Juhl (1):
  ISDN, Gigaset: Fix memory leak in do_disconnect_req()

Juuso Oikarinen (1):
  wl12xx: Unset bssid filter, ssid and bssid from firmware on disassoc

Kevin Hilman (1):
  OMAP: CPUfreq: ensure policy is fully initialized

Koen Kooi (10):
  omap3: beaglexm: fix DVI reset GPIO
  omap3: beaglexm: fix power on of DVI
  ARM: OMAP: beagleboard: Add infrastructure to do fixups based on
    expansionboard name passed by u-boot
  ARM: OMAP: beagleboard: pre-export GPIOs to userspace when using a
    Tincantools trainerboard
  modedb.c: add proper 720p60 mode
  ARM: OMAP: add omap_rev_* macros
  omap3: beagleboard: add WIP support for beagleboardtoys WL12xx board
  beagleboard: hack in support from xM rev C
  omap3: allow 1GHz mpurates
  BeagleBoard: Adjust USER button pin for xM

Laurent Pinchart (35):
  v4l: Share code between video_usercopy and video_ioctl2
  v4l: subdev: Don't require core operations
  v4l: subdev: Merge v4l2_i2c_new_subdev_cfg and v4l2_i2c_new_subdev
  v4l: subdev: Add device node support
  v4l: subdev: Uninline the v4l2_subdev_init function
  v4l: subdev: Control ioctls support
  media: Media device node support
  media: Media device
  media: Entities, pads and links
  media: Entity use count
  media: Media device information query
  media: Entities, pads and links enumeration
  media: Links setup
  media: Pipelines and media streams
  v4l: Add a media_device pointer to the v4l2_device structure
  v4l: Make video_device inherit from media_entity
  v4l: Make v4l2_subdev inherit from media_entity
  v4l: Move the media/v4l2-mediabus.h header to include/linux
  v4l: Replace enums with fixed-sized fields in public structure
  v4l: Rename V4L2_MBUS_FMT_GREY8_1X8 to V4L2_MBUS_FMT_Y8_1X8
  v4l: Group media bus pixel codes by types and sort them
    alphabetically
  v4l: subdev: Add a new file operations class
  v4l: v4l2_subdev pad-level operations
  v4l: v4l2_subdev userspace format API
  v4l: v4l2_subdev userspace frame interval API
  v4l: subdev: Generic ioctl support
  v4l: Add subdev sensor g_skip_frames operation
  v4l: Include linux/videodev2.h in media/v4l2-ctrls.h
  v4l: Fix a use-before-set in the control framework
  v4l: Add 8-bit YUYV on 16-bit bus and SGRBG10 media bus pixel codes
  v4l: Add remaining RAW10 patterns w DPCM pixel code variants
  v4l: Add missing 12 bits bayer media bus formats
  v4l: Add 12 bits bayer pixel formats
  omap3: Add function to register omap3isp platform device structure
  OMAP3 ISP driver

Lennert Buytenhek (1):
  ARM: pxa: PXA_ESERIES depends on FB_W100.

Manjunatha Halli (7):
  drivers:media:radio: wl128x: FM Driver common header file
  drivers:media:radio: wl128x: FM Driver V4L2 sources
  drivers:media:radio: wl128x: FM Driver Common sources
  drivers:media:radio: wl128x: FM driver RX sources
  drivers:media:radio: wl128x: FM driver TX sources
  drivers:media:radio: wl128x: Kconfig & Makefile for wl128x driver
  drivers:media:radio: Update Kconfig and Makefile for wl128x FM
    driver.

Nishanth Menon (2):
  omap3|4: opp: make omapx_opp_init non-static
  OMAP3: beagle xm: enable upto 1GHz OPP

Pavan Savoy (2):
  drivers:misc:ti-st: change protocol parse logic
  Bluetooth: btwilink driver

Peter 'p2' De Schrijver (1):
  OMAP: CPUfreq: ensure driver initializes after cpufreq framework and
    governors

Rabin Vincent (1):
  USB: ehci: remove structure packing from ehci_def

Rajendra Nayak (1):
  OMAP3 PM: CPUFreq driver for OMAP3

Robert Nelson (2):
  omap: Beagle: detect new xM revision B
  xM audio fix from Ashok

Sakari Ailus (2):
  v4l: subdev: Events support
  media: Entity graph traversal

Sanjeev Premi (1):
  omap3: Add basic support for 720MHz part

Sergio Aguirre (2):
  omap3: Remove unusued ISP CBUFF resource
  omap2: Fix camera resources for multiomap

Shahar Levi (3):
  wl1271: 11n Support, Add Definitions
  wl1271: 11n Support, ACX Commands
  wl1271: 11n Support, functionality and configuration ability

Silesh C V (1):
  OMAP: PM: CPUFREQ: Fix conditional compilation

Stanimir Varbanov (1):
  v4l: Create v4l2 subdev file handle structure

Steve Sakoman (18):
  mmc: don't display single block read console messages
  MTD: silence ecc errors on mtdblock0
  OMAP: DSS2: enable hsclk in dsi_pll_init for OMAP36XX
  drivers: net: smsc911x: return ENODEV if device is not found
  drivers: input: touchscreen: ads7846: return ENODEV if device is not
    found
  ASoC: enable audio capture by default for twl4030
  MFD: enable madc clock
  MFD: add twl4030 madc driver
  ARM: OMAP: Add twl4030 madc support to Overo
  ARM: OMAP: Add twl4030 madc support to Beagle
  OMAP: DSS2: Add support for Samsung LTE430WQ-F0C panel
  OMAP: DSS2: Add support for LG Philips LB035Q02 panel
  OMAP: DSS2: add bootarg for selecting svideo or composite for tv
    output
  ARM: OMAP2: mmc-twl4030: move clock input selection prior to vcc test
  RTC: add support for backup battery recharge
  ARM: OMAP: automatically set musb mode in platform data based on
    CONFIG options
  OMAP: DSS2: check for both cpu type and revision, rather than just
    revision
  OMAP: DSS2: Add DSS2 support for Overo

Thara Gopinath (13):
  OMAP3: PM: Adding T2 enabling of smartreflex
  OMAP: Introduce a user list for each voltage domain instance in the
    voltage driver.
  OMAP: Introduce API in the OPP layer to find the opp entry
    corresponding to a voltage.
  OMAP: Introduce API to register a device with a voltagedomain
  OMAP: Introduce device specific set rate and get rate in omap_device
    structure
  OMAP: Voltage layer changes to support DVFS.
  OMAP: Introduce dependent voltage domain support.
  OMAP: Introduce device scale
  OMAP: Disable smartreflex across DVFS
  OMAP3: Introduce custom set rate and get rate APIs for scalable
    devices
  OMAP3: Update cpufreq driver to use the new set_rate API
  OMAP3: Introduce voltage domain info in the hwmod structures.
  OMAP3: Add voltage dependency table for VDD1.

Thomas Weber (1):
  OMAP: Enable Magic SysRq on serial console ttyOx

Tuukka Toivonen (1):
  ARM: OMAP3: Update Camera ISP definitions for OMAP3630

 Documentation/ABI/testing/sysfs-bus-media          |    6 +
 Documentation/DocBook/Makefile                     |    5 +-
 Documentation/DocBook/media-entities.tmpl          |   50 +
 Documentation/DocBook/media.tmpl                   |    3 +
 Documentation/DocBook/v4l/dev-subdev.xml           |  307 +++
 Documentation/DocBook/v4l/media-controller.xml     |   89 +
 Documentation/DocBook/v4l/media-func-close.xml     |   59 +
 Documentation/DocBook/v4l/media-func-ioctl.xml     |  116 +
 Documentation/DocBook/v4l/media-func-open.xml      |   94 +
 .../DocBook/v4l/media-ioc-device-info.xml          |  133 ++
 .../DocBook/v4l/media-ioc-enum-entities.xml        |  308 +++
 Documentation/DocBook/v4l/media-ioc-enum-links.xml |  207 ++
 Documentation/DocBook/v4l/media-ioc-setup-link.xml |   93 +
 Documentation/DocBook/v4l/subdev-formats.xml       | 2467 ++++++++++++++++++++
 Documentation/DocBook/v4l/v4l2.xml                 |    7 +
 Documentation/DocBook/v4l/vidioc-streamon.xml      |    9 +
 .../v4l/vidioc-subdev-enum-frame-interval.xml      |  146 ++
 .../DocBook/v4l/vidioc-subdev-enum-frame-size.xml  |  148 ++
 .../DocBook/v4l/vidioc-subdev-enum-mbus-code.xml   |  113 +
 Documentation/DocBook/v4l/vidioc-subdev-g-crop.xml |  149 ++
 Documentation/DocBook/v4l/vidioc-subdev-g-fmt.xml  |  174 ++
 .../DocBook/v4l/vidioc-subdev-g-frame-interval.xml |  135 ++
 Documentation/media-framework.txt                  |  353 +++
 Documentation/video4linux/v4l2-framework.txt       |  129 +-
 arch/arm/mach-omap2/board-omap3beagle.c            |  409 ++++-
 arch/arm/mach-omap2/board-overo.c                  |  247 ++-
 arch/arm/mach-omap2/clock.h                        |   14 +-
 arch/arm/mach-omap2/clock34xx.c                    |    2 +
 arch/arm/mach-omap2/control.h                      |    7 +
 arch/arm/mach-omap2/devices.c                      |   64 +-
 arch/arm/mach-omap2/devices.h                      |   17 +
 arch/arm/mach-omap2/hsmmc.c                        |   14 +-
 arch/arm/mach-omap2/id.c                           |   10 +
 arch/arm/mach-omap2/omap_hwmod_3xxx_data.c         |    3 +
 arch/arm/mach-omap2/omap_twl.c                     |   16 +
 arch/arm/mach-omap2/opp3xxx_data.c                 |   66 +-
 arch/arm/mach-omap2/opp4xxx_data.c                 |    3 +-
 arch/arm/mach-omap2/pm.c                           |  110 +
 arch/arm/mach-omap2/voltage.c                      |  369 +++-
 arch/arm/mach-pxa/Kconfig                          |    1 +
 arch/arm/plat-omap/clock.c                         |    2 +-
 arch/arm/plat-omap/cpu-omap.c                      |   38 +-
 arch/arm/plat-omap/include/plat/cpu.h              |   57 +
 arch/arm/plat-omap/include/plat/omap34xx.h         |   16 +-
 arch/arm/plat-omap/include/plat/omap_device.h      |   12 +-
 arch/arm/plat-omap/include/plat/voltage.h          |   20 +
 arch/arm/plat-omap/omap_device.c                   |  139 ++
 block/blk-core.c                                   |    7 +-
 drivers/base/power/opp.c                           |   28 +
 drivers/bluetooth/Kconfig                          |   10 +
 drivers/bluetooth/Makefile                         |    1 +
 drivers/bluetooth/btwilink.c                       |  397 ++++
 drivers/input/touchscreen/ads7846.c                |   13 +-
 drivers/isdn/gigaset/capi.c                        |    1 +
 drivers/media/Kconfig                              |   22 +
 drivers/media/Makefile                             |   10 +-
 drivers/media/media-device.c                       |  382 +++
 drivers/media/media-devnode.c                      |  321 +++
 drivers/media/media-entity.c                       |  536 +++++
 drivers/media/radio/Kconfig                        |    3 +
 drivers/media/radio/Makefile                       |    1 +
 drivers/media/radio/radio-si4713.c                 |    2 +-
 drivers/media/radio/wl128x/Kconfig                 |   17 +
 drivers/media/radio/wl128x/Makefile                |    6 +
 drivers/media/radio/wl128x/fmdrv.h                 |  244 ++
 drivers/media/radio/wl128x/fmdrv_common.c          | 1677 +++++++++++++
 drivers/media/radio/wl128x/fmdrv_common.h          |  402 ++++
 drivers/media/radio/wl128x/fmdrv_rx.c              |  847 +++++++
 drivers/media/radio/wl128x/fmdrv_rx.h              |   59 +
 drivers/media/radio/wl128x/fmdrv_tx.c              |  425 ++++
 drivers/media/radio/wl128x/fmdrv_tx.h              |   37 +
 drivers/media/radio/wl128x/fmdrv_v4l2.c            |  580 +++++
 drivers/media/radio/wl128x/fmdrv_v4l2.h            |   33 +
 drivers/media/video/Kconfig                        |   13 +
 drivers/media/video/Makefile                       |    4 +-
 drivers/media/video/cafe_ccic.c                    |   11 +-
 drivers/media/video/davinci/vpfe_capture.c         |    2 +-
 drivers/media/video/davinci/vpif_capture.c         |    2 +-
 drivers/media/video/davinci/vpif_display.c         |    2 +-
 drivers/media/video/isp/Makefile                   |   13 +
 drivers/media/video/isp/cfa_coef_table.h           |  601 +++++
 drivers/media/video/isp/gamma_table.h              |   90 +
 drivers/media/video/isp/isp.c                      | 2221 ++++++++++++++++++
 drivers/media/video/isp/isp.h                      |  427 ++++
 drivers/media/video/isp/ispccdc.c                  | 2280 ++++++++++++++++++
 drivers/media/video/isp/ispccdc.h                  |  223 ++
 drivers/media/video/isp/ispccp2.c                  | 1189 ++++++++++
 drivers/media/video/isp/ispccp2.h                  |  101 +
 drivers/media/video/isp/ispcsi2.c                  | 1332 +++++++++++
 drivers/media/video/isp/ispcsi2.h                  |  169 ++
 drivers/media/video/isp/ispcsiphy.c                |  247 ++
 drivers/media/video/isp/ispcsiphy.h                |   74 +
 drivers/media/video/isp/isph3a.h                   |  117 +
 drivers/media/video/isp/isph3a_aewb.c              |  374 +++
 drivers/media/video/isp/isph3a_af.c                |  429 ++++
 drivers/media/video/isp/isphist.c                  |  520 ++++
 drivers/media/video/isp/isphist.h                  |   40 +
 drivers/media/video/isp/isppreview.c               | 2120 +++++++++++++++++
 drivers/media/video/isp/isppreview.h               |  214 ++
 drivers/media/video/isp/ispqueue.c                 | 1136 +++++++++
 drivers/media/video/isp/ispqueue.h                 |  185 ++
 drivers/media/video/isp/ispreg.h                   | 1589 +++++++++++++
 drivers/media/video/isp/ispresizer.c               | 1710 ++++++++++++++
 drivers/media/video/isp/ispresizer.h               |  150 ++
 drivers/media/video/isp/ispstat.c                  | 1100 +++++++++
 drivers/media/video/isp/ispstat.h                  |  169 ++
 drivers/media/video/isp/ispvideo.c                 | 1264 ++++++++++
 drivers/media/video/isp/ispvideo.h                 |  202 ++
 drivers/media/video/isp/luma_enhance_table.h       |  154 ++
 drivers/media/video/isp/noise_filter_table.h       |   90 +
 drivers/media/video/ivtv/ivtv-i2c.c                |   11 +-
 drivers/media/video/mt9m001.c                      |    2 +-
 drivers/media/video/mt9v022.c                      |    4 +-
 drivers/media/video/ov6650.c                       |   10 +-
 drivers/media/video/s5p-fimc/fimc-capture.c        |    2 +-
 drivers/media/video/sh_mobile_csi2.c               |    6 +-
 drivers/media/video/sh_vou.c                       |    2 +-
 drivers/media/video/soc_camera.c                   |    2 +-
 drivers/media/video/soc_mediabus.c                 |    2 +-
 drivers/media/video/v4l2-common.c                  |   22 +-
 drivers/media/video/v4l2-ctrls.c                   |    2 +-
 drivers/media/video/v4l2-dev.c                     |   76 +-
 drivers/media/video/v4l2-device.c                  |   66 +-
 drivers/media/video/v4l2-ioctl.c                   |  216 +--
 drivers/media/video/v4l2-subdev.c                  |  346 +++
 drivers/mfd/Kconfig                                |   21 +
 drivers/mfd/Makefile                               |    1 +
 drivers/mfd/twl-core.c                             |    8 +
 drivers/mfd/twl4030-madc.c                         |  537 +++++
 drivers/misc/ti-st/st_core.c                       |  355 +--
 drivers/misc/ti-st/st_kim.c                        |   56 +-
 drivers/mmc/card/block.c                           |    4 +-
 drivers/mtd/nand/nand_ecc.c                        |    2 +-
 drivers/net/smsc911x.c                             |    4 +-
 drivers/net/wireless/wl12xx/Kconfig                |   10 +
 drivers/net/wireless/wl12xx/wl1271.h               |   11 +-
 drivers/net/wireless/wl12xx/wl1271_acx.c           |   83 +
 drivers/net/wireless/wl12xx/wl1271_acx.h           |   86 +
 drivers/net/wireless/wl12xx/wl1271_main.c          |  161 +-
 drivers/net/wireless/wl12xx/wl1271_rx.c            |    6 +
 drivers/net/wireless/wl12xx/wl1271_tx.c            |   11 +
 drivers/rtc/rtc-twl.c                              |   25 +
 drivers/serial/omap-serial.c                       |    4 +
 drivers/video/modedb.c                             |    4 +
 drivers/video/omap2/displays/Kconfig               |   12 +
 drivers/video/omap2/displays/Makefile              |    2 +
 .../omap2/displays/panel-lgphilips-lb035q02.c      |  244 ++
 .../omap2/displays/panel-samsung-lte430wq-f0c.c    |  154 ++
 drivers/video/omap2/dss/dispc.c                    |    4 +-
 drivers/video/omap2/dss/dpi.c                      |    7 +-
 drivers/video/omap2/dss/venc.c                     |   22 +
 drivers/video/omap2/omapfb/omapfb-main.c           |   10 +-
 fs/buffer.c                                        |    3 +-
 include/linux/Kbuild                               |    4 +
 include/linux/i2c/twl.h                            |    1 +
 include/linux/i2c/twl4030-madc.h                   |  130 +
 include/linux/media.h                              |  132 ++
 include/linux/omap3isp.h                           |  631 +++++
 include/linux/opp.h                                |    8 +
 include/linux/ti_wilink_st.h                       |   40 +-
 include/linux/usb/ehci_def.h                       |    6 +-
 include/linux/v4l2-mediabus.h                      |  108 +
 include/linux/v4l2-subdev.h                        |  141 ++
 include/linux/videodev2.h                          |    4 +
 include/media/media-device.h                       |   95 +
 include/media/media-devnode.h                      |   97 +
 include/media/media-entity.h                       |  147 ++
 include/media/soc_mediabus.h                       |    3 +-
 include/media/v4l2-common.h                        |   18 +-
 include/media/v4l2-ctrls.h                         |    1 +
 include/media/v4l2-dev.h                           |   25 +-
 include/media/v4l2-device.h                        |    4 +
 include/media/v4l2-ioctl.h                         |    3 +
 include/media/v4l2-mediabus.h                      |   61 +-
 include/media/v4l2-subdev.h                        |  120 +-
 net/bridge/br_stp_bpdu.c                           |    2 +
 sound/soc/codecs/twl4030.c                         |    4 +-
 sound/soc/omap/omap-mcbsp.c                        |    3 +
 178 files changed, 37220 insertions(+), 745 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-media
 create mode 100644 Documentation/DocBook/v4l/dev-subdev.xml
 create mode 100644 Documentation/DocBook/v4l/media-controller.xml
 create mode 100644 Documentation/DocBook/v4l/media-func-close.xml
 create mode 100644 Documentation/DocBook/v4l/media-func-ioctl.xml
 create mode 100644 Documentation/DocBook/v4l/media-func-open.xml
 create mode 100644 Documentation/DocBook/v4l/media-ioc-device-info.xml
 create mode 100644 Documentation/DocBook/v4l/media-ioc-enum-entities.xml
 create mode 100644 Documentation/DocBook/v4l/media-ioc-enum-links.xml
 create mode 100644 Documentation/DocBook/v4l/media-ioc-setup-link.xml
 create mode 100644 Documentation/DocBook/v4l/subdev-formats.xml
 create mode 100644 Documentation/DocBook/v4l/vidioc-subdev-enum-frame-interval.xml
 create mode 100644 Documentation/DocBook/v4l/vidioc-subdev-enum-frame-size.xml
 create mode 100644 Documentation/DocBook/v4l/vidioc-subdev-enum-mbus-code.xml
 create mode 100644 Documentation/DocBook/v4l/vidioc-subdev-g-crop.xml
 create mode 100644 Documentation/DocBook/v4l/vidioc-subdev-g-fmt.xml
 create mode 100644 Documentation/DocBook/v4l/vidioc-subdev-g-frame-interval.xml
 create mode 100644 Documentation/media-framework.txt
 create mode 100644 arch/arm/mach-omap2/devices.h
 create mode 100644 drivers/bluetooth/btwilink.c
 create mode 100644 drivers/media/media-device.c
 create mode 100644 drivers/media/media-devnode.c
 create mode 100644 drivers/media/media-entity.c
 create mode 100644 drivers/media/radio/wl128x/Kconfig
 create mode 100644 drivers/media/radio/wl128x/Makefile
 create mode 100644 drivers/media/radio/wl128x/fmdrv.h
 create mode 100644 drivers/media/radio/wl128x/fmdrv_common.c
 create mode 100644 drivers/media/radio/wl128x/fmdrv_common.h
 create mode 100644 drivers/media/radio/wl128x/fmdrv_rx.c
 create mode 100644 drivers/media/radio/wl128x/fmdrv_rx.h
 create mode 100644 drivers/media/radio/wl128x/fmdrv_tx.c
 create mode 100644 drivers/media/radio/wl128x/fmdrv_tx.h
 create mode 100644 drivers/media/radio/wl128x/fmdrv_v4l2.c
 create mode 100644 drivers/media/radio/wl128x/fmdrv_v4l2.h
 create mode 100644 drivers/media/video/isp/Makefile
 create mode 100644 drivers/media/video/isp/cfa_coef_table.h
 create mode 100644 drivers/media/video/isp/gamma_table.h
 create mode 100644 drivers/media/video/isp/isp.c
 create mode 100644 drivers/media/video/isp/isp.h
 create mode 100644 drivers/media/video/isp/ispccdc.c
 create mode 100644 drivers/media/video/isp/ispccdc.h
 create mode 100644 drivers/media/video/isp/ispccp2.c
 create mode 100644 drivers/media/video/isp/ispccp2.h
 create mode 100644 drivers/media/video/isp/ispcsi2.c
 create mode 100644 drivers/media/video/isp/ispcsi2.h
 create mode 100644 drivers/media/video/isp/ispcsiphy.c
 create mode 100644 drivers/media/video/isp/ispcsiphy.h
 create mode 100644 drivers/media/video/isp/isph3a.h
 create mode 100644 drivers/media/video/isp/isph3a_aewb.c
 create mode 100644 drivers/media/video/isp/isph3a_af.c
 create mode 100644 drivers/media/video/isp/isphist.c
 create mode 100644 drivers/media/video/isp/isphist.h
 create mode 100644 drivers/media/video/isp/isppreview.c
 create mode 100644 drivers/media/video/isp/isppreview.h
 create mode 100644 drivers/media/video/isp/ispqueue.c
 create mode 100644 drivers/media/video/isp/ispqueue.h
 create mode 100644 drivers/media/video/isp/ispreg.h
 create mode 100644 drivers/media/video/isp/ispresizer.c
 create mode 100644 drivers/media/video/isp/ispresizer.h
 create mode 100644 drivers/media/video/isp/ispstat.c
 create mode 100644 drivers/media/video/isp/ispstat.h
 create mode 100644 drivers/media/video/isp/ispvideo.c
 create mode 100644 drivers/media/video/isp/ispvideo.h
 create mode 100644 drivers/media/video/isp/luma_enhance_table.h
 create mode 100644 drivers/media/video/isp/noise_filter_table.h
 create mode 100644 drivers/media/video/v4l2-subdev.c
 create mode 100644 drivers/mfd/twl4030-madc.c
 create mode 100644 drivers/video/omap2/displays/panel-lgphilips-lb035q02.c
 create mode 100644 drivers/video/omap2/displays/panel-samsung-lte430wq-f0c.c
 create mode 100644 include/linux/i2c/twl4030-madc.h
 create mode 100644 include/linux/media.h
 create mode 100644 include/linux/omap3isp.h
 create mode 100644 include/linux/v4l2-mediabus.h
 create mode 100644 include/linux/v4l2-subdev.h
 create mode 100644 include/media/media-device.h
 create mode 100644 include/media/media-devnode.h
 create mode 100644 include/media/media-entity.h


