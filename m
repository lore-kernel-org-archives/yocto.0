Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web11.34161.1622395107094987788
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 May 2021 10:18:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ik5iZECq;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id l10-20020a17090a150ab0290162974722f2so1815386pja.2
        for <yocto@lists.yoctoproject.org>; Sun, 30 May 2021 10:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CS7mt9l2WMkng9sNN4+CXaVVTHRLCleYoCUTBdxuC4k=;
        b=Ik5iZECqn+1lFQrSVZ4px2ja5lgnypmxxshgAeY3h+mn3gHw6cRcm9pnzBRyNeXMw8
         IfgQCqZXQ5RVA9OkEZGo7RLWlYznp6LQeZ362rtBcGLh0YDiLfWvBmnCD9RA248dA7bB
         SPvMUxB0rUPoAtCTYk7dnt9smBHT/hRB6HhsIGCbGDCaXlBhsTSWDNHjkAdbKJe1WFMx
         PhnMvGs+PNbgC2pluavqMLlmrq0ko8FL3sFRfn+8IZ29aEvrHBoUkCYSgFZH7/4hVf2g
         Yp7Dk2pm7Q0xAEgfMF9fShuG3HkSJlQdJy2KqwKSNlWvWSQggxPlkGRWKdn99/uaf+r1
         nxbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CS7mt9l2WMkng9sNN4+CXaVVTHRLCleYoCUTBdxuC4k=;
        b=ObMNv9aYj5aLELjk1ySo7X5dk3jJ8aO0l2FKi1YbV0LvIt7hNSqshsiqpbAxo+BFZc
         X/TgD1NAplHFWzqUyeUM/Zyd2KwVSMWjfPtp//aOboWcQh8q+bE4sPSJvL9y1M82RGvN
         VJgYsIAafrHxSKqyCpn7wcbrxY6QjzXP/+ASRbXEIy/5x1BYckuvg/4Tv21VGz2P7w//
         GVvc8WGAnKryTZ56RpR4Fwdfyu4x0VNa1kTD4dsG1L2Tg2TeBFj23XdYfmGS6pS/jMy0
         rztIinoQC6wEt+l2XuqtBvInMiU6HnWnjO1Nlb0T7h4nHb7btimzGhHL/YmIWLAmFHbD
         GtnQ==
X-Gm-Message-State: AOAM532HobPgKrynfSbX5jzcR3N7y3bqL7IrXhm5WwIKZtSYQjVJ7hzr
	OZ6R5TOR752mTrAIy34nLWFCJEG669Eerw==
X-Google-Smtp-Source: ABdhPJxPuw1miFdN/gnyOAvXL5ARccZmZBDSGetm3WtEAA/R6L0hpFxA7RUd7su+0TQiNkJX89XSPw==
X-Received: by 2002:a17:902:7401:b029:102:34f7:48f5 with SMTP id g1-20020a1709027401b029010234f748f5mr7136749pll.47.1622395106102;
        Sun, 30 May 2021 10:18:26 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id x1sm8572548pjk.37.2021.05.30.10.18.25
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 May 2021 10:18:25 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/5] busybox: drop as libsecomp is in core
Date: Sun, 30 May 2021 17:18:20 +0000
Message-Id: <20210530171824.571143-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.24.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/busybox/busybox/head.cfg      | 1 -
 recipes-core/busybox/busybox_%.bbappend    | 1 -
 recipes-core/busybox/busybox_libsecomp.inc | 3 ---
 3 files changed, 5 deletions(-)
 delete mode 100644 recipes-core/busybox/busybox/head.cfg
 delete mode 100644 recipes-core/busybox/busybox_%.bbappend
 delete mode 100644 recipes-core/busybox/busybox_libsecomp.inc

diff --git a/recipes-core/busybox/busybox/head.cfg b/recipes-core/busybox/busybox/head.cfg
deleted file mode 100644
index 16017ea..0000000
--- a/recipes-core/busybox/busybox/head.cfg
+++ /dev/null
@@ -1 +0,0 @@
-CONFIG_FEATURE_FANCY_HEAD=y
diff --git a/recipes-core/busybox/busybox_%.bbappend b/recipes-core/busybox/busybox_%.bbappend
deleted file mode 100644
index 27a2482..0000000
--- a/recipes-core/busybox/busybox_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-require ${@bb.utils.contains('DISTRO_FEATURES', 'ptest', 'busybox_libsecomp.inc', '', d)}
diff --git a/recipes-core/busybox/busybox_libsecomp.inc b/recipes-core/busybox/busybox_libsecomp.inc
deleted file mode 100644
index 4af22ce..0000000
--- a/recipes-core/busybox/busybox_libsecomp.inc
+++ /dev/null
@@ -1,3 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/busybox:"
-
-SRC_URI_append  = " file://head.cfg"
-- 
2.24.3

