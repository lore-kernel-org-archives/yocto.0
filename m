Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8706C0015E
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 14:49:07 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.13372.1687445340141312876
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 07:49:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=TGr74Psf;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: martin.jansa@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2b475b54253so74065791fa.2
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 07:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687445338; x=1690037338;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8nKCG+opIgfiXGNWA9ZJch72JkyGODiS9NobTHC+kYs=;
        b=TGr74PsfZ2zd54C7Ll3qh60xEzOljQKXBC15p7xZ/eAs//iR8NLk8Namz1wwNOfKcM
         2TMS3jVZzCEDt6xQtU1pqW96j0JPF1NME47BulWnNHgECWfhk7lmg+Ir2XNTDeOlwJUs
         ShvFVDEpNsWCqNviXTxe40WoySyOwxCQy95YNYSRW2Ag4nZyQsI8qvugBDIhj5klE6Eg
         MapOCYmrPytvQME8CSLPL9FqO8x2iUb2oJvORi63me3pZw4byMLmptGCI5Vv07EStBSF
         MVOZkJ/xmv0mguRqBNbbwA4pjs7WlVGVJbJLuMMXmTFIYm5uBGgPQBotW5poduv/e6Hq
         GQNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687445338; x=1690037338;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8nKCG+opIgfiXGNWA9ZJch72JkyGODiS9NobTHC+kYs=;
        b=Tdd3v3SqsNPSnDS+xgzNwPtKci/Tc7a3dleX/da+R5qmTr7DtX3AQNEl+cZDFMIvx8
         SUYySpg7cJFDxL5zZe8f1iC6zBO2/zCYAoRq8tneMSboTq8K8lrkfbSwlkMAJT5Gv3Qm
         uxNs4lvsW63Pe+gVytgRKYQSx/twtH3Z1Pz3c8z54XvM5PvtKKMIgQbslJzDSWRfRcCj
         H3YxcjTWmAnbXI46TiRAe5C4kPfZryQa0r/2ygVjeCu28FhzzccJ527uWQrUBxJFBiSB
         pcg0pGJ6oR+j06MFkK62tZN6knBs7OYIgJ1pnTQLNERjj+6Y0g3vIjOkJ1FAe+gzCKMd
         rMbA==
X-Gm-Message-State: AC+VfDwbEpgUSisCQ7lqqx7OtxDEc7VtfIv5N0d3qcJdo8p9e6mFuqCm
	bmskeCnq2acC4iXaq6nBACBFjIU5auU=
X-Google-Smtp-Source: ACHHUZ4hoNt0YOuBC9FaoBzG6h4pftoFlZX1kFXo266mBusW5vVWZCWAnjRZczkNxd9PazwVTSBlvQ==
X-Received: by 2002:a2e:80c9:0:b0:2b1:e6eb:1ba2 with SMTP id r9-20020a2e80c9000000b002b1e6eb1ba2mr13476570ljg.22.1687445338058;
        Thu, 22 Jun 2023 07:48:58 -0700 (PDT)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id le15-20020a170907170f00b00985bdb7dd5fsm4681458ejc.201.2023.06.22.07.48.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 07:48:57 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Martin Jansa <Martin.Jansa@gmail.com>
Subject: [meta-security][master-next][PATCH] dynamic-layers: *.patch: fix malformed and missing Upstream-Status lines
Date: Thu, 22 Jun 2023 16:48:45 +0200
Message-ID: <20230622144845.3900725-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 14:49:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60401

* as reported by openembedded-core/scripts/contrib/patchreview.py -v .

Missing Upstream-Status tag (dynamic-layers/meta-perl/recipes-scanners/checksecurity/files/check-setuid-use-more-portable-find-args.patch)
Missing Upstream-Status tag (dynamic-layers/meta-python/recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch)

Malformed Upstream-Status 'Malformed Upstream-Status in patch dynamic-layers/meta-perl/recipes-security/bastille/files/accept_os_flag_in_backend.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch dynamic-layers/meta-perl/recipes-security/bastille/files/allow_os_with_assess.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch dynamic-layers/meta-perl/recipes-security/bastille/files/call_output_config.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch dynamic-layers/meta-perl/recipes-security/bastille/files/do_not_apply_config.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch dynamic-layers/meta-perl/recipes-security/bastille/files/edit_usage_message.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch dynamic-layers/meta-perl/recipes-security/bastille/files/find_existing_config.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch dynamic-layers/meta-perl/recipes-security/bastille/files/fix_missing_use_directives.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch dynamic-layers/meta-perl/recipes-security/bastille/files/fix_number_of_modules.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch dynamic-layers/meta-perl/recipes-security/bastille/files/fix_version_parse.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch dynamic-layers/meta-perl/recipes-security/bastille/files/fixed_defined_warnings.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch dynamic-layers/meta-perl/recipes-security/bastille/files/organize_distro_discovery.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch dynamic-layers/meta-perl/recipes-security/bastille/files/remove_questions_text_file_references.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch dynamic-layers/meta-perl/recipes-security/bastille/files/simplify_B_place.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch dynamic-layers/meta-perl/recipes-security/bastille/files/upgrade_options_processing.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch dynamic-layers/meta-perl/recipes-security/nikto/files/location.patch

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 .../files/check-setuid-use-more-portable-find-args.patch        | 1 +
 .../bastille/files/accept_os_flag_in_backend.patch              | 2 +-
 .../recipes-security/bastille/files/allow_os_with_assess.patch  | 2 +-
 .../recipes-security/bastille/files/call_output_config.patch    | 2 +-
 .../recipes-security/bastille/files/do_not_apply_config.patch   | 2 +-
 .../recipes-security/bastille/files/edit_usage_message.patch    | 2 +-
 .../recipes-security/bastille/files/find_existing_config.patch  | 2 +-
 .../bastille/files/fix_missing_use_directives.patch             | 2 +-
 .../recipes-security/bastille/files/fix_number_of_modules.patch | 2 +-
 .../recipes-security/bastille/files/fix_version_parse.patch     | 2 +-
 .../bastille/files/fixed_defined_warnings.patch                 | 2 +-
 .../bastille/files/organize_distro_discovery.patch              | 2 +-
 .../bastille/files/remove_questions_text_file_references.patch  | 2 +-
 .../recipes-security/bastille/files/simplify_B_place.patch      | 2 +-
 .../bastille/files/upgrade_options_processing.patch             | 2 +-
 .../meta-perl/recipes-security/nikto/files/location.patch       | 2 +-
 .../fail2ban/files/0001-To-fix-build-error-of-xrang.patch       | 1 +
 17 files changed, 17 insertions(+), 15 deletions(-)

diff --git a/dynamic-layers/meta-perl/recipes-scanners/checksecurity/files/check-setuid-use-more-portable-find-args.patch b/dynamic-layers/meta-perl/recipes-scanners/checksecurity/files/check-setuid-use-more-portable-find-args.patch
index 1a2f364..1754e1e 100644
--- a/dynamic-layers/meta-perl/recipes-scanners/checksecurity/files/check-setuid-use-more-portable-find-args.patch
+++ b/dynamic-layers/meta-perl/recipes-scanners/checksecurity/files/check-setuid-use-more-portable-find-args.patch
@@ -3,6 +3,7 @@ From: Christopher Larson <chris_larson@mentor.com>
 Date: Wed, 5 Sep 2018 23:21:43 +0500
 Subject: [PATCH] check-setuid: use more portable find args
 
+Upstream-Status: Pending
 Signed-off-by: Christopher Larson <chris_larson@mentor.com>
 ---
  plugins/check-setuid | 6 +++---
diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/files/accept_os_flag_in_backend.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/accept_os_flag_in_backend.patch
index 4a438e4..907d86b 100644
--- a/dynamic-layers/meta-perl/recipes-security/bastille/files/accept_os_flag_in_backend.patch
+++ b/dynamic-layers/meta-perl/recipes-security/bastille/files/accept_os_flag_in_backend.patch
@@ -1,4 +1,4 @@
-Upstream Status: Inappropriate [No upstream maintenance]
+Upstream-Status: Inappropriate [No upstream maintenance]
 
 Signed-off-by: Anne Mulhern <mulhern@yoctoproject.org>
 
diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/files/allow_os_with_assess.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/allow_os_with_assess.patch
index e112f90..4edb1f3 100644
--- a/dynamic-layers/meta-perl/recipes-security/bastille/files/allow_os_with_assess.patch
+++ b/dynamic-layers/meta-perl/recipes-security/bastille/files/allow_os_with_assess.patch
@@ -1,4 +1,4 @@
-Upstream Status: Inappropriate [No upstream maintenance]
+Upstream-Status: Inappropriate [No upstream maintenance]
 
 Signed-off-by: Anne Mulhern <mulhern@yoctoproject.org>
 
diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/files/call_output_config.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/call_output_config.patch
index 1e898b1..f01cc47 100644
--- a/dynamic-layers/meta-perl/recipes-security/bastille/files/call_output_config.patch
+++ b/dynamic-layers/meta-perl/recipes-security/bastille/files/call_output_config.patch
@@ -1,4 +1,4 @@
-Upstream Status: Inappropriate [No upstream maintenance]
+Upstream-Status: Inappropriate [No upstream maintenance]
 
 Signed-off-by: Anne Mulhern <mulhern@yoctoproject.org>
 
diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/files/do_not_apply_config.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/do_not_apply_config.patch
index 574aa98..640d5ff 100644
--- a/dynamic-layers/meta-perl/recipes-security/bastille/files/do_not_apply_config.patch
+++ b/dynamic-layers/meta-perl/recipes-security/bastille/files/do_not_apply_config.patch
@@ -1,4 +1,4 @@
-Upstream Status: Inappropriate [No upstream maintenance]
+Upstream-Status: Inappropriate [No upstream maintenance]
 
 Signed-off-by: Anne Mulhern <mulhern@yoctoproject.org>
 
diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/files/edit_usage_message.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/edit_usage_message.patch
index 72cdc2f..4ca9c63 100644
--- a/dynamic-layers/meta-perl/recipes-security/bastille/files/edit_usage_message.patch
+++ b/dynamic-layers/meta-perl/recipes-security/bastille/files/edit_usage_message.patch
@@ -1,4 +1,4 @@
-Upstream Status: Inappropriate [No upstream maintenance]
+Upstream-Status: Inappropriate [No upstream maintenance]
 
 Signed-off-by: Anne Mulhern <mulhern@yoctoproject.org>
 
diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/files/find_existing_config.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/find_existing_config.patch
index c075875..7f6aea0 100644
--- a/dynamic-layers/meta-perl/recipes-security/bastille/files/find_existing_config.patch
+++ b/dynamic-layers/meta-perl/recipes-security/bastille/files/find_existing_config.patch
@@ -1,4 +1,4 @@
-Upstream Status: Inappropriate [No upstream maintenance]
+Upstream-Status: Inappropriate [No upstream maintenance]
 
 Signed-off-by: Anne Mulhern <mulhern@yoctoproject.org>
 
diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/files/fix_missing_use_directives.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/fix_missing_use_directives.patch
index 05f145a..d909f10 100644
--- a/dynamic-layers/meta-perl/recipes-security/bastille/files/fix_missing_use_directives.patch
+++ b/dynamic-layers/meta-perl/recipes-security/bastille/files/fix_missing_use_directives.patch
@@ -1,4 +1,4 @@
-Upstream Status: Inappropriate [No upstream maintenance]
+Upstream-Status: Inappropriate [No upstream maintenance]
 
 Signed-off-by: Anne Mulhern <mulhern@yoctoproject.org>
 
diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/files/fix_number_of_modules.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/fix_number_of_modules.patch
index 743e549..4f46924 100644
--- a/dynamic-layers/meta-perl/recipes-security/bastille/files/fix_number_of_modules.patch
+++ b/dynamic-layers/meta-perl/recipes-security/bastille/files/fix_number_of_modules.patch
@@ -1,4 +1,4 @@
-Upstream Status: Inappropriate [No upstream maintenance]
+Upstream-Status: Inappropriate [No upstream maintenance]
 
 Signed-off-by: Anne Mulhern <mulhern@yoctoproject.org>
 
diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/files/fix_version_parse.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/fix_version_parse.patch
index 5923c04..c38f45e 100644
--- a/dynamic-layers/meta-perl/recipes-security/bastille/files/fix_version_parse.patch
+++ b/dynamic-layers/meta-perl/recipes-security/bastille/files/fix_version_parse.patch
@@ -1,4 +1,4 @@
-Upstream Status: Inappropriate [No upstream maintenance]
+Upstream-Status: Inappropriate [No upstream maintenance]
 
 Signed-off-by: Anne Mulhern <mulhern@yoctoproject.org>
 
diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/files/fixed_defined_warnings.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/fixed_defined_warnings.patch
index e7996e3..5a6476b 100644
--- a/dynamic-layers/meta-perl/recipes-security/bastille/files/fixed_defined_warnings.patch
+++ b/dynamic-layers/meta-perl/recipes-security/bastille/files/fixed_defined_warnings.patch
@@ -11,7 +11,7 @@ in Bastille.
 Fixed also some warnings regarding defined statements
 in API.pm.
 
-Upstream Status: Inappropriate [No upstream maintenance]
+Upstream-Status: Inappropriate [No upstream maintenance]
 
 Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
 
diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/files/organize_distro_discovery.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/organize_distro_discovery.patch
index d64d1e2..5a5be6f 100644
--- a/dynamic-layers/meta-perl/recipes-security/bastille/files/organize_distro_discovery.patch
+++ b/dynamic-layers/meta-perl/recipes-security/bastille/files/organize_distro_discovery.patch
@@ -1,4 +1,4 @@
-Upstream Status: Inappropriate [No upstream maintenance]
+Upstream-Status: Inappropriate [No upstream maintenance]
 
 Signed-off-by: Anne Mulhern <mulhern@yoctoproject.org>
 
diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/files/remove_questions_text_file_references.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/remove_questions_text_file_references.patch
index bd094ee..f95579d 100644
--- a/dynamic-layers/meta-perl/recipes-security/bastille/files/remove_questions_text_file_references.patch
+++ b/dynamic-layers/meta-perl/recipes-security/bastille/files/remove_questions_text_file_references.patch
@@ -1,4 +1,4 @@
-Upstream Status: Inappropriate [No upstream maintenance]
+Upstream-Status: Inappropriate [No upstream maintenance]
 
 Signed-off-by: Anne Mulhern <mulhern@yoctoproject.org>
 
diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/files/simplify_B_place.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/simplify_B_place.patch
index 307fdca..afbd4e0 100644
--- a/dynamic-layers/meta-perl/recipes-security/bastille/files/simplify_B_place.patch
+++ b/dynamic-layers/meta-perl/recipes-security/bastille/files/simplify_B_place.patch
@@ -1,4 +1,4 @@
-Upstream Status: Inappropriate [No upstream maintenance]
+Upstream-Status: Inappropriate [No upstream maintenance]
 
 Signed-off-by: Anne Mulhern <mulhern@yoctoproject.org>
 
diff --git a/dynamic-layers/meta-perl/recipes-security/bastille/files/upgrade_options_processing.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/upgrade_options_processing.patch
index 4093867..5052bd8 100644
--- a/dynamic-layers/meta-perl/recipes-security/bastille/files/upgrade_options_processing.patch
+++ b/dynamic-layers/meta-perl/recipes-security/bastille/files/upgrade_options_processing.patch
@@ -1,4 +1,4 @@
-Upstream Status: Inappropriate [No upstream maintenance]
+Upstream-Status: Inappropriate [No upstream maintenance]
 
 Signed-off-by: Anne Mulhern <mulhern@yoctoproject.org>
 
diff --git a/dynamic-layers/meta-perl/recipes-security/nikto/files/location.patch b/dynamic-layers/meta-perl/recipes-security/nikto/files/location.patch
index edaa204..0715f31 100644
--- a/dynamic-layers/meta-perl/recipes-security/nikto/files/location.patch
+++ b/dynamic-layers/meta-perl/recipes-security/nikto/files/location.patch
@@ -3,7 +3,7 @@ From: Scott Ellis <scott@jumpnowtek.com>
 Date: Fri, 28 Dec 2018 11:08:25 -0500
 Subject: [PATCH] Set custom paths
 
-Upstream Status: Inappropriate
+Upstream-Status: Inappropriate
 
 Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
 ---
diff --git a/dynamic-layers/meta-python/recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch b/dynamic-layers/meta-python/recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch
index 7f0812c..72475e0 100644
--- a/dynamic-layers/meta-python/recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch
+++ b/dynamic-layers/meta-python/recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch
@@ -5,6 +5,7 @@ Subject: [PATCH] To fix build error of xrange.
 
 NameError: name 'xrange' is not defined
 
+Upstream-Status: Pending
 Signed-off-by: Lei Maohui <leimaohui@cn.fujitsu.com>
 ---
  fail2ban/__init__.py | 2 +-
-- 
2.41.0


