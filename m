Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web12.4981.1598672263922746459
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Aug 2020 20:37:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JbuKhkCo;
 spf=pass (domain: gmail.com, ip: 209.85.210.178, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id p11so1606295pfn.11
        for <yocto@lists.yoctoproject.org>; Fri, 28 Aug 2020 20:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=lz6QmbfxGR2/7nF+6kH+yuOGVfH/OSSBtrzDCnCIguQ=;
        b=JbuKhkCo8zwoMVs3T70VoOUqXhw0Boi5x1/Jo97fugZSpGJG6M8/Ks7cghuXn4OMiQ
         idNivFOp5JylN4GyNH9lmOPMdNeOQ3upTnAOUbOp7r3hYZEUicMeeGx+qpjQz0UTWNLM
         D93/9Sk52ZmYH06hWSTBmjwDALzT3ZWLiVHSQgKJiE0kq2onlg3N81UZJkD4xmmD6wPw
         BkvAp2eAIKJ4w/nFWThIIfin21KjrWrbOPx0FMJ+/BenVhkR+f2uvqND3ePNYjHEHRaf
         4asYoB/NeYisS8mQTlUOsVAekP+oHhqJL7gBKwWUBe+qy5Y+eGTGTQ1e60+y4ADP02Jh
         Z9ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=lz6QmbfxGR2/7nF+6kH+yuOGVfH/OSSBtrzDCnCIguQ=;
        b=IgWHncMcxklJB8wnLWsm1bLYJ0jdd/gVzamvgQA+FoeRcuznuM5LpWy6JX2q4CU/ez
         ebc2foePX/FMsq/4au428SV8orM8i08osHRyglQyZIl3pJ1RQaZopgwFie1zmD1R8h7n
         tVeCxujxgaICTYMsysvMB5vxmjweydK9XXtlzCSqZHrlhCrpPxuoS6BrFtCbLqazyigR
         d21Tbhrv4mC8bE+3ObxKPXSDVqpzgOkINO8ijZ8RrwlXU7gcsJmYynIFA/T9vZ76aRsK
         rqL86g7H4Z3JSWz24M0z5lbRy4/2EIWoSzFips3xoOojoSIDpeVdj8wrCNmE8rDj18bC
         z43Q==
X-Gm-Message-State: AOAM533NHpJzI/2ZKqUgXWZ6C+JfBnNe5zkXhm+Dn6wagTZcuLIyW0v7
	lBd4+qEXoYN4rBXZkwO0DXA/lR4yxE8=
X-Google-Smtp-Source: ABdhPJyHritTER+5jcz09Sjzev9L7HPZes7OAeoKDFjUxc7lzsMZYzMwO5iwwUNp63+FInAZxpPRAg==
X-Received: by 2002:a63:5361:: with SMTP id t33mr1262584pgl.245.1598672263157;
        Fri, 28 Aug 2020 20:37:43 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:990e:2404:2153:5c03])
        by smtp.gmail.com with ESMTPSA id e16sm926952pfd.17.2020.08.28.20.37.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2020 20:37:42 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] upload-error-report: add script to upload errors
Date: Fri, 28 Aug 2020 20:37:39 -0700
Message-Id: <20200829033741.23390-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 scripts/upload-error-report | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100755 scripts/upload-error-report

diff --git a/scripts/upload-error-report b/scripts/upload-error-report
new file mode 100755
index 0000000..56bd24e
--- /dev/null
+++ b/scripts/upload-error-report
@@ -0,0 +1,26 @@
+#!/bin/bash
+
+ERR_REPORT_USERNAME=$1
+ERR_REPORT_EMAIL=$2
+BUILDDIR=$3
+
+shift
+shift
+shift
+
+if [ ! -e $BUILDDIR ]; then
+    exit 0
+fi
+
+cd $BUILDDIR/../poky
+
+if [ -d $BUILDDIR/tmp/log/error-report/ ]; then
+    echo "$ERR_REPORT_USERNAME" > ~/.oe-send-error
+    echo "$ERR_REPORT_EMAIL" >> ~/.oe-send-error
+
+    . ./oe-init-build-env $BUILDDIR
+
+    for x in `ls $BUILDDIR/tmp/log/error-report/ | grep error_report_`; do
+        send-error-report -y tmp/log/error-report/$x
+    done
+fi
-- 
2.17.1

