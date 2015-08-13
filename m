Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79D01E00A54; Thu, 13 Aug 2015 06:12:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EE7EE009C5
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 06:12:24 -0700 (PDT)
X-Halon-ID: ef625ebb-41bc-11e5-b1f7-005056917c0c
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 15:12:22 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Thu, 13 Aug 2015 15:12:21 +0200
Message-Id: <4570377909d00208c3ade8e885c969e947982452.1439471046.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1439471046.git.petter@technux.se>
References: <cover.1439471046.git.petter@technux.se>
In-Reply-To: <cover.1439471046.git.petter@technux.se>
References: <cover.1439471046.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][fido][PATCH 1/4] linux-raspberrypi: Update 3.18 branch to 3.18.11
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
X-List-Received-Date: Thu, 13 Aug 2015 13:12:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Update linux-raspberrypi_3.18 to latest version.
Remove sl030raspberrypii2ckernel.patch since it will not apply anymore
and its content seems to be obsolite in later kernel versions.

[Support #56]

Change-Id: I91e57f4e65d9c1c9d12014f5d11b0acd950e2d1d
Signed-off-by: Petter Mabäcker <petter@technux.se>
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>

(cherry picked from commit c9f29df249b80ab488e4ea6eddc01a6522a28c09)
Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 recipes-kernel/linux/linux-raspberrypi_3.18.bb | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
index 921e702..6d8b155 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.18.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.18.bb
@@ -1,8 +1,6 @@
-LINUX_VERSION ?= "3.18.5"
+LINUX_VERSION ?= "3.18.11"
 
-SRCREV = "a6cf3c99bc89e2c010c2f78fbf9e3ed478ccfd46"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
+SRCREV = "d64fa8121fca9883d6fb14ca06d2abf66496195e"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.18.y"
 
 require linux-raspberrypi.inc
-- 
1.9.1


