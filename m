Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web10.31373.1620652372870876206
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 May 2021 06:12:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UYNC+NFL;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id bf4so18633941edb.11
        for <yocto@lists.yoctoproject.org>; Mon, 10 May 2021 06:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=afdIwA62mS5MqBSGvLIbrx8TIXFL7/hyeq/0Ods0mDg=;
        b=UYNC+NFLwRcJhD/XTnq/Xhqxo11bGixOa7DKwmBVd/9YYOLuUOiv6qMNaKeWnbe6if
         dxD4AR6eXB9s2ijk6a6+qke9EpMz5FvDBqqEhVezs3RBAno06KDXm0KXvdc7wtm6XJVQ
         Ja/nsehACF0MLJHSo1BwnEl5j4CzmqfY8SBvj0Qq72r0dWscyqUyPO+P7vyuwamyb40l
         6rJNkMKIkR2j221j3i7YjEUw8muM/b09VqCSPgCAix8O5ABSB8VRxKKld1P9auZ61FuH
         dLqfSFaIcFQMh5Ck+nb9+TlJXKoQIWULbXd0nG6gwvZFr9w2sO0J4/iy3qg8qws/Fvcu
         lKww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=afdIwA62mS5MqBSGvLIbrx8TIXFL7/hyeq/0Ods0mDg=;
        b=eCd9WPoMH1AnGqzk5dwieO+9TvfnD4QCjgDjhY67c+Sb4+xFSohpUKDiElcENcJZ2z
         mWo+nc0MDc3M/eSm1K+dzfUl1O10XBj2IyCjJrzrroD2Qh6AuN+myZxShicRgwu3MvBB
         o+gQFVOUuplqdw8y9K0hWGZwvNAirZo0gn2IvxGgjm5myMjg5WvbXv8zqX3AUhW2gY9/
         zPVdTM3L5VynqGNo5tyRvBgmfSo/GaS9586+N6/HS6c1FOkkGfS1A04aEB7vAIaETu8r
         Qgc8RrURPymeMczSFamTQs7SVO+NsAccsATo0kBgyuzFso3DDVsZyIFPqoro1xVMGCf/
         dZEg==
X-Gm-Message-State: AOAM530ZtmIc88KqWGZsj5C1D+NCkqDODHd0YtK+NYjBtjrPJIVbOUbR
	e9kv6KSOLX+1wcA8yAAe92AQgB2PN7E=
X-Google-Smtp-Source: ABdhPJxW5RyTuE1BybJAHdxL3t3cQ79EthZ8dLyHr4iy9lu8yZCfOzIYmMG1arLiediUvW6FaY9PVw==
X-Received: by 2002:aa7:dbcd:: with SMTP id v13mr29136675edt.59.1620652371382;
        Mon, 10 May 2021 06:12:51 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id s4sm11473338edq.96.2021.05.10.06.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 06:12:51 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper 1/4] config.json: transition ptests to weston-based images
Date: Mon, 10 May 2021 15:12:37 +0200
Message-Id: <20210510131240.940687-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/config.json b/config.json
index 6533dab..c122412 100644
--- a/config.json
+++ b/config.json
@@ -93,16 +93,16 @@
         },
         "ptest-qemu" : {
             "BUILDINFO" : true,
-            "BBTARGETS" : "core-image-sato-ptest",
-            "SANITYTARGETS" : "core-image-sato-ptest:do_testimage",
+            "BBTARGETS" : "core-image-weston-ptest-all",
+            "SANITYTARGETS" : "core-image-weston-ptest-all:do_testimage",
             "extravars" : [
                 "TEST_SUITES = 'ping ssh ptest'"
             ]
         },
         "ptest-qemu-fast" : {
             "BUILDINFO" : true,
-            "BBTARGETS" : "core-image-sato-ptest-fast",
-            "SANITYTARGETS" : "core-image-sato-ptest-fast:do_testimage",
+            "BBTARGETS" : "core-image-weston-ptest-fast",
+            "SANITYTARGETS" : "core-image-weston-ptest-fast:do_testimage",
             "extravars" : [
                 "TEST_SUITES = 'ping ssh ptest'"
             ]
@@ -122,7 +122,7 @@
         "arch-hw" : {
             "BUILDINFO" : true,
             "step1" : {
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-ptest core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-weston-ptest-all core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
         },
@@ -342,7 +342,7 @@
              },
             "step2" : {
                 "MACHINE" : "qemux86-64",
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-sdk-ptest core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-weston-ptest-all core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
 
             },
-- 
2.31.1

