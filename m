Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DF25E00D50; Fri, 11 Sep 2015 22:18:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3446E00AD2
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 22:18:45 -0700 (PDT)
Received: from c-50-137-125-184.hsd1.ma.comcast.net ([50.137.125.184]
	helo=localhost.localdomain)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZadBW-0000yR-0T; Sat, 12 Sep 2015 05:17:12 +0000
From: Philip Tricca <flihp@twobit.us>
To: Joe_MacDonald@mentor.com
Date: Fri, 11 Sep 2015 22:18:25 -0700
Message-Id: <1442035106-9671-8-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1442035106-9671-1-git-send-email-flihp@twobit.us>
References: <1442035106-9671-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.137.125.184
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: [PATCH][meta-selinux 7/8] setools: Add patch to support 2.4 toolstack.
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
X-List-Received-Date: Sat, 12 Sep 2015 05:18:56 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 ...s-Update-for-2015-02-02-Userspace-release.patch | 114 +++++++++++++++++++++
 ...rect-invalid-prototype-for-lsetfilecon_ra.patch |  34 ------
 recipes-security/setools/setools_3.3.8.bb          |   2 +-
 3 files changed, 115 insertions(+), 35 deletions(-)
 create mode 100644 recipes-security/setools/setools/setools-Update-for-2015-02-02-Userspace-release.patch
 delete mode 100644 recipes-security/setools/setools/setools-replcon-correct-invalid-prototype-for-lsetfilecon_ra.patch

diff --git a/recipes-security/setools/setools/setools-Update-for-2015-02-02-Userspace-release.patch b/recipes-security/setools/setools/setools-Update-for-2015-02-02-Userspace-release.patch
new file mode 100644
index 0000000..c8fc3f5
--- /dev/null
+++ b/recipes-security/setools/setools/setools-Update-for-2015-02-02-Userspace-release.patch
@@ -0,0 +1,114 @@
+From f1e5b208d507171968ca4d2eeefd7980f1004a3c Mon Sep 17 00:00:00 2001
+From: Chris PeBenito <cpebenito@tresys.com>
+Date: Thu, 12 Feb 2015 08:55:12 -0500
+Subject: [PATCH] Update for 2015-02-02 Userspace release (2.4)
+
+SETools now requires libsepol 2.4 and libselinux 2.4.
+---
+ configure.ac                 | 6 +++---
+ libqpol/src/policy_define.c  | 4 ++--
+ libqpol/src/policy_extend.c  | 4 ++--
+ libqpol/src/syn_rule_query.c | 6 +++---
+ secmds/replcon.cc            | 2 +-
+ 5 files changed, 11 insertions(+), 11 deletions(-)
+
+diff --git a/configure.ac b/configure.ac
+index 80395e6..ae20da7 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -25,9 +25,9 @@ libseaudit_version=4.5
+ setoolsdir='${prefix}/share/setools-3.3'
+ javadir='${prefix}/share/java'
+ 
+-version_min_sepol_major=1
+-version_min_sepol_minor=12
+-version_min_sepol_patch=27
++version_min_sepol_major=2
++version_min_sepol_minor=4
++version_min_sepol_patch=0
+ 
+ dnl *** end of tunable values ***
+ 
+diff --git a/libqpol/src/policy_define.c b/libqpol/src/policy_define.c
+index 229779c..15f70ba 100644
+--- a/libqpol/src/policy_define.c
++++ b/libqpol/src/policy_define.c
+@@ -1661,7 +1661,7 @@ int define_compute_type_helper(int which, avrule_t ** rule)
+ 				goto bad;
+ 			}
+ 			class_perm_node_init(perm);
+-			perm->class = i + 1;
++			perm->tclass = i + 1;
+ 			perm->data = datum->s.value;
+ 			perm->next = avrule->perms;
+ 			avrule->perms = perm;
+@@ -1901,7 +1901,7 @@ int define_te_avtab_helper(int which, avrule_t ** rule)
+ 			goto out;
+ 		}
+ 		class_perm_node_init(cur_perms);
+-		cur_perms->class = i + 1;
++		cur_perms->tclass = i + 1;
+ 		if (!perms)
+ 			perms = cur_perms;
+ 		if (tail)
+diff --git a/libqpol/src/policy_extend.c b/libqpol/src/policy_extend.c
+index 5325a87..1417271 100644
+--- a/libqpol/src/policy_extend.c
++++ b/libqpol/src/policy_extend.c
+@@ -843,7 +843,7 @@ static int qpol_syn_rule_table_insert_sepol_avrule(qpol_policy_t * policy, qpol_
+ 			for (class_node = rule->perms; class_node; class_node = class_node->next) {
+ 				key.rule_type = rule->specified;
+ 				key.source_val = key.target_val = i + 1;
+-				key.class_val = class_node->class;
++				key.class_val = class_node->tclass;
+ 				key.cond = cond;
+ 				if (qpol_syn_rule_table_insert_entry(policy, table, &key, new_rule))
+ 					goto err;
+@@ -856,7 +856,7 @@ static int qpol_syn_rule_table_insert_sepol_avrule(qpol_policy_t * policy, qpol_
+ 				key.rule_type = rule->specified;
+ 				key.source_val = i + 1;
+ 				key.target_val = j + 1;
+-				key.class_val = class_node->class;
++				key.class_val = class_node->tclass;
+ 				key.cond = cond;
+ 				if (qpol_syn_rule_table_insert_entry(policy, table, &key, new_rule))
+ 					goto err;
+diff --git a/libqpol/src/syn_rule_query.c b/libqpol/src/syn_rule_query.c
+index 3e63204..d7578f1 100644
+--- a/libqpol/src/syn_rule_query.c
++++ b/libqpol/src/syn_rule_query.c
+@@ -67,7 +67,7 @@ static void *syn_rule_class_state_get_cur(const qpol_iterator_t * iter)
+ 		return NULL;
+ 	}
+ 
+-	return db->class_val_to_struct[srcs->cur->class - 1];
++	return db->class_val_to_struct[srcs->cur->tclass - 1];
+ }
+ 
+ static int syn_rule_class_state_next(qpol_iterator_t * iter)
+@@ -465,10 +465,10 @@ int qpol_syn_avrule_get_perm_iter(const qpol_policy_t * policy, const qpol_syn_a
+ 	}
+ 
+ 	for (node = internal_rule->perms; node; node = node->next) {
+-		for (i = 0; i < db->class_val_to_struct[node->class - 1]->permissions.nprim; i++) {
++		for (i = 0; i < db->class_val_to_struct[node->tclass - 1]->permissions.nprim; i++) {
+ 			if (!(node->data & (1 << i)))
+ 				continue;
+-			tmp = sepol_av_to_string(db, node->class, (sepol_access_vector_t) (1 << i));
++			tmp = sepol_av_to_string(db, node->tclass, (sepol_access_vector_t) (1 << i));
+ 			if (tmp) {
+ 				tmp++; /* remove prepended space */
+ 				for (cur = 0; cur < perm_list_sz; cur++)
+diff --git a/secmds/replcon.cc b/secmds/replcon.cc
+index 34f7c1a..307c39f 100644
+--- a/secmds/replcon.cc
++++ b/secmds/replcon.cc
+@@ -60,7 +60,7 @@ static struct option const longopts[] = {
+ 	{NULL, 0, NULL, 0}
+ };
+ 
+-extern int lsetfilecon_raw(const char *, security_context_t) __attribute__ ((weak));
++extern int lsetfilecon_raw(const char *, const char *) __attribute__ ((weak));
+ 
+ /**
+  * As that setools must work with older libselinux versions that may
diff --git a/recipes-security/setools/setools/setools-replcon-correct-invalid-prototype-for-lsetfilecon_ra.patch b/recipes-security/setools/setools/setools-replcon-correct-invalid-prototype-for-lsetfilecon_ra.patch
deleted file mode 100644
index c9bacbd..0000000
--- a/recipes-security/setools/setools/setools-replcon-correct-invalid-prototype-for-lsetfilecon_ra.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From 74680dfb3df4c0c5b0e4bcf41717a9ea16fd8680 Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe_macdonald@mentor.com>
-Date: Mon, 29 Sep 2014 14:19:48 -0400
-Subject: [PATCH] replcon: correct invalid prototype for lsetfilecon_raw
-
-Port debian patch from:
-
-        git://anonscm.debian.org/selinux/setools.git
-        commit a3ab84b35efd9c42641d53ec2236ad01f7411df7
-
-Upstream-Status: Denied [ the setools3 tree is in stasis and the focus is
-                          only on setools4 now ]
-
-Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
----
- secmds/replcon.cc | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/secmds/replcon.cc b/secmds/replcon.cc
-index 34f7c1a..307c39f 100644
---- a/secmds/replcon.cc
-+++ b/secmds/replcon.cc
-@@ -60,7 +60,7 @@ static struct option const longopts[] = {
- 	{NULL, 0, NULL, 0}
- };
- 
--extern int lsetfilecon_raw(const char *, security_context_t) __attribute__ ((weak));
-+extern int lsetfilecon_raw(const char *, const char *) __attribute__ ((weak));
- 
- /**
-  * As that setools must work with older libselinux versions that may
--- 
-1.9.1
-
diff --git a/recipes-security/setools/setools_3.3.8.bb b/recipes-security/setools/setools_3.3.8.bb
index 24c10b8..99296ca 100644
--- a/recipes-security/setools/setools_3.3.8.bb
+++ b/recipes-security/setools/setools_3.3.8.bb
@@ -22,7 +22,7 @@ SRC_URI += "file://setools-cross-ar.patch"
 SRC_URI += "file://setools-Fix-test-bug-for-unary-operator.patch"
 SRC_URI += "file://setools-Fix-python-setools-Makefile.am-for-cross.patch"
 
-SRC_URI += "file://setools-replcon-correct-invalid-prototype-for-lsetfilecon_ra.patch"
+SRC_URI += "file://setools-Update-for-2015-02-02-Userspace-release.patch"
 
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=26035c503c68ae1098177934ac0cc795 \
                     file://${S}/COPYING.GPL;md5=751419260aa954499f7abaabaa882bbe \
-- 
2.1.4


