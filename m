Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE31DE00D98; Tue,  9 Feb 2016 18:40:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AD3DE00DA6
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 18:40:10 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u1A2e9Yg019893
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 9 Feb 2016 18:40:09 -0800 (PST)
Received: from msp-dhcp15.wrs.com (172.25.34.15) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 9 Feb 2016 18:40:09 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 9 Feb 2016 20:39:57 -0600
Message-ID: <1455072000-156056-7-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <1455072000-156056-1-git-send-email-mark.hatle@windriver.com>
References: <1455072000-156056-1-git-send-email-mark.hatle@windriver.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH 6/9][master] gettext, gmp: Resync to oe-core versions
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
X-List-Received-Date: Wed, 10 Feb 2016 02:40:10 -0000
Content-Type: text/plain

Use a wild card for gettext 0.19 version.  It's unlikely this setting will
change during the gettext 0.19.* lifecycle.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 recipes-core/gettext/gettext_0.19.%.bbappend | 2 ++
 recipes-core/gettext/gettext_0.19.4.bbappend | 2 --
 recipes-support/gmp/gmp_6.0.0.bbappend       | 3 ---
 recipes-support/gmp/gmp_6.1.0.bbappend       | 3 +++
 4 files changed, 5 insertions(+), 5 deletions(-)
 create mode 100644 recipes-core/gettext/gettext_0.19.%.bbappend
 delete mode 100644 recipes-core/gettext/gettext_0.19.4.bbappend
 delete mode 100644 recipes-support/gmp/gmp_6.0.0.bbappend
 create mode 100644 recipes-support/gmp/gmp_6.1.0.bbappend

diff --git a/recipes-core/gettext/gettext_0.19.%.bbappend b/recipes-core/gettext/gettext_0.19.%.bbappend
new file mode 100644
index 0000000..ac76feb
--- /dev/null
+++ b/recipes-core/gettext/gettext_0.19.%.bbappend
@@ -0,0 +1,2 @@
+DEPENDS_append_mingw32 = " pthreads-win32"
+LDFLAGS_prepend_mingw32 = " -lpthread "
diff --git a/recipes-core/gettext/gettext_0.19.4.bbappend b/recipes-core/gettext/gettext_0.19.4.bbappend
deleted file mode 100644
index ac76feb..0000000
--- a/recipes-core/gettext/gettext_0.19.4.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-DEPENDS_append_mingw32 = " pthreads-win32"
-LDFLAGS_prepend_mingw32 = " -lpthread "
diff --git a/recipes-support/gmp/gmp_6.0.0.bbappend b/recipes-support/gmp/gmp_6.0.0.bbappend
deleted file mode 100644
index 7f25fe2..0000000
--- a/recipes-support/gmp/gmp_6.0.0.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-do_install_append_mingw32 () {
-	ln -s libgmp.lib ${D}${libdir}/gmp.lib 
-}
\ No newline at end of file
diff --git a/recipes-support/gmp/gmp_6.1.0.bbappend b/recipes-support/gmp/gmp_6.1.0.bbappend
new file mode 100644
index 0000000..7f25fe2
--- /dev/null
+++ b/recipes-support/gmp/gmp_6.1.0.bbappend
@@ -0,0 +1,3 @@
+do_install_append_mingw32 () {
+	ln -s libgmp.lib ${D}${libdir}/gmp.lib 
+}
\ No newline at end of file
-- 
2.5.0


