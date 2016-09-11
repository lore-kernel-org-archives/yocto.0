Return-Path: <wangxin2015.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC6E8E00E73; Sun, 11 Sep 2016 07:58:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73374E00D1E
	for <yocto@yoctoproject.org>; Sun, 11 Sep 2016 07:58:23 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.22,518,1449504000"; d="scan'208";a="10846821"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 11 Sep 2016 22:58:21 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
	by cn.fujitsu.com (Postfix) with ESMTP id 15609404240C
	for <yocto@yoctoproject.org>; Sun, 11 Sep 2016 22:58:21 +0800 (CST)
Received: from ubuntu.g08.fujitsu.local (10.167.226.120) by
	G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.279.2; Sun, 11 Sep 2016 22:58:21 +0800
From: Wang Xin <wangxin2015.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Sun, 11 Sep 2016 10:58:13 -0400
Message-ID: <1473605893-1558-1-git-send-email-wangxin2015.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.120]
X-yoursite-MailScanner-ID: 15609404240C.A20E0
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: wangxin2015.fnst@cn.fujitsu.com
Subject: [meta-cgl][PATCH] pacemaker: 1.1.13 -> 1.1.15
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
X-List-Received-Date: Sun, 11 Sep 2016 14:58:27 -0000
Content-Type: text/plain

1) Upgrade pacemaker from 1.1.13 to 1.1.15.
2) Modify patch, since the data has been changed.
    0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch

Signed-off-by: Wang Xin <wangxin2015.fnst@cn.fujitsu.com>
---
 .../0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch   | 2 +-
 .../pacemaker/{pacemaker_1.1.13.bb => pacemaker_1.1.15.bb}            | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename meta-cgl-common/recipes-cgl/pacemaker/{pacemaker_1.1.13.bb => pacemaker_1.1.15.bb} (96%)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
index 0831fda..3104512 100755
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
@@ -27,7 +27,7 @@ index 08b4611..6fcd1aa 100644
  
  dnl Eventually remove this
  if test "$cross_compiling" != "yes"; then
--   CFLAGS="$CFLAGS -I${prefix}/include/heartbeat"
+-   CPPFLAGS="$CPPFLAGS -I${prefix}/include/heartbeat"
 +   CFLAGS="$CFLAGS -I${STAGING_INCDIR}/heartbeat"
 +   CPPFLAGS="$CPPFLAGS -I${STAGING_INCDIR}/heartbeat"
  fi
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.13.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.15.bb
similarity index 96%
rename from meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.13.bb
rename to meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.15.bb
index d2e2395..17c9fe4 100755
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.13.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.15.bb
@@ -23,8 +23,8 @@ SRC_URI = "https://github.com/ClusterLabs/${PN}/archive/Pacemaker-${PV}.zip \
            file://volatiles \
            file://tmpfiles \
           "
-SRC_URI[md5sum] = "d84a5173306727a981a4f87e36007595"
-SRC_URI[sha256sum] = "e963bc59a5d98a3e3441ea5cccb42aa67f9d7934b80c8818e19ae91c5da48331"
+SRC_URI[md5sum] = "3721971f8adba248076b43f97c4571ab"
+SRC_URI[sha256sum] = "0787cbc18d1f1b360a11eb7ccb6714042360d4948b2517a9fe43daf9e839af66"
 
 inherit autotools-brokensep pkgconfig systemd python-dir useradd
 
-- 
2.7.4




