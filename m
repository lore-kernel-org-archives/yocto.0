Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E6D8E009ED; Fri,  8 May 2015 14:49:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48513E00945
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 14:49:14 -0700 (PDT)
X-Halon-ID: 1074b22a-f5cc-11e4-a7da-005056917c0c
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 23:49:12 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Fri,  8 May 2015 23:49:02 +0200
Message-Id: <a9c1c13c36d23b7e2a90900ac8253b04bb8cd7ef.1431121258.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1431121258.git.petter@technux.se>
References: <cover.1431121258.git.petter@technux.se>
In-Reply-To: <cover.1431121258.git.petter@technux.se>
References: <cover.1431121258.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 2/5] README: fix outdated device tree info
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
X-List-Received-Date: Fri, 08 May 2015 21:49:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

After '6392a63 rpi-base.inc: Use KERNEL_DEVICETREE by default' was
introduced, the default value for 3.18+ kernels was changed. Ensure this
is reflected in the README.

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 README | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/README b/README
index a2ec4ca..3913f41 100644
--- a/README
+++ b/README
@@ -179,7 +179,8 @@ kernels.
           While creating the SDCard image, this modified kernel is put on
           boot partition (as kernel.img) as well as DeviceTree blobs (.dtb files).
 
-NOTE: KERNEL_DEVICETREE is empty by default.
+NOTE: KERNEL_DEVICETREE is default enabled for kernel >= 3.18 and always disabled for
+      older kernel versions.
 
 3. Extra apps
 =============
-- 
1.9.1


