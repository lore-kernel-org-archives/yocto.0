Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A50A1C433F5
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 14:58:58 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web10.11730.1651157932696537174
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 07:58:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=C2FKiT7I;
 spf=pass (domain: gmail.com, ip: 209.85.214.174,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id q13so707422plr.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 07:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dVmDNaBqKMfDcp3Ngojt9KMAa+Q3Zm0zzPEcUAEkp/c=;
        b=C2FKiT7I46YRnVozEg5mJ+R6FaFWSuL4xub277ocIF/vMZgNAxX9AI3INT0Eug1u+K
         TyxHtG8yENOCE5jnWWczWKoQ9Hpnq4iDQLgJjxlUZTzESU4Zx4LjPbZNDWce/ShDRJfS
         Nd/ZfQZS+2/CUb4UT29j0cmejs+8y/QaR3+io6Y6dwntV8KD0P3mv8qMWGOi59Q3d0Pr
         V6ESdMdxGo955vXi0eXSdD+/LKE1Kzaz42BvMKGlFF8w9oN0rgH34AWvQpTqM6HPoH7c
         2AogmbvvaINZ/igKIIJAnLgOS05aShb4GJu8l1SNb7sHte2Fx/rBvdLq0v31lgm+SrcM
         Fxng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dVmDNaBqKMfDcp3Ngojt9KMAa+Q3Zm0zzPEcUAEkp/c=;
        b=faCPeWsURHo2YBYTKw3w75mHC7MENLJggJhYRLxT2BW3mhWiU+Cy4xAkI0/127da+n
         jlKzuYdxcbkBAmINU9beHNGFti2iFFxCZWW21IdR6+PZOLQogKj2SycOS0SdqzhYWOJo
         /vlYTYaoa/jZhfuSGVAz3MDB0f3Cp8lyFj5nmAluO8vwZlcCIDXKVcFX9dKgyH6v8ptV
         pT4Xlfnbri4by36y5CPt4x8YDTjysG0mMhIyP6vn5MIo+T+G67y0SFxLxzwNcTLevkmF
         JoSyVQfvJH1qUN6nIToY0BLgXxYbqm4pHp9BFyjb1qInGkNG05GkoZmxtEI7T23ixQhM
         hmMQ==
X-Gm-Message-State: AOAM5303lfkt6lruO6APC0rl7HzDHXEwKanRin+GB5tN+U4ndhjjwFFV
	FBSniv74OAOFchsEy1TyfaPE3IYH8Os=
X-Google-Smtp-Source: 
 ABdhPJyJPP3GWGF4b7H48N2MXhyIV5U5L5POP2FwPpw3aI24H0qSDtiyZvOjSonhUyVs+/vHRyRT6A==
X-Received: by 2002:a17:90b:210a:b0:1db:cbc6:ca57 with SMTP id
 kz10-20020a17090b210a00b001dbcbc6ca57mr5077558pjb.69.1651157931615;
        Thu, 28 Apr 2022 07:58:51 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:748b:1081:40ad:6372])
        by smtp.gmail.com with ESMTPSA id
 y131-20020a626489000000b00505a8f36965sm120649pfb.184.2022.04.28.07.58.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Apr 2022 07:58:51 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: bluelightning@bluelightning.org,
	Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH v2 1/3] layerindex/utils.py: add
 is_commit_ancestor check
Date: Thu, 28 Apr 2022 07:58:34 -0700
Message-Id: <20220428145834.3046017-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: 
 <ed3445fe8eb0ff5eef7d0c1fb07e27d0ef80d4f6.1650833930.git.tim.orling@konsulko.com>
References: 
 <ed3445fe8eb0ff5eef7d0c1fb07e27d0ef80d4f6.1650833930.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 14:58:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56945

Add a helper function to check if a given SHA1 hash is an ancestor in
the currently checked out branch, using:

git merge-branch --is-ancestor <commit> HEAD

NOTE: This will not match commits which have been cherry-picked.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
Changes in v2:
  * Fix import of (subprocess.)CalledProcessError

 layerindex/utils.py | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index 32be16d..aaf8c52 100644
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
+    except subprocess.CalledProcessError as e:
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


