Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web11.3859.1623721878696821396
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jun 2021 18:51:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EFr8QwO+;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id v12so7601979plo.10
        for <yocto@lists.yoctoproject.org>; Mon, 14 Jun 2021 18:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sybxgPKSgv+trcISpdM78riUO/Wr2w1MdFBrAzfcqGU=;
        b=EFr8QwO+HuNM/C/ISxqp6nfDMoOBvqe0qcpdtAzhqqhU/Z/zxMWGna5aay8sZe6FuG
         xoSQ66BzeTClqaPO0ZZuaGe+8Rm76M2d70nc/quKYik+FA5BUtRAyqN18XKQY213QgLW
         m6nn4+/2XF94rqSl8D51E8RTTtiDwURwToq/2rdXCCN7zUMQXUmp16LiDWQttpjxfL9O
         5vHJE3ZOIk3UyRnLkT31syhHIS1R96+cfveaieiRV3YE5wHXJ3s5Ft+wuqwrgeBQ7ZT8
         Br4GE+/SCAxIu3llQKPdZcizucSzbseeH09QyALDbK6iyn9HylLv88W5Bc3sTeEy6DDD
         uHdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sybxgPKSgv+trcISpdM78riUO/Wr2w1MdFBrAzfcqGU=;
        b=X8VeDcrZVnEA7gqtv/V0/vnYZRTMHdwAwd06jAK6Me162akYGiqy+VayLm3m650EdY
         NNfMHTfNlqAortiQpXOjkiS6QO65XKMH4gXjq5+E2jrtdPHalVE/udAB+jjaisXGnysI
         ALNta2LsC5t/t+zPeu02v+epQ/lGJIzuKJO9Ow9zSSpGXP7jQ9JL8RX4o1SxAQUdQfm4
         QNk9rZWzP16muvCbsD6TppCETIZmOUtWxyn04rvolSme+5yWmRKHLIx8JD3L7GpfXy7e
         2QmTEh7XZrN2Tp2R4eJBq5v4ge2b/pvNxL6u06EjWQhluB8hO6h2zt9Nt9K/cu0+i7ly
         Yz8Q==
X-Gm-Message-State: AOAM531lkFuqojjBn2egUbhqHuhB1P517xQkPuhiT4HU70/rK+g3BphN
	Y3wo8W4Xu52/GRYrW3Sbj1h8z08ihey8cA==
X-Google-Smtp-Source: ABdhPJzuSIw8CIb1HiL6vLQ8VaSKt0zZoqu4pOfpttE7yYCimdssnVUevr2hIiQItpEvawx+EYp8oA==
X-Received: by 2002:a17:902:a70c:b029:118:7b47:e5bf with SMTP id w12-20020a170902a70cb02901187b47e5bfmr1447547plq.9.1623721877782;
        Mon, 14 Jun 2021 18:51:17 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::a054])
        by smtp.gmail.com with ESMTPSA id b80sm10337588pfb.151.2021.06.14.18.51.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 18:51:17 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip][PATCH] qtbase: Add needed bbappend for rk3399 SOCs
Date: Mon, 14 Jun 2021 18:51:14 -0700
Message-Id: <20210615015114.4002699-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This ensures that DISTRO_FEATURES can translates correctly
for qtbate packageconfigs and we can get right platforms enabled

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/layer.conf                                          | 5 +++++
 .../qt5-layer/recipes-qt/qt5/qtbase_%.bbappend           | 9 +++++++++
 2 files changed, 14 insertions(+)
 create mode 100644 dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend

diff --git a/conf/layer.conf b/conf/layer.conf
index b263b6f..f97fb69 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -16,3 +16,8 @@ BBFILE_PRIORITY_rockchip = "1"
 LAYERVERSION_rockchip = "1"
 LAYERSERIES_COMPAT_rockchip = "hardknott"
 LAYERDEPENDS_rockchip = "core meta-arm"
+
+BBFILES_DYNAMIC += " \
+    qt5-layer:${LAYERDIR}/dynamic-layers/qt5-layer/*/*/*.bb \
+    qt5-layer:${LAYERDIR}/dynamic-layers/qt5-layer/*/*/*.bbappend \
+"
diff --git a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend b/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
new file mode 100644
index 0000000..a977229
--- /dev/null
+++ b/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
@@ -0,0 +1,9 @@
+PACKAGECONFIG_GL_rk3399 = "${@bb.utils.contains('DISTRO_FEATURES', 'x11 opengl', 'gl', \
+                              bb.utils.contains('DISTRO_FEATURES', 'opengl', 'eglfs gles2', \
+                                                '', d), d)}"
+PACKAGECONFIG_GL_append_rk3399 = " kms gbm"
+
+PACKAGECONFIG_FONTS_rk3399 = "fontconfig"
+
+PACKAGECONFIG_append_rk3399 = " libinput examples tslib xkbcommon"
+PACKAGECONFIG_remove_rk3399 = "tests"
-- 
2.32.0

