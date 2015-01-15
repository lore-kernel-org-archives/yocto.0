Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 039BBE0093B; Thu, 15 Jan 2015 14:33:15 -0800 (PST)
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
Received: from bin-vsp-out-05.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42AF1E00782
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 14:33:07 -0800 (PST)
X-Halon-ID: 944a0bab-9d06-11e4-bf52-005056916f53
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.localdomain (unknown [95.197.59.95])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 23:33:50 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Thu, 15 Jan 2015 23:32:53 +0100
Message-Id: <4d7e57df342be3c969000e5640f787b327c7ce45.1421360572.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1421360572.git.petter@technux.se>
References: <cover.1421360572.git.petter@technux.se>
In-Reply-To: <cover.1421360572.git.petter@technux.se>
References: <cover.1421360572.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi: faulty branch and srcrev for 3.16
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
X-List-Received-Date: Thu, 15 Jan 2015 22:33:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

linux-raspberrypi_3.16 used wrong branch (rpi-3.14.y instead of
rpi-3.16.y). Use latest SRCREV for 3.16 and bump version to 3.16.5.

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 .../{linux-raspberrypi_3.16.1.bb => linux-raspberrypi_3.16.5.bb}      | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-kernel/linux/{linux-raspberrypi_3.16.1.bb => linux-raspberrypi_3.16.5.bb} (69%)

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.16.1.bb b/recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
similarity index 69%
rename from recipes-kernel/linux/linux-raspberrypi_3.16.1.bb
rename to recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
index 60aca96..97947c2 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.16.1.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.16.5.bb
@@ -1,5 +1,5 @@
-SRCREV = "82692a293288c334f3da11895e63ea7d066db4f6"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.14.y \
+SRCREV = "377c82aa1d31b37f1096096b0e4c65beb0bc5c49"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.16.y \
            file://sl030raspberrypii2ckernel.patch \
           "
 
-- 
1.9.1


