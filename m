Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web09.36552.1614006869603686362
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 07:14:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uN5LstB4;
 spf=pass (domain: gmail.com, ip: 209.85.216.45, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id o6so969168pjf.5
        for <yocto@lists.yoctoproject.org>; Mon, 22 Feb 2021 07:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=7LJ7adCtt9+Vv9H0alJmX9Ne5UzyDUgO1pMUfQSy+Sw=;
        b=uN5LstB4R6UmkCp7S9YnFE2QUbNAaTCoGNbbvlhMW95t7QsDhh4QMcP4ETM5bDqz6s
         /II9RT4pwtTx8yoLL7PjIOBzEoOHMlCiDLS8md5HAYPChFNHiu5qvVcq2Zs9/kO/hEBJ
         tpEV1JOmvczXeZ+gSkKT1HLLrQH06mWUjropZ+LpDRvjSY7Zq0HqXnT5zMargE8tgssc
         oiRLfQb3R6hy9ckIT4rAeJcUeUSqhckfJgcjFndm+3/3USsa0vwfVF9CjHD/mPxRU3Es
         3i3rs6jEKUTBRIeHqIwo8Wr3rgJSv6ZGaHAJByhgi1pt2d9/jEenqxklN4OZR1osQcyz
         SjCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=7LJ7adCtt9+Vv9H0alJmX9Ne5UzyDUgO1pMUfQSy+Sw=;
        b=h2LGP/KFn3Hka4Op8pwFrWMJWbu7v/QVjyoeOHTlDZBgK638EofrMrXY1idaRfW44M
         umFHRMf8YHKFE7l++ILLp2uXS/j/2jvP9zrhDW6sT4Z9vSfduVu3tQoKe4g1q/uTnEDA
         h57R3D32ANEzuGsiOX9T/Sl3re8RSqEBJSGrx8n6k8eMEFk/GiRR6/COMdplCQtTgsaL
         aaCMdtPyyNbrhZ3AOGTlPG7ZgOxnuySjiWFSi/8KMs8hyvyNcQDXs3mNNgpohntpN+A7
         GlTQXwjMDlPUEuekdOhOuBKKRuPdKiPQuExSAnP3/i5QrbKdsF7VO0d0icJssURXHN95
         9VHw==
X-Gm-Message-State: AOAM531TndawIvLAnxKOMwnFVfCV4trmp2iJ38rxECirEItYLw7aiA5h
	nSiWID5wBqyCY85NeNd7tKGpziwKWvsRXg==
X-Google-Smtp-Source: ABdhPJxpBQb2aFF5loOdqlLkbo2g3A4JPchcyewdwV5WjgG/FDXnGnrciwxO83jBClDTwzN6rFwvfg==
X-Received: by 2002:a17:902:ec83:b029:e3:ec1f:9dfe with SMTP id x3-20020a170902ec83b02900e3ec1f9dfemr8005398plg.59.1614006868936;
        Mon, 22 Feb 2021 07:14:28 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:8e1:8c0f:8c00:9696])
        by smtp.gmail.com with ESMTPSA id 134sm20069288pfc.113.2021.02.22.07.14.28
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 07:14:28 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/5] openscap: Inherit python3targetconfig
Date: Mon, 22 Feb 2021 07:14:23 -0800
Message-Id: <20210222151425.13534-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210222151425.13534-1-akuster808@gmail.com>
References: <20210222151425.13534-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-security-compliance/recipes-openscap/openscap/openscap.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap.inc b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
index afa576a..812ea9f 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap.inc
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
@@ -11,7 +11,7 @@ DEPENDS_class-native = "pkgconfig-native swig-native curl-native libxml2-native
 
 S = "${WORKDIR}/git"
 
-inherit cmake pkgconfig python3native perlnative
+inherit cmake pkgconfig python3native python3targetconfig perlnative
 
 PACKAGECONFIG ?= "python3 rpm perl gcrypt ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
 PACKAGECONFIG[python3] = "-DENABLE_PYTHON3=ON, ,python3, python3"
-- 
2.17.1

