Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web12.6020.1615541585439572701
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 01:33:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=raYeCivY;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id u4so6976940edv.9
        for <yocto@lists.yoctoproject.org>; Fri, 12 Mar 2021 01:33:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SQCqhQQ/mqs/Klw/AQZKalVyI0HRoKSszRtzELAhPw8=;
        b=raYeCivYfKd+r4dlsDS/AiZTv8jlOLNLlhRJvru1sDztCXtJsKtofdqQpArp1Oae0T
         8CDtDZcUoBgnguI34CiosoIYfUekMwyi5twkO6OpLc1NNRecbpUoFE4YkmOEFslguJFz
         jisj8EWcrKCnQxbx4OqRFf1BmfFOcWT/AokPsSCTMHog/3WqinXUKYgLUZmdLyQUEqG8
         4ZuGD6pIszQdR6383NrDpBUqzwdlc86qmlzBE0fKBVQlarSBSuMoLElLoHwCGxm3bPES
         oaLk0IA711O/B7xMdZMOz2/MSga4AtX8Hp4FR1IfyC7Vv2HZCF1GtraFy+b1Mp8Iieur
         Yyag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SQCqhQQ/mqs/Klw/AQZKalVyI0HRoKSszRtzELAhPw8=;
        b=TzGPhYvj5dc7u9guIWf5GKr3PvQ5qQi98svEcIXQwL3iwu64g1eSmqtraBvvfAY89A
         HsApIDetv5Lc9FYbbyCqHKz8MAsnTpVJBGwUUdCOPNs4ZD1SdoLikd377rPAJTOCW6Au
         OJALv5fKm5zT82sHHOXOJBs4CEFUqBxbFzlKv/7VUl+q+LJj0sRRDoy9A2F26bbWG0aj
         y3RvodOQUQgC00nfJAIyGM63VsEgy6BCzvWYWwtV0trjBCTlfTnVvj0quBzeoKaDzAwZ
         mY0zWNUEYtJOVNu69OajnRqhfoNG2eopr3g12vyb0OhHE29C5TBnYD3GeZdZTDtUG/Vc
         wCDQ==
X-Gm-Message-State: AOAM533OPEMNK1M+YMgFuytceASBDELV7CSrwFw8gp87zFjQiDYssuL3
	x26/iuwnPUguHnf6WhHi9ylhQiXlEpyPCw==
X-Google-Smtp-Source: ABdhPJwseasqxFG1ukYqQxunQr3opQZFxmrd0+M1MG2kVT/ooWIh0OOw8qB7ieu3Z9khnPcFFY3rXA==
X-Received: by 2002:a05:6402:3096:: with SMTP id de22mr13054320edb.141.1615541584128;
        Fri, 12 Mar 2021 01:33:04 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id h2sm2532708ejk.32.2021.03.12.01.33.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 01:33:03 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [RFC PATCH 6/6] config.json: add a target to test standalone X11 image
Date: Fri, 12 Mar 2021 10:32:40 +0100
Message-Id: <20210312093240.319125-6-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210312093240.319125-1-alex.kanavin@gmail.com>
References: <20210312093240.319125-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/config.json b/config.json
index 75bf4e2..b9c493a 100644
--- a/config.json
+++ b/config.json
@@ -729,6 +729,11 @@
                 ]
             }
         },
+        "only-x11" : {
+            "MACHINE" : "qemux86-64",
+            "BBTARGETS" : "core-image-sato core-image-sato:do_populate_sdk core-image-sato:do_populate_sdk_ext core-image-sato-sdk",
+            "SANITYTARGETS" : "core-image-sato:do_testimage core-image-sato:do_testsdk core-image-sato:do_testsdkext core-image-sato-sdk:do_testimage"
+        },
         "musl-qemux86" : {
             "MACHINE" : "qemux86",
             "SDKMACHINE" : "x86_64",
-- 
2.29.2

