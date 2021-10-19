Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE703C433F5
	for <webhook@archiver.kernel.org>; Tue, 19 Oct 2021 20:10:03 +0000 (UTC)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
 [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web08.15503.1634674202897315513
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Oct 2021 13:10:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=R9cC7TpH;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.180,
 mailfrom: steve@sakoman.com)
Received: by mail-pg1-f180.google.com with SMTP id c4so13355648pgv.11
        for <yocto@lists.yoctoproject.org>;
 Tue, 19 Oct 2021 13:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ZUX3c2vFXM7d1TorR7wQTCphIqwOpRUH+9NizpAAASI=;
        b=R9cC7TpHawqki1Lv+6L31DpLuwqi9xeArLDozbgvhFXzrFtyM+O28A6wlcOPPy65Ln
         HkddWAtwuZZevc/8CauJGxW0QI6HjWNs7eryUbX5vg39iHg2kibhD2HgSO1mTra5Wb8D
         EFg3n75If6DJLkzDng3m6S80uxc25L7sRVCrXDvvriMoQEbxEzV+gt4ZVvHxMEzE5MBu
         ETWTu3D7k3nGZ4gtUGph7Oz1csKKhwE60FDOqlpmwnFNIJEPQGY2GLST/viunrLf+T/o
         ZavwbqMM9Wpbl155K0qCOLlNvpm9mbFdWPTYXOsV2YZ59a9aKRO+N09FYnqAofnRkcjQ
         2W6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZUX3c2vFXM7d1TorR7wQTCphIqwOpRUH+9NizpAAASI=;
        b=G6/l3TlxSuJCJUZZJHN97uVVzGyRaeomtybYANQcKphJOYDE6MqhoSJhYpqRqwCGsp
         gd0+NJqpLoJ9LiergCXF78NoqFg2yP7r/K2ieuAUqa1t9J2lzDLwLAfaxCD6lJMDqFEz
         98LxCINKLLrACWde9p7avOwYW0PEPT4nMR5+OXePL4L6eGc21ulY33ne7l+sTq+2mLIB
         2JV9Gqt8Zyv73pztG2frWQUTWwtzMaLJFW8+MthLUkmRF+eWtEF7JelI4NvrEtYnlHeg
         53QuFMk17pgVNDZ8+HRqcqyV8RctPVLjZ6q0EUEw7gzvcHtx9YCFQNmgKujpfx11U9z4
         d16A==
X-Gm-Message-State: AOAM531bQN+TSbDGkrQh40Fn0G4Mx3eLoTUYSD+8VK1UD4OCBzAMhbk9
	cqGNaQkuM63Cfn4A8kOGLsN5ZUws4TTYelUuwu0=
X-Google-Smtp-Source: 
 ABdhPJzihrbPM2gzEhCykLzkqt0LV+G3nCR9MtixADvCTiasVjrFpsKe7JFYQa11oooG9WlMhPf30A==
X-Received: by 2002:a05:6a00:216f:b0:44b:6212:4967 with SMTP id
 r15-20020a056a00216f00b0044b62124967mr1928212pff.23.1634674201951;
        Tue, 19 Oct 2021 13:10:01 -0700 (PDT)
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com.
 [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id z71sm85819pfc.19.2021.10.19.13.10.00
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 13:10:01 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 3/3] config.json: set max load in
 PARALLEL_MAKE
Date: Tue, 19 Oct 2021 10:09:29 -1000
Message-Id: 
 <70e0dcfda97788877942b3d681f39fcecafa4913.1634674038.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634674038.git.steve@sakoman.com>
References: <cover.1634674038.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Oct 2021 20:10:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55105

From: Trevor Gamblin <trevor.gamblin@windriver.com>

Add "-l 52" to PARALLEL_MAKE in config.json to limit Make and Ninja
builds based on the detected system load. With this option added, if
either tool has at least one job running and detects that the system
load exceeds the given value, it will wait until either the system load
average drops below that limit, or until all other jobs are finished
before starting additional jobs.

Since most autobuilder machines have 56 cores, this should help keep the
system from being overloaded during builds.

Reference: https://www.gnu.org/software/make/manual/html_node/Parallel.html

Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 5c5fc7bcd221427d34bbac80c9bad315fb6de4df)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index fa475e3..cbb0f5b 100644
--- a/config.json
+++ b/config.json
@@ -43,7 +43,7 @@
             "PREMIRRORS = ''",
             "BB_GENERATE_MIRROR_TARBALLS = '1'",
             "BB_NUMBER_THREADS = '16'",
-            "PARALLEL_MAKE = '-j 16'",
+            "PARALLEL_MAKE = '-j 16 -l 52'",
             "XZ_MEMLIMIT = '5%'",
             "XZ_THREADS = '8'",
             "BB_TASK_NICE_LEVEL = '5'",
-- 
2.25.1


