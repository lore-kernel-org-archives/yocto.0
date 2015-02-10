Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96FB0E008A7; Tue, 10 Feb 2015 14:39:35 -0800 (PST)
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
Received: from bin-vsp-out-02.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD2B3E00717
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 14:39:16 -0800 (PST)
X-Halon-ID: a388a46f-b175-11e4-891e-005056917f90
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-02.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 23:39:13 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Tue, 10 Feb 2015 23:39:07 +0100
Message-Id: <3b09ff30524d7e45240fa256eb7ac865ef082f22.1423607636.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1423607636.git.petter@technux.se>
References: <cover.1423607636.git.petter@technux.se>
In-Reply-To: <cover.1423607636.git.petter@technux.se>
References: <cover.1423607636.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/1] layer.conf: set layer depends
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
X-List-Received-Date: Tue, 10 Feb 2015 22:39:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Ensure that build fails in a informative way if not all layer
requirements are fulfilled.

To disable strict layer depend set 'LAYERDEPENDS_raspberrypi = ""'
in local.conf.

Also set a high layer prio to ensure that meta-raspberrypi addons
are always prioritized above the depended layers.

[Feature #46]

Change-Id: I8df772a59975ae379c3a1e93e2770e83be752bfd
Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 README          | 4 ++++
 conf/layer.conf | 3 ++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/README b/README
index bb2f4be..3dad1ea 100644
--- a/README
+++ b/README
@@ -143,6 +143,10 @@ See: http://wayland.freedesktop.org/raspberrypi.html
 
 2.H. Images
 ===========
+Note: 'rpi-hwup-image' and 'rpi-basic-image' can be build without
+      meta-multimedia. Set 'LAYERDEPENDS_raspberrypi = ""' in local.conf
+      to enable build without 'meta-multimedia'.
+
 * rpi-hwup-image
     Hardware up image
 * rpi-basic-image
diff --git a/conf/layer.conf b/conf/layer.conf
index 7bffd4b..b5ab695 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -7,7 +7,8 @@ BBFILES += "${LAYERDIR}/recipes*/*/*.bb \
 
 BBFILE_COLLECTIONS += "raspberrypi"
 BBFILE_PATTERN_raspberrypi := "^${LAYERDIR}/"
-BBFILE_PRIORITY_raspberrypi = "6"
+BBFILE_PRIORITY_raspberrypi = "9"
+LAYERDEPENDS_raspberrypi = "multimedia-layer"
 
 # Additional license directories.
 LICENSE_PATH += "${LAYERDIR}/files/custom-licenses"
-- 
1.9.1


