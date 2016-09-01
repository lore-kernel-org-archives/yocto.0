Return-Path: <wangxin2015.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BBB3E00CE0; Wed, 31 Aug 2016 23:42:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 502D9E00C51
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2016 23:42:25 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.22,518,1449504000"; d="scan'208";a="10499507"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 01 Sep 2016 14:42:20 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
	by cn.fujitsu.com (Postfix) with ESMTP id 5B2F6400A1C4
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 14:42:15 +0800 (CST)
Received: from ubuntu.g08.fujitsu.local (10.167.226.120) by
	G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.279.2; Thu, 1 Sep 2016 14:42:14 +0800
From: Wang Xin <wangxin2015.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Thu, 1 Sep 2016 02:42:12 -0400
Message-ID: <1472712132-1823-1-git-send-email-wangxin2015.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.120]
X-yoursite-MailScanner-ID: 5B2F6400A1C4.A4334
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: wangxin2015.fnst@cn.fujitsu.com
Subject: [meta-security][PATCH] samhain-client: 4.1.4 -> 4.1.5
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
X-List-Received-Date: Thu, 01 Sep 2016 06:42:29 -0000
Content-Type: text/plain

Upgrade samhain-client from 4.1.4 to 4.1.5.

Signed-off-by: Wang Xin <wangxin2015.fnst@cn.fujitsu.com>
---
 .../samhain/{samhain-client_4.1.4.bb => samhain-client_4.1.5.bb}      | 0
 recipes-security/samhain/samhain.inc                                  | 4 ++--
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/samhain/{samhain-client_4.1.4.bb => samhain-client_4.1.5.bb} (100%)

diff --git a/recipes-security/samhain/samhain-client_4.1.4.bb b/recipes-security/samhain/samhain-client_4.1.5.bb
similarity index 100%
rename from recipes-security/samhain/samhain-client_4.1.4.bb
rename to recipes-security/samhain/samhain-client_4.1.5.bb
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index 907f431..5bf2ee7 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -9,8 +9,8 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
 	   file://${INITSCRIPT_NAME}.default \
 	  "
 
-SRC_URI[md5sum] = "1ab697b7000d0a272d9ade05bb1bc6e0"
-SRC_URI[sha256sum] = "32ee7477af11d9f2f64f30b9cb316c351897c1c994c7b98b0ef17fc0ca5e1d1a"
+SRC_URI[md5sum] = "bdb6d2653d706f3180e37ef3d95c824d"
+SRC_URI[sha256sum] = "4ff4c38765c942abbaac2577df4c8c4940482a1bffc4a719f181c4fca6f173a7"
 
 S = "${WORKDIR}/samhain-${PV}"
 
-- 
2.7.4




