Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28261E013AE
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 16:00:37 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 16:00:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="113647196"
Received: from unknown (HELO localhost) ([10.7.199.61])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2012 16:00:33 -0800
From: Darren Hart <darren@dvhart.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Thu,  1 Mar 2012 15:59:35 -0800
Message-Id: <cover.1330644211.git.darren@dvhart.com>
X-Mailer: git-send-email 1.7.6.5
Subject: [PATCH 0/5][linux-yocto-3.2] Backport fixes and add FRI2 support to pch_uart
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
X-List-Received-Date: Fri, 02 Mar 2012 00:00:37 -0000

Backport consle support and add the 4 new patches (from me) enabling the FRI2
serial port.

My patches have been sent to LKML and have received the approval one of the
driver maintainers. They are currently pending review and a pull from Greg KH.

Please apply to standard/base and down.

The following changes since commit ee3b6f8f773c373ca2ef2e4a04d2fd58b748eaee:

  Merge branch 'base' into standard/base (2012-02-28 13:31:59 -0500)

are available in the git repository at:

  git://git.infradead.org/users/dvhart/linux-yocto-3.2.git dvhart/standard/pch_uart
  http://git.infradead.org/users/dvhart/linux-yocto-3.2.git/shortlog/refs/heads/dvhart/standard/pch_uart

Alexander Stein (1):
  drivers/tty/serial/pch_uart.c: add console support

Darren Hart (4):
  pch_uart: Use uartclk instead of base_baud
  pch_uart: Add Fish River Island II uart clock quirks
  pch_uart: Add user_uartclk parameter
  pch_uart: Use existing default_baud in setup_console

 drivers/tty/serial/Kconfig    |    9 ++
 drivers/tty/serial/pch_uart.c |  209 +++++++++++++++++++++++++++++++++++++---
 2 files changed, 202 insertions(+), 16 deletions(-)

-- 
1.7.6.5


