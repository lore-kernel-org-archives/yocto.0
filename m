Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1B50E00960; Mon, 27 Apr 2015 23:59:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.224 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0BBFE008EA
	for <yocto@yoctoproject.org>; Mon, 27 Apr 2015 23:59:31 -0700 (PDT)
X-Halon-ID: f665414f-ed73-11e4-9f47-005056917c0c
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 08:58:23 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Tue, 28 Apr 2015 08:58:18 +0200
Message-Id: <796570fa0d50473d1f293d271476bed9cce90bcb.1430204060.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1430204060.git.petter@technux.se>
References: <cover.1430204060.git.petter@technux.se>
In-Reply-To: <cover.1430204060.git.petter@technux.se>
References: <cover.1430204060.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/1] linux-raspberrypi: Update 3.18 branch to 3.18.11
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
X-List-Received-Date: Tue, 28 Apr 2015 06:59:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Update linux-raspberrypi_3.18 to latest version.

Remove sl030raspberrypii2ckernel.patch since it will not apply anymore
and its content seems to be obsolite in later kernel versions.

[Support #56]

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 recipes-kernel/linux/linux-raspberrypi_3.18.bb | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
index 921e702..e7a6221 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
@@ -1,8 +1,7 @@
-LINUX_VERSION ?= "3.18.5"
+LINUX_VERSION ?= "3.18.11"
 
-SRCREV = "a6cf3c99bc89e2c010c2f78fbf9e3ed478ccfd46"
+SRCREV = "b2f16e549532870e0c6fa3b588ad239fd9421702"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y \
-           file://sl030raspberrypii2ckernel.patch \
           "
 
 require linux-raspberrypi.inc
-- 
1.9.1


