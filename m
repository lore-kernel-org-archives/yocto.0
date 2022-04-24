Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88879C38A2E
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:12 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web08.22216.1650834631939676943
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Apr 2022 14:10:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PuodR2oq;
 spf=pass (domain: gmail.com, ip: 209.85.214.180,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id s14so22785197plk.8
        for <yocto@lists.yoctoproject.org>;
 Sun, 24 Apr 2022 14:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=E3WIsWgpnJtLSLpwutrydgRBmv89LqGfnky4QJVcPNs=;
        b=PuodR2oq7x3gSyCjfxnvNfUVaTCszD0jSjDBTOdPGBRHHAPTdESCG0+SZPDC/2jOBa
         m3/vjJNu5ls1xuscaf6bXbZJlKAMwQf/JomijZlDdxi6keUq4f/MblUxNgZKndaJI8V3
         JQ7Vg5bzIRg3Ke/4Is2o/h1w5H54OTX/hsZuu2Pt35CunJQNfVceZ54ak91dL3nTimk/
         fQZGJpkNUSUbZUgyyqKSMkFRE7IABMx+uHjqEIKb5epqkdsD5omeHVhXgSWvk3MIWRYg
         BhRdP6s9O4HG8lXx7gLFYAM1C9lUMnlxjN68Be0UKegW7hdM6C+ZHwRm2C4mLUp/sdSg
         3ZVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=E3WIsWgpnJtLSLpwutrydgRBmv89LqGfnky4QJVcPNs=;
        b=N51LPlyqj1NllX71FRrEFDQ3qTdXAgDSFkAQQ+Kb5ps5vmkf1LqcpsZb9tVDdXyzGr
         8ok0ao6tDPjV9yFNFEAf1Mx3hYvKL7bwERRLLE98dly9aIUjhJ8SFewOErOBcuhbeZn5
         nQJGKdqKkYITjZZduN6Xo0Nd4Ux5sF8xiXEZmRy+o6DbkG1DL063lWf7843d8ZicdTw+
         mEVpAsXYyzms/0NoydG8gaKJUGlCjXmuyUUy0X5J5CIVeITsV84mSmQclr3mJT6yZNu3
         2WTA+xVA5NbYMWmMjyBewewV7f/KGCE6GMVrBJdKkPJyxROukY8Weyx46ftnKx7j96O7
         V/Fw==
X-Gm-Message-State: AOAM531eO+ytSxyp4D9Gjub5mektI+lsaJzpHjLNXDNe5t81AoGs7jS9
	4udi1djwx53zVSEqcgXP9dcPdZNnpGk=
X-Google-Smtp-Source: 
 ABdhPJxZehpfxcqnuEYd5CpIn1uIxeSmI/EyEzq41emOykbD45l2ML+bTTjYdUCvkfcqWhZk+dZ1Bg==
X-Received: by 2002:a17:90b:110a:b0:1d2:bde4:e277 with SMTP id
 gi10-20020a17090b110a00b001d2bde4e277mr16896402pjb.188.1650834631016;
        Sun, 24 Apr 2022 14:10:31 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:7392:b24f:9023:5aa7])
        by smtp.gmail.com with ESMTPSA id
 y30-20020a056a001c9e00b004fa9246adcbsm9019250pfw.144.2022.04.24.14.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Apr 2022 14:10:30 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: bluelightning@bluelightning.org
Subject: [layerindex-web][PATCH v2 2/3] recipe{desc,parse}.py:
 BB_ENV_PASSTHROUGH_ADDITIONS
Date: Sun, 24 Apr 2022 14:10:08 -0700
Message-Id: 
 <aa7b50654d41013bff49e2f6c7cef409f5d62092.1650833930.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1650833930.git.tim.orling@konsulko.com>
References: <cover.1650833930.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56857

ERROR: Variable BB_ENV_EXTRAWHITE has been renamed to BB_ENV_PASSTHROUGH_ADDITIONS
ERROR: Variable BB_ENV_EXTRAWHITE from the shell environment has been renamed to BB_ENV_PASSTHROUGH_ADDITIONS
ERROR: Exiting to allow enviroment variables to be corrected

Replace BB_ENV_EXTRAWHITE with new variable BB_ENV_PASSTHROUGH_ADDITIONS

In order to be backward compatible with older branches, we must first check
for the presence of the bitbake commit which implemented the variable name
change, using layerindex.utils.is_commit_ancestor().

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
Changes in v2:
  * Use new is_commit_ancestor check to check for the specific bitbake
    commit that introduced the variable renaming. This provides for backward
    compatibility in older branches (before bitbake 2.0).

 layerindex/recipedesc.py  | 8 +++++++-
 layerindex/recipeparse.py | 7 ++++++-
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/layerindex/recipedesc.py b/layerindex/recipedesc.py
index ee7f2fe..a844186 100644
--- a/layerindex/recipedesc.py
+++ b/layerindex/recipedesc.py
@@ -39,6 +39,7 @@ def main():
     from layerindex.models import LayerItem, Recipe
     from django.db import transaction
     import settings
+    from layerindex.utils import is_commit_ancestor
 
     setup_environ(settings)
 
@@ -62,8 +63,13 @@ def main():
             print("Unable to find bitbake by searching BITBAKEDIR, specified path '%s' or its parent, or PATH" % basepath)
             sys.exit(1)
 
+    # Commit "bitbake: Rename environment filtering variables"
+    bb_var_rename_commit = "87104b6a167188921da157c7dba45938849fb22a"
     # Skip sanity checks
-    os.environ['BB_ENV_EXTRAWHITE'] = 'DISABLE_SANITY_CHECKS'
+    if is_commit_ancestor(bitbakepath, bb_var_rename_commit, logger=logger):
+        os.environ['BB_ENV_PASSTHROUGH_ADDITIONS'] = 'DISABLE_SANITY_CHECKS'
+    else:
+        os.environ['BB_ENV_EXTRAWHITE'] = 'DISABLE_SANITY_CHECKS'
     os.environ['DISABLE_SANITY_CHECKS'] = '1'
 
     sys.path.extend([bitbakepath + '/lib'])
diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
index c918677..6202745 100644
--- a/layerindex/recipeparse.py
+++ b/layerindex/recipeparse.py
@@ -35,8 +35,13 @@ def init_parser(settings, branch, bitbakepath, enable_tracking=False, nocheckout
             bitbake_ref = 'origin/%s' % branch.bitbake_branch
         utils.checkout_repo(bitbakepath, bitbake_ref, logger=logger)
 
+    # Commit "bitbake: Rename environment filtering variables"
+    bb_var_rename_commit = "87104b6a167188921da157c7dba45938849fb22a"
     # Skip sanity checks
-    os.environ['BB_ENV_EXTRAWHITE'] = 'DISABLE_SANITY_CHECKS'
+    if utils.is_commit_ancestor(bitbakepath, bb_var_rename_commit, logger=logger):
+        os.environ['BB_ENV_PASSTHROUGH_ADDITIONS'] = 'DISABLE_SANITY_CHECKS'
+    else:
+        os.environ['BB_ENV_EXTRAWHITE'] = 'DISABLE_SANITY_CHECKS'
     os.environ['DISABLE_SANITY_CHECKS'] = '1'
 
     fetchdir = settings.LAYER_FETCH_DIR
-- 
2.32.0


