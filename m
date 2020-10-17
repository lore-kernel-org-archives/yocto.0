Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
 by mx.groups.io with SMTP id smtpd.web11.13763.1602944293678831409
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 07:18:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=keI6h/y1;
 spf=pass (domain: gmail.com, ip: 209.85.210.44, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f44.google.com with SMTP id f22so2826076ots.2
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 07:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=fai98IziBYio9mXiSLN18ADkJrd1utyp4t9bhqspDm4=;
        b=keI6h/y1uqGBPx4/l3Q+g1+7YFcO1QSXL55EK6oKLpKN9G21zSHUlGnuaccnp5C8PV
         CvYPVwkk0I7nSMQVCobLi/brsXu7jrCGtYxQtrBBlZEq585cCDcJUNvrhlvVJt0L3tdx
         jYv8pv1j1LzqWxk9r10xWSfjK2cuec8c6WR/C1O+3S2rrqCVV/m75DBDsTOppB8t9O/S
         KJz2nux1suxkhdcBGqLCiPlfgT1FQQqiTbhwS24PerOMQC4PCVmSZccMwryXWXqcKSOg
         aeR+vW2f/ABvO3WghSjk13WKqPo5v0I/82ZbUkjzLtl87wXQEhB2U8kRqv0WTlyUyT4R
         BM8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=fai98IziBYio9mXiSLN18ADkJrd1utyp4t9bhqspDm4=;
        b=QCZi3eo5JwvLq+MbDHxe7/Ku3UyAoelpjzEsPcrO6sryYjEmXTeH4x7JRZaRyt0CJX
         de3JcitR+8tyM5lEXKcLmH6uZahXc5O0AYIwbplz8SCDb0IHxNgyrueva3dhEkpjsE7V
         OPE/sLHtfmv442REaYpVB+AaYvdbHcP0TZWq3migqEAn9k8sXG4JvyLURgCUbXLuiJHo
         cr4KB5onnE9FlOhiTuF5DaDiTLoKh3oSbbbNAsaom+gkiF/oEbFSqmHh6rChsQsGGtKj
         iEekML70fqbuqnbzA3TchF8/I77qfEfCNo1vk54/cQ3+F4cx64DxmMPlKNgCRFeSdEcv
         hc6Q==
X-Gm-Message-State: AOAM531Bx8wPp7Ge86Yx77l812G+7qgt7qBF5np3NoeSAZpzFqup0+Ei
	E7/iogJzS1/KyXdRjw9wIhpolKzYn7g=
X-Google-Smtp-Source: ABdhPJxAwJ7kV3hH2i2MA/MsZUTozHBbaFsdNIpEmkXrzcYFb88I8G4t7WGwjnA3niJB3qz+ot7cLA==
X-Received: by 2002:a05:6830:30a8:: with SMTP id g8mr6326112ots.370.1602944292672;
        Sat, 17 Oct 2020 07:18:12 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id y13sm1908502ote.45.2020.10.17.07.18.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 07:18:12 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][dunfell][PATCH 2/2] README: updated branch for Dunfell
Date: Sat, 17 Oct 2020 07:18:09 -0700
Message-Id: <20201017141809.20092-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201017141809.20092-1-akuster808@gmail.com>
References: <20201017141809.20092-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 README                          | 12 ++++++------
 meta-integrity/README.md        |  8 ++------
 meta-security-compliance/README |  8 ++++----
 meta-security-isafw/README.md   |  4 ++--
 meta-tpm/README                 |  8 ++++----
 5 files changed, 18 insertions(+), 22 deletions(-)

diff --git a/README b/README
index f223fee..19b07c7 100644
--- a/README
+++ b/README
@@ -10,27 +10,27 @@ Dependencies
 This layer depends on:
 
   URI: git://git.openembedded.org/openembedded-core
-  branch: master
+  branch: dunfell
   revision: HEAD
   prio: default
 
   URI: git://git.openembedded.org/meta-openembedded/meta-oe
-  branch: master
+  branch: dunfell
   revision: HEAD
   prio: default
 
   URI: git://git.openembedded.org/meta-openembedded/meta-perl
-  branch: master
+  branch: dunfell
   revision: HEAD
   prio: default
 
   URI: git://git.openembedded.org/meta-openembedded/meta-python
-  branch: master
+  branch: dunfell
   revision: HEAD
   prio: default
 
   URI: git://git.openembedded.org/meta-openembedded/meta-networking
-  branch: master
+  branch: dunfell
   revision: HEAD
   prio: default
 
@@ -60,7 +60,7 @@ Maintenance
 Send pull requests, patches, comments or questions to yocto@lists.yoctoproject.org
 
 When sending single patches, please using something like:
-'git send-email -1 --to yocto@lists.yoctoproject.org --subject-prefix=meta-security][PATCH'
+'git send-email -1 --to yocto@lists.yoctoproject.org --subject-prefix=meta-security][dunfell][PATCH'
 
 These values can be set as defaults for this repository:
 
diff --git a/meta-integrity/README.md b/meta-integrity/README.md
index 4607948..f08a164 100644
--- a/meta-integrity/README.md
+++ b/meta-integrity/README.md
@@ -10,15 +10,11 @@ Dependencies
 This layer depends on:
 
     URI: git://git.openembedded.org/bitbake
-    branch: master
+    branch: dunfell
 
     URI: git://git.openembedded.org/openembedded-core
     layers: meta
-    branch: master
-
-    URI: git://github.com/01org/meta-security/meta-integrate
-    layers: security-framework
-    branch: master
+    branch: dunfell
 
 
 Patches
diff --git a/meta-security-compliance/README b/meta-security-compliance/README
index 320f856..86a95fb 100644
--- a/meta-security-compliance/README
+++ b/meta-security-compliance/README
@@ -9,16 +9,16 @@ Dependencies
 This layer depends on:
 
   URI: git://git.openembedded.org/bitbake
-  branch: master
+  branch: 1.48 
 
   URI: git://git.openembedded.org/openembedded-core
   layers: meta
-  branch: master
+  branch: dunfell
 
 or
 
   URI: git://git.yoctoproject.org/poky
-  branch: master
+  branch: dunfell
 
 
 
@@ -28,7 +28,7 @@ Maintenance
 Send pull requests, patches, comments or questions to yocto@yoctoproject.org
 
 When sending single patches, please using something like:
-'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-security-compliance][PATCH'
+'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-security-compliance][dunfell][PATCH'
 
 Layer Maintainer: Armin Kuster <akuster808@gmail.com>
 
diff --git a/meta-security-isafw/README.md b/meta-security-isafw/README.md
index 16041cb..48db167 100644
--- a/meta-security-isafw/README.md
+++ b/meta-security-isafw/README.md
@@ -78,12 +78,12 @@ Patches
 end pull requests, patches, comments or questions to yocto@lists.yoctoproject.org
 
 When sending single patches, please using something like:
-'git send-email -1 --to yocto@lists.yoctoproject.org --subject-prefix=meta-security-isafw][PATCH'
+'git send-email -1 --to yocto@lists.yoctoproject.org --subject-prefix=meta-security-isafw][dunfell][PATCH'
 
 These values can be set as defaults for this repository:
 
 $ git config sendemail.to yocto@lists.yoctoproject.org
-$ git config format.subjectPrefix meta-security-isafw][PATCH
+$ git config format.subjectPrefix meta-security-isafw][dunfell][PATCH
 
 Now you can just do 'git send-email origin/master' to send all local patches.
 
diff --git a/meta-tpm/README b/meta-tpm/README
index dd662b3..90e211c 100644
--- a/meta-tpm/README
+++ b/meta-tpm/README
@@ -9,12 +9,12 @@ Dependencies
 This layer depends on:
 
   URI: git://git.openembedded.org/openembedded-core
-  branch: master
+  branch: dunfell
   revision: HEAD
   prio: default
 
   URI: git://git.openembedded.org/meta-openembedded/meta-oe
-  branch: master
+  branch: dunfell
   revision: HEAD
   prio: default
 
@@ -41,12 +41,12 @@ Maintenance
 Send pull requests, patches, comments or questions to yocto@yoctoproject.org
 
 When sending single patches, please using something like:
-'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-security][PATCH'
+'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-security][dunfell][PATCH'
 
 These values can be set as defaults for this repository:
 
 $ git config sendemail.to yocto@yoctoproject.org
-$ git config format.subjectPrefix meta-security][PATCH
+$ git config format.subjectPrefix meta-security][dunfell][PATCH
 
 Now you can just do 'git send-email origin/master' to send all local patches.
 
-- 
2.17.1

