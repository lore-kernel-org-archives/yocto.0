Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C6A8E009C8; Wed,  8 Jul 2015 09:10:50 -0700 (PDT)
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
Received: from bin-vsp-out-03.atm.binero.net (vsp-authed02.binero.net
	[195.74.38.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4B98E00998
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 09:10:44 -0700 (PDT)
X-Halon-ID: df0e5b39-258b-11e5-8f60-0050569116f7
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-03.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 18:10:37 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Wed,  8 Jul 2015 18:10:38 +0200
Message-Id: <5ad22e81b074e0518aa39234cc218780add4fb9d.1436366548.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1436366548.git.petter@technux.se>
References: <cover.1436366548.git.petter@technux.se>
In-Reply-To: <cover.1436366548.git.petter@technux.se>
References: <cover.1436366548.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 5/6] rpi-gpio: update version to 0.5.11
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
X-List-Received-Date: Wed, 08 Jul 2015 16:10:50 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

[Support #60]

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 recipes-devtools/python/{rpi-gpio_0.5.9.bb => rpi-gpio_0.5.11.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-devtools/python/{rpi-gpio_0.5.9.bb => rpi-gpio_0.5.11.bb} (76%)

diff --git a/recipes-devtools/python/rpi-gpio_0.5.9.bb b/recipes-devtools/python/rpi-gpio_0.5.11.bb
similarity index 76%
rename from recipes-devtools/python/rpi-gpio_0.5.9.bb
rename to recipes-devtools/python/rpi-gpio_0.5.11.bb
index 9394fd8..bca31cc 100644
--- a/recipes-devtools/python/rpi-gpio_0.5.9.bb
+++ b/recipes-devtools/python/rpi-gpio_0.5.11.bb
@@ -15,5 +15,5 @@ inherit distutils
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-SRC_URI[md5sum] = "54ea6ef33502d43e3a89713593315e5a"
-SRC_URI[sha256sum] = "167fab1861093677af69db135ce815729dd4fbfb8f8e2eb830eab6324bc89152"
+SRC_URI[md5sum] = "9dc3dab6ce2b7ccb833a866efb392821"
+SRC_URI[sha256sum] = "8d6f02da7f90e24512ad80ee4ccf34ef33687c88c47326f100cf7ac4d7ae4bf3"
-- 
1.9.1


