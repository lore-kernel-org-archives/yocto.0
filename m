Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web11.20838.1599740795228177807
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PEgCyMPW;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f66.google.com with SMTP id w2so5447867wmi.1
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Au3qvifVt9ol3hhz9bkO4Q7vyanYHggGO8Fhn7qU9FU=;
        b=PEgCyMPWeLYdtt25R+upuL8dZHm3VBjhb2lndWqRG/oJaTT+P05DpzQM0e7ChREC6I
         QQppQvVyUkMVkPeBHlDSx2ATQVmPKWa2JlPCoKY7lUHyHq8QZBQFdSgkAgGTUPpZPIeq
         HzQATMIdnFnPqwyMfSZhTfqWK7DGLzYlEeCK4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Au3qvifVt9ol3hhz9bkO4Q7vyanYHggGO8Fhn7qU9FU=;
        b=K8FZMXoSYmxNIUytStNZ71rqArWX1Czl5GTEaB1IUX/dDphQEziy+6QAWpMVR+x5OA
         8ED9B19E85kJv0SNEmKeqP8oBA9oIeCL3ZdInsbWH9IIWwlQ3U36bcsJHAjdRE/1Vdxo
         HwQhLknN8x6uekFj7j6STRoskry7BwDjh+vUTnzEgPeoAAWkwORZP2RwAMCuoCaZE5gJ
         SjQv+v3aWaEmXiotgowRdeRLtxLk666+9izlVqeasGqSY0AtpI0kpzv2l5s3aLC1SrZF
         SyEPrIlGGEj4E+bsu6j8YbzxVfxZBW/V/AgcxxdCKV3U9DwJ8AVzPLJ0shtO2rTDBE3j
         /WKA==
X-Gm-Message-State: AOAM530hKkDjWhjIBfrppOl5iwmeTLE+pQzz9ebdLNvFmAZzOirU/8SE
	3qABK5dJNPI78hKK44fDH8p2lKyktVUh1g==
X-Google-Smtp-Source: ABdhPJzowhWABO09gUadmosZO1qLBefZBXvdal0A271Z64szQYpl6fviSFIcQcOuJidnNSeveVOqlg==
X-Received: by 2002:a1c:2b43:: with SMTP id r64mr5395395wmr.164.1599740793536;
        Thu, 10 Sep 2020 05:26:33 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:33 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 41/41] config.json: Update buildtools config
Date: Thu, 10 Sep 2020 13:25:53 +0100
Message-Id: <20200910122553.2040430-41-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Need to use buildtools on centos8 and fedora32 as they lack makeinfo
as part of the default install now.

Also use buildtools to standard and extended as appropriate.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/config.json b/config.json
index c0cf55b..dac5374 100644
--- a/config.json
+++ b/config.json
@@ -8,9 +8,8 @@
     "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:sumo", "poky:thud", "poky:warrior", "poky:zeus", "poky:master"],
     "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky:master-next" : "poky:master"},
 
-    "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200309-15/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200309.sh",
-    "BUILDTOOLS_URL_TEMPLOCAL2" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
-    "BUILDTOOLS_URL" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.2_M1/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.1+snapshot-20200617.sh",
+    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200907-11/buildtools/x86_64-buildtools-nativesdk-standalone-3.0.4.sh;f0c06b2cfd2f5d92ef5fb592f4d726f9ad270d83d7846f817a08abfd017d159d",
+    "BUILDTOOLS_URL_EXT" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200907-11/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0.4.sh;a5fea6b64109a604f3718dfb2a7b5ad32402d13ed5472d9d791e7bf9900621bd",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
@@ -876,6 +875,11 @@
     "buildtools" : {
         "debian8*" : "${BUILDTOOLS_URL}",
         "centos7*" : "${BUILDTOOLS_URL}",
+        "centos8*" : "${BUILDTOOLS_URL_EXT}",
+        "debian10*" : "${BUILDTOOLS_URL_EXT}",
+        "tumbleweed*" : "${BUILDTOOLS_URL_EXT}",
+        "fedora31*" : "${BUILDTOOLS_URL_EXT}",
+        "fedora32*" : "${BUILDTOOLS_URL_EXT}",
         "perf-centos7*" : "${BUILDTOOLS_URL}"
     }
 }
-- 
2.25.1

