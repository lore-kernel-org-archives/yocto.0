Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web09.12742.1621436154184559633
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 May 2021 07:55:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QrUGTwib;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id ot16so5517708pjb.3
        for <yocto@lists.yoctoproject.org>; Wed, 19 May 2021 07:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=JqRwCnb8xDFFcvv40nn/dxkLV6ehlIeMOCTQnizqmfw=;
        b=QrUGTwib1cvEu2qprNlLIqb2aim4wIm1Yzx7c60lfmxaqak2Y5qEPvs8638qiSNTxM
         l6HQ4dPsia7xzqHbqyq72R01XP6UXfMkeOYWAP1sKcG+IjnAG+l5jKeT7RzNvqj6gp0Z
         svb+CJGFEkCFVGZFTY5JKkh2sHtJ48aeqzka+zH7Q+eaHfBvKzd4ApqTj4etChQVqimQ
         qISfR2w08aMOpOQRLI1ooZS39Y2/JkurwHKCteVrCGkq9r3rpLtJ7EhtsTkCrI9B2+TN
         cfvZI5WdFesDeCFsZHGESQz1fSnkgzOrbJj+0cIwdRL8cbHWmTw3ZmJtIIcBC3TuIH2x
         NaVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JqRwCnb8xDFFcvv40nn/dxkLV6ehlIeMOCTQnizqmfw=;
        b=qz3eKKoKBfKMvYnVvIX+7XdJi+N4DRcKYMG1NnDeU0tZeg3g/cN+Inmp5fvLWJOT87
         CnrmdZRYXyas4QITsRHKWwGs39XGp9Cfu1Yr3BVFdxRu/ewawGVauIK05fWNOtMnBqLG
         ahvgTyXA2d8ICmyjUI8ni6zxF8bDGeiwiitVgT8YeboaBzknFkT2GMssDjGEU1HlOPdL
         7OXeZyTvkTIZXm+0z/ugLv2LV4gccMLKzgAszHtpEBgjHaMLrEjq2KZqxF0/txdRWFe1
         tZVe/PQaNgWj/ZF9pCmb+29KFl39Snbm4j7r1FBGMj5MwaCDZyoBw1OThPbkRX0F4w4c
         J5dQ==
X-Gm-Message-State: AOAM533YN4QzecY1lAdRNGqYqOpeCSzbPW1YtguQheV8nVUyr3ZDalH5
	GavNFIpWFLBdT82+P52MlqKqJ3oFICE=
X-Google-Smtp-Source: ABdhPJxqFaEdUysCo/R955CVJ5JJEnPGJYQoqCTUfrnl2YsYEYxuk7V/g2xYFqhEC6c1RSvQ0ZNLYA==
X-Received: by 2002:a17:90b:4ac2:: with SMTP id mh2mr11777374pjb.33.1621436153393;
        Wed, 19 May 2021 07:55:53 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id b65sm15975181pga.83.2021.05.19.07.55.52
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 07:55:53 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] ossec-hids: musl not compatable
Date: Wed, 19 May 2021 14:55:49 +0000
Message-Id: <20210519145550.1312699-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.24.3
In-Reply-To: <20210519145550.1312699-1-akuster808@gmail.com>
References: <20210519145550.1312699-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/ossec/ossec-hids_3.6.0.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-ids/ossec/ossec-hids_3.6.0.bb b/recipes-ids/ossec/ossec-hids_3.6.0.bb
index 242bbdb..778278b 100644
--- a/recipes-ids/ossec/ossec-hids_3.6.0.bb
+++ b/recipes-ids/ossec/ossec-hids_3.6.0.bb
@@ -161,3 +161,5 @@ USERADD_PARAM_${PN} = "--system --home-dir /var/ossec -g ossec --shell /bin/fals
 GROUPADD_PARAM_${PN} = "--system ossec"
 
 RDEPENDS_${PN} = "openssl bash"
+
+COMPATIBLE_HOST_libc-musl = "null"
-- 
2.24.3

