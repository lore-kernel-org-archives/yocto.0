Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web12.8740.1604910750135207909
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 00:32:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aluknre+;
 spf=pass (domain: gmail.com, ip: 209.85.208.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id t9so4407471edq.8
        for <yocto@lists.yoctoproject.org>; Mon, 09 Nov 2020 00:32:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4ewBc1Oj6ToegY5p94f2RmBs8x11XM+xGoey7mIz5fM=;
        b=aluknre+313LUV0kulnb5OOCJ4p7GfkN3wPYdJHOiD14zRrM9eK7Zy2IklPBKULZjh
         N0YT8ooV7PA/BnP3yu7cv2cTaTvf2eX9n93DizLKnbzDjKv9YA7yF7nz2jhe5S/fLSdj
         TwryoA+JVHRWUlzOrjbs/HfolGqwCPx5UIh5ApB8rO/RF0B5iNL025xlW6KEwOzKzBpG
         UfjqQ1A5vIxP7++lXLbn6XI5P4Gjhm81GP+/9VKvogxxUtwmprm1EjeHymC8DUF6H2xE
         TXsPEuwQmO/wD1uFK5+55kgkVS0xwWagPoGkq08IBhzKsGIaCZ1UjEsVuLtzMgTFvWuq
         dW/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4ewBc1Oj6ToegY5p94f2RmBs8x11XM+xGoey7mIz5fM=;
        b=bbg67E/dniOXb24h9bLdYnf83eDYI0HKB2OV+dCscdygZJZphCAZe6J7MMDLKa9ncI
         rzMy3gF2dvt9mttCns7Iomk32QJpipgnpuGjM9kuWz7TK4sqGwmG2Efkrfz8iq0IDo0O
         ayAgcvRBfI1pRVe6h3Kq/D1GFslstE6Z+i7SkmAJ3VoardMsGX7jZAVYcFdVnvJQAZ7y
         jRb2fzwipV2NBosh6Tjt8cbF+QOLbpBriK7bdU4JYXGKyva/DSpKu3oCJOVW5jDsxGzR
         ka36kLN1Zvb+b8Q9AV3K1HNuaO4ireRzpgB4jYIL6W7xGfMeDFtGEmzvRv3wVOcj1168
         Rc5A==
X-Gm-Message-State: AOAM531FbMZs4AGlByvuy1MGKJan62WPMNTiczE/99JnyucoPKiE7CcP
	3KTK+Mwtom+ZPwJUMntx+6zW1vwS/eD0Xg==
X-Google-Smtp-Source: ABdhPJzFz7fV2Zl5Suc6RtL68NhkWagexa0AePlQ+29ZvtLgq7ahBaAaqIyziRJMOO2Ovos9CrZ0hg==
X-Received: by 2002:a05:6402:21c7:: with SMTP id bi7mr14507490edb.54.1604910748512;
        Mon, 09 Nov 2020 00:32:28 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from linux-f9zs.fritz.box ([2a02:2450:1011:4f7:596d:bf31:3950:5bda])
        by smtp.gmail.com with ESMTPSA id d23sm8191927edp.36.2020.11.09.00.32.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 00:32:28 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [RFC PATCH 5/5] config.json: add a target to test standalone X11 image
Date: Mon,  9 Nov 2020 09:32:06 +0100
Message-Id: <20201109083206.16832-5-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.1
In-Reply-To: <20201109083206.16832-1-alex.kanavin@gmail.com>
References: <20201109083206.16832-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/config.json b/config.json
index 51a540c..5ad3017 100644
--- a/config.json
+++ b/config.json
@@ -681,6 +681,11 @@
             ]
 
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
2.29.1

