Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web12.8266.1582388694960405062
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Feb 2020 08:24:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=H+6jkxqf;
 spf=pass (domain: gmail.com, ip: 209.85.214.175, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id y1so2181257plp.7
        for <yocto@lists.yoctoproject.org>; Sat, 22 Feb 2020 08:24:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=O8A6pMMaUEW79bx6D4pTzmPCKFT12YYBHogF+m2vRMQ=;
        b=H+6jkxqfPvFzGWSUtkqXjnjmo/FU69884essOJ3k6gdHKycsJWT/3wo1HJEwk4MCDF
         Z2Ur8X3qvbkedNJRDctvv7IKvfUUSIE7kCQ/zVvoNC4S7XtxjWrLQX6hfshV+zJSNeBy
         ZH8nesNiDH2RuVlOJNf5EhEdQ5Ouukyqe1ozidfLWkKOko8lXP4UfGOvOPM6aryELjHt
         VOpR8bgLM7PiIVorwqZowanh3oWF8RemdZP+/V/UjJq5WrMegDa0MCAbEd9xDV8+XsaP
         jP/Li20dUNYrWi8o2D6EJba/2X7tYjsy88pbc4u7mgY6GCxGS8ITJmSKW2JUDRWFTWtv
         wEPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=O8A6pMMaUEW79bx6D4pTzmPCKFT12YYBHogF+m2vRMQ=;
        b=JH1q+ZZrFc3fVTCV0hShYTgy2afItwciNszTIo93Bpzn4CITiiCzgnSGczcFQzsZl+
         ieVytknNLdKYuh0r0J9+bSyeJPczQd7GVr9qDNlQ7Q0qBGVBkFxMx6M+cISDBWn9+vPW
         ltvN3AI2BADk6bCCDgDSHm1fY2sMSCVnSu7CYgcm6pbji08v5pE1uT2utRi9U6Hu53/n
         ju5m31B55ri36CO5JSDrd+bEdk9dgm7QzHJP3n1AMGf4qMJzWyTw4O8cEPu/tt1GFR6u
         SqNaCsVteHBP8A8QEasmf0xxSaPmUpWCB9Xsu3c2iol1gguknpmE1aJlb4UUHX6zEimH
         bpXw==
X-Gm-Message-State: APjAAAXA/h2ozmkHlMY1Vl77kJto83ZvF+1muDUFa+uKJHRhxBhIyNlF
	5hy2GCEF1M7KTx/G71ClA19QUiV2
X-Google-Smtp-Source: APXvYqyvVZBVJVcaPamllfS/nCcDNSUV1Mz1ZzYa1vTcrI6Mt596BbfpkRwnVFL2O9crSZj1uDGztQ==
X-Received: by 2002:a17:90a:5801:: with SMTP id h1mr9976159pji.121.1582388694191;
        Sat, 22 Feb 2020 08:24:54 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:f455:4f9:e4a2:b3f5])
        by smtp.gmail.com with ESMTPSA id q17sm6851209pfg.123.2020.02.22.08.24.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2020 08:24:53 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security-isafw][PATCH 3/4] layer.conf: add zeus
Date: Sat, 22 Feb 2020 08:24:48 -0800
Message-Id: <20200222162449.20014-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200222162449.20014-1-akuster808@gmail.com>
References: <20200222162449.20014-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-security-isafw/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-security-isafw/conf/layer.conf b/meta-security-isafw/conf/layer.conf
index 5936139..241c461 100644
--- a/meta-security-isafw/conf/layer.conf
+++ b/meta-security-isafw/conf/layer.conf
@@ -14,4 +14,4 @@ LAYERVERSION_security-isafw = "1"
 
 LAYERDEPENDS_security-isafw = "core"
 
-LAYERSERIES_COMPAT_security-isafw = "sumo thud"
+LAYERSERIES_COMPAT_security-isafw = "zeus"
-- 
2.17.1

