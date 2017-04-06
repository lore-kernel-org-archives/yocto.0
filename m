Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 007EEE009B9; Thu,  6 Apr 2017 08:58:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6638CE007EE
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 08:58:15 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga105.fm.intel.com with ESMTP; 06 Apr 2017 08:58:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,160,1488873600"; d="scan'208";a="74458343"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.121])
	by orsmga004.jf.intel.com with ESMTP; 06 Apr 2017 08:58:14 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Apr 2017 10:58:09 -0500
Message-Id: <1491494289-7439-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490981097-7153-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1490981097-7153-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH v4] parsemail.py: Improve find_series_for_mail
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
X-List-Received-Date: Thu, 06 Apr 2017 15:58:17 -0000

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

Notes:
    Changes in version 4: Only consider messages with Subject starting with "[" as possible cover letters, filtering out reply messages

 patchwork/bin/parsemail.py | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/patchwork/bin/parsemail.py b/patchwork/bin/parsemail.py
index 61c18b2..a68baa2 100755
--- a/patchwork/bin/parsemail.py
+++ b/patchwork/bin/parsemail.py
@@ -399,9 +399,9 @@ def find_content(project, mail):
     (x, n) = parse_series_marker(prefixes)
     refs = build_references_list(mail)
     is_root = refs == []
-    is_cover_letter = is_root and x == 0
     patch_prefix = re.match('(\s*\[[^]]*\]\s*)*\[\s*PATCH',
                             mail.get('Subject'))
+    is_cover_letter = x == 0 and patch_prefix
     is_patch = patchbuf is not None and patch_prefix
 
     drop_patch = not is_attachment and \
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
@@ -560,6 +560,20 @@ def find_series_for_mail(project, name, msgid, is_patch, order, n_patches,
                 revision = revision.duplicate(exclude_patches=(order,))
                 # series has been updated, grab the new instance
                 series = revision.series
+            else:
+                try:
+                    prev_patch = SeriesRevisionPatch.objects.get(
+                        revision=revision, order=order).patch
+                    if prev_patch and not prev_patch.msgid == msgid:
+                        # this is a new patch in the thread
+                        revision = revision.duplicate(exclude_patches=(order,))
+                        series = revision.series
+                except SeriesRevisionPatch.DoesNotExist:
+                    pass
+        elif is_cover_letter and not refs == []:
+            revision = revision.duplicate(
+                exclude_patches=range(1, revision.n_patches+1),)
+            series = revision.series
     except IndexError:
         if not name:
             name = SERIES_DEFAULT_NAME
-- 
2.7.4


