Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web12.2944.1602957844502301534
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:04:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jvjNABxF;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id 10so3422236pfp.5
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=XJYXJpQ16RbCg8OlJJMJUdaBpMXZxCmsddRsvVYr158=;
        b=jvjNABxFgZD8UB01p/hnO+N0/OgsUdR49LY/RYja4Y5/Cjg+0L269nRyDx9YZKfP6C
         iId2Y/1Ssbbf8i1hLwgxMeiE68FlrhTaryllwEI1XLnZRxdj9OPoBsohRcMFoTOOy8tT
         2tbh2Jw6e9PKnz9DnNy4F+ETlT/jZNuE3uxmoaKIvfao7OG8B+pO6/LUpMchK+zlGC7J
         GH7PIEvi5LXkppr+SrGdG0oRyHZUlEsBUQLw+B3Y6bMz97S3I+Hq5Vtk4YP7enV1zBbO
         axGM+fV3g0QAgVBgqbhTsRUWzGnaV9i9fDA4WIO89/bUfmJ9RWFeUZ6Bgntizm2RdUyo
         4O9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=XJYXJpQ16RbCg8OlJJMJUdaBpMXZxCmsddRsvVYr158=;
        b=bz1IAT4nIKcR/4nBT6q6+jQmS3sfdu0xxlTEabWf/ducTFKi60cs8mg34QlMyouPvW
         qqB1hWmx77OnnogLwconXXrdwd9D/FgVUlKW9B9i8jxTafNHl0YOfbk2VBrm0sIi7DGY
         n3+5AAjX+tYfgVnWwY7uoWO1tU1G2/vUqhEODewWR2wkv/Xa+BIKG/1XFOWnmvtN6egb
         JwGLEzw6YaZKU5+/5gQhT144EhKWK9iwHyLxxuAgnoesdbk/85YX1mGQxQ+by35/goEI
         xgqirziJmCw0bO5OOqAB0Sogm+CQOtTXHgi9ZoHMsGUMp/aW2KWQsij3rsnD3iSVDjYp
         aBbw==
X-Gm-Message-State: AOAM533pIG0R+ej1pG90g+WGHvF7GbCG0RXLp7aoCa/e6EEkh1INhHD8
	qaxjL+2utQUkOtCPyNV5TwqrMab8eAs=
X-Google-Smtp-Source: ABdhPJxFYv+9NUfyct4ahAauxxn8zumF801TMNxjHQg3nsPvSADFB/4Mu3PMomJHft1VzhxDNdMTcw==
X-Received: by 2002:aa7:8429:0:b029:155:d4ac:3914 with SMTP id q9-20020aa784290000b0290155d4ac3914mr9747548pfn.33.1602957843904;
        Sat, 17 Oct 2020 11:04:03 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.04.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:04:03 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 27/32] scap-security-guide: add expat-native to DEPENDS
Date: Sat, 17 Oct 2020 11:03:24 -0700
Message-Id: <717a38a8e475876286bcb788d24e868cb8308737.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: Mingli Yu <mingli.yu@windriver.com>

Add expat-native to DEPENDS to fix the below do_configure error:
| CMake Error at CMakeLists.txt:165 (message):
|  xmlwf is required!

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 4c2f7ffd492c7083273aca7cc718802279f05ce2)
---
 .../scap-security-guide/scap-security-guide.inc                 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
index 66c2623..32fce0f 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
@@ -6,7 +6,7 @@ HOME_URL = "https://www.open-scap.org/security-policies/scap-security-guide/"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=97662e4486d9a1d09f358851d9f41a1a"
 LICENSE = "LGPL-2.1"
 
-DEPENDS = "openscap-native python3 python3-pyyaml-native python3-jinja2-native libxml2-native"
+DEPENDS = "openscap-native python3 python3-pyyaml-native python3-jinja2-native libxml2-native expat-native"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1

