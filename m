Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
 by mx.groups.io with SMTP id smtpd.web08.8414.1622039932479801066
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 May 2021 07:38:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=f2GLM1OD;
 spf=pass (domain: gmail.com, ip: 209.85.210.43, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f43.google.com with SMTP id n3-20020a9d74030000b029035e65d0a0b8so1188799otk.9
        for <yocto@lists.yoctoproject.org>; Wed, 26 May 2021 07:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9YhOXYIjx8ngFE/xUExaJKQ/MffddmU6M8Dw1pIgLYQ=;
        b=f2GLM1ODBYYaNsSMOdnu92ADFBLX8DQtoYjui9MqpfFusL13GxjU24akfF/I2PUDzT
         6bXj9KM/QlNNK6fSpqP9z+yTcSFGJofR+xYkxL/Kh4ZLN2/3RTq7xtzzoLj4mM4MuOxE
         VZLinWpAYLNkoT49z7RuVjCt854wXlMeRQJPPmt70cUl8evGqQIQmGzUJ3zvUdg+v+FZ
         qnBxCBw5qbAeOYsup+BS/5BL1kblpFEmeteenHKFAeGgXVM4rfhrClR1iVlYuqcvlIt/
         KD+s78nAx0+mjf7r+LbfFOHnv9t3wuoqIZ+gEIxdM1f6MEzb6J8UiJMxEd6F7Dedit2P
         yrlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9YhOXYIjx8ngFE/xUExaJKQ/MffddmU6M8Dw1pIgLYQ=;
        b=aEWFmoH1J0KpPIPl73y3s0VdBSvqJ4ovOcw2uSeOHwsv1ssZh1AulsFe4LXG0ljgoC
         +nCiHWQ333TSmMyjCaptoZoyKgxtZ6F8EqYdBp015Yk4CCZUpX2FrZHg95xKkghVW8+i
         D9cnI5qXH+lioRTN3arrw7YHN9QYKKuezZO9u/Rixj7cn1WsKdqc28pu95/eWZMFs6zn
         cCfyO2ZdihGPHHT5L55rML78IfERY6oL6gGxVtAJiVBeCDtvSvHNLZL27ar1DviDYVgo
         2sEDNjYuRjLmlNkFRLKyVnuSfA8pNnb3saFbBTKFH8Yp/aKw4EBXEJ5xqPZ4B2ZbHs4B
         FO+Q==
X-Gm-Message-State: AOAM530IFtzlqE0eBUG3UIoaV5OwNX8ssBQCOFkOrPELRpfmvUc1cSS+
	S0QsUqQ+8D4JxTMKzhos53HNRuA9ZR0=
X-Google-Smtp-Source: ABdhPJy9cHj/CO56+uF1YoMFu//NvRblx+6y+yn7l2Vhd9xnt3YC3wBCYgxlMoOyBZJdk0RZLwxT/Q==
X-Received: by 2002:a9d:131:: with SMTP id 46mr2684005otu.241.1622039931467;
        Wed, 26 May 2021 07:38:51 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from localhost.localdomain ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id o13sm4434375ote.32.2021.05.26.07.38.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 May 2021 07:38:51 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-mingw][PATCH] zstd: Fix MinGW builds
Date: Wed, 26 May 2021 09:38:39 -0500
Message-Id: <20210526143839.9740-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fixes the MinGW builds for zstd

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 recipes-extended/zstd/zstd_%.bbappend | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 recipes-extended/zstd/zstd_%.bbappend

diff --git a/recipes-extended/zstd/zstd_%.bbappend b/recipes-extended/zstd/zstd_%.bbappend
new file mode 100644
index 0000000..3b2b991
--- /dev/null
+++ b/recipes-extended/zstd/zstd_%.bbappend
@@ -0,0 +1,2 @@
+EXTRA_OEMAKE_append_mingw32 = " OS=Windows"
+FILES_${PN}_append_mingw32 = " ${libdir}/*.dll"
-- 
2.31.1

