Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web08.3596.1631238562865494156
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Sep 2021 18:49:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=B2mpB0Vo;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id q3so154825plx.4
        for <yocto@lists.yoctoproject.org>; Thu, 09 Sep 2021 18:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2xfyj2PuiXBysJYexOqiib2I8hjMvnFGWFnspQtt5YM=;
        b=B2mpB0Vo4qEao3JEUHtbflmWCUR9ETOa0joZvr2zh+HEmFMNMck5Arp3bkeBtxVgRg
         Mc3hIEI8YgbvkA6KCxPhhMHlfVyOWnl5qDUTh9KbTiyyeNITuLU+XgukHuHUQXv9WsEe
         v1HlpfoKcK6tfIwkmB8P+GXiq/bGnkHStmGFE+nmmkixGVWopU5Y6NuHPvjrwgrQfBD8
         8/b5l7ZjPyrm58RFD0tWX9UTIeBKJZHy2Eugip9xsDz/QZtIxs1BXbm/b9CQmMdZl6Rw
         Z81Q8iciKZMoipdR76TWd6yEw8MORXK6uCjGIyPBTYkpoQiw7YZDPkcKn4Z/6fO/4XoE
         RgCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2xfyj2PuiXBysJYexOqiib2I8hjMvnFGWFnspQtt5YM=;
        b=gtYgjJFJm4ATdZR7KuvssN/pXHzEmxJRHbXYEIyVk/Qp3iFA6yrAmoZPP2ilI5R9rJ
         E2AVZCLLjXKRxgCHP+uEMjVdrilwUycelgUJXE1N3I29VdeS1wM5yl68zmGPrVoc/pm4
         FzIIUW0YsLkoyCuYbCrdDdb3QgWIy1Lc0ZFryRmF9Z4x0wQghGseIOjpAw40b/Qsch5c
         ohNMDC/k0jXq80aTAbHuWhPOI2pXlFYT1Wc+rUdOawnD5snpoP6eUxLQcCSsQ62vn3+2
         Y7hLy7V0jtnTWvNpjHMjUatGTTKvK4h57cubrI2bjalNcKV8C6nKHmRWyE8VLDdvIT1p
         isAg==
X-Gm-Message-State: AOAM533PD63ruxC34jMwhUOtz0JOkvYVYiFVlvvmhXJuPUZBJf9y2870
	2M8Q5bnUli5COsQcpOvETKZwL8I4ph0=
X-Google-Smtp-Source: ABdhPJytOkZIKB4bcbdQS0q77+GBy1sgIOuQtDNeNJET/hjqfOb/YDmjzX4rQdkYuk879K1uZIh4mQ==
X-Received: by 2002:a17:903:183:b0:13a:1a0c:35f6 with SMTP id z3-20020a170903018300b0013a1a0c35f6mr5326729plg.69.1631238561953;
        Thu, 09 Sep 2021 18:49:21 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.caveonetworks.com ([2601:202:4180:a5c0:9fd1:b728:fff3:766f])
        by smtp.gmail.com with ESMTPSA id 77sm3409940pfz.118.2021.09.09.18.49.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Sep 2021 18:49:21 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][dunfell][PATCH] linux-%_5.%.bbappend: drop recipe
Date: Thu,  9 Sep 2021 18:49:19 -0700
Message-Id: <20210910014919.2422514-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 833ae34c8f3222358f65e8ee3fdbac565485694e)
---
 recipes-kernel/linux/linux-%_5.%.bbappend | 4 ----
 1 file changed, 4 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-%_5.%.bbappend

diff --git a/recipes-kernel/linux/linux-%_5.%.bbappend b/recipes-kernel/linux/linux-%_5.%.bbappend
deleted file mode 100644
index 6bc40cd..0000000
--- a/recipes-kernel/linux/linux-%_5.%.bbappend
+++ /dev/null
@@ -1,4 +0,0 @@
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "yama", " features/yama/yama.scc", "" ,d)}"
-KERNEL_FEATURES_append = " ${@bb.utils.contains("IMAGE_CLASSES", "dm-verity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
-- 
2.25.1

