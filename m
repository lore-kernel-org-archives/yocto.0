Return-Path: <changqing.li@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDDD3C433FE
	for <webhook@archiver.kernel.org>; Fri, 22 Oct 2021 04:04:07 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web11.3836.1634875446745487911
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Oct 2021 21:04:07 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=fail (domain: windriver.com, ip: 147.11.3.146, mailfrom: changqing.li@windriver.com)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 19M445mi008780
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Thu, 21 Oct 2021 21:04:06 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 19M4403G025782
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Thu, 21 Oct 2021 21:04:05 -0700 (PDT)
Received: from ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 21:04:00 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Thu, 21 Oct 2021 21:04:00 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 21:03:59 -0700
From: <changqing.li@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [layerindex-web][PATCH] import_layer.py: support import layer to
 non-master branch
Date: Fri, 22 Oct 2021 12:03:02 +0800
Message-ID: <20211022040302.32088-1-changqing.li@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Oct 2021 04:04:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55116

From: Changqing Li <changqing.li@windriver.com>

Before this commit, it only support create layer on master branch,
support import layer to other branch to fix following issue:

For layer A, it only works on NON-MASTER branch. If we import
it use this tool, it will by default import it to master branch.
In master branch, bitbake is newer, and use new overrides style, but
layer A use old style overrides style, which make update.py -b
master report error:
INFO: Collecting data for layer A on branch master (NON-MASTER)
NOTE: Starting bitbake server...
ERROR: Variable PREMIRRORS_append contains an operation using the old override syntax. Please convert this layer/metadata before attempting to use with a newer bitbake.
ERROR: Traceback (most recent call last):
  File "update_layer.py", line 486, in main
    layer_config_data = layerconfparser.parse_layer(layerdir)
  File "/path/to/layerindex-web/layerindex/layerconfparse.py", line 47, in parse_layer
    utils.parse_layer_conf(layerdir, self.config_data_copy, logger=self.logger)
  File "/path/to/layerindex-web/layerindex/utils.py", line 288, in parse_layer_conf
    data = parse_conf(conf_file, data)
  File "/path/to/layerindex-web/layerindex/utils.py", line 273, in parse_conf
    data = bb.parse.handle(conf_file, d, include=True)
  File "/path/to/layerindex/git___lxgit_wrs_com_bitbake/lib/bb/parse/__init__.py", line 107, in handle
    return h['handle'](fn, data, include)
  File "/path/to/layerindex/git___lxgit_wrs_com_bitbake/lib/bb/parse/parse_py/ConfHandler.py", line 149, in handle
    statements.eval(data)
  File "/path/to/layerindex/git___lxgit_wrs_com_bitbake/lib/bb/parse/ast.py", line 19, in eval
    statement.eval(data)
  File "/path/to/layerindex/git___lxgit_wrs_com_bitbake/lib/bb/parse/ast.py", line 145, in eval
    data.setVar(key, val, parsing=True, **loginfo)
  File "/path/to/layerindex/git___lxgit_wrs_com_bitbake/lib/bb/tinfoil.py", line 97, in remoteCommand
    ret = self.tinfoil.run_command('dataStoreConnectorCmd', self.dsindex, cmd, args, kwargs)
  File "/path/to/layerindex/git___lxgit_wrs_com_bitbake/lib/bb/tinfoil.py", line 469, in run_command
    result = self.server_connection.connection.runCommand(commandline)
  File "/path/to/layerindex/git___lxgit_wrs_com_bitbake/lib/bb/server/process.py", line 410, in runCommand
    raise bb.BBHandledException()

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 layerindex/tools/import_layer.py | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/import_layer.py
index dfe887c..0c4881f 100755
--- a/layerindex/tools/import_layer.py
+++ b/layerindex/tools/import_layer.py
@@ -236,6 +236,9 @@ def main():
     parser.add_option("-a", "--actual-branch",
             help = "Set actual branch",
             action="store", dest="actual_branch")
+    parser.add_option("-b", "--branch",
+            help = "Set branch to import",
+            action="store", dest="branch", default="master")
 
     options, args = parser.parse_args(sys.argv)
 
@@ -284,7 +287,7 @@ def main():
     if not os.path.exists(fetchdir):
         os.makedirs(fetchdir)
 
-    master_branch = utils.get_branch('master')
+    master_branch = utils.get_branch(options.branch)
     core_layer = None
     try:
         with transaction.atomic():
@@ -311,7 +314,7 @@ def main():
                 logger.error("Fetch failed: %s" % str(e))
                 sys.exit(1)
 
-            actual_branch = 'master'
+            actual_branch = options.branch
             if (options.actual_branch):
                 actual_branch = options.actual_branch
             try:
@@ -324,7 +327,7 @@ def main():
                         actual_branch = line.split('-> origin/')[-1]
                         break
                 if not actual_branch:
-                    logger.error("Repository has no master branch nor origin/HEAD")
+                    logger.error("Repository has no %s branch nor origin/HEAD" % options.branch)
                     sys.exit(1)
                 out = utils.runcmd(['git', 'checkout', 'origin/%s' % actual_branch], repodir, logger=logger)
 
@@ -332,7 +335,7 @@ def main():
             if options.subdir:
                 layerdir = os.path.join(repodir, options.subdir)
                 if not os.path.exists(layerdir):
-                    logger.error("Subdirectory %s does not exist in repository for master branch" % options.subdir)
+                    logger.error("Subdirectory %s does not exist in repository for %s branch" % (options.subdir, options.branch))
                     sys.exit(1)
                 if not os.path.exists(os.path.join(layerdir, 'conf/layer.conf')):
                     logger.error("conf/layer.conf not found in subdirectory %s" % options.subdir)
-- 
2.17.1


