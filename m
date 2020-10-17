Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web12.2949.1602957848404105851
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:04:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FsJQIjQF;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id gv6so3239154pjb.4
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=fai98IziBYio9mXiSLN18ADkJrd1utyp4t9bhqspDm4=;
        b=FsJQIjQFdFP29AhUZgh7ZlJ8iMclO33oPo/r1aFJslngn/T45AVb6UHvF+C8m102/g
         jakwAbDKx8LW0mF8mB5R8314cUPlIzpxcdXDgVbs0fi6uwHuHOsZd93yagY/cPZ0mfoi
         Eh32taDvvjyKBh9lDjzM5V1TGlHeQMVGwFD8kQKFvBfkquWpgVWqWycOfU0pSxnFMPtc
         lHlOzyIEBMf3GYX+xzaQj8tLlIJONZJcSsg2avtEtXqcea9/o+SVV1RH0d0vqTHgNWsK
         xilTbN8eBZsZ7jqDr3JRCKMMdrXGGIayT+6rbNmwKZl8hNoBLCNBA0KPlJeq+dm0LIS6
         PaQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=fai98IziBYio9mXiSLN18ADkJrd1utyp4t9bhqspDm4=;
        b=NIFAm2OTBu5DsaR9y5K3LCfIKil1ffS5gsxdpHs0s5oHjHtQuYdgy0tZtRmdG1pUxy
         Z3ADRIpoz6oIgVpsxenpWGMVjFWT4jWlWrCJsFDNLA0MgeGfiLz7mXvyFIhfKwVNX8U2
         jU4GzY0DOlIZmlDj/aQIJns1x2w10uvAx2BBOZlU6V4JQF/5XvPlvDoacXabJ6A3O+8k
         rknCsjKklj6poDhcnRgqmMDssBboA8Uh0JjawH6CMteJrWtgOrdza11S2eiGMa2VzcHl
         FKy/pOsy0mnw/wvd0V9q2KMbkrivvRNtVPv/f86YL+NOZ9G/cCiJvo+hkp9MZ8kTG0t9
         wMTA==
X-Gm-Message-State: AOAM533owmHVhNw8KV3QsvQ36Nmsu7p1s+uiFVYf+ROx6rViZlFJg4Wt
	QUOtkWxmgfQuNUR7X9nx2CwqAyQwxtI=
X-Google-Smtp-Source: ABdhPJwnDN8jSEsIX0tWwDRCGuMoFxnMuB3Hlzl9NM9hdpdh/zEnG96ddNjnMK8Bw+JXfmzc+TMrBA==
X-Received: by 2002:a17:90a:ce8c:: with SMTP id g12mr9418416pju.185.1602957847576;
        Sat, 17 Oct 2020 11:04:07 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.04.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:04:06 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 30/32] README: updated branch for Dunfell
Date: Sat, 17 Oct 2020 11:03:27 -0700
Message-Id: <a8340f10ead7d36d2dd06e0e17a9025bd4d4cc7d.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

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

