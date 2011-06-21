Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F4F84C804C2
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2011 02:17:18 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Jun 2011 00:17:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,399,1304319600"; d="scan'208";a="17645888"
Received: from unknown (HELO localhost) ([10.255.12.247])
	by orsmga001.jf.intel.com with ESMTP; 21 Jun 2011 00:17:10 -0700
From: Darren Hart <darren@dvhart.com>
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com,
	koen@dominion.thruhere.net
Date: Tue, 21 Jun 2011 00:17:04 -0700
Message-Id: <cover.1308639936.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PULL v2][linux-yocto]beagleboard: sync with meta-ti linux-omap_2.6.37
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
X-List-Received-Date: Tue, 21 Jun 2011 07:17:19 -0000

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
significantly improves Beagleboard support in linux-yocto. As there are 70
patches in total, and none of them are new, I have omitted them from the email.

V2: Eliminate the linus/* (3) and media/* (42) patches at Koon's suggestion,
    reducing patch count from 115 to 70.

The following changes since commit bd97d3f257387a3659b5c2761b0d5323b65203c7:

  Merge branch 'yocto/standard/base' into yocto/standard/beagleboard (2011-06-16 15:54:07 -0400)

are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib dvhart/yocto/standard/beagleboard
  http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/yocto/standard/beagleboard

Alexander Holler (1):
  arm: omap3: beagle: Ensure msecure is mux'd to be able to set the RTC

Arik Nemtsov (1):
  wl12xx: Read MAC address from NVS file on HW startup

Darren Hart (2):
  board-omap3beagle: whitespace cleanup
  board-omap3beagle: allow for building without wl1271

Eliad Peller (1):
  wl1271: set wl->vif only if add_interface succeeded.

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

Sanjeev Premi (1):
  omap3: Add basic support for 720MHz part

Shahar Levi (3):
  wl1271: 11n Support, Add Definitions
  wl1271: 11n Support, ACX Commands
  wl1271: 11n Support, functionality and configuration ability

Silesh C V (1):
  OMAP: PM: CPUFREQ: Fix conditional compilation

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

 arch/arm/mach-omap2/board-omap3beagle.c            |  409 +++++-
 arch/arm/mach-omap2/board-overo.c                  |  247 +++-
 arch/arm/mach-omap2/clock.h                        |   14 +-
 arch/arm/mach-omap2/clock34xx.c                    |    2 +
 arch/arm/mach-omap2/control.h                      |    7 +
 arch/arm/mach-omap2/hsmmc.c                        |   14 +-
 arch/arm/mach-omap2/id.c                           |   10 +
 arch/arm/mach-omap2/omap_hwmod_3xxx_data.c         |    3 +
 arch/arm/mach-omap2/omap_twl.c                     |   16 +
 arch/arm/mach-omap2/opp3xxx_data.c                 |   66 +-
 arch/arm/mach-omap2/opp4xxx_data.c                 |    3 +-
 arch/arm/mach-omap2/pm.c                           |  110 ++
 arch/arm/mach-omap2/voltage.c                      |  369 +++++-
 arch/arm/plat-omap/clock.c                         |    2 +-
 arch/arm/plat-omap/cpu-omap.c                      |   38 +-
 arch/arm/plat-omap/include/plat/cpu.h              |   57 +
 arch/arm/plat-omap/include/plat/omap_device.h      |   12 +-
 arch/arm/plat-omap/include/plat/voltage.h          |   20 +
 arch/arm/plat-omap/omap_device.c                   |  139 ++
 block/blk-core.c                                   |    7 +-
 drivers/base/power/opp.c                           |   28 +
 drivers/bluetooth/Kconfig                          |   10 +
 drivers/bluetooth/Makefile                         |    1 +
 drivers/bluetooth/btwilink.c                       |  397 +++++
 drivers/input/touchscreen/ads7846.c                |   13 +-
 drivers/media/radio/Kconfig                        |    3 +
 drivers/media/radio/Makefile                       |    1 +
 drivers/media/radio/wl128x/Kconfig                 |   17 +
 drivers/media/radio/wl128x/Makefile                |    6 +
 drivers/media/radio/wl128x/fmdrv.h                 |  244 +++
 drivers/media/radio/wl128x/fmdrv_common.c          | 1677 ++++++++++++++++++++
 drivers/media/radio/wl128x/fmdrv_common.h          |  402 +++++
 drivers/media/radio/wl128x/fmdrv_rx.c              |  847 ++++++++++
 drivers/media/radio/wl128x/fmdrv_rx.h              |   59 +
 drivers/media/radio/wl128x/fmdrv_tx.c              |  425 +++++
 drivers/media/radio/wl128x/fmdrv_tx.h              |   37 +
 drivers/media/radio/wl128x/fmdrv_v4l2.c            |  580 +++++++
 drivers/media/radio/wl128x/fmdrv_v4l2.h            |   33 +
 drivers/mfd/Kconfig                                |   21 +
 drivers/mfd/Makefile                               |    1 +
 drivers/mfd/twl-core.c                             |    8 +
 drivers/mfd/twl4030-madc.c                         |  537 +++++++
 drivers/misc/ti-st/st_core.c                       |  355 ++---
 drivers/misc/ti-st/st_kim.c                        |   56 +-
 drivers/mmc/card/block.c                           |    4 +-
 drivers/mtd/nand/nand_ecc.c                        |    2 +-
 drivers/net/smsc911x.c                             |    4 +-
 drivers/net/wireless/wl12xx/Kconfig                |   10 +
 drivers/net/wireless/wl12xx/wl1271.h               |   11 +-
 drivers/net/wireless/wl12xx/wl1271_acx.c           |   83 +
 drivers/net/wireless/wl12xx/wl1271_acx.h           |   86 +
 drivers/net/wireless/wl12xx/wl1271_main.c          |  161 ++-
 drivers/net/wireless/wl12xx/wl1271_rx.c            |    6 +
 drivers/net/wireless/wl12xx/wl1271_tx.c            |   11 +
 drivers/rtc/rtc-twl.c                              |   25 +
 drivers/serial/omap-serial.c                       |    4 +
 drivers/video/modedb.c                             |    4 +
 drivers/video/omap2/displays/Kconfig               |   12 +
 drivers/video/omap2/displays/Makefile              |    2 +
 .../omap2/displays/panel-lgphilips-lb035q02.c      |  244 +++
 .../omap2/displays/panel-samsung-lte430wq-f0c.c    |  154 ++
 drivers/video/omap2/dss/dispc.c                    |    4 +-
 drivers/video/omap2/dss/dpi.c                      |    7 +-
 drivers/video/omap2/dss/venc.c                     |   22 +
 drivers/video/omap2/omapfb/omapfb-main.c           |   10 +-
 fs/buffer.c                                        |    3 +-
 include/linux/i2c/twl.h                            |    1 +
 include/linux/i2c/twl4030-madc.h                   |  130 ++
 include/linux/opp.h                                |    8 +
 include/linux/ti_wilink_st.h                       |   40 +-
 include/linux/usb/ehci_def.h                       |    6 +-
 sound/soc/codecs/twl4030.c                         |    4 +-
 sound/soc/omap/omap-mcbsp.c                        |    3 +
 73 files changed, 7958 insertions(+), 406 deletions(-)
 create mode 100644 drivers/bluetooth/btwilink.c
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
 create mode 100644 drivers/mfd/twl4030-madc.c
 create mode 100644 drivers/video/omap2/displays/panel-lgphilips-lb035q02.c
 create mode 100644 drivers/video/omap2/displays/panel-samsung-lte430wq-f0c.c
 create mode 100644 include/linux/i2c/twl4030-madc.h


