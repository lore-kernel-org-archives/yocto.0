Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D07C4E00A45; Wed,  8 Jul 2015 09:10:49 -0700 (PDT)
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
Received: from bin-vsp-out-03.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EDFAE00978
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 09:10:42 -0700 (PDT)
X-Halon-ID: de1e68e1-258b-11e5-8f60-0050569116f7
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-03.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 18:10:36 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Wed,  8 Jul 2015 18:10:36 +0200
Message-Id: <600d86e30d5886469f857dee5c33c42cdd0852e3.1436366548.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1436366548.git.petter@technux.se>
References: <cover.1436366548.git.petter@technux.se>
In-Reply-To: <cover.1436366548.git.petter@technux.se>
References: <cover.1436366548.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 3/6] bcm2835: update version to 1.44
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
X-List-Received-Date: Wed, 08 Jul 2015 16:10:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

[Support #60]

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 recipes-devtools/bcm2835/{bcm2835_1.38.bb => bcm2835_1.44.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-devtools/bcm2835/{bcm2835_1.38.bb => bcm2835_1.44.bb} (88%)

diff --git a/recipes-devtools/bcm2835/bcm2835_1.38.bb b/recipes-devtools/bcm2835/bcm2835_1.44.bb
similarity index 88%
rename from recipes-devtools/bcm2835/bcm2835_1.38.bb
rename to recipes-devtools/bcm2835/bcm2835_1.44.bb
index 316d7b5..a0d349d 100644
--- a/recipes-devtools/bcm2835/bcm2835_1.38.bb
+++ b/recipes-devtools/bcm2835/bcm2835_1.44.bb
@@ -12,8 +12,8 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRC_URI = "http://www.airspayce.com/mikem/bcm2835/bcm2835-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "22d431f7402b9c7f93baef348a459cb1"
-SRC_URI[sha256sum] = "90c993559ea273ae2e0587f6b815f7c80f19f47ee7f8aa7799b883f975196dbe"
+SRC_URI[md5sum] = "a974af22a2fa2c0b131becd55c4b31c0"
+SRC_URI[sha256sum] = "608b60bf95ff909a027155303090b71643f333116584d4a2c3b8f6edbf49c612"
 
 inherit autotools
 
-- 
1.9.1


