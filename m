Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9FB9C433EF
	for <webhook@archiver.kernel.org>; Sat, 25 Sep 2021 19:34:51 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web09.10560.1632598490970466407
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Sep 2021 12:34:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=yg51Gk+y;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.174,
 mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f174.google.com with SMTP id d207so32506388qkg.0
        for <yocto@lists.yoctoproject.org>;
 Sat, 25 Sep 2021 12:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=W7rSUKN0PRm+kCa8CyT24kb3Pj8+X8nTufziHhd6uN0=;
        b=yg51Gk+yPA0qjfTJUy4sD22yOQddXZcjTMcgaJvzatWZaVqsNMTI/jEmqwYK72TQwH
         jKEIEtB4tRCltXk8IRY+NQ1FRWAiEb+84VT5zoxxb+IrwE1wnBlstm0N2vbcVFCY8UML
         L8T+Aj75q1wzLD4J0mQyu1AWqvZZ1XiSQZ8AARvUoZM7QBHj2LQpdjKUmiixAC0I18ke
         6u3tE4/UfcvkVO7qL++BbT0oY1gbJG1HeKnglUaf8/cp7juz2QZqjqxTdOfzXwuiFh9d
         4cm2myUbJIRtj4p2SeWgBrfZCah6KEvZew152KoccSDgEzWvqg60on5+Yhlw0fapoGDb
         bIfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=W7rSUKN0PRm+kCa8CyT24kb3Pj8+X8nTufziHhd6uN0=;
        b=rUqSQ8VuwXQGY0ABBgHloleNl+ZSSYsspqS+BvUslGhT4y+jIi1zi7yBShJLnF2xng
         BXT/N5POWDfSQU5TxHHPL7LBOW47NS7f5Fv3bdfO4L/rOLfglBxxqJGC+Dlb24xUGOtv
         WvSArE6VUGvpjxx+mvkOG1CGYvwI9d/GcHCRxlBY+sMUDhf55C9flsi1nWyfBtsXDXKB
         8SGfhFuRQoM3TYiIcFwrp96K45qWCYDRg76LqELBFWqShXSzdSPvpkcW2FdAxs8P5VQh
         bOqzKAR4clklvt9A2F031zXtRxWW1lmI88+9O+8WJBfPHWkIELHm3LG95aozzVr1xicr
         xXwQ==
X-Gm-Message-State: AOAM530BSpH/uWasW+i5s9JGAoYZ93HPyDw3GsIeJk8MBgH/qdOgn61L
	nGj0jAqBpS5JFmda/F7gXPmhxQiXfm598w==
X-Google-Smtp-Source: 
 ABdhPJw/w8a8MZ9870eA525R4KXWIMkvKnBDnsLV0Fh2A/xUPKjpZV2jzJJdfZk/8mKBUpk78DvzFg==
X-Received: by 2002:a37:b606:: with SMTP id g6mr3360778qkf.328.1632598489698;
        Sat, 25 Sep 2021 12:34:49 -0700 (PDT)
Received: from localhost ([2605:a601:a650:b700:5036:3ae8:708d:bad0])
        by smtp.gmail.com with ESMTPSA id
 r13sm9503177qkk.73.2021.09.25.12.34.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Sep 2021 12:34:49 -0700 (PDT)
From: Jon Mason <jdmason@kudzu.us>
X-Google-Original-From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] qemuzephyrrunner.py: use os._exit instead of
 sys.exit
Date: Sat, 25 Sep 2021 15:34:48 -0400
Message-Id: <20210925193448.15164-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Sep 2021 19:34:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54852

sys.exit(0) can cause an error to be reported when the child exits, even
though not an error.  Since this is a child process, os._exit(0) is the
proper way to exit and not cause this issue.

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 lib/oeqa/utils/qemuzephyrrunner.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/oeqa/utils/qemuzephyrrunner.py b/lib/oeqa/utils/qemuzephyrrunner.py
index a1ed30be1ca8..7b486ce8af3f 100644
--- a/lib/oeqa/utils/qemuzephyrrunner.py
+++ b/lib/oeqa/utils/qemuzephyrrunner.py
@@ -191,7 +191,7 @@ class QemuZephyrRunner(QemuRunner):
             r = os.fdopen(r)
             x = r.read()
             os.killpg(os.getpgid(self.runqemu.pid), signal.SIGTERM)
-            sys.exit(0)
+            os._exit(0)
 
         bb.note("qemu started, pid is %s" % self.runqemu.pid)
         return self.create_socket()
-- 
2.20.1


