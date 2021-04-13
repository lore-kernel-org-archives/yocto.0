Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.9660.1618322157172688919
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 06:55:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Rgo2Yg9I;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id u5-20020a7bcb050000b029010e9316b9d5so8800235wmj.2
        for <yocto@lists.yoctoproject.org>; Tue, 13 Apr 2021 06:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Hk8sq6h/G3CazDjKZhnT8Kqw+bYTFyuuuBp8IiLUGoQ=;
        b=Rgo2Yg9IVhpsS6dYhmWJQvk0AInvCl/2d8lZP7r48rP5Qa+CcyM5NMtqZTq+3E/e+q
         CZYNxW+ODssC228Mf3G1f0XrzpjqBqKTJv3Jo8wAxxpEH0a2zm63xV9tFeXqa5EI3dfC
         GA+nPCSDKOC4qu5WyIUVsaAopGX3vPA7qBggc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Hk8sq6h/G3CazDjKZhnT8Kqw+bYTFyuuuBp8IiLUGoQ=;
        b=b5YlFAMx2ubOrGmfBxRZL8cb+cNMMA8u9AOXXSsvtsopL4dMtzl09LZAzw95rszWh9
         sZG7GxIAWfbnTkRhbmkQqm+0Nxe7ZbvB9QuTCwtpF82QXPsyGzx3aI8fS6OssW9ao7jI
         86QTlkPm9wZkXZ5glgQrESxK81/DkuLnf4LIYECxUtqIHYazjRCM9yBUqBMhBRHYUZlU
         pFvCuKWmdIgGpmftpcDYggnh95KpcIHEyjjBt85WzoH9Tn5VApZ/xeGBDzrJhVdv1mJR
         SYWJazo8vhjNjCfsaj9DLrMEzb+8XWkX9rtUreG2lI/mNngpbQIZ+1TKKlUdnL81juTr
         DYCA==
X-Gm-Message-State: AOAM532lg8Sw4wzoHkPrnQDrqZ/MiGtv/TfiOtwxsknMXksajdY1/4n9
	EU54rlkA1/VJjB4rMX0K+9U6wuG5CaarLw==
X-Google-Smtp-Source: ABdhPJy4CmDrZN8tfVJKmF1632+cUi9xGFyY8ZoMtod1OOKT7uVCjRXXH7smNS5HfSR67z7YAKbItw==
X-Received: by 2002:a1c:5445:: with SMTP id p5mr127358wmi.5.1618322155416;
        Tue, 13 Apr 2021 06:55:55 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:cfa:4562:e70e:c00b])
        by smtp.gmail.com with ESMTPSA id c1sm5131586wrx.89.2021.04.13.06.55.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 06:55:55 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] [PATCH] config/schedulers: Add hardknott config for new release
Date: Tue, 13 Apr 2021 14:55:54 +0100
Message-Id: <20210413135554.1239393-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.py     |  1 +
 schedulers.py | 14 ++++++++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/config.py b/config.py
index 299f2aa5..903cb4b8 100644
--- a/config.py
+++ b/config.py
@@ -142,6 +142,7 @@ all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 
 # Worker filtering for older releases
 workers_prev_releases = {
+    "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora31", "fedora32", "fedora33", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
     "dunfell" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora29", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
     "zeus" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
diff --git a/schedulers.py b/schedulers.py
index 84792909..b8a73f10 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -169,7 +169,7 @@ def parent_scheduler(target):
             name="branchselector",
             default="master",
             label="Release Shortcut Selector",
-            choices=["master", "master-next", "mut", "gatesgarth", "dunfell", "zeus", "warrior", "thud", "sumo", "rocko", "pyro", "morty"],
+            choices=["master", "master-next", "mut", "hardknott", "gatesgarth", "dunfell", "zeus", "warrior", "thud", "sumo", "rocko", "pyro", "morty"],
             selectors={
               'master': {
                 'branch': 'master',
@@ -202,6 +202,16 @@ def parent_scheduler(target):
                 'branch_meta-mingw': 'master',
                 'branch_oecore': 'master',
               },
+              'hardknott': {
+                'branch': 'hardknott',
+                'branch_poky': 'hardknott',
+                'branch_bitbake': '1.50',
+                'branch_meta-arm': 'hardknott',
+                'branch_meta-gplv2': 'hardknott',
+                'branch_meta-intel': 'hardknott',
+                'branch_meta-mingw': 'hardknott',
+                'branch_oecore': 'hardknott',
+              },
               'gatesgarth': {
                 'branch': 'gatesgarth',
                 'branch_poky': 'gatesgarth',
@@ -354,7 +364,7 @@ schedulers.append(sched.Nightly(name='nightly-auh', branch='master', properties=
 
 # If any of our sphinx docs branches change, trigger a build
 schedulers.append(sched.AnyBranchScheduler(name="yocto-docs-changed",
-            change_filter=util.ChangeFilter(project=["yocto-docs"], branch=["master", "master-next", "gatesgarth", "dunfell", "transition"]),
+            change_filter=util.ChangeFilter(project=["yocto-docs"], branch=["master", "master-next", "hardknott", "gatesgarth", "dunfell", "transition"]),
             codebases = ['', 'yocto-docs', 'bitbake'],
             treeStableTimer=60,
             builderNames=["docs"]))
-- 
2.30.2

