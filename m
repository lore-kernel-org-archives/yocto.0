Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web10.47674.1622485976396641725
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 May 2021 11:32:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=c2LMjyS1;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id g24so7001913pji.4
        for <yocto@lists.yoctoproject.org>; Mon, 31 May 2021 11:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AHWw2e+teDXQqL2aFxCmo2HyDxrgqiVC2P2kc2Gp1mI=;
        b=c2LMjyS1DtMwOtpTscPt7DHL565fqMmef3o8IxYiUAZp+qdoF88UHlssuY4XFuIFj3
         ZxkPFSBS4+uQ5XoVAzGfwysR3OHgID1FvosnM4R6nCmKsxWsK6XmaDoRhs++5dqh+PlR
         8Z6PFwG53zVi1aSvdh97jcwCjGJbg+1HOO2+tWXgml6eHsDnq+zglpW+3NkNuYz3mdXj
         uVcs1XvsG4I4A45uLmK2yRKE+ElXhAVASUPeu6RBdSTggZN6R/EPxnDdk3nqsEkH4HKt
         EbOIL0CwPmvWkdoE92xuBIjarQJp1IT96uwZGDZaIJfOSTKcJ7nKjTrdATHpQW67wkLL
         WTAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AHWw2e+teDXQqL2aFxCmo2HyDxrgqiVC2P2kc2Gp1mI=;
        b=gJuUg83rAWJEzMCrNJPmDCVHTrNCsZKS/oAyF0rr4uqg3fCkpjMjjmQWW8PlspVaWm
         UyC5IePohZ8TRQhWD68X3cCjRdU9H8DN2eFgoKdRF3u7ZxchTMtB3Ixf+jzR8YPHAuWO
         Gj8cOutDfyqSLQxrBiA6K24NPhWZp4fERB1k52smGFMMMpOczbA+hmfcoiOpcvZgu1nE
         eyeNFdAlcVhEn38Ws/8EAByMpXMA8UkDXmML7NGk8UOcYq+O9AJjraypZObfrweOMsE/
         /AdIcjPLtp2k2gwvDmKbXRB94Y+hnk9IhvlZJOb4sBO0qNxFQZOPrzWDGXjg8Z+9hF74
         2uzA==
X-Gm-Message-State: AOAM531TJ2PlKT2ws1jOtysXHREeuQ2xMcMvuLvv0TK9i2teSkW985Qw
	brubtFowo0E7RwNKrXi3Fu1tPh1p4a96OQ==
X-Google-Smtp-Source: ABdhPJzV5adOTtpiS9F54LU09WmZiXqsVl+394X1n0YayqRh5dHynCCMTqd/9IJtvfLcpACAF0pEbg==
X-Received: by 2002:a17:90a:af85:: with SMTP id w5mr19892701pjq.115.1622485975426;
        Mon, 31 May 2021 11:32:55 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from kona.dnls.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id x19sm11803957pgj.66.2021.05.31.11.32.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 May 2021 11:32:55 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/4] linux-yocto: remove bbappend
Date: Mon, 31 May 2021 18:32:50 +0000
Message-Id: <20210531183253.963737-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto-dev.bbappend | 3 ---
 recipes-kernel/linux/linux-yocto_5.%.bbappend | 3 ---
 2 files changed, 6 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-yocto-dev.bbappend
 delete mode 100644 recipes-kernel/linux/linux-yocto_5.%.bbappend

diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel/linux/linux-yocto-dev.bbappend
deleted file mode 100644
index fa536d0..0000000
--- a/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
-KERNEL_FEATURES_append = " ${@bb.utils.contains("IMAGE_CLASSES", "dm-verity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
diff --git a/recipes-kernel/linux/linux-yocto_5.%.bbappend b/recipes-kernel/linux/linux-yocto_5.%.bbappend
deleted file mode 100644
index fa536d0..0000000
--- a/recipes-kernel/linux/linux-yocto_5.%.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
-KERNEL_FEATURES_append = " ${@bb.utils.contains("IMAGE_CLASSES", "dm-verity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
-- 
2.25.1

