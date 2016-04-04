Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07638E00B97; Sun,  3 Apr 2016 17:22:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7DD7E00B97
	for <yocto@yoctoproject.org>; Sun,  3 Apr 2016 17:22:08 -0700 (PDT)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=slag.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1amsFw-0002qF-Il; Mon, 04 Apr 2016 00:20:39 +0000
From: Philip Tricca <flihp@twobit.us>
To: mark.hatle@windriver.com, Joe_MacDonald@mentor.com, yocto@yoctoproject.org
Date: Mon,  4 Apr 2016 00:21:35 +0000
Message-Id: <1459729295-79553-4-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1459729295-79553-1-git-send-email-flihp@twobit.us>
References: <1459729295-79553-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 3/3] refpolicy_common: Sanity test DEFAULT_ENFORCING value and set default.
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
X-List-Received-Date: Mon, 04 Apr 2016 00:22:11 -0000

Use the anonymous python function to be sure the value set for
'SELINUX' in the config file is something useful. In the event that
DEFAULT_ENFORCING isn't set to one of the 3 permissible values we
set it to 'permissive'.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-security/refpolicy/refpolicy_common.inc | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 305675f..10e972d 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -66,6 +66,16 @@ EXTRA_OEMAKE += "tc_usrbindir=${STAGING_BINDIR_NATIVE}"
 EXTRA_OEMAKE += "OUTPUT_POLICY=`${STAGING_BINDIR_NATIVE}/checkpolicy -V | cut -d' ' -f1`"
 EXTRA_OEMAKE += "CC='${BUILD_CC}' CFLAGS='${BUILD_CFLAGS}' PYTHON='${PYTHON}'"
 
+python __anonymous () {
+    import re
+
+    # make sure DEFAULT_ENFORCING is something sane
+    if not re.match('^(enforcing|permissive|disabled)$',
+                    d.getVar('DEFAULT_ENFORCING', True),
+                    flags=0):
+        d.setVar('DEFAULT_ENFORCING', 'permissive')
+}
+
 do_compile() {
 	oe_runmake conf
 	oe_runmake policy
-- 
2.1.4


