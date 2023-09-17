Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 487E2CD37B4
	for <webhook@archiver.kernel.org>; Sun, 17 Sep 2023 23:55:38 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
 by mx.groups.io with SMTP id smtpd.web10.41002.1694994936959044289
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Sep 2023 16:55:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CfVFdKqv;
 spf=pass (domain: gmail.com, ip: 209.85.128.171, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-59bebd5bdadso39757397b3.0
        for <yocto@lists.yoctoproject.org>; Sun, 17 Sep 2023 16:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694994936; x=1695599736; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=AfCeNYWRLIx1NZ4aVyxPodjfE7b0O1vNK+aKjHBFW+U=;
        b=CfVFdKqv0X4MdykRfzsjlOTbNnXV8fQmGeDCVa63Gadu7CjBNC260TRoaklisU7eQx
         mGe0EVV25fyTrB6orcbe3uSTmD0UKSZ2F7ITPPjWwThivuAm6izXWpJtgtO4JcwwYbEj
         sZbvwb0ZyVXZImsnIhHdQTvdbhUBreNvbf5Utfzu2H/Pej95JjgccuXi8n25Bn6kRvpN
         GaNAwEIHX9R9mnpcrif4OnWwVVPtvExErehRWmgZyykO6tkjuQhWQGTmLjBJv5TwALHP
         lxADKi0q7Nq6hiqfB+bkgFEs8Q51RcUsIEVPi7CguJuvLonY5I2QhxFnqpvCL52VLyZY
         4t8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694994936; x=1695599736;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AfCeNYWRLIx1NZ4aVyxPodjfE7b0O1vNK+aKjHBFW+U=;
        b=PpmgfB9pI9kz5HTmqnLmGdawT1MaAyDWTJki5n39wQK8p1ccoX6u8qqj5mHeq1Ykbv
         oNMc46CZ298PMyTSjbtfUADv9BAAORATB2DDVFUXLAr0jZtOLF7DwK8atBJs8HzaAklK
         ZAK4r0KmggfRP4dacpNAvLrtqp3C8WyIBgs+NzDPkt9P12fNcUiiptok2Ow9VrvQt4tR
         VeI4EYfnVrkXpFI73OprTDEOR2SJgqg8g1M/O6JOM5TP3btjSSGPJn+OYAhmiaOlwh0j
         9n06orGxwvqPHD5mP/cEWBohi36Ga1iYtgtmP5UIXiqzmVqkZ/6gGEugPUrhNQpJkuDh
         VVlg==
X-Gm-Message-State: AOJu0YxemCnVlTzXJQ3DhxhJYpZOD5KS87J1hzga6iwoQGWvDBgiyP3J
	JN23nv032FfGX+adD7Xpyka46i1VCtc=
X-Google-Smtp-Source: AGHT+IGLOFU35sBQyTr+GUajWvfgj1EFX00F4ZLL7KfvPdMCqTgRXv4riVLv4T2loCnkb2hcnlG1qg==
X-Received: by 2002:a0d:d204:0:b0:584:2ea4:a24b with SMTP id u4-20020a0dd204000000b005842ea4a24bmr7534149ywd.19.1694994935703;
        Sun, 17 Sep 2023 16:55:35 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:f623:9dad:2eba:f0e5])
        by smtp.gmail.com with ESMTPSA id x9-20020a0dd509000000b0058c4e33b2d6sm2209291ywd.90.2023.09.17.16.55.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Sep 2023 16:55:35 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/7] openscap: update to 1.3.9
Date: Sun, 17 Sep 2023 19:55:28 -0400
Message-Id: <20230917235534.2871544-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Sep 2023 23:55:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61024

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...ts.txt-make-2-variables-configurable.patch | 37 -------------------
 .../{openscap_1.3.8.bb => openscap_1.3.9.bb}  |  6 +--
 2 files changed, 2 insertions(+), 41 deletions(-)
 delete mode 100644 recipes-compliance/openscap/files/0003-CMakeLists.txt-make-2-variables-configurable.patch
 rename recipes-compliance/openscap/{openscap_1.3.8.bb => openscap_1.3.9.bb} (95%)

diff --git a/recipes-compliance/openscap/files/0003-CMakeLists.txt-make-2-variables-configurable.patch b/recipes-compliance/openscap/files/0003-CMakeLists.txt-make-2-variables-configurable.patch
deleted file mode 100644
index 953b0d9..0000000
--- a/recipes-compliance/openscap/files/0003-CMakeLists.txt-make-2-variables-configurable.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-From f99c3f1f516a84d33794f8e3da59adea1a12ef54 Mon Sep 17 00:00:00 2001
-From: Kai Kang <kai.kang@windriver.com>
-Date: Tue, 20 Jun 2023 22:42:51 +0800
-Subject: [PATCH] CMakeLists.txt: make 2 variables configurable
-
-Variables PREFERRED_PYTHON_PATH and PYTHON3_PATH are set with
-${PYTHON_EXECUTABLE}. For cross compile, ${PYTHON_EXECUTABLE} may point
-to other path rather than standard dir such as /usr/bin. Then the
-generated library file contains such path which should NOT. Update to
-make variables PREFERRED_PYTHON_PATH and PYTHON3_PATH configurable to
-avoid such issue.
-
-Upstream-Status: Submitted [https://github.com/OpenSCAP/openscap/pull/1990]
-
-Signed-off-by: Kai Kang <kai.kang@windriver.com>
----
- CMakeLists.txt | 4 ++--
- 1 file changed, 2 insertions(+), 2 deletions(-)
-
-diff --git a/CMakeLists.txt b/CMakeLists.txt
-index 5db014e77..74628cdd4 100644
---- a/CMakeLists.txt
-+++ b/CMakeLists.txt
-@@ -125,8 +125,8 @@ endif()
- find_package(PythonInterp 3)
- find_package(PythonLibs 3)
- 
--set(PREFERRED_PYTHON_PATH "${PYTHON_EXECUTABLE}")
--set(PYTHON3_PATH "${PYTHON_EXECUTABLE}")
-+set(PREFERRED_PYTHON_PATH "${PYTHON_EXECUTABLE}" CACHE PATH "Path to preferred Python")
-+set(PYTHON3_PATH "${PYTHON_EXECUTABLE}" CACHE PATH "Path to Python3")
- 
- find_package(RPM)
- if(RPM_FOUND)
--- 
-2.34.1
-
diff --git a/recipes-compliance/openscap/openscap_1.3.8.bb b/recipes-compliance/openscap/openscap_1.3.9.bb
similarity index 95%
rename from recipes-compliance/openscap/openscap_1.3.8.bb
rename to recipes-compliance/openscap/openscap_1.3.9.bb
index 5abd5a6..97261df 100644
--- a/recipes-compliance/openscap/openscap_1.3.8.bb
+++ b/recipes-compliance/openscap/openscap_1.3.9.bb
@@ -10,10 +10,8 @@ DEPENDS = "dbus acl bzip2 pkgconfig gconf procps curl libxml2 libxslt libcap swi
 DEPENDS:class-native = "pkgconfig-native swig-native curl-native libxml2-native libxslt-native libcap-native libpcre-native xmlsec1-native"
 
 #Jun 22th, 2023
-SRCREV = "a81c66d9bc36612dd1ca83a8c959a59e172eb4b9"
-SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https \
-           file://0003-CMakeLists.txt-make-2-variables-configurable.patch \
-           "
+SRCREV = "9b3e7563575f7e5b419f8a09999b40f30e3e7c29"
+SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https"
 
 S = "${WORKDIR}/git"
 
-- 
2.34.1


