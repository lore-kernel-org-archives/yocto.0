Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 188AFE00A2C; Wed,  8 Jul 2015 09:10:50 -0700 (PDT)
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
Received: from bin-vsp-out-03.atm.binero.net (vsp-unauthed02.binero.net
	[195.74.38.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADBB6E00A16
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 09:10:43 -0700 (PDT)
X-Halon-ID: df49ea64-258b-11e5-8f60-0050569116f7
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-03.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 18:10:37 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Wed,  8 Jul 2015 18:10:39 +0200
Message-Id: <8543d88e3ab492644a8d974fc5b2292bf98a916e.1436366548.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1436366548.git.petter@technux.se>
References: <cover.1436366548.git.petter@technux.se>
In-Reply-To: <cover.1436366548.git.petter@technux.se>
References: <cover.1436366548.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 6/6] userland: bump SRCREV
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

Update to latest version of userland for rpi.

[Support #60]

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 recipes-graphics/userland/userland_git.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 729c42a..dfb6701 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -5,7 +5,7 @@ vcos, openmaxil, vchiq_arm, bcm_host, WFC, OpenVG."
 LICENSE = "Broadcom"
 LIC_FILES_CHKSUM = "file://LICENCE;md5=957f6640d5e2d2acfce73a36a56cb32f"
 
-PR = "r4"
+PR = "r5"
 
 PROVIDES = "virtual/libgles2 \
             virtual/egl"
@@ -13,7 +13,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "3b81b91c18ff19f97033e146a9f3262ca631f0e9"
+SRCREV = "c2f27fb8e581f8e5af83bf28422553ade8f7a7c8"
 
 SRC_URI = "git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
           "
-- 
1.9.1


