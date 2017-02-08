Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E2A6E009A5; Wed,  8 Feb 2017 14:16:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28295E006C6
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 14:16:20 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga103.jf.intel.com with ESMTP; 08 Feb 2017 14:16:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,348,1484035200"; d="scan'208";a="63492916"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.117])
	by fmsmga006.fm.intel.com with ESMTP; 08 Feb 2017 14:16:19 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  8 Feb 2017 16:16:13 -0600
Message-Id: <1486592173-10974-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [patchwork][PATCH] parsemail: Process email with duplicated message-id
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
X-List-Received-Date: Wed, 08 Feb 2017 22:16:28 -0000

Current email parsing filters-out messages with a message-id
that already exists in db, producing that some valid patch
revisions are not processed in patchwork.

This change allows for valid patches with duplicated message-id to be
processed by modifying the message-id in patchwork only when email content
in new message is different from that in the existing patch.

[YOCTO #10756]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/bin/parsemail.py | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/patchwork/bin/parsemail.py b/patchwork/bin/parsemail.py
index c9eb05c..3d642a7 100755
--- a/patchwork/bin/parsemail.py
+++ b/patchwork/bin/parsemail.py
@@ -221,6 +221,7 @@ class MailContent:
         self.revision = None
         self.patch_order = 1    # place of the patch in the series
         self.filenames = []     # files touched by a diff
+        self.msgid = None
 
 
 def build_references_from_headers(in_reply_to, references):
@@ -419,6 +420,18 @@ def find_content(project, mail):
     if is_cover_letter or is_patch:
         msgid = mail.get('Message-Id').strip()
 
+        # check if msgid already exists in db
+        ex_msgid=get_object_by_msgid(Patch, msgid)
+        if not ex_msgid:
+            ex_msgid=get_object_by_msgid(Comment, msgid)
+        if ex_msgid and ex_msgid.content:
+            # modify msgid to allow processing new message only if it
+            # contains different content than existing Patch or Comment
+            if patchbuf and patchbuf!=ex_msgid.content:
+                refs.append(msgid)
+                msgid=datetime.datetime.now().isoformat() + '-' + msgid
+
+        ret.msgid=msgid
         # Series get a generic name when they don't start by a cover letter or
         # when they haven't received the root message yet. Except when it's
         # only 1 patch, then the series takes the patch subject as name.
@@ -762,8 +775,6 @@ def parse_mail(mail):
         LOGGER.error('Failed to find a project for mail')
         return 1
 
-    msgid = mail.get('Message-Id').strip()
-
     (author, save_required) = find_author(mail)
 
     content = find_content(project, mail)
@@ -773,6 +784,7 @@ def parse_mail(mail):
     comment = content.comment
     series = content.series
     revision = content.revision
+    msgid = (content.msgid or mail.get('Message-Id').strip())
 
     series_revision_complete.connect(on_revision_complete)
 
-- 
1.9.1


