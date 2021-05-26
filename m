Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web11.3097.1622061665855827569
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 May 2021 13:41:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=akZGDTyX;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id z16so3914816ejr.4
        for <yocto@lists.yoctoproject.org>; Wed, 26 May 2021 13:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EFvIR1DegGC7fNwNwjkN2CaXmUQhUkiaCtoLk4B9RNk=;
        b=akZGDTyXp9xIN0JAZtEtrVz9SAoTNGi1RLsE+isIU/eZozz313iz+pGx/m/9NdJxgZ
         /r0tsG0CPTyp5MVeSvt7ag2NtIMXZfcKUmjppTvjhgexC0fhp5NAatHA8iRRVEVlomFq
         uW2qxkRDiRp9DFUzCjpnoijb9k6VkD28nOjjwvL0dha+uBBXEK/eVsZE2NzbWlUE6xp4
         CxoMwFvDAaLXvRDPEdCr6BPttWfauEQkJuJfxo6g4KsRD7QJaZ157KNanrR/D5NZ1Q8A
         TQBBqvvYHk16vCJMBnFMyecwbtxLhd90lHloE4xqiLvhDLzGwuHzuMQrpSAfMi4anghf
         ZvaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EFvIR1DegGC7fNwNwjkN2CaXmUQhUkiaCtoLk4B9RNk=;
        b=B+VScvjP3d8phyHw43DA8i7F0iR1QQ2gjyvhAlVFgauJzLAVt9PQNg0y/bUieWA8dq
         KXxAVL8TG8bFQzD1Z1I5G8rjP0Gxd6wETg8w80CDDBQEKPd4COK7uIAth/bJTsXsLaLc
         RZBp1QHN0vVPfh8bjs29eR6EXTpsVZJhMFgmpg2ygirPGzYaOn+cjfoPY6XHkcqnWk5k
         uYwWs/T3IuYiNYuMAcj80Vzt9OVJkIqU1j77cOTINGNHyG4qw8NPh6LmXqnbAWZx29Sa
         GLa0v2+MU4xL8uubSUHwkO0ojdGr+yK6ffr3RrAUZCuz9kp9oU389/jzaKHL61p6Lpr2
         0BJw==
X-Gm-Message-State: AOAM532M51EFZJpEzKd3qwx2Z5P1UKnH7HVyrg6jVWh7Dj013so/fRp6
	c9rlgsT4gsd/yBshLcStvjeHVhfwl9M=
X-Google-Smtp-Source: ABdhPJw+k0KOZUQJ609s3ZeT5DK5y4tJPakauvDz8vL5dNDnq3Ijq/h4FV6QHVmOy19dJlA+yWUgMQ==
X-Received: by 2002:a17:907:961e:: with SMTP id gb30mr188763ejc.58.1622061664276;
        Wed, 26 May 2021 13:41:04 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id lv10sm86332ejb.32.2021.05.26.13.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 May 2021 13:41:03 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: transition ptests to minimal-based images
Date: Wed, 26 May 2021 22:40:54 +0200
Message-Id: <20210526204054.496421-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/config.json b/config.json
index cf62815..a850dd6 100644
--- a/config.json
+++ b/config.json
@@ -95,16 +95,16 @@
         },
         "ptest-qemu" : {
             "BUILDINFO" : true,
-            "BBTARGETS" : "core-image-sato-ptest",
-            "SANITYTARGETS" : "core-image-sato-ptest:do_testimage",
+            "BBTARGETS" : "core-image-minimal-ptest-all",
+            "SANITYTARGETS" : "core-image-minimal-ptest-all:do_testimage",
             "extravars" : [
                 "TEST_SUITES = 'ping ssh ptest'"
             ]
         },
         "ptest-qemu-fast" : {
             "BUILDINFO" : true,
-            "BBTARGETS" : "core-image-sato-ptest-fast",
-            "SANITYTARGETS" : "core-image-sato-ptest-fast:do_testimage",
+            "BBTARGETS" : "core-image-minimal-ptest-fast",
+            "SANITYTARGETS" : "core-image-minimal-ptest-fast:do_testimage",
             "extravars" : [
                 "TEST_SUITES = 'ping ssh ptest'"
             ]
@@ -124,7 +124,7 @@
         "arch-hw" : {
             "BUILDINFO" : true,
             "step1" : {
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-ptest core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-minimal-ptest-all core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
         },
@@ -344,7 +344,7 @@
              },
             "step2" : {
                 "MACHINE" : "qemux86-64",
-                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-sdk-ptest core-image-sato:do_populate_sdk",
+                "BBTARGETS" : "core-image-sato core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-minimal-ptest-all core-image-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
 
             },
-- 
2.31.1

