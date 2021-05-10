Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web08.31449.1620652375008576894
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 May 2021 06:12:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=phYBiqBx;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id b25so24402763eju.5
        for <yocto@lists.yoctoproject.org>; Mon, 10 May 2021 06:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8PJbTChXCe5UAB/3dAwjzMLYoRsolV1P8ieFuVPLPAA=;
        b=phYBiqBxypA+9CtbZGVYQGiXTEx41UPKM9GSbCnQpnwom8tnpaTWai4Pj8ijydkp5N
         3iONDq1LJrMEQDiGJpwGN8nM2iVpT7FbHgFZzHXsRIuuNdytuZfk4okPo8oWoEWRH65x
         mawMa16+M1MBz8O3hx+BHCGec3KiCK7tmQkIZvIMxEaZN8gZRaWc3SmUGhjcqbQTfJnV
         24ct8hnaLXVBFTSqpobsvxI9j3VP2Ni2nfEGQ0Ek61Sg3Sm5Z+1/MbXjbPfcI82e42m7
         5D5x8Zc4oB6/QuRLS4pQzsqaOHt7rFvfjzz+Ju3rBIWF1aE4411saTT9rjco3+68tQO+
         +0oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8PJbTChXCe5UAB/3dAwjzMLYoRsolV1P8ieFuVPLPAA=;
        b=bjqQiyK4BaSrwWUGAkAdfLjis/emKccbCCIo32za8nrXEDCmRWnjROgTT/x5xoXS90
         DlfnQT0bm/nMyC/eIBdOW9ukQSD71XChZKmPpP3W7ZdxEleJDCVbEntbJDgdpAX6pO+O
         ywQrKLAqkecz3VECuJW5T1MUaou1gzX+ZRxbliNyNB0tx6FIcOgOVh/hyT3lB6ix1+JT
         kwLfIBaG6MPowdb/5s5PjrNDRpeGOocxd6SDax7NiBDVCypJVfHsAgvK6BNfmRFLAkTw
         yKllHP97lN14Bu47oRNTx4o+Yz+4fno4Mk/xY5rgBN5gAiUyTju01sDTwz5Trq/AfyBN
         U+Mg==
X-Gm-Message-State: AOAM531KGKHXHbKCnBFAimzjH5m+2AUgLCAtRMzaTqqvR2jRR6bc3nV8
	subdHFaXikQgz/ypMGHukEg0p/8lQTc=
X-Google-Smtp-Source: ABdhPJyvBJ+TT26KZLucBpcTUZfDVGlN7cWVp2sEKHzoz5cwaIs01ZEYHQYwYyFm2GiAmVVnvu1JDw==
X-Received: by 2002:a17:906:d969:: with SMTP id rp9mr26027292ejb.516.1620652373620;
        Mon, 10 May 2021 06:12:53 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id s4sm11473338edq.96.2021.05.10.06.12.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 06:12:53 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper 4/4] config.json: add a target to test standalone X11 image
Date: Mon, 10 May 2021 15:12:40 +0200
Message-Id: <20210510131240.940687-4-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510131240.940687-1-alex.kanavin@gmail.com>
References: <20210510131240.940687-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/config.json b/config.json
index 72b7af2..8a98c30 100644
--- a/config.json
+++ b/config.json
@@ -752,6 +752,20 @@
                 ]
             }
         },
+        "only-x11" : {
+            "MACHINE" : "qemux86-64",
+            "BBTARGETS" : "core-image-sato core-image-sato:do_populate_sdk core-image-sato:do_populate_sdk_ext core-image-sato-sdk",
+            "SANITYTARGETS" : "core-image-sato:do_testimage core-image-sato:do_testsdk core-image-sato:do_testsdkext core-image-sato-sdk:do_testimage"
+            "step1" : {
+                "shortname" : "Keep both wayland and opengl"
+            },
+            "step2" : {
+                "shortname" : "Remove wayland and opengl",
+                "extravars" : [
+                     "DISTRO_FEATURES_remove = 'opengl wayland'"
+                ]
+            }
+        },
         "musl-qemux86" : {
             "MACHINE" : "qemux86",
             "SDKMACHINE" : "x86_64",
-- 
2.31.1

