Return-Path: <jebr@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83DF7C32771
	for <webhook@archiver.kernel.org>; Thu, 15 Sep 2022 18:43:55 +0000 (UTC)
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com
 [209.85.128.201])
 by mx.groups.io with SMTP id smtpd.web12.13993.1663267428273538242
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Sep 2022 11:43:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20210112 header.b=sMIlLW+8;
 spf=pass (domain: flex--jebr.bounces.google.com, ip: 209.85.128.201,
 mailfrom:
 3y3ijywqkbfqfaxnckkcha.ykiukypkheopo.ukypklnkfayp.knc@flex--jebr.bounces.google.com)
Received: by mail-yw1-f201.google.com with SMTP id
 00721157ae682-349e6acbac9so20015867b3.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 15 Sep 2022 11:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date;
        bh=JYPHTpufDrQ8wgLfx7jISPDkiSi/wpO31rKTo6DUZuU=;
        b=sMIlLW+8pZe2kmJtrndxS+QuIbakLJatcp5NU+KRuML8DLwldSVw6Mjtf6dd+8rpQk
         bJjIAZLyQXoMVJVcD0LvYuIpzpWPoCMlXzEQJiRsQCFOI/a4d0QCo/Xf7+iGiSmBVosS
         W1eAU/0//5iohZKOz4gg0cWkGl2Vt9LIS6D4LJ111CugOyknEt7WVoE9WT/AitAYaGuV
         igCZn1MbdxOep0hA9SI7VgqPylzvKaYmsiYWsVL3auCYM83ybL5D0sBzw0k4Ke+L5XRb
         O5ceyS2vy9NzI4LFZE9q4Ruy04Lo4Q0TTdMSS3Wf11h3+iCJSgWY/DsjMcfPY9vAWivj
         5D1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date;
        bh=JYPHTpufDrQ8wgLfx7jISPDkiSi/wpO31rKTo6DUZuU=;
        b=dE14qQFBbkPMFt+NmzCQ8SBIyE4L52LGZrADSrweG3SfVfEwhmJmJipHDJ6FUY5mZ0
         7gcf5BaqJkYKTxeqTZzR2RbkcXtYoeJA0/zBgaNtS07XBMWPww2PmqvGXGyuO7j22FHh
         xHat3Kya58AxlI5VldH35E6pbrG9c2bRiOYY3/EpOigrvWZJ6FlmM3pWKFl+tvQVUCIb
         6epjzDwYV/RX3mlzRUCXQvQsONiEvXdyo821ONqmdlEwTf4UWUUoOEtkNphPAVDjCilT
         RwAQi0bOSS3ltPH6PN7tOwdSgyjf+vBUs2jHgQWa2zNOb/8ucSAfZVjFgKFMbruShcQB
         fekw==
X-Gm-Message-State: ACrzQf3aL8JkKKyML92Bm+/5xP+NUu2lWNU03huF3dxh8M9qvGwZBp7M
	WZkWl6SBIdmbJL/XsRt1ZIJEkz2/MNpDK/K+94YvBl9/OOz93rfQs/8Inn6teDgBNN/cLKNLPNb
	QWkO0ZtYFajz4zCGwLnd0V6uZn4uaocFBXwQVOVcQg8jyv1XLLCq5GTbnYHSdwrMa
X-Google-Smtp-Source: 
 AMsMyM53lL+o2U1g7JDd60YZorLvkZiF2//RCaUx0u8hGG0nmhh/9/J7DtXhY5eF/StqzbS+dZZFIQMc
X-Received: from jebr.svl.corp.google.com
 ([2620:15c:2c5:13:75b3:b214:986b:2c79])
 (user=jebr job=sendgmr) by 2002:a25:d4e:0:b0:6ae:a4d0:4c8f with SMTP id
 75-20020a250d4e000000b006aea4d04c8fmr1105366ybn.336.1663267427397; Thu, 15
 Sep 2022 11:43:47 -0700 (PDT)
Date: Thu, 15 Sep 2022 11:43:38 -0700
Mime-Version: 1.0
X-Mailer: git-send-email 2.37.3.968.ga6b4b080e4-goog
Message-ID: <20220915184338.2868657-1-jebr@google.com>
Subject: [meta-oe][PATCH] externalsrc:git submodule--helper list unsupported
From: jebr@google.com
To: yocto@lists.yoctoproject.org
Cc: clabrado@google.com, edtanous@google.com, emilyshaffer@google.com,
	John Edward Broadbent <jebr@google.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Sep 2022 18:43:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58052

From: John Edward Broadbent <jebr@google.com>

Git has removed support for "git submodule--helper list".
https://github.com/git/git/commit/31955475d1c283120d5d84247eb3fd55d9f5fdd9

This change provides an alternate method for gathering the submodules
information.

Tested:
Build recipes with and without submodules

Signed-off-by: Carson Labrado <clabrado@google.com>
Signed-off-by: John Edward Broadbent <jebr@google.com>
---
 meta/classes-recipe/externalsrc.bbclass | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/meta/classes-recipe/externalsrc.bbclass b/meta/classes-recipe/externalsrc.bbclass
index ce753fce76..06a9548a20 100644
--- a/meta/classes-recipe/externalsrc.bbclass
+++ b/meta/classes-recipe/externalsrc.bbclass
@@ -230,15 +230,16 @@ def srctree_hash_files(d, srcdir=None):
             env['GIT_INDEX_FILE'] = tmp_index.name
             subprocess.check_output(['git', 'add', '-A', '.'], cwd=s_dir, env=env)
             git_sha1 = subprocess.check_output(['git', 'write-tree'], cwd=s_dir, env=env).decode("utf-8")
-            submodule_helper = subprocess.check_output(['git', 'submodule--helper', 'list'], cwd=s_dir, env=env).decode("utf-8")
-            for line in submodule_helper.splitlines():
-                module_dir = os.path.join(s_dir, line.rsplit(maxsplit=1)[1])
-                if os.path.isdir(module_dir):
-                    proc = subprocess.Popen(['git', 'add', '-A', '.'], cwd=module_dir, env=env, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
-                    proc.communicate()
-                    proc = subprocess.Popen(['git', 'write-tree'], cwd=module_dir, env=env, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL)
-                    stdout, _ = proc.communicate()
-                    git_sha1 += stdout.decode("utf-8")
+            if os.path.exists(".gitmodules"):
+                submodule_helper = subprocess.check_output(["git", "config", "--file", ".gitmodules", "--get-regexp", "path"], cwd=s_dir, env=env).decode("utf-8")
+                for line in submodule_helper.splitlines():
+                    module_dir = os.path.join(s_dir, line.rsplit(maxsplit=1)[1])
+                    if os.path.isdir(module_dir):
+                        proc = subprocess.Popen(['git', 'add', '-A', '.'], cwd=module_dir, env=env, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
+                        proc.communicate()
+                        proc = subprocess.Popen(['git', 'write-tree'], cwd=module_dir, env=env, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL)
+                        stdout, _ = proc.communicate()
+                        git_sha1 += stdout.decode("utf-8")
             sha1 = hashlib.sha1(git_sha1.encode("utf-8")).hexdigest()
         with open(oe_hash_file, 'w') as fobj:
             fobj.write(sha1)
-- 
2.37.3.968.ga6b4b080e4-goog


