Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web08.1389.1616632797185778405
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:39:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=PA2pX5hO;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.174, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f174.google.com with SMTP id m7so86652pgj.8
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=jTWiksMN1eChqX5CzCX40YftXmLCUHKLegIvZp6qtus=;
        b=PA2pX5hOSDyCtyY9x9fnQFA6o8Z8yD24vC3uw72dmjanSqaQyJSns/YnVl/4LbWIbv
         PahFkde6srqH4MBkc7/wDB/Ymv71xZY/PO9XRsOPFYlABSl68piuvoPUYxdtxHQ2Rxmf
         FkP52wEp1vrpEzZyeozbDBcX0/5RyNpISPZYX0l25JZkbsTov//28fE/m8oU1fo7RT94
         2LUStXK7N4wDm55IwB0xF/n0JXRzaILy13rLHJ0cWA47bl50NDwL6QW3Xmz2vJ2ZH4yt
         jvO5lua+VTqRDJpd8zhFwC+GbECj4WqOR6jcwRjljlN1t5fdvG3wSHFAvA+tjaL86zUq
         6y5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jTWiksMN1eChqX5CzCX40YftXmLCUHKLegIvZp6qtus=;
        b=lZGbMOiDuFzM9HyNBQ+nk5yF3334Ch6w1ASo37dSd2N28S69qFxh0RmZyho0OFZfa9
         9OIm8pR+GPzJQfD1MK1fhFt/J8oAUVTeiJkhfH7lb5NW1d593T2ZE5KGLlZ+f5H5Ad9S
         lrc8sT7A2CelFxwYU/I4Y3I+dlQxbY8Lt2JVC6E5iW4/LjXiMnQtxWg4y9Rqhus8Diph
         rZRoEwJZCkkELSz0nNYhPnG05DqSlrz85Zu/fCvXprtejOyCjvafO/nXaOSgYtD9eJn7
         4TANl5MBfalhPMKP7Itw+dY57EZeU35U1sELe1hLtAn+4xhDCE1OKw+AXC6kGY5698fd
         +lMw==
X-Gm-Message-State: AOAM533+mpFZDlaFMcZVyNXuOmTL0zTv4nNJG52DYknSABAOjHneLBVy
	qm3PGoEOFyUI1aziXfSiPxGlsIzPvkYmsRxr
X-Google-Smtp-Source: ABdhPJxmM6iIFVYGDZSWnBQ2o6KBkvbwo5wofBn0nq9n/VHeipWeu5Hqx/Du4+XwYX1pmvS1/NXoXw==
X-Received: by 2002:a17:902:c14c:b029:e5:cd82:a0b with SMTP id 12-20020a170902c14cb02900e5cd820a0bmr6363782plj.34.1616632796169;
        Wed, 24 Mar 2021 17:39:56 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.39.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:39:55 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 01/23] scripts: Add runqemu-renice.c for renicing runqemu
Date: Wed, 24 Mar 2021 14:39:10 -1000
Message-Id: <347bae056acff57ee70d8dedd121ed04e4e4c554.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 838be1a00c0383b63d1ab60aa991919404b82655)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/runqemu-renice.c | 44 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 scripts/runqemu-renice.c

diff --git a/scripts/runqemu-renice.c b/scripts/runqemu-renice.c
new file mode 100644
index 0000000..9003e35
--- /dev/null
+++ b/scripts/runqemu-renice.c
@@ -0,0 +1,44 @@
+/*
+ * Copyright (C) 2020 Richard Purdie
+ *
+ * SPDX-License-Identifier: GPL-2.0-only
+ *
+ * Needs sudo setcap 'cap_sys_nice=ep' renice
+ */
+
+#include <sys/time.h>
+#include <sys/resource.h>
+#include <sys/syscall.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <unistd.h>
+
+enum {
+    IOPRIO_WHO_PROCESS = 1,
+};
+
+#define IOPRIO_CLASS_SHIFT 13
+#define IOPRIO_PRIO_MASK ((1UL << IOPRIO_CLASS_SHIFT) - 1)
+#define IOPRIO_PRIO_CLASS(mask) ((mask) >> IOPRIO_CLASS_SHIFT)
+#define IOPRIO_PRIO_DATA(mask) ((mask) & IOPRIO_PRIO_MASK)
+#define IOPRIO_PRIO_VALUE(class, data) (((class) << IOPRIO_CLASS_SHIFT) | data)
+
+int main(int argc, char *argv[])
+{
+    int pid, rc;
+    if (argc != 2) {
+        printf("Please specify only the process PID to adjust\n");
+        exit(1);
+    }
+    pid = atoi(argv[1]);
+    rc = setpriority(PRIO_PROCESS, pid, -5);
+    if (rc != 0) {
+        printf("setpriority failed: %d\n", rc);
+        exit(1);
+    }
+    rc = syscall(__NR_ioprio_set, IOPRIO_WHO_PROCESS, pid, IOPRIO_PRIO_VALUE(2, 0));
+    if (rc != 0) {
+        printf("ioprio_set failed: %d\n", rc);
+        exit(1);
+    }
+}
-- 
2.25.1

