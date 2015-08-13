Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BB1CE00985; Thu, 13 Aug 2015 06:12:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (vsp-unauthed02.binero.net
	[195.74.38.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FBD3E009D9
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 06:12:25 -0700 (PDT)
X-Halon-ID: efa7610c-41bc-11e5-b1f7-005056917c0c
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 15:12:23 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Thu, 13 Aug 2015 15:12:22 +0200
Message-Id: <049a3199be900d36a3a15a72d6279b55a757aaad.1439471046.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1439471046.git.petter@technux.se>
References: <cover.1439471046.git.petter@technux.se>
In-Reply-To: <cover.1439471046.git.petter@technux.se>
References: <cover.1439471046.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][fido][PATCH 2/4] If SERIAL_CONSOLE is already define by another layer, this value may not be good.
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
X-List-Received-Date: Thu, 13 Aug 2015 13:12:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Thomas Perrot <thomas.perrot@tupi.fr>

Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>

(cherry picked from commit c8532df1c2e4812b3520d32ed49be943bea2edd9)
Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 conf/machine/include/rpi-base.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index a26803a..1dda207 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -7,7 +7,7 @@ include conf/machine/include/soc-family.inc
 
 IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"
 
-SERIAL_CONSOLE ?= "115200 ttyAMA0"
+SERIAL_CONSOLE = "115200 ttyAMA0"
 
 XSERVER = " \
     xserver-xorg \
-- 
1.9.1


