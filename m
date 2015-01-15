Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E9C1E00945; Thu, 15 Jan 2015 14:33:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
Received: from bin-vsp-out-05.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 950ACE00894
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 14:33:05 -0800 (PST)
X-Halon-ID: 91d861c0-9d06-11e4-bf52-005056916f53
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.localdomain (unknown [95.197.59.95])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 23:33:46 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Thu, 15 Jan 2015 23:32:51 +0100
Message-Id: <cover.1421360572.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/2] linux-raspberrypi fixes
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
X-List-Received-Date: Thu, 15 Jan 2015 22:33:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The following changes since commit 6c6f44136f7e1c97bc45be118a48bd9b1fef1072:

  gstreamer1.0-plugins-bad: Making bbappend version independent (2014-11-20 12:32:36 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib petmab/rpi_fixes
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi_fixes

Petter Mabäcker (2):
  linux-raspberrypi: fix do_configure failure
  linux-raspberrypi: faulty branch and srcrev for 3.16

 recipes-kernel/linux/linux-raspberrypi.inc                       | 8 +++++---
 recipes-kernel/linux/linux-raspberrypi/defconfig                 | 1 +
 .../{linux-raspberrypi_3.16.1.bb => linux-raspberrypi_3.16.5.bb} | 4 ++--
 recipes-kernel/linux/linux.inc                                   | 9 +++++----
 4 files changed, 13 insertions(+), 9 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/defconfig
 rename recipes-kernel/linux/{linux-raspberrypi_3.16.1.bb => linux-raspberrypi_3.16.5.bb} (69%)

-- 
1.9.1


