Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96C1EE00945; Wed, 11 Feb 2015 20:40:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5EF6E0093B
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 20:40:05 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=scrapper.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1YLlXH-0001Li-Ul; Thu, 12 Feb 2015 04:37:56 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Thu, 12 Feb 2015 04:39:54 +0000
Message-Id: <1423715994-1005-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH] Add explicit dependency on layers with recipes we bbappend.
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
X-List-Received-Date: Thu, 12 Feb 2015 04:40:10 -0000

This is a stop-gap to get meaningful error messages to folks till we get
per-layer bbappends implemented.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 conf/layer.conf |    8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 7af76a1..723f5a8 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -13,4 +13,10 @@ BBFILE_PRIORITY_selinux = "5"
 # cause compatibility issues with other layers
 LAYERVERSION_selinux = "1"
 
-LAYERDEPENDS_selinux = "core"
+LAYERDEPENDS_selinux = " \
+    core \
+    meta-python \
+    networking-layer \
+    openembedded-layer \
+    virtualization-layer \
+"
-- 
1.7.10.4


