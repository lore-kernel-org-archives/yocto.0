Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DDEC4167B
	for <webhook@archiver.kernel.org>; Fri, 16 Dec 2022 16:43:25 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web10.17827.1671209003349407751
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Dec 2022 08:43:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=a1wizWeK;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id n65-20020a17090a2cc700b0021bc5ef7a14so2961621pjd.0
        for <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 08:43:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pvaoAVSs3mVV6yNsYY/O0yzT/nAxAL7yNpIxJj2ahfM=;
        b=a1wizWeKrT+ylUtHj0hL0esNKVZzbzi3Ri9RQnHjRdWsUvC/tSh0uGj9Hoh6MunD9j
         YtHURJU9sokRnpgu9POZOUwKWL64nypjDT7Pb6i6vT+3L+IEoj1Ga8kDVEN54P6vDgGD
         3fhRhO+D8bxQ9hSdZ3MhQd1ogZ58eI6DHPLHWZftODoRbmdY3n3ZSYOT2m100UzA1cY8
         NrsY7HNtmViD56Bp/fAtrCk4xPNfktnZWUkL3LJlZvsu0jwuvLM3mOisiMK6w5psHZ5V
         bjHc1kjVMFs72H+dIFBteEBedSnWDUZqp9A3lfgk5IKSE7TTCmvihA8ttFp4iEWzpvSG
         dCOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pvaoAVSs3mVV6yNsYY/O0yzT/nAxAL7yNpIxJj2ahfM=;
        b=QDwHuZcs4jQC7qqg3SHqI4P8rMdZ/N68yukmrlzPb6sanwo/ImObiwDEKR/BNpKNah
         MRpDCge6XvNTDhDul6NS7UjrvftrbUEeRLBbViCeTAEscOr7IAl0E07XLQ8DLNHRwlpg
         wNCAodmhOY/0wza+Ki6mElBZj4dkZPZ7FBKLP2aD6VFn46rpSXSGkHXttgixaVIfsUw7
         x4HfHJ3HCntCPRAlGOlN10ElRu2hiNgPB6P7vtw/aWq4lTa9rFeEyWcWhRy3uyzfFZ/G
         GxozCGDU6n0vP2oxNGa/SrlqnhiwAVJRPxAuK0CFkhTOGyQWy2nxf+ZF4VvND9RLz6b4
         /YHg==
X-Gm-Message-State: ANoB5pkpDcAc9zpoqI2OqRYB2y0zh+pgE6yw2+FuHDNd9Yy5dWiBQ29Q
	JX1MEBifyZpuDL8tZm4FSeA7nSTyw2I=
X-Google-Smtp-Source: AA0mqf7MWpyIU+YwrchlOLY5VACQRYID9w6Gs364jGf0sWw0L/OS5oG0oDQ2sodAS01CLAzpZpCESQ==
X-Received: by 2002:a17:902:e0d1:b0:18c:bba:b8f4 with SMTP id e17-20020a170902e0d100b0018c0bbab8f4mr26554926pla.68.1671209002350;
        Fri, 16 Dec 2022 08:43:22 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:6325:4753:57d5:805f])
        by smtp.gmail.com with ESMTPSA id v1-20020a1709029a0100b001897e2fd65dsm1874588plp.9.2022.12.16.08.43.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 08:43:21 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 4/6] utils.py: Fix for is_commit_ancestor()
Date: Fri, 16 Dec 2022 08:42:53 -0800
Message-Id: <cbbbc7aab1eb77061739c63120536d2ff3d546d8.1671208436.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1671208436.git.tim.orling@konsulko.com>
References: <cover.1671208436.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 16:43:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58827

From: Robert Yang <liezhi.yang@windriver.com>

The runcmd() would print an "ERROR" on failure which causes confusion since
the failure is expected on old branches, so subprocess.getstatusoutput to fix
the problem.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
Minor rewording.
Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/utils.py | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index ed7fb47..6566710 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -243,16 +243,18 @@ def is_commit_ancestor(repodir, commit, logger):
         # check if commit is a sha1 hash
         if re.match('[0-9a-f]{40}', commit):
             # check if the commit is an ancestor
-            contained = runcmd(['git', 'merge-base', '--is-ancestor', '%s' % commit, 'HEAD'], repodir, logger=logger)
-            return True
-        else:
-            raise Exception('is_commit_ancestor: "commit" must be a SHA1 hash')
-    except subprocess.CalledProcessError as e:
-            if e.returncode == 1:
-                # commit is not an ancestor
+            cmd = "GIT_DIR=%s/.git git merge-base --is-ancestor %s HEAD" % (repodir, commit)
+            logger.debug('Running "%s"' % cmd)
+            ret, output = subprocess.getstatusoutput(cmd)
+            if ret == 0:
+                return True
+            elif ret == 1:
+                logger.debug('output: %s' % output)
                 return False
             else:
-                raise e
+                raise Exception('Failed to run command: %s: ret: %s, output: %s' % (cmd, ret, output))
+        else:
+            raise Exception('is_commit_ancestor: "commit" must be a SHA1 hash')
     except Exception as esc:
         logger.warn(esc)
 
-- 
2.34.1


