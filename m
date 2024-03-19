Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AEFAC54E68
	for <webhook@archiver.kernel.org>; Tue, 19 Mar 2024 11:15:39 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
 by mx.groups.io with SMTP id smtpd.web10.12734.1710846934773605248
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Mar 2024 04:15:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RMmcIvU4;
 spf=pass (domain: gmail.com, ip: 209.85.210.47, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6e67b5d6dd8so2351298a34.2
        for <yocto@lists.yoctoproject.org>; Tue, 19 Mar 2024 04:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710846934; x=1711451734; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=LWGiYf/+JyywAaC5WL/uN3GwCICyDo+wrYZF/x/MObg=;
        b=RMmcIvU4ZxuoMmAkrfWRVjgvk8tZdbFjETCe4Bwnafm5nMLmSxgfhdS6nzfFZ01p7m
         ZWBmC5nXlNj8XgYRphNH0tteAZ8F0ot5YiGUjZQFZfB6wnnZ5Yynyb6o6xET3ZAHb++v
         CHsfuWk2HzlA59UL7muIu8h4vraRZkgYdHnI4I8sx3JIrpe209K4j2qxsdAlMzIrYbha
         SYzOrecfYOU1YlG/HKcdN16BzB7gq73hhQPDiELGbrPNMbHukrKusyc0s8WNwTL7BUf1
         vH0rUcJt653EwDPMHqcNOYmFyM/XQWO2g2v2bJvoobAZjUFDg57NIuLKfhVMxK7iFEER
         qa8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710846934; x=1711451734;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LWGiYf/+JyywAaC5WL/uN3GwCICyDo+wrYZF/x/MObg=;
        b=lQ6scrAbzDfhSEvQxCOkAa70ZRTVzFLRs+4EDGxc6eQbQkGsBBOBa9IsHf5f8dljrt
         aYsD6/6e5+8/kosaoV80WIPAakx63NJAHCHOEJLqYHxaekw9PJZEBumtqZ8y2VJI7OE0
         iY9u+sX+uXqYu91VhlO+GhtU4unnw1IZeKml0RapFK35gvG4s8Ygth8sZQbxP9w79oc8
         gGDCGbGzexqpmXOlqMWLDK3KyzEsQWRc40EUkN49nLxWozQkB0b2NmZdLfWbRaUd8pDK
         Z34L7x04bS38vCND+CG1LAUKmhTnXJi8CcguFHCZXLSLan3HUX2P9riTxI3LDhkqvcHq
         CHSg==
X-Gm-Message-State: AOJu0Yxl1r3afuVlZTJfjN/7NNp2ymg0ow5NYA1QTAdyy6QFA9z8LeCQ
	992GI0I52DzVlMFNrAyMMOE82QXZNn0evreN9HPMR/G2MOH4l38Nv1ZuT8IK
X-Google-Smtp-Source: AGHT+IEuJngp6OtVK0C5wyTi7Z5u97/JZFEs2rtT6K0gYzSE5EsEn1t7eFaKmt7VMIi1bRVk7BSXpQ==
X-Received: by 2002:a05:6830:1c7:b0:6e5:a89:2ddd with SMTP id r7-20020a05683001c700b006e50a892dddmr2516110ota.27.1710846933533;
        Tue, 19 Mar 2024 04:15:33 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:45dd:7000:f204:39c3:6c76:15b1])
        by smtp.gmail.com with ESMTPSA id l16-20020a05683016d000b006e68a7fa66fsm921460otr.45.2024.03.19.04.15.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 04:15:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] openscap: update to tip to fix new build issue.
Date: Tue, 19 Mar 2024 07:15:31 -0400
Message-Id: <20240319111532.413323-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Mar 2024 11:15:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62794

drop patch now included.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...e-distutils.sysconfig-with-sysconfig.patch | 57 -------------------
 recipes-compliance/openscap/openscap_1.3.9.bb |  8 +--
 2 files changed, 3 insertions(+), 62 deletions(-)
 delete mode 100644 recipes-compliance/openscap/files/0001-Replace-distutils.sysconfig-with-sysconfig.patch

diff --git a/recipes-compliance/openscap/files/0001-Replace-distutils.sysconfig-with-sysconfig.patch b/recipes-compliance/openscap/files/0001-Replace-distutils.sysconfig-with-sysconfig.patch
deleted file mode 100644
index f3f8cf7..0000000
--- a/recipes-compliance/openscap/files/0001-Replace-distutils.sysconfig-with-sysconfig.patch
+++ /dev/null
@@ -1,57 +0,0 @@
-From 9a8e01f8421f92f40b4cbff6cf055538e9a0b0ae Mon Sep 17 00:00:00 2001
-From: Evgeny Kolesnikov <ekolesni@redhat.com>
-Date: Thu, 25 Jan 2024 21:37:05 +0100
-Subject: [PATCH] Replace distutils.sysconfig with sysconfig
-
-Upstream-Status: Backport
-[https://github.com/OpenSCAP/openscap/commit/9a8e01f8421f92f40b4cbff6cf055538e9a0b0ae]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- docs/developer/developer.adoc | 2 +-
- swig/python3/CMakeLists.txt   | 2 +-
- utils/CMakeLists.txt          | 2 +-
- 3 files changed, 3 insertions(+), 3 deletions(-)
-
-diff --git a/docs/developer/developer.adoc b/docs/developer/developer.adoc
-index 77c6d5161..e923069cc 100644
---- a/docs/developer/developer.adoc
-+++ b/docs/developer/developer.adoc
-@@ -113,7 +113,7 @@ On Ubuntu 18.04 and potentially other distro, the python3 dist-packages path is
- If the following command:
- 
- ----
--$ python3 -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())"
-+$ python3 -c "import sysconfig; print(sysconfig.get_path('platlib'))"
- ----
- 
- returns "/usr/local/lib/python3/dist-packages" instead of a path like
-diff --git a/swig/python3/CMakeLists.txt b/swig/python3/CMakeLists.txt
-index 2594cf000..5f301326c 100644
---- a/swig/python3/CMakeLists.txt
-+++ b/swig/python3/CMakeLists.txt
-@@ -26,7 +26,7 @@ add_custom_target(python3_compile ALL DEPENDS ${PYTHON_COMPILED_FILES})
- 
- if(NOT PYTHON_SITE_PACKAGES_INSTALL_DIR)
- execute_process(COMMAND
--	${PYTHON_EXECUTABLE} -c "from distutils.sysconfig import get_python_lib; print(get_python_lib(True, prefix='${CMAKE_INSTALL_PREFIX}'))"
-+	${PYTHON_EXECUTABLE} -c "import sysconfig; print(sysconfig.get_path('platlib'))"
- 	OUTPUT_VARIABLE PYTHON_SITE_PACKAGES_INSTALL_DIR
- 	OUTPUT_STRIP_TRAILING_WHITESPACE
- )
-diff --git a/utils/CMakeLists.txt b/utils/CMakeLists.txt
-index 93ce1f2a9..9347c2976 100644
---- a/utils/CMakeLists.txt
-+++ b/utils/CMakeLists.txt
-@@ -91,7 +91,7 @@ if(ENABLE_OSCAP_UTIL_DOCKER)
- 
- 	if(NOT PYTHON_SITE_PACKAGES_INSTALL_DIR)
- 	execute_process(COMMAND
--		${OSCAP_DOCKER_PYTHON} -c "from distutils.sysconfig import get_python_lib; print(get_python_lib(False, False, prefix='${CMAKE_INSTALL_PREFIX}'))"
-+		${OSCAP_DOCKER_PYTHON} -c "import sysconfig; print(sysconfig.get_path('purelib'))"
- 		OUTPUT_VARIABLE PYTHON_SITE_PACKAGES_INSTALL_DIR
- 		OUTPUT_STRIP_TRAILING_WHITESPACE
- 	)
--- 
-2.25.1
-
diff --git a/recipes-compliance/openscap/openscap_1.3.9.bb b/recipes-compliance/openscap/openscap_1.3.9.bb
index d956ff1..b35ce9f 100644
--- a/recipes-compliance/openscap/openscap_1.3.9.bb
+++ b/recipes-compliance/openscap/openscap_1.3.9.bb
@@ -9,11 +9,9 @@ LICENSE = "LGPL-2.1-only"
 DEPENDS = "dbus acl bzip2 pkgconfig gconf procps curl libxml2 libxslt libcap swig libpcre  xmlsec1"
 DEPENDS:class-native = "pkgconfig-native swig-native curl-native libxml2-native libxslt-native libcap-native libpcre-native xmlsec1-native"
 
-#Jun 22th, 2023
-SRCREV = "9b3e7563575f7e5b419f8a09999b40f30e3e7c29"
-SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https \
-           file://0001-Replace-distutils.sysconfig-with-sysconfig.patch \
-          "
+#March 18th, 2024
+SRCREV = "0e7f654570971c1acee6dd3f34b17121372d6152"
+SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https "
 
 S = "${WORKDIR}/git"
 
-- 
2.34.1


