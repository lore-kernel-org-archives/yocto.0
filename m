Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60131E0030B
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 16:00:30 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 16:00:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="113646813"
Received: from unknown (HELO localhost) ([10.7.199.61])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2012 15:59:43 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu,  1 Mar 2012 15:58:41 -0800
Message-Id: <cover.1330643860.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
MIME-Version: 1.0
Subject: [PATCH 00/11][linux-yocto-3.0] Backport fixes and add FRI2 support to pch_uart
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
X-List-Received-Date: Fri, 02 Mar 2012 00:00:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Backport 7 patches bringing pch_uart up to date with required fixes and new
features to support the 4 new patches (from me) enabling the FRI2 serial port.

My patches have been sent to LKML and have received the approval one of the
driver maintainers. They are currently pending review and a pull from Greg KH.

Please apply to yocto/standard/base.

The following changes since commit c578f3a1f357142a6e02a1df4ae9aa16f45094d6:

  Merge branch 'yocto/base' into yocto/standard/base (2012-02-26 00:04:15 -0500)

are available in the git repository at:

  git://git.infradead.org/users/dvhart/linux-yocto-3.0.git dvhart/yocto/standard/pch_uart
  http://git.infradead.org/users/dvhart/linux-yocto-3.0.git/shortlog/refs/heads/dvhart/yocto/standard/pch_uart

Alexander Stein (3):
  pch_uart: add missing comment about OKI ML7223
  pch_uart: Add MSI support
  drivers/tty/serial/pch_uart.c: add console support

Darren Hart (4):
  pch_uart: Use uartclk instead of base_baud
  pch_uart: Add Fish River Island II uart clock quirks
  pch_uart: Add user_uartclk parameter
  pch_uart: Use existing default_baud in setup_console

Jiri Slaby (1):
  TTY: serial, fix includes in some drivers

Tomoya MORINAGA (2):
  pch_uart: Set PCIe bus number using probe parameter
  pch_uart: Change company name OKI SEMICONDUCTOR to LAPIS
    Semiconductor

Uwe Kleine-König (1):
  serial/pch: use global div helper instead of creating a private one

 drivers/tty/serial/Kconfig                  |    9 +
 drivers/tty/serial/apbuart.c                |    1 +
 drivers/tty/serial/cpm_uart/cpm_uart_core.c |    1 +
 drivers/tty/serial/dz.c                     |    1 +
 drivers/tty/serial/ioc3_serial.c            |    1 +
 drivers/tty/serial/ioc4_serial.c            |    1 +
 drivers/tty/serial/m32r_sio.c               |    1 +
 drivers/tty/serial/max3100.c                |    2 +
 drivers/tty/serial/max3107.c                |    2 +
 drivers/tty/serial/mpc52xx_uart.c           |    1 +
 drivers/tty/serial/msm_serial_hs.c          |    2 +
 drivers/tty/serial/mux.c                    |    2 +
 drivers/tty/serial/nwpserial.c              |    1 +
 drivers/tty/serial/pch_uart.c               |  227 ++++++++++++++++++++++++---
 drivers/tty/serial/sb1250-duart.c           |    1 +
 drivers/tty/serial/serial_ks8695.c          |    1 +
 drivers/tty/serial/serial_txx9.c            |    2 +
 drivers/tty/serial/sn_console.c             |    1 +
 drivers/tty/serial/timbuart.c               |    2 +
 drivers/tty/serial/uartlite.c               |    1 +
 drivers/tty/serial/ucc_uart.c               |    4 +-
 drivers/tty/serial/xilinx_uartps.c          |    4 +-
 drivers/tty/serial/zs.c                     |    1 +
 23 files changed, 246 insertions(+), 23 deletions(-)

-- 
1.7.6.5


