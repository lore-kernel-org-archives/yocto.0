Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com [209.85.215.195])
 by mx.groups.io with SMTP id smtpd.web10.14658.1602252496840757030
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Oct 2020 07:08:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uWKyMksQ;
 spf=pass (domain: gmail.com, ip: 209.85.215.195, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f195.google.com with SMTP id 7so7242862pgm.11
        for <yocto@lists.yoctoproject.org>; Fri, 09 Oct 2020 07:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=xNZbbUtxp3Dsup11XTqE+9CFfF9Fd9fE4g1FEquJWcs=;
        b=uWKyMksQWjHtX5IL/ADaUppSo7IRNU9ZdpFDW38zRbdCSMyoMD4ilETYZjzJwVdCA4
         iP4AwyQbQDxeYrYCiwMW9ppw82VyLfN3+ci5GuQdD4+h1XQg3tspK9iMSo6ekFD22A42
         9SctYOx6WtolV97uW3EkPm5NLQ1sPz3UWU2KlwxuQ8/ASSl6sccS2OS9Pb6ew6U/g2nI
         DNBs2bOcHcpAucKa/yqRLt6HU56wI/R4RD58EvSzfR+m4PUPBwQgc74qwflwcTzwc0Pe
         Up6vTWC5RPsHerbgFj/hlZ5UGVp1zcAo821AX7JHNFTrTEb70vEBTCgdFhHyybDDTm/B
         JKkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=xNZbbUtxp3Dsup11XTqE+9CFfF9Fd9fE4g1FEquJWcs=;
        b=FF6lo7euGfzDgS21zjcvy9mUIpLBQtAA1x/V801bBecxkk0Kap0m/akVz/4reNZ7Wq
         kKvmjqNr4LDr1atE7MP935cMSND3r8niP24Wr8CToSQRRcTHVUwPqZqZ1kBAgZPSsbTC
         i2QSF6JeaKwdaD+J7P1OE81QRWFH9zPNNIytDfeWWwiHOhxBSL6Tois68uh6+xIK+06s
         Vlu3j7pJPTpg6uV59xT/7GgWOz+ifF2zJZqOhtP5Y7tuVQiqpu4ggBKrlFqnOIstmD7q
         v/ugQjweuiwwR8TdDd6ccwroar6BYKb/90w6shyC9MfNwPtwjIKcpjYsLfbKnI2pCrDX
         qmig==
X-Gm-Message-State: AOAM531NByp1N4Kqr5y72cQW+oNfk6RbrBJIrFJSwtypQvBn3sDk4TM4
	cNi3oum2yVF7zT+dLHjIC/SlUbqAzZ0=
X-Google-Smtp-Source: ABdhPJym7h/mPJPBTZknqZ0JaQYL5O3K3lXVv+hKGPSk2f0QZb6324DgsUQWF4qLX/8Wuux3TKsmpw==
X-Received: by 2002:aa7:8397:0:b029:13e:d13d:a07c with SMTP id u23-20020aa783970000b029013ed13da07cmr11900889pfm.19.1602252496258;
        Fri, 09 Oct 2020 07:08:16 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:f1c6:e45a:6950:664b])
        by smtp.gmail.com with ESMTPSA id k9sm10119710pfc.96.2020.10.09.07.08.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2020 07:08:15 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/7] ecryptfs-utils: fix musl build
Date: Fri,  9 Oct 2020 07:08:08 -0700
Message-Id: <20201009140812.21765-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201009140812.21765-1-akuster808@gmail.com>
References: <20201009140812.21765-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../ecryptfs-utils/ecryptfs-utils_111.bb          |  1 +
 .../files/define_musl_sword_type.patch            | 15 +++++++++++++++
 2 files changed, 16 insertions(+)
 create mode 100644 recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch

diff --git a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
index d8cd06f..4a99b5a 100644
--- a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
+++ b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
@@ -16,6 +16,7 @@ SRC_URI = "\
     file://ecryptfs-utils-CVE-2016-6224.patch \
     file://0001-avoid-race-condition.patch \
     file://ecryptfs.service \
+    file://define_musl_sword_type.patch \
     "
 
 SRC_URI[md5sum] = "83513228984f671930752c3518cac6fd"
diff --git a/recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch b/recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch
new file mode 100644
index 0000000..3b29be0
--- /dev/null
+++ b/recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch
@@ -0,0 +1,15 @@
+Index: ecryptfs-utils-111/src/utils/mount.ecryptfs_private.c
+===================================================================
+--- ecryptfs-utils-111.orig/src/utils/mount.ecryptfs_private.c
++++ ecryptfs-utils-111/src/utils/mount.ecryptfs_private.c
+@@ -45,6 +45,10 @@
+ #include <values.h>
+ #include "../include/ecryptfs.h"
+ 
++#ifndef __SWORD_TYPE
++typedef __typeof__( ((struct statfs *)0)->f_type )	__SWORD_TYPE;
++#endif
++
+ /* Perhaps a future version of this program will allow these to be configurable
+  * by the system administrator (or user?) at run time.  For now, these are set
+  * to reasonable values to reduce the burden of input validation.
-- 
2.17.1

