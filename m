Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECD85E00837; Fri, 20 Feb 2015 08:40:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
Received: from bin-vsp-out-05.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 141E2E00289
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 08:40:35 -0800 (PST)
X-Halon-ID: 44ce6911-b91f-11e4-a613-005056916f53
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 17:41:07 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Fri, 20 Feb 2015 17:40:22 +0100
Message-Id: <be17e01127765873503fe46a09f8e7175855a469.1424450237.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424450237.git.petter@technux.se>
References: <cover.1424450237.git.petter@technux.se>
In-Reply-To: <cover.1424450237.git.petter@technux.se>
References: <cover.1424450237.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/1] layer.conf: set high layer priority
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
X-List-Received-Date: Fri, 20 Feb 2015 16:40:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Set a high layer prio to ensure that meta-raspberrypi addons
are always prioritized above the depended layers.

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 7bffd4b..bea5a65 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -7,7 +7,7 @@ BBFILES += "${LAYERDIR}/recipes*/*/*.bb \
 
 BBFILE_COLLECTIONS += "raspberrypi"
 BBFILE_PATTERN_raspberrypi := "^${LAYERDIR}/"
-BBFILE_PRIORITY_raspberrypi = "6"
+BBFILE_PRIORITY_raspberrypi = "9"
 
 # Additional license directories.
 LICENSE_PATH += "${LAYERDIR}/files/custom-licenses"
-- 
1.9.1


