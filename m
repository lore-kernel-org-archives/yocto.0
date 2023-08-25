Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D95EE49A3
	for <webhook@archiver.kernel.org>; Fri, 25 Aug 2023 20:01:49 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web10.4581.1692993706326392484
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Aug 2023 13:01:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=qoXsCv+J;
 spf=pass (domain: baylibre.com, ip: 209.85.222.179, mailfrom: tgamblin@baylibre.com)
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-76dc7b0da9fso79707885a.1
        for <yocto@lists.yoctoproject.org>; Fri, 25 Aug 2023 13:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1692993705; x=1693598505;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=oOro6cm2latxFBsyZ4SyzLVhWRmveQH1FAOm67cI2Tg=;
        b=qoXsCv+J+zimq63k0f9m+gVnFFW9VQDNvsUbm5E2fAJxG2CM+r2Vx1g43RjHEma7GQ
         64M3Ml/AdY2VkRsdRfMZweVUmPxwET66AeCnozVlSgWNc5aS4mesICl4UaWaKZJBUG6o
         h3RhFqVDG/jHaiQPBEvJ6y3siE5tdVSWad2FiZnNbXBp88I3zEtc0VMipFErbP/TGN9D
         OA0QcXB9H7JW6oifeOPX9+l9Xnq90YFO6Mg8v+/jwXnQgx2kmOcSc1ECqdshlgxZnp7G
         5TBo1sq4nalGmGm/ybcYXYIJFpqL0Rl0O4b0y8LzDPsLLqKMHSRKiws25MPZ06TMt80q
         SPcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692993705; x=1693598505;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oOro6cm2latxFBsyZ4SyzLVhWRmveQH1FAOm67cI2Tg=;
        b=ZuoGKut6Hwu4k79x9BNsBSVRdFNK4XDyvFP4LkowQRETjsJgUHXvgeBmD8SYgAVxvo
         fHKxq3RkQbsFnJ6ewMa+8GY/p/t+tJeRaV41f3hATvnrdecpfBCcX0M0LdgCs2k7eBoC
         peheSegEQiO1z11VJhabB7rbJKmQZ9pajt55OVJE/XRcHxCuZ7yECZUAOudVXe1piLE/
         mJ5clOay1G1e/c2/WhQkdu+ZCQ2DABgjYjWzG97t37ljAXe2LAEYcDiSfzDDNVUiFQwy
         ZKp7IBxoeIXmTbSVTGVYFWHCDM03m0/NRTIjgcleH2ScLDFIAUziQRY8ps0QAbtqeQd4
         Fu6A==
X-Gm-Message-State: AOJu0YweZcFm+wptubJpeJ4OzJUkULzMJry5HfuT/ZAZGrZDZ6nRrUpI
	tXGPupqlR3mULbbynqum6ok6JXYxsCiqRz9PzKY=
X-Google-Smtp-Source: AGHT+IFjSwOqQG5awIAAgd9FJb6fpUdXnhQy4FsS60ZIRLR99UxBiKmGl2Y0fpzKjrIwqeZiPXU+mQ==
X-Received: by 2002:a05:620a:102b:b0:76c:a695:fe5b with SMTP id a11-20020a05620a102b00b0076ca695fe5bmr15659697qkk.62.1692993705004;
        Fri, 25 Aug 2023 13:01:45 -0700 (PDT)
Received: from megalith.cgocable.net ([2001:1970:5b1f:ab00:fc4e:ec42:7e5d:48dd])
        by smtp.gmail.com with ESMTPSA id pe31-20020a05620a851f00b0076c9cc1e107sm724625qkn.54.2023.08.25.13.01.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Aug 2023 13:01:44 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [patchtest][PATCH] patchtest: refactor and simplify modules
Date: Fri, 25 Aug 2023 16:01:43 -0400
Message-ID: <20230825200143.141773-1-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Aug 2023 20:01:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60895

The current layout of patchtest is inconsistent in module and class
naming, as well as inter-dependencies. Start making the code more
maintainable by:

- Simplifying module names to remove namespacing
- Add namespacing to the classes themselves
- Make imports of classes explicit, instead of using aliases like "pti"

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 lib/{patchtestdata.py => data.py}   |  0
 lib/{patchtestpatch.py => patch.py} |  6 ++---
 lib/{patchtestrepo.py => repo.py}   | 10 ++++-----
 patchtest                           | 35 +++++++++++++++--------------
 4 files changed, 26 insertions(+), 25 deletions(-)
 rename lib/{patchtestdata.py => data.py} (100%)
 rename lib/{patchtestpatch.py => patch.py} (92%)
 rename lib/{patchtestrepo.py => repo.py} (95%)

diff --git a/lib/patchtestdata.py b/lib/data.py
similarity index 100%
rename from lib/patchtestdata.py
rename to lib/data.py
diff --git a/lib/patchtestpatch.py b/lib/patch.py
similarity index 92%
rename from lib/patchtestpatch.py
rename to lib/patch.py
index 4583b5c..c0e7d57 100644
--- a/lib/patchtestpatch.py
+++ b/lib/patch.py
@@ -1,7 +1,7 @@
 # ex:ts=4:sw=4:sts=4:et
 # -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
 #
-# patchtestpatch: Patch class which abstracts a patch file
+# patchtestpatch: PatchTestPatch class which abstracts a patch file
 #
 # Copyright (C) 2016 Intel Corporation
 #
@@ -24,7 +24,7 @@ import utils
 
 logger = logging.getLogger('patchtest')
 
-class Patch(object):
+class PatchTestPatch(object):
     MERGE_STATUS_INVALID = 'INVALID'
     MERGE_STATUS_NOT_MERGED = 'NOTMERGED'
     MERGE_STATUS_MERGED_SUCCESSFULL = 'PASS'
@@ -40,7 +40,7 @@ class Patch(object):
 
         self._contents = None
         self._branch = None
-        self._merge_status = Patch.MERGE_STATUS_NOT_MERGED
+        self._merge_status = PatchTestPatch.MERGE_STATUS_NOT_MERGED
 
     @property
     def contents(self):
diff --git a/lib/patchtestrepo.py b/lib/repo.py
similarity index 95%
rename from lib/patchtestrepo.py
rename to lib/repo.py
index 3c38b9c..5c85c65 100644
--- a/lib/patchtestrepo.py
+++ b/lib/repo.py
@@ -1,7 +1,7 @@
 # ex:ts=4:sw=4:sts=4:et
 # -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
 #
-# patchtestrepo: Repo class used mainly to control a git repo from patchtest
+# patchtestrepo: PatchTestRepo class used mainly to control a git repo from patchtest
 #
 # Copyright (C) 2016 Intel Corporation
 #
@@ -22,19 +22,19 @@ import os
 import utils
 import logging
 import json
-import patchtestpatch
+from patch import PatchTestPatch
 
 logger = logging.getLogger('patchtest')
 info=logger.info
 
-class Repo(object):
+class PatchTestRepo(object):
 
     # prefixes used for temporal branches/stashes
     prefix = 'patchtest'
 
     def __init__(self, patch, repodir, commit=None, branch=None):
         self._repodir = repodir
-        self._patch = patchtestpatch.Patch(patch)
+        self._patch = PatchTestPatch(patch)
         self._current_branch = self._get_current_branch()
 
         # targeted branch defined on the patch may be invalid, so make sure there
@@ -61,7 +61,7 @@ class Repo(object):
           self._get_commitid(valid_patch_branch) or \
           self._get_commitid('HEAD')
 
-        self._workingbranch = "%s_%s" % (Repo.prefix, os.getpid())
+        self._workingbranch = "%s_%s" % (PatchTestRepo.prefix, os.getpid())
 
         # create working branch
         self._exec({'cmd': ['git', 'checkout', '-b', self._workingbranch, self._commit]})
diff --git a/patchtest b/patchtest
index 592f73e..8d3efda 100755
--- a/patchtest
+++ b/patchtest
@@ -36,14 +36,15 @@ sys.path.insert(0, os.path.dirname(os.path.realpath(__file__)))
 # Include patchtest library
 sys.path.insert(0, os.path.join(os.path.dirname(os.path.realpath(__file__)), 'lib'))
 
-from patchtestdata import PatchTestInput as pti
+from data import PatchTestInput
+from repo import PatchTestRepo
 
 import utils
 logger = utils.logger_create('patchtest')
 info = logger.info
 error = logger.error
 
-import patchtestrepo
+import repo
 
 def getResult(patch, mergepatch):
 
@@ -78,9 +79,9 @@ def getResult(patch, mergepatch):
         def startTestRun(self):
             # let's create the repo already, it can be used later on
             repoargs = {
-                'repodir': pti.repodir,
-                'commit' : pti.basecommit,
-                'branch' : pti.basebranch,
+                'repodir': PatchTestInput.repodir,
+                'commit' : PatchTestInput.basecommit,
+                'branch' : PatchTestInput.basebranch,
                 'patch'  : patch,
             }
 
@@ -89,7 +90,7 @@ def getResult(patch, mergepatch):
             self.test_failure  = False
 
             try:
-                self.repo = pti.repo = patchtestrepo.Repo(**repoargs)
+                self.repo = PatchTestInput.repo = PatchTestRepo(**repoargs)
             except:
                 logger.error(traceback.print_exc())
                 self.repo_error = True
@@ -106,19 +107,19 @@ def getResult(patch, mergepatch):
 
         def addFailure(self, test, err):
             self.test_failure = True
-            if pti.json:
+            if PatchTestInput.json:
                 print(self.JSON(self.fail, err[1]))
             else:
                 print('{} {}'.format(self.fail, test.id()))
 
         def addSuccess(self, test):
-            if pti.json:
+            if PatchTestInput.json:
                 print(self.JSON(self.success, test))
             else:
                 print('{} {}'.format(self.success, test.id()))
 
         def addSkip(self, test, reason):
-            if pti.json:
+            if PatchTestInput.json:
                 print(self.JSON(self.skip, reason))
             else:
                 print('{} {}'.format(self.skip, test.id()))
@@ -140,7 +141,7 @@ def _runner(resultklass, prefix=None):
         loader.testMethodPrefix = prefix
 
     # create the suite with discovered tests and the corresponding runner
-    suite = loader.discover(start_dir=pti.startdir, pattern=pti.pattern, top_level_dir=pti.topdir)
+    suite = loader.discover(start_dir=PatchTestInput.startdir, pattern=PatchTestInput.pattern, top_level_dir=PatchTestInput.topdir)
     ntc = suite.countTestCases()
 
     # if there are no test cases, just quit
@@ -177,16 +178,16 @@ def run(patch):
 
 def main():
     tmp_patch = False
-    patch = pti.patch
+    patch = PatchTestInput.patch
     if not sys.stdin.isatty():
         tmp_patch = True
-        patch = pti.namespace_stdin(fileinput.input('-'))
+        patch = PatchTestInput.namespace_stdin(fileinput.input('-'))
 
     if os.path.getsize(patch) == 0:
         logger.error('patchtest: patch is empty')
         return 1
 
-    if not pti.json:
+    if not PatchTestInput.json:
         logger.info('Testing patch %s' % patch)
     try:
         run(patch)
@@ -198,15 +199,15 @@ if __name__ == '__main__':
     ret = 1
 
     # Parse the command line arguments and store it on the PatchTestInput namespace
-    pti.set_namespace()
+    PatchTestInput.set_namespace()
 
     # set debugging level
-    if pti.debug:
+    if PatchTestInput.debug:
         logger.setLevel(logging.DEBUG)
 
     # if topdir not define, default it to startdir
-    if not pti.topdir:
-        pti.topdir = pti.startdir
+    if not PatchTestInput.topdir:
+        PatchTestInput.topdir = PatchTestInput.startdir
 
     try:
         ret = main()
-- 
2.41.0


