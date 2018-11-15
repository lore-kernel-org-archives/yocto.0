Return-Path: <martin@geanix.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32010E00C4E; Thu, 15 Nov 2018 00:23:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.hundeboll.net (mail.hundeboll.net [88.198.92.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBA47E00C4B
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 00:23:31 -0800 (PST)
Received: from zen.localdomain (unknown [85.184.147.232])
	by mail.hundeboll.net (Postfix) with ESMTPSA id 214E71C1AB7;
	Thu, 15 Nov 2018 09:14:50 +0100 (CET)
From: =?UTF-8?q?Martin=20Hundeb=C3=B8ll?= <martin@geanix.com>
To: yocto@yoctoproject.org
Date: Thu, 15 Nov 2018 09:14:46 +0100
Message-Id: <20181115081446.32214-1-martin@geanix.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [PATCH][meta-yocto][thud] local.conf.sample: update upstream sstate mirror url
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
X-List-Received-Date: Thu, 15 Nov 2018 08:23:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The prefilled upstream SSTATE_MIRROR setting in the sample configuration
should match the current Yocto release.

Signed-off-by: Martin Hundebøll <martin@geanix.com>
---

Are we sure the sstate mirror is properly updated? I tried using it on
thud in a ubuntu-16.04 docker container, but wasn't able to get any hits
in the cache...

 meta-poky/conf/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index d28bf58..fdeb424 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -228,7 +228,7 @@ BB_DISKMON_DIRS ??= "\
 # present in the cache. It assumes you can download something faster than you can build it
 # which will depend on your network.
 #
-#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/2.5/PATH;downloadfilename=PATH"
+#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/2.6/PATH;downloadfilename=PATH"
 
 #
 # Qemu configuration
-- 
2.19.1


