Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DF2AE00C09; Thu,  1 Nov 2018 23:17:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CC62E00901
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2018 23:17:18 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id wA26HHpF021272
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 1 Nov 2018 23:17:17 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.408.0; Thu, 1 Nov 2018 23:17:17 -0700
From: Chen Qi <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 2 Nov 2018 14:03:00 +0800
Message-ID: <1541138580-15360-1-git-send-email-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [patchtest-oe][PATCH] test_patch_cve.py: fix cve tag checking logic
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
X-List-Received-Date: Fri, 02 Nov 2018 06:17:19 -0000
Content-Type: text/plain

The current logic for checking cve tag is not correct. It errors
out if and only if the patch contains a line which begins with
CVE-YYYY-XXXX and contains nothing else.

It will not error out if the patch contains no CVE information, nor
will it error out if the patch contains line like below.

'Fix CVE-YYYY-XXXX'

I can see that the cve tag checking logic tries to ensure the patch
contains something like 'CVE: CVE-YYYY-XXXX'. So fix to implement such
logic.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 tests/test_patch_cve.py | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/tests/test_patch_cve.py b/tests/test_patch_cve.py
index 39e7267..df6fe46 100644
--- a/tests/test_patch_cve.py
+++ b/tests/test_patch_cve.py
@@ -22,7 +22,6 @@ import re
 class CVE(base.Base):
 
     re_cve_pattern = re.compile("CVE\-\d{4}\-\d+", re.IGNORECASE)
-    re_cve_payload_pattern = re.compile("\+CVE\-\d{4}\-\d+", re.IGNORECASE)
     re_cve_payload_tag     = re.compile("\+CVE:(\s+CVE\-\d{4}\-\d+)+")
 
     def setUp(self):
@@ -39,10 +38,12 @@ class CVE(base.Base):
     def test_cve_tag_format(self):
         for commit in CVE.commits:
             if self.re_cve_pattern.search(commit.shortlog) or self.re_cve_pattern.search(commit.commit_message):
+                tag_found = False
                 for line in commit.payload.splitlines():
-                    # first match is lax but second strict
-                    if self.re_cve_payload_pattern.match(line):
-                        if not self.re_cve_payload_tag.match(line):
-                            self.fail('Missing or incorrectly formatted CVE tag in included patch file',
-                                      'Correct or include the CVE tag on cve patch with format: "CVE: CVE-YYYY-XXXX"',
-                                      commit)
+                    if self.re_cve_payload_tag.match(line):
+                        tag_found = True
+                        break
+                if not tag_found:
+                    self.fail('Missing or incorrectly formatted CVE tag in included patch file',
+                              'Correct or include the CVE tag on cve patch with format: "CVE: CVE-YYYY-XXXX"',
+                              commit)
-- 
2.7.4


