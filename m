Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2973BE00A49; Wed, 22 Jul 2015 14:29:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (vsp-authed02.binero.net
	[195.74.38.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F39CCE00A38
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 14:29:54 -0700 (PDT)
X-Halon-ID: c86649f2-30b8-11e5-b1e4-005056917c0c
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.localdomain (unknown [95.197.14.162])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 23:29:49 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Wed, 22 Jul 2015 23:29:52 +0200
Message-Id: <7c508bdaa77ecacf897f5470c85767ed6702fd6e.1437600372.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1437600372.git.petter@technux.se>
References: <cover.1437600372.git.petter@technux.se>
In-Reply-To: <cover.1437600372.git.petter@technux.se>
References: <cover.1437600372.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/1] packagegroup-rpi-test: Add pi-blaster
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
X-List-Received-Date: Wed, 22 Jul 2015 21:29:57 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Ensure that pi-blaster is built and included by default when building
'rpi-test-image'.

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 recipes-core/packagegroups/packagegroup-rpi-test.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/packagegroups/packagegroup-rpi-test.bb b/recipes-core/packagegroups/packagegroup-rpi-test.bb
index e16e79e..d8d311f 100644
--- a/recipes-core/packagegroups/packagegroup-rpi-test.bb
+++ b/recipes-core/packagegroups/packagegroup-rpi-test.bb
@@ -10,6 +10,7 @@ RDEPENDS_${PN} = "\
     wiringpi \
     rpio \
     rpi-gpio \
+    pi-blaster \
 "
 
 RRECOMMENDS_${PN} = "\
-- 
1.9.1


