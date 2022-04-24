Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86C2EC47090
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:12 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
 [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web12.22228.1650834629809431040
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Apr 2022 14:10:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KYdIAoiC;
 spf=pass (domain: gmail.com, ip: 209.85.215.170,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f170.google.com with SMTP id t13so11796156pgn.8
        for <yocto@lists.yoctoproject.org>;
 Sun, 24 Apr 2022 14:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=o08ul0sABJubEZnOSoTR+9rG0j5+HPWfUoJJE/nKYqQ=;
        b=KYdIAoiCfIwkJKuKNZKEfe6fDkPQwyTrSlVaelb8B2unJ3+Ao+1Z1XC2Jcbu+NGux6
         Y912pc2lYvUu3g1DbLHyK3Wwq96k7o89AK0Ndpu1ArJDZeAbsPwTfn5UGoa5EI9kdR3X
         L7FOiBA3FROHsmT2GaBi6zlqOysMLbrXWbomkpGExozjQC718GQ0tJ2ePA1bGy/0jX+Z
         wey8jm67E10B1qJgdRqYZFY2XOQ7g2fBukioiyL+pBwEFONSyxdx8r3Hy6/8jq5KdccX
         aklsZZfJhM+FKcRtbMSIzRsXzw7qBLndoFioY1VIztosx/7aWnkRYwZgGQiOlaEeU9I3
         jh9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=o08ul0sABJubEZnOSoTR+9rG0j5+HPWfUoJJE/nKYqQ=;
        b=wtvEnAz9FmdoNEilIRoSdmB57QI8mIl82m+8zb8plXEFfwmbv5O/1K9XM+T4Nv60kA
         1JKAM0NW7HTFJy1EnHHjwUgxMBAqE4L3f1667mJ5rlFbkNMg7J9+CuqhqmDS8LhwgjQ6
         yGrIkIabHh98x5XofYSS4ss5L5dkEJRNFjifxgdp+zU2JLh9oVmIwgjmIagux+hkDsxG
         jMlQj/cZkeoAhvuhEBRVD8V7jXnNvRjlYnaXl+strTYSxS2DepfHQOYFlHArUwsMaIg8
         JIeCoXPE5YS3c9P8FhgSYgGyDsXZOMHNiWlpHu79KQF0PVL6qHQtxlpAuXpAg907midT
         MOTg==
X-Gm-Message-State: AOAM533X7YiAScyM3ZElvJ6KohVQdm6P6f+syP3ppsNIDBSNN5MMJ8pN
	+deERxj9UEN03t6CP86Ak9FRuSVT428=
X-Google-Smtp-Source: 
 ABdhPJwdqJCWPisG36vsnTMd1QVAlUjaiX4cC4/92nItWOpedbf40pmSPPknWx2ZwErWf2pxq6JIlQ==
X-Received: by 2002:a65:6c10:0:b0:380:437a:c154 with SMTP id
 y16-20020a656c10000000b00380437ac154mr12511220pgu.549.1650834628922;
        Sun, 24 Apr 2022 14:10:28 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:7392:b24f:9023:5aa7])
        by smtp.gmail.com with ESMTPSA id
 y30-20020a056a001c9e00b004fa9246adcbsm9019250pfw.144.2022.04.24.14.10.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Apr 2022 14:10:28 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: bluelightning@bluelightning.org
Subject: [layerindex-web][PATCH 1/3] layerindex/utils.py: add
 is_commit_ancestor check
Date: Sun, 24 Apr 2022 14:10:07 -0700
Message-Id: 
 <ed3445fe8eb0ff5eef7d0c1fb07e27d0ef80d4f6.1650833930.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1650833930.git.tim.orling@konsulko.com>
References: <cover.1650833930.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56856

Add a helper function to check if a given SHA1 hash is an ancestor in
the currently checkout out branch, using:

git merge-branch --is-ancestor <commit> HEAD

NOTE: This will not match commits which have been cherry-picked.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/utils.py | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index 32be16d..46e109e 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -229,6 +229,28 @@ def explode_dep_versions2(bitbakepath, deps):
     import bb.utils
     return bb.utils.explode_dep_versions2(deps)
 
+def is_commit_ancestor(repodir, commit, logger):
+    """
+    Check if the given SHA1 hash is an ancestor in the currently checked out branch.
+    NOTE: This will not match commits which have been cherry-picked.
+    """
+    try:
+        # check if commit is a sha1 hash
+        if re.match('[0-9a-f]{40}', commit):
+            # check if the commit is an ancestor
+            contained = runcmd(['git', 'merge-base', '--is-ancestor', '%s' % commit, 'HEAD'], repodir, logger=logger)
+            return True
+        else:
+            raise Exception('is_commit_ancestor: "commit" must be a SHA1 hash')
+    except CalledProcessError as e:
+            if e.returncode == 1:
+                # commit is not an ancestor
+                return False
+            else:
+                raise e
+    except Exception as esc:
+        logger.warn(esc)
+
 def checkout_repo(repodir, commit, logger, force=False):
     """
     Check out a revision in a repository, ensuring that untracked/uncommitted
-- 
2.32.0


