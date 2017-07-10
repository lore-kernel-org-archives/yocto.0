Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BC22E00C2C; Mon, 10 Jul 2017 03:27:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0FC2E00C29
	for <yocto@lists.yoctoproject.org>;
	Mon, 10 Jul 2017 03:27:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v6AARkdK018822
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 10 Jul 2017 03:27:46 -0700
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Mon, 10 Jul 2017 03:27:45 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <ross.burton@intel.com>
Date: Mon, 10 Jul 2017 03:27:45 -0700
Message-ID: <20170710102745.11835-1-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
MIME-Version: 1.0
Cc: yocto@lists.yoctoproject.org
Subject: [meta-gplv2][PATCH] rxvt-unicode: move it to BBFILES
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
X-List-Received-Date: Mon, 10 Jul 2017 10:27:52 -0000
Content-Type: text/plain

It should be in recipes-sato/rxvt-unicode, not recipes-sato.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 recipes-sato/{ => rxvt-unicode}/rxvt-unicode.inc          |   0
 recipes-sato/rxvt-unicode/{ => rxvt-unicode}/rxvt.desktop |   0
 recipes-sato/rxvt-unicode/{ => rxvt-unicode}/rxvt.png     | Bin
 recipes-sato/rxvt-unicode/{ => rxvt-unicode}/xwc.patch    |   0
 recipes-sato/{ => rxvt-unicode}/rxvt-unicode_9.20.bb      |   2 +-
 5 files changed, 1 insertion(+), 1 deletion(-)
 rename recipes-sato/{ => rxvt-unicode}/rxvt-unicode.inc (100%)
 rename recipes-sato/rxvt-unicode/{ => rxvt-unicode}/rxvt.desktop (100%)
 rename recipes-sato/rxvt-unicode/{ => rxvt-unicode}/rxvt.png (100%)
 rename recipes-sato/rxvt-unicode/{ => rxvt-unicode}/xwc.patch (100%)
 rename recipes-sato/{ => rxvt-unicode}/rxvt-unicode_9.20.bb (94%)

diff --git a/recipes-sato/rxvt-unicode.inc b/recipes-sato/rxvt-unicode/rxvt-unicode.inc
similarity index 100%
rename from recipes-sato/rxvt-unicode.inc
rename to recipes-sato/rxvt-unicode/rxvt-unicode.inc
diff --git a/recipes-sato/rxvt-unicode/rxvt.desktop b/recipes-sato/rxvt-unicode/rxvt-unicode/rxvt.desktop
similarity index 100%
rename from recipes-sato/rxvt-unicode/rxvt.desktop
rename to recipes-sato/rxvt-unicode/rxvt-unicode/rxvt.desktop
diff --git a/recipes-sato/rxvt-unicode/rxvt.png b/recipes-sato/rxvt-unicode/rxvt-unicode/rxvt.png
similarity index 100%
rename from recipes-sato/rxvt-unicode/rxvt.png
rename to recipes-sato/rxvt-unicode/rxvt-unicode/rxvt.png
diff --git a/recipes-sato/rxvt-unicode/xwc.patch b/recipes-sato/rxvt-unicode/rxvt-unicode/xwc.patch
similarity index 100%
rename from recipes-sato/rxvt-unicode/xwc.patch
rename to recipes-sato/rxvt-unicode/rxvt-unicode/xwc.patch
diff --git a/recipes-sato/rxvt-unicode_9.20.bb b/recipes-sato/rxvt-unicode/rxvt-unicode_9.20.bb
similarity index 94%
rename from recipes-sato/rxvt-unicode_9.20.bb
rename to recipes-sato/rxvt-unicode/rxvt-unicode_9.20.bb
index 3480ec7..5bd8568 100644
--- a/recipes-sato/rxvt-unicode_9.20.bb
+++ b/recipes-sato/rxvt-unicode/rxvt-unicode_9.20.bb
@@ -1,6 +1,6 @@
 require rxvt-unicode.inc
 
-LICENSE = "GPLv2+"
+LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
                     file://src/main.C;beginline=1;endline=31;md5=775485398a09fa7aee6f90464af88432"
 
-- 
2.10.2


