Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70F26C7EE23
	for <webhook@archiver.kernel.org>; Tue, 23 May 2023 18:38:12 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web10.10785.1684867086776116862
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 May 2023 11:38:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20221208.gappssmtp.com header.s=20221208 header.b=sTxu+AHH;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.174, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-64d2da69fdfso130128b3a.0
        for <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 11:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20221208.gappssmtp.com; s=20221208; t=1684867086; x=1687459086;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A1b5EVh2bPAJpjvQEwu2aclNFhwstF01xFkDrrDiUSA=;
        b=sTxu+AHHsXEJvxj34jHkfIwgPnuJJBqXH2mMqP3aq6ucsx9NdqQ8VGAi8PQKSSPKLR
         1+d93POb7rR7I/R8wmdQUwdSV4jXOE7Pm00H/neKMn2ccJMgMNxp2HMwYFFnFIZ6PAoa
         G4DXN+pHCMp36m3rTq451Rd0SprCqKiQudQURfyTUDmRYMkYayPkZwFBLbBoCKaHPjvA
         C8C/De5sKkkTO1OWpq1NgQxRRgrrZdo6mn0aEak6V+lcZZ1R1g1HUkb4zPfLJ1PsAjUL
         B1YbYrenjmXMi66QAuxSBiucLM/N5cVTZxxC92X8H7hzCYqFfS/xu3cx+/JLPmZSPn91
         1ghQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684867086; x=1687459086;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A1b5EVh2bPAJpjvQEwu2aclNFhwstF01xFkDrrDiUSA=;
        b=bUnJIMzS7CCl7AX7gkou6cx9d5lnQrc2dU3QCQKzaNHKzWiTnRqEda1zEEJsezWoIh
         tS3l4cT7muz//J3tzNepCplJ2MMEdygVvkNrsUnh3HRvN96U7u5PrMCDl4n9dSIpm6Jm
         z8hjhXfj/Vxi6PT8b7KTm1+Ks1ok01wTdN89Sglq1hK/A57qsyHEzJRfEo2t+SyqvYS3
         Y8ItkfQ7qpe/3Hz4p9qCw/nJSfxpUIzTbe9RVcS04Tg2DZ3fAyUt6vrz/MoWYlWoEAgc
         L53KFY8h3GjGFTWb+E4MtVVhWPHhYl0wJ0SMnPBltz1BlOx5JEOXhEZEn8TJKSr/72TE
         tDJQ==
X-Gm-Message-State: AC+VfDwfLGJl5iVTcTNAFeGpPLaNg9MMCEt1gHubwWpEdhZ/zgtaNLWi
	wmAde2pNrH0MCKmXwDcv5++QjC3ggOB+ZEU0UJk=
X-Google-Smtp-Source: ACHHUZ7XFTlCmWXC1r1Vw0ZlzMfUeE73okr56HmgwwKxRpOutOIFvF/LI0x8bp9+/BCzEo1l2TP60w==
X-Received: by 2002:a05:6a00:2d1a:b0:64f:3fc8:5d16 with SMTP id fa26-20020a056a002d1a00b0064f3fc85d16mr13083pfb.8.1684867085472;
        Tue, 23 May 2023 11:38:05 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-234-106-30.hawaiiantel.net. [72.234.106.30])
        by smtp.gmail.com with ESMTPSA id d1-20020aa78681000000b0064ccfb73cb8sm6099010pfo.46.2023.05.23.11.38.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 11:38:04 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] schedulers: update to add mickledore
Date: Tue, 23 May 2023 08:38:00 -1000
Message-Id: <f57cb8e05ff01c2bd2718b684198eeedd56a7737.1684866967.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1684866967.git.steve@sakoman.com>
References: <cover.1684866967.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 18:38:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60102

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 schedulers.py | 25 ++++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/schedulers.py b/schedulers.py
index 24cbd70..2f7a8ab 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -60,6 +60,21 @@ branchdefaults = {
         'branch_meta-openembedded': 'master',
         'branch_oecore': 'master',
     },
+    'mickledore': {
+        'branch': 'mickledore',
+        'branch_poky': 'mickledore',
+        'branch_bitbake': '2.4',
+        'branch_meta-arm': 'mickledore',
+        'branch_meta-agl': 'next',
+        'branch_meta-aws': 'mickledore',
+        'branch_meta-gplv2': 'master',
+        'branch_meta-intel': 'mickledore',
+        'branch_meta-mingw': 'master',
+        'branch_meta-openembedded': 'mickledore',
+        'branch_meta-ti': 'master',
+        'branch_meta-virtualization': 'mickledore',
+        'branch_oecore': 'mickledore',
+    },
     'langdale': {
         'branch': 'langdale',
         'branch_poky': 'langdale',
@@ -377,7 +392,7 @@ def parent_scheduler(target):
             name="branchselector",
             default="master",
             label="Release Shortcut Selector",
-            choices=["master", "master-next", "abelloni-next", "mut", "langdale", "kirkstone", "honister", "hardknott", "gatesgarth", "dunfell", "zeus", "warrior", "thud", "sumo", "rocko", "pyro", "morty"],
+            choices=["master", "master-next", "abelloni-next", "mut", "mickledore", "langdale", "kirkstone", "honister", "hardknott", "gatesgarth", "dunfell", "zeus", "warrior", "thud", "sumo", "rocko", "pyro", "morty"],
             selectors=branchdefaults),
         util.BooleanParameter(
             name="swat_monitor",
@@ -443,9 +458,9 @@ schedulers.append(sched.Nightly(name='nightly-check-layer', branch='master', pro
 schedulers.append(sched.Nightly(name='nightly-metrics', branch='master', properties=parent_default_props('metrics'),
                   builderNames=['metrics'], hour=7, minute=0))
 
-# Run check-layer-nightly twice a week for langdale
-schedulers.append(sched.Nightly(name='nightly-check-layer-langdale', properties=parent_default_props('check-layer-nightly', 'langdale'),
-                  builderNames=['check-layer-nightly'], dayOfWeek=[2, 5], hour=2, minute=0, codebases = {'' : {'branch' : 'langdale'}}))
+# Run check-layer-nightly twice a week for mickledore
+schedulers.append(sched.Nightly(name='nightly-check-layer-mickledore', properties=parent_default_props('check-layer-nightly', 'mickledore'),
+                  builderNames=['check-layer-nightly'], dayOfWeek=[2, 5], hour=2, minute=0, codebases = {'' : {'branch' : 'mickledore'}}))
 
 # Run check-layer-nightly twice a week for kirkstone
 schedulers.append(sched.Nightly(name='nightly-check-layer-kirkstone', properties=parent_default_props('check-layer-nightly', 'kirkstone'),
@@ -467,7 +482,7 @@ schedulers.append(sched.Nightly(name='nightly-auh', branch='master', properties=
 
 # If any of our sphinx docs branches change, trigger a build
 schedulers.append(sched.AnyBranchScheduler(name="yocto-docs-changed",
-            change_filter=util.ChangeFilter(project=["yocto-docs"], branch=[None, "master", "master-next", "langdale", "kirkstone", "honister", "hardknott", "gatesgarth", "dunfell", "transition"]),
+            change_filter=util.ChangeFilter(project=["yocto-docs"], branch=[None, "master", "master-next", "mickledore", "langdale", "kirkstone", "honister", "hardknott", "gatesgarth", "dunfell", "transition"]),
             codebases = ['', 'yocto-docs', 'bitbake'],
             treeStableTimer=60,
             builderNames=["docs"]))
-- 
2.34.1


