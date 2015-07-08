Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 229C5E00A16; Wed,  8 Jul 2015 09:10:50 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC87AE009C8
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 09:10:42 -0700 (PDT)
X-Halon-ID: ddac88b1-258b-11e5-8f60-0050569116f7
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-03.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 18:10:35 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Wed,  8 Jul 2015 18:10:35 +0200
Message-Id: <1a406519940c070e8f251bbe57a4fa665bbede7c.1436366548.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1436366548.git.petter@technux.se>
References: <cover.1436366548.git.petter@technux.se>
In-Reply-To: <cover.1436366548.git.petter@technux.se>
References: <cover.1436366548.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 2/6] rpi-mkimage: Bump SRCREV
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

Update to latest version of rpi-mkimg

[Support #60]

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb b/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
index 1778275..ffd1818 100644
--- a/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
+++ b/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
@@ -5,7 +5,7 @@ SECTION = "bootloader"
 
 DEPENDS = "python"
 
-SRCREV = "b9d7a8ac626e377577aa6900da5c5a965cafb66c"
+SRCREV = "d4b397f3a1e60ea45660eafb9209bcb97453c456"
 SRC_URI = " \
     git://github.com/raspberrypi/tools.git;branch=master;protocol=git \
     file://License \
-- 
1.9.1


