Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com [209.85.216.68])
 by mx.groups.io with SMTP id smtpd.web11.8555.1605372604252770192
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Nov 2020 08:50:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Oitpjodn;
 spf=pass (domain: gmail.com, ip: 209.85.216.68, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f68.google.com with SMTP id g19so1172193pji.0
        for <yocto@lists.yoctoproject.org>; Sat, 14 Nov 2020 08:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pX50g8F+oZNI3xBxV787c8BDEhRfBnkKYJPqObX6tZQ=;
        b=Oitpjodnptz9FNQj1UM8wBVa5pSVecVcgP3HhwwB675+g+VWNX/5CYBZAOppqLKK0S
         xDDliwXns3PQjcPwtOG/V4VpFMgiHuUQUQFDI2nQWliK8eBfiDHzD2kO4YpAoUioYO5/
         3jJMke9Pzo6KKs1KSj0I+pUpWhVHPH6/TAbMz/I9t4XJssS5wWO0n7QoS56OYm4s9bAL
         CWl4QLnHSE7WLELivR1axabPdGQDV5nHxqsjcVgfiALZ9tMcTEubEwRSgt+n6A80yb4j
         MwO8dbADp+1YhtE4URRIcuIhzp1KgMXAbn+3CPOYYGGWKs7AM9fEs9uh+Oyqt6sOFjkL
         L2hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pX50g8F+oZNI3xBxV787c8BDEhRfBnkKYJPqObX6tZQ=;
        b=FnT0tWiyh5lynZdCXVycGoBgGCOyB/HKEX89ViPpOKGKbShsGEk2pcaml9fEjeZN2p
         XT12dUeiCy9Sw0zLu6pwsElqavCnoVFSBgvnJ00XdtJTvalEPZA78BRGLdjNVB+IrpCo
         1BDpZazLdsqJ8lLfPg90U3UEdt6rU5WshqDSajaT7TFzHtgpUDb5GKJvcYHufJGhmUGF
         KInaOQnhHX1VTGhIrTs/VoL1JnbUTU+6gbwyZ9MK/aaGoIEB2LA1rF7osBisu6fYkLAY
         KW+Xlwtn1gyKU9Iw6UblWu6DgIgOruBUMn8iR3jGekO7Lu5zjyNDMsDHdlSm7t62SLLs
         9yEg==
X-Gm-Message-State: AOAM531P+x5sZEua4kfozHJMOXwBkUAXYDot1EKsg6JaJD1+ARzrcqgQ
	aiqtovrLD3zcPp3dtZYhKy85rB5baMj3MM0R
X-Google-Smtp-Source: ABdhPJyeBLsBYu4u5bLtnzRH32RHYyBP2xMbhJxPX+tnSp0YjcnJBIKHY6lGKM5MrfEatROTsgmTBQ==
X-Received: by 2002:a17:90a:4093:: with SMTP id l19mr8505246pjg.65.1605372603514;
        Sat, 14 Nov 2020 08:50:03 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:4e0::740e])
        by smtp.gmail.com with ESMTPSA id b142sm13004361pfb.186.2020.11.14.08.50.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2020 08:50:03 -0800 (PST)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <jpewhacker@gmail.com>,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-mingw][PATCH] libmpc: Add missing whitespace in append operator use
Date: Sat, 14 Nov 2020 08:49:58 -0800
Message-Id: <20201114164958.1915714-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-support/libmpc/libmpc_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-support/libmpc/libmpc_%.bbappend b/recipes-support/libmpc/libmpc_%.bbappend
index 0d289df..5a9ab9e 100644
--- a/recipes-support/libmpc/libmpc_%.bbappend
+++ b/recipes-support/libmpc/libmpc_%.bbappend
@@ -1 +1 @@
-EXTRA_OECONF_append_mingw32 = "--enable-static --disable-shared"
\ No newline at end of file
+EXTRA_OECONF_append_mingw32 = " --enable-static --disable-shared"
-- 
2.29.2

