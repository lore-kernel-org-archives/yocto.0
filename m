Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BAA6E00CD5; Wed,  8 May 2019 23:29:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00, DATE_IN_PAST_96_XX, 
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [183.91.158.132 listed in list.dnswl.org]
	* 3.4 DATE_IN_PAST_96_XX Date: is 96 hours or more before Received:
	date
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B199EE00C14
	for <yocto@yoctoproject.org>; Wed,  8 May 2019 23:29:07 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.60,448,1549900800"; d="scan'208";a="62222407"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 09 May 2019 14:29:06 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (unknown [10.167.33.80])
	by cn.fujitsu.com (Postfix) with ESMTP id 5807B4CDABD1
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 14:29:05 +0800 (CST)
Received: from localhost.localdomain (10.167.225.227) by
	G08CNEXCHPEKD01.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.439.0; Thu, 9 May 2019 14:29:17 +0800
From: Lei Maohui <leimaohui@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Message-ID: <1555646319-7243-1-git-send-email-leimaohui@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.167.225.227]
X-yoursite-MailScanner-ID: 5807B4CDABD1.AFCBC
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: leimaohui@cn.fujitsu.com
Subject: [meta-security][PATCH] python3-fail2ban: Fix build error of xrange.
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
Date: Thu, 09 May 2019 06:29:08 -0000
X-Original-Date: Fri, 19 Apr 2019 11:58:39 +0800
X-List-Received-Date: Thu, 09 May 2019 06:29:08 -0000
Content-Type: text/plain

NameError: name 'xrange' is not defined

Signed-off-by: Lei Maohui <leimaohui@cn.fujitsu.com>
---
 .../files/0001-To-fix-build-error-of-xrang.patch   | 28 ++++++++++++++++++++++
 .../fail2ban/python3-fail2ban_0.10.4.0.bb          |  4 ++++
 2 files changed, 32 insertions(+)
 create mode 100644 recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch

diff --git a/recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch b/recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch
new file mode 100644
index 0000000..7f0812c
--- /dev/null
+++ b/recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch
@@ -0,0 +1,28 @@
+From fe3436d65518099d35c643848cba50253abc249c Mon Sep 17 00:00:00 2001
+From: Lei Maohui <leimaohui@cn.fujitsu.com>
+Date: Thu, 9 May 2019 14:44:51 +0900
+Subject: [PATCH] To fix build error of xrange.
+
+NameError: name 'xrange' is not defined
+
+Signed-off-by: Lei Maohui <leimaohui@cn.fujitsu.com>
+---
+ fail2ban/__init__.py | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/fail2ban/__init__.py b/fail2ban/__init__.py
+index fa6dcf7..61789a4 100644
+--- a/fail2ban/__init__.py
++++ b/fail2ban/__init__.py
+@@ -82,7 +82,7 @@ strptime("2012", "%Y")
+ 
+ # short names for pure numeric log-level ("Level 25" could be truncated by short formats):
+ def _init():
+-	for i in xrange(50):
++	for i in range(50):
+ 		if logging.getLevelName(i).startswith('Level'):
+ 			logging.addLevelName(i, '#%02d-Lev.' % i)
+ _init()
+-- 
+2.7.4
+
diff --git a/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb b/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb
index 5c887e8..23ef027 100644
--- a/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb
+++ b/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb
@@ -2,3 +2,7 @@ inherit setuptools3
 require python-fail2ban.inc
 
 RDEPENDS_${PN}-ptest = "python3-core python3-io python3-modules python3-fail2ban"
+
+SRC_URI += " \
+        file://0001-To-fix-build-error-of-xrang.patch \
+"
-- 
2.7.4




