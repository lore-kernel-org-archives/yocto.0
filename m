Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web11.6476.1599511847880421869
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UMhoBAHA;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id a65so15352977wme.5
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=619u+a1aqxzpAbB6ejhoIVUTmLZtViGhsA9xX/aI+wU=;
        b=UMhoBAHA3qWyAcqdlwm3RKKE4y8/UDJHqMhG0UOMLuRsWGd2OZ/zefnpIqn1OuobN1
         7IAe8p5AT+c6QCW4xuSIQy87K1zSdCnY2f9kB3aQlwWzIaq4u8Yd1ZsrUCo3Cd8vIHwN
         mrsdDGAPRypJTwLeSldOj+sEapw2hC8W3dcoY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=619u+a1aqxzpAbB6ejhoIVUTmLZtViGhsA9xX/aI+wU=;
        b=pYrfKq5UU6HJz5S5d0Pm+KgEE3Rlh5Y+VewWmf+3bRikU/8lTznjobFGf6SyTkK43W
         8VX5TNyvP5uhVKc0ucCIV1rLSCp2vRUluP8nvVHhT1b6yCuvkxGyMnl/O/c5Cyvhuf1Z
         4dAbBh4aUKe9jI2jmTjUvJ9LO/wYOLCnhYVXFEe+yeXOp1mprdroOgyYWURwdAFnk/3O
         rPgLT4TfrnkaXxV1u9Cz+5gPUbuyDfu0tojIKqI5wvm0b/03IIsygAG60YBbpLlvR2tH
         exRUtVFw4vp0wr741PrhufwiAor/PAL57fDsmWwVdVHO2hEPfb4M0n1SD3OIAe81oe7i
         pM+Q==
X-Gm-Message-State: AOAM532MVVwI9HzvFKUOqRWCp1zxBnmxsokn4cXMquT31jSQZpyFw7wE
	HYRUgiI/8yzHicnWowsLQmLmNIEHxQZbMQ==
X-Google-Smtp-Source: ABdhPJyoFyLxQNCln9Dc3SSZ6Q8s4DzdizbO1Ila/qlVhngGw+LMZOjg+oRfy31uoV4M6taPECpKMA==
X-Received: by 2002:a1c:4d14:: with SMTP id o20mr1035372wmh.74.1599511846082;
        Mon, 07 Sep 2020 13:50:46 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:45 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 12/32] config.json: Update to 3.1M3 for buildtools tarball and apply to centos7/debian8
Date: Mon,  7 Sep 2020 21:50:14 +0100
Message-Id: <20200907205034.1941516-13-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 70faf73..20e74e1 100644
--- a/config.json
+++ b/config.json
@@ -8,7 +8,8 @@
     "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:sumo", "poky:thud", "poky:warrior", "poky:zeus", "poky:master"],
     "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky:master-next" : "poky:master"},
 
-    "BUILDTOOLS_URL" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M2/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0%2Bsnapshot-20200122.sh",
+    "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200309-15/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200309.sh",
+    "BUILDTOOLS_URL" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
@@ -959,6 +960,7 @@
 
     },
     "buildtools" : {
-        "disabled-centos7*" : "${BUILDTOOLS_URL}"
+        "debian8*" : "${BUILDTOOLS_URL}",
+        "centos7*" : "${BUILDTOOLS_URL}"
     }
 }
-- 
2.25.1

