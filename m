Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BFCEC433F5
	for <webhook@archiver.kernel.org>; Sat, 19 Mar 2022 15:28:24 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web11.8235.1647703703274180018
 for <yocto@lists.yoctoproject.org>;
 Sat, 19 Mar 2022 08:28:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ZSFFf0S+;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id j10so2271163wrb.13
        for <yocto@lists.yoctoproject.org>;
 Sat, 19 Mar 2022 08:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EQ9vRxEcKEf8nmFT+NQo7OsPSbhZimxzXRaHZk/7M0o=;
        b=ZSFFf0S+QV1MnWT3fx0lFMtPbEutQ9vdlLCxiFPGLkhAhXUGasMZM5D3jy2zs2VbD9
         j2JykLbAq1vbcKNF7QaPiepv5w1v5pXliIQAIzHnrxY7HGjugltR1S32hpV3m49JxWF+
         I64U5fyCiNJI3QfGmweAs2l1jBSaNz8OGxnXk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EQ9vRxEcKEf8nmFT+NQo7OsPSbhZimxzXRaHZk/7M0o=;
        b=3eWpjm/iLPzZjHh9mZexMLsCnpDNy3dkIe5j3IDal+wovC1LMKieE2DK6qTmkt3596
         FE1jcMbcf8C7NlU7Enpn0ITN+fCXdHmoSrOXOKvda5DI+nO9i05jhX5diQGkFpJQO7av
         QoUtK3Cyoq6/tLgIgCc0AB6cnh/etKpaJRzI65LIhwfxNE/yszTnRO2I1ZoRkEKEhtiE
         b//S26OrycU5xoh6o3Kp11os0/8SKOKCdIpUlOppVBGcnByBqjuphHQSdxQyE6a5z0XO
         2DWHwix/lUr06GXF3Y/gVf6h+EyOvrwu+ksnSQDFoFonY/pAoxoAtL9EX6/zagDzdxbL
         DtWA==
X-Gm-Message-State: AOAM531oVWbkoLG3Ja8rKl/LVo2YrwXDtImYH59AghfLxrYC3gCfuiqJ
	hD4H0u3Y1M2dJMSUhivagJfY71AW9qbfekVZ
X-Google-Smtp-Source: 
 ABdhPJxq3lKc0G+ta0MSoO0tF0fFvmvzkc1kGD9ObnO4jj6MpjVqvxk1+b42So/hbLrjznKkuQXG+g==
X-Received: by 2002:a5d:6d81:0:b0:203:e187:1faa with SMTP id
 l1-20020a5d6d81000000b00203e1871faamr12393507wrs.381.1647703701320;
        Sat, 19 Mar 2022 08:28:21 -0700 (PDT)
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:3ad7:b7e1:8044:d0f5])
        by smtp.gmail.com with ESMTPSA id
 f7-20020a0560001a8700b00203c23e55e0sm8898421wry.78.2022.03.19.08.28.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Mar 2022 08:28:20 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <foss+yocto@0leil.net>,
	Nicolas Dechesne <nicolas.dechesne@linaro.org>,
	Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [yocto-autobuilder-helper] [PATCH] scripts/run-docs-build: Support
 auto generation of switchers.js and poky.yaml
Date: Sat, 19 Mar 2022 15:28:19 +0000
Message-Id: <20220319152819.1110633-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Mar 2022 15:28:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56505

This uses the set_versions.py script from the docs master branch to handle
creation of the swictchers.js version information as well as the data in
poky.yaml.

This allows patches to those sections of the docs to be dropped.

It is assumed the patch to use set_versions is applied to the docs transitions
branch so that it's switchers.js files no longer need to be tweaked.

This does lead to user visible changes on the website:

- Older versioned released docs gain their current version and the
  latest version listed in the switcher rather than being unlisted
- The list of releases is normally filtered down to our active ones
  (hardknott, honister and dev right now)
- 3.3's doc references to gatesgath are corrected to hardknott
- Docs for unversioned release branches (not linked on the website) now
  use 3.1.999 versioning instead of confusing them with the last relased version
- 3.1.13 refers to 3.1.13 instead of 3.1.12

all of which seem to be reasonable improvements.

The big advantage of these changes is that with a single change to the script
in the master branch, the right thing should happen for all the current docs
and at release time, only a docs rebuild should need to be triggered after tags
are pushed.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 ...01-releases-update-to-include-3.1.14.patch | 41 ------------
 ...umentation-update-for-3.1.14-release.patch | 23 -------
 ...umentation-prepare-for-3.3.5-release.patch | 53 ---------------
 .../0001-conf-update-for-release.patch        | 17 -----
 ...honister-updates-for-recent-releases.patch | 67 -------------------
 ...001-releases-update-to-include-3.4.2.patch | 63 -----------------
 .../0001-conf-update-for-release.patch        | 17 -----
 scripts/run-docs-build                        | 24 +++++--
 8 files changed, 20 insertions(+), 285 deletions(-)
 delete mode 100644 scripts/docs-build-patches/yocto-3.1.14/0001-releases-update-to-include-3.1.14.patch
 delete mode 100644 scripts/docs-build-patches/yocto-3.4.2/0001-releases-update-to-include-3.4.2.patch

diff --git a/scripts/docs-build-patches/yocto-3.1.14/0001-releases-update-to-include-3.1.14.patch b/scripts/docs-build-patches/yocto-3.1.14/0001-releases-update-to-include-3.1.14.patch
deleted file mode 100644
index ee2983a..0000000
--- a/scripts/docs-build-patches/yocto-3.1.14/0001-releases-update-to-include-3.1.14.patch
+++ /dev/null
@@ -1,41 +0,0 @@
-From 2e3ec94e906a255cd7b22dfca29a6148fc433732 Mon Sep 17 00:00:00 2001
-From: Michael Halstead <mhalstead@linuxfoundation.org>
-Date: Wed, 16 Feb 2022 23:04:15 -0800
-Subject: [PATCH 1/2] releases: update to include 3.1.14
-
-Adding 3.1.14 to documentation switcher and release list.
-
-Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
----
- documentation/releases.rst               | 1 +
- documentation/sphinx-static/switchers.js | 2 +-
- 2 files changed, 2 insertions(+), 1 deletion(-)
-
-diff --git a/documentation/releases.rst b/documentation/releases.rst
-index 57e4566e1..affe63403 100644
---- a/documentation/releases.rst
-+++ b/documentation/releases.rst
-@@ -39,6 +39,7 @@ Release Series 3.1 (dunfell)
- - :yocto_docs:`3.1.11 Documentation </3.1.11>`
- - :yocto_docs:`3.1.12 Documentation </3.1.12>`
- - :yocto_docs:`3.1.13 Documentation </3.1.13>`
-+- :yocto_docs:`3.1.14 Documentation </3.1.14>`
- 
- ==========================
-  Outdated Release Manuals
-diff --git a/documentation/sphinx-static/switchers.js b/documentation/sphinx-static/switchers.js
-index bda15485c..1d65fa7fa 100644
---- a/documentation/sphinx-static/switchers.js
-+++ b/documentation/sphinx-static/switchers.js
-@@ -6,7 +6,7 @@
-     '3.4.1': '3.4.1',
-     '3.3.4': '3.3.4',
-     '3.2.4': '3.2.4',
--    '3.1.13': '3.1.13',
-+    '3.1.14': '3.1.14',
-     '3.0.4': '3.0.4',
-     '2.7.4': '2.7.4',
-   };
--- 
-2.35.1
-
diff --git a/scripts/docs-build-patches/yocto-3.1.14/0002-documentation-update-for-3.1.14-release.patch b/scripts/docs-build-patches/yocto-3.1.14/0002-documentation-update-for-3.1.14-release.patch
index aef59a3..c1d303c 100644
--- a/scripts/docs-build-patches/yocto-3.1.14/0002-documentation-update-for-3.1.14-release.patch
+++ b/scripts/docs-build-patches/yocto-3.1.14/0002-documentation-update-for-3.1.14-release.patch
@@ -23,26 +23,3 @@ index 0d61afc9d..01d5e00c1 100644
  bitbake_version = "1.46"
  
  # String used in sidebar
-diff --git a/documentation/poky.yaml b/documentation/poky.yaml
-index 8da5f5915..e37ea420a 100644
---- a/documentation/poky.yaml
-+++ b/documentation/poky.yaml
-@@ -1,11 +1,11 @@
--DISTRO : "3.1.13"
-+DISTRO : "3.1.14"
- DISTRO_NAME_NO_CAP : "dunfell"
- DISTRO_NAME : "Dunfell"
- DISTRO_NAME_NO_CAP_MINUS_ONE : "zeus"
--YOCTO_DOC_VERSION : "3.1.13"
-+YOCTO_DOC_VERSION : "3.1.14"
- YOCTO_DOC_VERSION_MINUS_ONE : "3.0.4"
--DISTRO_REL_TAG : "yocto-3.1.13"
--POKYVERSION : "23.0.13"
-+DISTRO_REL_TAG : "yocto-3.1.14"
-+POKYVERSION : "23.0.14"
- YOCTO_POKY : "poky-&DISTRO_NAME_NO_CAP;-&POKYVERSION;"
- YOCTO_DL_URL : "https://downloads.yoctoproject.org"
- YOCTO_AB_URL : "https://autobuilder.yoctoproject.org"
--- 
-2.35.1
-
diff --git a/scripts/docs-build-patches/yocto-3.3.5/0001-documentation-prepare-for-3.3.5-release.patch b/scripts/docs-build-patches/yocto-3.3.5/0001-documentation-prepare-for-3.3.5-release.patch
index ec26d67..1bd2d89 100644
--- a/scripts/docs-build-patches/yocto-3.3.5/0001-documentation-prepare-for-3.3.5-release.patch
+++ b/scripts/docs-build-patches/yocto-3.3.5/0001-documentation-prepare-for-3.3.5-release.patch
@@ -25,56 +25,3 @@ index e42e7b18a..fc064bf32 100644
  bitbake_version = "1.50"
  
  # String used in sidebar
-diff --git a/documentation/poky.yaml b/documentation/poky.yaml
-index 30eb45379..32849bc70 100644
---- a/documentation/poky.yaml
-+++ b/documentation/poky.yaml
-@@ -1,12 +1,12 @@
--DISTRO : "3.3.4"
-+DISTRO : "3.3.5"
- DISTRO_NAME_NO_CAP : "hardknott"
- DISTRO_NAME : "Hardknott"
- DISTRO_NAME_NO_CAP_MINUS_ONE : "gatesgarth"
- DISTRO_NAME_NO_CAP_LTS : "gatesgarth"
--YOCTO_DOC_VERSION : "3.3.4"
-+YOCTO_DOC_VERSION : "3.3.5"
- YOCTO_DOC_VERSION_MINUS_ONE : "3.2.4"
--DISTRO_REL_TAG : "yocto-3.3.4"
--POKYVERSION : "25.0.4"
-+DISTRO_REL_TAG : "yocto-3.3.5"
-+POKYVERSION : "25.0.5"
- YOCTO_POKY : "poky-&DISTRO_NAME_NO_CAP;-&POKYVERSION;"
- YOCTO_DL_URL : "https://downloads.yoctoproject.org"
- YOCTO_AB_URL : "https://autobuilder.yoctoproject.org"
-diff --git a/documentation/releases.rst b/documentation/releases.rst
-index acee21d6b..1fb6054bc 100644
---- a/documentation/releases.rst
-+++ b/documentation/releases.rst
-@@ -10,6 +10,7 @@
- 
- - :yocto_docs:`3.4 Documentation </3.4>`
- - :yocto_docs:`3.4.1 Documentation </3.4.1>`
-+- :yocto_docs:`3.4.1 Documentation </3.4.2>`
- 
- *******************************
- 3.3 'hardknott' Release Series
-@@ -20,6 +21,7 @@
- - :yocto_docs:`3.3.2 Documentation </3.3.2>`
- - :yocto_docs:`3.3.3 Documentation </3.3.3>`
- - :yocto_docs:`3.3.4 Documentation </3.3.4>`
-+- :yocto_docs:`3.3.5 Documentation </3.3.5>`
- 
- ****************************
- 3.1 'dunfell' Release Series
-@@ -38,6 +40,8 @@
- - :yocto_docs:`3.1.10 Documentation </3.1.10>`
- - :yocto_docs:`3.1.11 Documentation </3.1.11>`
- - :yocto_docs:`3.1.12 Documentation </3.1.12>`
-+- :yocto_docs:`3.1.13 Documentation </3.1.13>`
-+- :yocto_docs:`3.1.14 Documentation </3.1.14>`
- 
- ==========================
-  Previous Release Manuals
--- 
-2.35.1
-
diff --git a/scripts/docs-build-patches/yocto-3.3/0001-conf-update-for-release.patch b/scripts/docs-build-patches/yocto-3.3/0001-conf-update-for-release.patch
index 79b4cde..0b632f9 100644
--- a/scripts/docs-build-patches/yocto-3.3/0001-conf-update-for-release.patch
+++ b/scripts/docs-build-patches/yocto-3.3/0001-conf-update-for-release.patch
@@ -29,20 +29,3 @@ index 5a2e25f7b..ab1b2b14c 100644
  
  # String used in sidebar
  version = 'Version: ' + current_version
-diff --git a/documentation/sphinx-static/switchers.js b/documentation/sphinx-static/switchers.js
-index 7a4edc9e7..96efab2e8 100644
---- a/documentation/sphinx-static/switchers.js
-+++ b/documentation/sphinx-static/switchers.js
-@@ -2,7 +2,8 @@
-   'use strict';
- 
-   var all_versions = {
--    'dev': 'dev (3.3)',
-+    'dev': 'dev (3.4)',
-+    '3.3': '3.3',
-     '3.2.3': '3.2.3',
-     '3.1.6': '3.1.6',
-     '3.0.4': '3.0.4',
--- 
-2.31.1
-
diff --git a/scripts/docs-build-patches/yocto-3.4.1/0002-honister-updates-for-recent-releases.patch b/scripts/docs-build-patches/yocto-3.4.1/0002-honister-updates-for-recent-releases.patch
index 4e72db1..dc22558 100644
--- a/scripts/docs-build-patches/yocto-3.4.1/0002-honister-updates-for-recent-releases.patch
+++ b/scripts/docs-build-patches/yocto-3.4.1/0002-honister-updates-for-recent-releases.patch
@@ -24,70 +24,3 @@ index eff758a7b..ef369b7f1 100644
  bitbake_version = "1.52"
  
  # String used in sidebar
-diff --git a/documentation/poky.yaml b/documentation/poky.yaml
-index 392e3bd63..11e209e30 100644
---- a/documentation/poky.yaml
-+++ b/documentation/poky.yaml
-@@ -1,12 +1,12 @@
--DISTRO : "3.4"
-+DISTRO : "3.4.1"
- DISTRO_NAME_NO_CAP : "honister"
- DISTRO_NAME : "Honister"
- DISTRO_NAME_NO_CAP_MINUS_ONE : "hardknott"
- DISTRO_NAME_NO_CAP_LTS : "dunfell"
--YOCTO_DOC_VERSION : "3.4"
-+YOCTO_DOC_VERSION : "3.4.1"
- YOCTO_DOC_VERSION_MINUS_ONE : "3.3.4"
--DISTRO_REL_TAG : "yocto-3.4"
--POKYVERSION : "26.0.0"
-+DISTRO_REL_TAG : "yocto-3.4.1"
-+POKYVERSION : "26.0.1"
- YOCTO_POKY : "poky-&DISTRO_NAME_NO_CAP;-&POKYVERSION;"
- YOCTO_DL_URL : "https://downloads.yoctoproject.org"
- YOCTO_AB_URL : "https://autobuilder.yoctoproject.org"
-diff --git a/documentation/releases.rst b/documentation/releases.rst
-index a6c9a47b8..16ecbf712 100644
---- a/documentation/releases.rst
-+++ b/documentation/releases.rst
-@@ -4,6 +4,13 @@
-  Supported Release Manuals
- ===========================
- 
-+*****************************
-+Release Series 3.4 (honister)
-+*****************************
-+
-+- :yocto_docs:`3.4 Documentation </3.4>`
-+- :yocto_docs:`3.4.1 Documentation </3.4.1>`
-+
- ******************************
- Release Series 3.3 (hardknott)
- ******************************
-@@ -30,6 +37,7 @@ Release Series 3.1 (dunfell)
- - :yocto_docs:`3.1.9 Documentation </3.1.9>`
- - :yocto_docs:`3.1.10 Documentation </3.1.10>`
- - :yocto_docs:`3.1.11 Documentation </3.1.11>`
-+- :yocto_docs:`3.1.12 Documentation </3.1.12>`
- 
- ==========================
-  Outdated Release Manuals
-diff --git a/documentation/sphinx-static/switchers.js b/documentation/sphinx-static/switchers.js
-index b15f5b3c1..056a8926b 100644
---- a/documentation/sphinx-static/switchers.js
-+++ b/documentation/sphinx-static/switchers.js
-@@ -3,10 +3,10 @@
- 
-   var all_versions = {
-     'dev': 'dev (3.5)',
--    '3.4': '3.4',
-+    '3.4.1': '3.4.1',
-     '3.3.4': '3.3.4',
-     '3.2.4': '3.2.4',
--    '3.1.11': '3.1.11',
-+    '3.1.12': '3.1.12',
-     '3.0.4': '3.0.4',
-     '2.7.4': '2.7.4',
-   };
--- 
-2.35.1
-
diff --git a/scripts/docs-build-patches/yocto-3.4.2/0001-releases-update-to-include-3.4.2.patch b/scripts/docs-build-patches/yocto-3.4.2/0001-releases-update-to-include-3.4.2.patch
deleted file mode 100644
index 115e1e7..0000000
--- a/scripts/docs-build-patches/yocto-3.4.2/0001-releases-update-to-include-3.4.2.patch
+++ /dev/null
@@ -1,63 +0,0 @@
-From 3a72177f8ce5a52bece7d6d2f11514c47256a6f9 Mon Sep 17 00:00:00 2001
-From: Michael Halstead <mhalstead@linuxfoundation.org>
-Date: Sun, 20 Feb 2022 19:33:01 -0800
-Subject: [PATCH 1/2] releases: update to include 3.4.2
-
-Adding 3.4.2 to documentation switcher and release list.
-
-Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
----
- documentation/poky.yaml                  | 8 ++++----
- documentation/releases.rst               | 1 +
- documentation/sphinx-static/switchers.js | 2 +-
- 3 files changed, 6 insertions(+), 5 deletions(-)
-
-diff --git a/documentation/poky.yaml b/documentation/poky.yaml
-index 11e209e30..058f76e50 100644
---- a/documentation/poky.yaml
-+++ b/documentation/poky.yaml
-@@ -1,12 +1,12 @@
--DISTRO : "3.4.1"
-+DISTRO : "3.4.2"
- DISTRO_NAME_NO_CAP : "honister"
- DISTRO_NAME : "Honister"
- DISTRO_NAME_NO_CAP_MINUS_ONE : "hardknott"
- DISTRO_NAME_NO_CAP_LTS : "dunfell"
--YOCTO_DOC_VERSION : "3.4.1"
-+YOCTO_DOC_VERSION : "3.4.2"
- YOCTO_DOC_VERSION_MINUS_ONE : "3.3.4"
--DISTRO_REL_TAG : "yocto-3.4.1"
--POKYVERSION : "26.0.1"
-+DISTRO_REL_TAG : "yocto-3.4.2"
-+POKYVERSION : "26.0.2"
- YOCTO_POKY : "poky-&DISTRO_NAME_NO_CAP;-&POKYVERSION;"
- YOCTO_DL_URL : "https://downloads.yoctoproject.org"
- YOCTO_AB_URL : "https://autobuilder.yoctoproject.org"
-diff --git a/documentation/releases.rst b/documentation/releases.rst
-index 16ecbf712..c4bfa857a 100644
---- a/documentation/releases.rst
-+++ b/documentation/releases.rst
-@@ -10,6 +10,7 @@ Release Series 3.4 (honister)
- 
- - :yocto_docs:`3.4 Documentation </3.4>`
- - :yocto_docs:`3.4.1 Documentation </3.4.1>`
-+- :yocto_docs:`3.4.2 Documentation </3.4.2>`
- 
- ******************************
- Release Series 3.3 (hardknott)
-diff --git a/documentation/sphinx-static/switchers.js b/documentation/sphinx-static/switchers.js
-index 056a8926b..c40823d8d 100644
---- a/documentation/sphinx-static/switchers.js
-+++ b/documentation/sphinx-static/switchers.js
-@@ -3,7 +3,7 @@
- 
-   var all_versions = {
-     'dev': 'dev (3.5)',
--    '3.4.1': '3.4.1',
-+    '3.4.2': '3.4.2',
-     '3.3.4': '3.3.4',
-     '3.2.4': '3.2.4',
-     '3.1.12': '3.1.12',
--- 
-2.35.1
-
diff --git a/scripts/docs-build-patches/yocto-3.4/0001-conf-update-for-release.patch b/scripts/docs-build-patches/yocto-3.4/0001-conf-update-for-release.patch
index a940eb0..2daf4f4 100644
--- a/scripts/docs-build-patches/yocto-3.4/0001-conf-update-for-release.patch
+++ b/scripts/docs-build-patches/yocto-3.4/0001-conf-update-for-release.patch
@@ -35,20 +35,3 @@ index 8e0847938..104b49ea0 100644
  
  # String used in sidebar
  version = 'Version: ' + current_version
-diff --git a/documentation/sphinx-static/switchers.js b/documentation/sphinx-static/switchers.js
-index 1e37b625a..6038dbb5a 100644
---- a/documentation/sphinx-static/switchers.js
-+++ b/documentation/sphinx-static/switchers.js
-@@ -2,7 +2,8 @@
-   'use strict';
- 
-   var all_versions = {
--    'dev': 'dev (3.4)',
-+    'dev': 'dev (3.5)',
-+    '3.4': '3.4',
-     '3.3.3': '3.3.3',
-     '3.2.4': '3.2.4',
-     '3.1.11': '3.1.11',
--- 
-2.31.1
-
diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index ceda213..685fe10 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -69,10 +69,11 @@ rsync -irlp --checksum --ignore-times --delete bitbake docs@docs.yoctoproject.or
 
 cd $ypdocs
 
+# transition must build after master for the switchers.js file
 # Again, keeping even the no longer supported releases (see above comment)
 first_sphinx_commit=01dd5af7954e24552aca022917669b27bb0541ed
 first_dunfell_sphinx_commit=c25fe058b88b893b0d146f3ed27320b47cdec236
-for branch in dunfell transition $(git branch --remote --contains "$first_sphinx_commit" --format '%(refname:lstrip=3)') $(git tag --contains "$first_sphinx_commit" --contains "$first_dunfell_sphinx_commit" 'yocto-*'); do
+for branch in dunfell $(git branch --remote --contains "$first_sphinx_commit" --format '%(refname:lstrip=3)') $(git tag --contains "$first_sphinx_commit" --contains "$first_dunfell_sphinx_commit" 'yocto-*') transition; do
     if [ "$branch" = "HEAD" ]; then
         continue
     fi
@@ -92,6 +93,20 @@ for branch in dunfell transition $(git branch --remote --contains "$first_sphinx
     fi
 
     git checkout master releases.rst
+    if [ -e poky.yaml ]; then
+        git checkout master sphinx-static/switchers.js.in
+        cp poky.yaml poky.yaml.in
+        git checkout master set_versions.py
+        case $branch in
+            yocto-*)
+                ./set_versions.py $(echo "$branch" | sed 's/yocto-//')
+                ;;
+            *)
+                ./set_versions.py
+                ;;
+        esac
+    fi
+
     make clean
     make publish
 
@@ -109,6 +124,7 @@ for branch in dunfell transition $(git branch --remote --contains "$first_sphinx
 
     cp -r ./_build/final/* $outputdir/$branch
     git reset --hard
+    git clean -f
 done
 
 # get current release (e.g. most recent tag), and add a 'current' link
@@ -116,9 +132,9 @@ tag=$(git tag --list 'yocto-*' | sort --version-sort | tail -1 | cut -c7-)
 echo Linking to $tag as current
 ln -s $tag $outputdir/current
 
-# Update switchers.js with the copy from master ypdocs
-cd $outputdir
-find . -name switchers.js -not -path ./_static/switchers.js -exec cp ./_static/switchers.js {} \;
+# Update bitbake switchers.js with the copy from master ypdocs
+cd $outputdir/bitbake
+find . -name switchers.js -exec cp ./../_static/switchers.js {} \;
 
 cd $outputdir
 rsync -irlp --checksum --ignore-times --delete . docs@docs.yoctoproject.org:docs/
-- 
2.32.0


