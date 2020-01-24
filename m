Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
 by mx.groups.io with SMTP id smtpd.web09.7128.1579830750786043798
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 17:52:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QkB/vr5J;
 spf=pass (domain: gmail.com, ip: 209.85.214.193, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f193.google.com with SMTP id q13so123476pls.1
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 17:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=natqHxtMijizuwvpFbZ5XTKy6xJH6bf/nASmROCnBl4=;
        b=QkB/vr5Jfxu7Bcq2h6rtgOJp2w96NqcoM+XhH6GckqfQds8c/7rtBFQR+nyL4SJu+K
         NnXVxOQEJTe407MfupPPj7G0pup8F41eGC5bKd7+NgYyw8QKM+0Sx6gYhPdnmwkQr7QS
         IULp7oagQlgm9mRa6VPX2v9wo8bHDNOjla6w80j+orVDOO8JJUMKfb5qmNbvlnuw3SYg
         w4UdfRNo4VfBiJ7RPoPhMm5H0IF4fClK+WDiaFNIimbdWcBCe5RmfHtd78bs5mH2/3Ki
         LpO12cMMsW2KImsfitNQOiDTHm25N7/wOL43KyFqjY3NX7ozJMw+n1a0cVfjU584skYc
         hRWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=natqHxtMijizuwvpFbZ5XTKy6xJH6bf/nASmROCnBl4=;
        b=codhPaMFvwCIs83+uzcjsd9d/XjY1JBmEoh427U7tAXU65vGJljwY+zVi7p4Z2PJE4
         EAwSpLOIGPHxA4MnQUKvHB97Q07xrCdA51wnvrV3McaF9kazC0hI0aetZzbnMF8U4DDE
         4qhfY0692qK+UisQeOirRT5qdiQk8b4KBqCg1JSidHlDxJTHSp0VvoIRbclDoSf8ElWv
         +qWaPHBcDYgNxjRje2dY4H0dHIuX3q49pih9ySM/QLbJwg4kI1Kb0SUeyTPtpqCW71TF
         cDRE7Ou4U2fWHpCAqk4u4/R22FWB4qcMBBkhWtREZLpAHHAyOMn6lN5J5XOmdRiMoHVj
         kaFg==
X-Gm-Message-State: APjAAAU05Y9/qnS+f9QeKJ+LW3epbh+b8vPI3EUp3tMYxGhguYsAmsZb
	OyHn9Y7YwrKjBfBjKpIHH/WoAAw5
X-Google-Smtp-Source: APXvYqzWlr4RPw7vR4s/qPbCDN74v8bAMC7m6fMMqzZb7khe6jMNePJAPJ6QnTa0U45ZHXC9/Bw2YA==
X-Received: by 2002:a17:902:9890:: with SMTP id s16mr1003702plp.77.1579830750062;
        Thu, 23 Jan 2020 17:52:30 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:682c:76b9:6d8a:bbd2])
        by smtp.gmail.com with ESMTPSA id h6sm3977553pfo.175.2020.01.23.17.52.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 17:52:29 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [zeus][meta-security][PATCH] fail2ban: fix runtime error
Date: Thu, 23 Jan 2020 17:52:28 -0800
Message-Id: <20200124015228.15801-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

use success/failure calls in initd/function

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/fail2ban/files/initd | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-security/fail2ban/files/initd b/recipes-security/fail2ban/files/initd
index 4f4b394..586b3da 100644
--- a/recipes-security/fail2ban/files/initd
+++ b/recipes-security/fail2ban/files/initd
@@ -39,9 +39,9 @@ start() {
     RETVAL=$?
     if [ $RETVAL = 0 ]; then
         touch ${lockfile}
-        echo_success
+        success
     else
-        echo_failure
+        failure
     fi
     echo
     return $RETVAL
@@ -53,9 +53,9 @@ stop() {
     RETVAL=$?
     if [ $RETVAL = 0 ]; then
         rm -f ${lockfile} ${pidfile}
-        echo_success
+        success
     else
-        echo_failure
+        failure
     fi
     echo
     return $RETVAL
-- 
2.17.1

