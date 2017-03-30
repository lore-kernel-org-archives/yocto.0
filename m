Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8683E009B9; Thu, 30 Mar 2017 13:08:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99C6EE00992
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 13:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490904527; x=1522440527;
	h=from:to:cc:subject:date:message-id;
	bh=iXMZKzvV+8uoEpbyfJ/euHw2TFN/70n2xxqIw3qQ4rU=;
	b=Fj1oy7GH1ha82hxG5aLmV48XYmOh5R7wE/cwwyKq0AdW0TgrXXs4qtWq
	K1lWouBdJF7BVNASajBijyVw9ssBIA==;
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Mar 2017 13:08:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,248,1486454400"; d="scan'208";a="949941841"
Received: from unknown (HELO jalamego-MOBL2.zpn.intel.com) ([10.219.128.123])
	by orsmga003.jf.intel.com with ESMTP; 30 Mar 2017 13:08:44 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 30 Mar 2017 14:08:37 -0600
Message-Id: <1490904517-12565-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [patchwork][PATCH] parsemail.py: Improve find_series_for_mail
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
X-List-Received-Date: Thu, 30 Mar 2017 20:08:50 -0000

Patch Series that are sent as replies to other Series with
different patch quantity are not appropriately detected as
such, breaking the thread and causing missing revisions.

This change improves the find_series_for_mail function to
appropriately detect when a message is part of a thread
by performing an additional patch-query and detecting cover
letters that are replies to cover letters.

[YOCTO #10959]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/bin/parsemail.py | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/patchwork/bin/parsemail.py b/patchwork/bin/parsemail.py
index 61c18b2..98db40a 100755
--- a/patchwork/bin/parsemail.py
+++ b/patchwork/bin/parsemail.py
@@ -399,7 +399,7 @@ def find_content(project, mail):
     (x, n) = parse_series_marker(prefixes)
     refs = build_references_list(mail)
     is_root = refs == []
-    is_cover_letter = is_root and x == 0
+    is_cover_letter = x == 0
     patch_prefix = re.match('(\s*\[[^]]*\]\s*)*\[\s*PATCH',
                             mail.get('Subject'))
     is_patch = patchbuf is not None and patch_prefix
@@ -441,7 +441,7 @@ def find_content(project, mail):
 
         (ret.series, ret.revision, ret.patch_order, n) = \
             find_series_for_mail(project, series_name, msgid, is_patch,
-                                 ret.patch_order, n, refs)
+                                 ret.patch_order, n, refs, is_cover_letter)
         ret.revision.n_patches = n or 1
 
         date = mail_date(mail)
@@ -535,7 +535,7 @@ def find_patch_order(revisions, previous_patch, order, n_patches):
 #   - we need to create new revisions when the mail is actually a new version
 #     of a previous patch
 def find_series_for_mail(project, name, msgid, is_patch, order, n_patches,
-                         refs):
+                         refs, is_cover_letter):
     if refs == []:
         root_msgid = msgid
     else:
@@ -560,6 +560,19 @@ def find_series_for_mail(project, name, msgid, is_patch, order, n_patches,
                 revision = revision.duplicate(exclude_patches=(order,))
                 # series has been updated, grab the new instance
                 series = revision.series
+            else:
+                try:
+                    prev_patch = SeriesRevisionPatch.objects.get(
+                        revision=revision, order=order)patch
+                    if prev_patch and not prev_patch.msgid == msgid:
+                        # this is a new patch in the thread
+                        revision = revision.duplicate(exclude_patches=(order,))
+                        series = revision.series+                except SeriesRevisionPatch.DoesNotExist:
+                    pass
+        elif is_cover_letter and not refs == []:
+            revision = revision.duplicate(
+                exclude_patches=range(1, revision.n_patches+1),)
+            series = revision.series.
     except IndexError:
         if not name:
             name = SERIES_DEFAULT_NAME
-- 
2.7.4


