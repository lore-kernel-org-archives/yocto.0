Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web12.15204.1595702364924495148
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Jul 2020 11:39:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QeEwtHqs;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id lw1so333pjb.1
        for <yocto@lists.yoctoproject.org>; Sat, 25 Jul 2020 11:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=m8SLw7Z8HUh6+DNUcIoNYmNRxShiaiTE+O9usRWvlNI=;
        b=QeEwtHqsmlOHrLofIweBThWRJfqFL2Y2X8PjjqeY/AYD66n3gdgMYNud7OZGsO11Lq
         wfKwv41lVrNL6q1AeI1XXBJJCNCu7twjdmj70ZcjybhBmRVy5FB+nqWjJ4OSgUvC8EUN
         GrZnKAm648SQmhHRJZ7sObCjjD7naotNR3Dq1CcvhZh3tpD9BTbBa1+rRC9M4f5Ixyx4
         ir4w6SkhKT60unb9cGOJArU/fM5MCgrv/A1ZKbGNU0DT0yeYukumNIxZSM7+DxPFepWI
         /wuPwhEhhzbMlBd8hO4uUjoMUej2PyBdIrXXawRRxvj8NN/OtXBtH2EAbIh+qRahfsaA
         W9Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=m8SLw7Z8HUh6+DNUcIoNYmNRxShiaiTE+O9usRWvlNI=;
        b=QO+kzqaUKLCc3q6YyMS43gFzwqaDsmsRRwOP4coJ3mbQ1GOUk/w62a86fnX3WAzs0g
         dQMuUOt07zzxFbTMNEbnz1zOaAxQd8e+lG3dWEQ5wHmtIoEy7eksJqpHpbFWU/FxAzZG
         aWJaZDtDoYOgCZU/eg8dsNcPMvOJsqucnDHeNrecKceDUb9igfFxrGr10tQVneJ+Thqg
         v7o6lu52xyPrVp/CLCYjEkMiD2L4/aLs2uymv/n0Ne0nS05A7wacKhDX0Lqkh3Jex1xt
         chpJUTNtxj+DtRjqIjjAlBOU+/O1KeFu/UJOZfqTAv4Vekx8jrSkjCK3Ht8cjAOwQ7iA
         6APg==
X-Gm-Message-State: AOAM533XX9VUYTGGGZ3yPyQHZs6MHuo7JZ4FwqgAQXgm3+DeoTwoY+5e
	sP5V1HxJX9DtEulxRKSBF8pe0O+9eHs=
X-Google-Smtp-Source: ABdhPJyu/xiRKfbeNXXX07c54eoT91HpMGghreQVxarRdeYePxMl3IDVzmHXpT+ITksMuR9bSG0yFg==
X-Received: by 2002:a17:902:9b97:: with SMTP id y23mr13571654plp.189.1595702364262;
        Sat, 25 Jul 2020 11:39:24 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id 186sm10018456pfe.1.2020.07.25.11.39.23
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jul 2020 11:39:23 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] packagegroup-core-security: restore riscv64 for libssecomp
Date: Sat, 25 Jul 2020 18:39:21 +0000
Message-Id: <20200725183921.12160-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200725183921.12160-1-akuster808@gmail.com>
References: <20200725183921.12160-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/packagegroup/packagegroup-core-security.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 539ea2a..c6342fd 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -28,7 +28,7 @@ RDEPENDS_packagegroup-security-utils = "\
     python3-scapy \
     ding-libs \
     keyutils \
-    ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " libseccomp",d)} \
+    ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 ", "", " libseccomp",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pam", "sssd", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils", "",d)} \
     "
-- 
2.17.1

