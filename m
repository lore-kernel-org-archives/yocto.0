Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D96D5C433FE
	for <webhook@archiver.kernel.org>; Tue, 26 Oct 2021 14:24:29 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web11.12882.1635258269261966323
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 07:24:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=oVPOC80Q;
 spf=pass (domain: gmail.com, ip: 209.85.214.171,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id c4so6550233plg.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 07:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=xzq8eV54StVv8ukwuF0w4BBLuXGLK6z4ikLl33LNj04=;
        b=oVPOC80QyMRYQndG7sIO7VWK2oqTZGQCagoM+Zf2b97G4SudaAWSZI22irBIyPQAqB
         WQ5VmCRnJyMEXieicwNQ4QIrYpjcp4s2lZcQ0WfnHXoGpwRaVZvOOdLoWiM0/veKUHue
         L4633GRUPM++TOjCwvpMM83dWkk/HUFWBxDhOPISunLU6aaDO9TpdNJnYzTPd3CnufTx
         NbnCN322X5U9Opu8GJPbCVoHTaLZ0xyaHRWY5D2u3qvR9eZRrxPk+ldjRs+TmqRznwSY
         LUbqSkKJclZDJjbmrfytlWbQTUBr9+iFJnx3ypuAPmpvN4jDAjpOgLtWTKQO69P1jJlM
         818g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xzq8eV54StVv8ukwuF0w4BBLuXGLK6z4ikLl33LNj04=;
        b=kuPCZjMzrtpqt81M3CbMsq7l/sUqRlV8ug7UGwW+MvSFfbANSBEok3oBNJ0A6kqZ9o
         hT7eKk3tvjZyvcqR2AAZTDIqz69jLlwRbH1Dwz1xtrYMb7vq04gO7cYGIdBR9wl86CKS
         TTVxjf43OheuVd3hJhpzXMn0QbFkjWPpVec5mhqozWtplFHIldIu3OsIa99PztWKhzxX
         u2EFoIQzfvxQqlWdr+y3qGUNoJ89DVx8fbxjpbV+BxUiUtP/zPi1iU812FmI3CU9X1uR
         NIGINZimj4pdo7z20ovhDRCpn2BElOUvcG6Wf9d8jKDIdOmXImuy3HJSBHpRQ7UEQDND
         UOzA==
X-Gm-Message-State: AOAM532ftFZwcdDSBvDnCyIBSJDJhNNBXpdS9dxLCS1RTzrpQOQq139q
	3B7aomXpt5TjDkcwqGchfGUbbZtNeLA=
X-Google-Smtp-Source: 
 ABdhPJzz/2RflSYSwDEz+Hi4WGd0w8FBW8p6zE+iKtj5k8m5vRpsqtCfFwivJG0Ku3Q3j+imhFfdVg==
X-Received: by 2002:a17:902:f68d:b0:141:610f:681f with SMTP id
 l13-20020a170902f68d00b00141610f681fmr1187487plg.49.1635258268648;
        Tue, 26 Oct 2021 07:24:28 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:bc55:5a93:ebf6:406e])
        by smtp.gmail.com with ESMTPSA id
 p25sm25821553pfh.86.2021.10.26.07.24.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 07:24:27 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/4] apparmor: Add a python 3.10 compatability
 patch
Date: Tue, 26 Oct 2021 07:24:24 -0700
Message-Id: <20211026142426.1476128-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211026142426.1476128-1-akuster808@gmail.com>
References: <20211026142426.1476128-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Oct 2021 14:24:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55164

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/apparmor_3.0.1.bb        |  4 +--
 recipes-mac/AppArmor/files/py3_10_fixup.patch | 35 +++++++++++++++++++
 2 files changed, 37 insertions(+), 2 deletions(-)
 create mode 100644 recipes-mac/AppArmor/files/py3_10_fixup.patch

diff --git a/recipes-mac/AppArmor/apparmor_3.0.1.bb b/recipes-mac/AppArmor/apparmor_3.0.1.bb
index dca53a3..389e72a 100644
--- a/recipes-mac/AppArmor/apparmor_3.0.1.bb
+++ b/recipes-mac/AppArmor/apparmor_3.0.1.bb
@@ -16,15 +16,15 @@ DEPENDS = "bison-native apr gettext-native coreutils-native swig-native"
 SRC_URI = " \
     git://gitlab.com/apparmor/apparmor.git;protocol=https;branch=apparmor-3.0 \
     file://run-ptest \
-    file://disable_perl_h_check.patch \
     file://crosscompile_perl_bindings.patch \
     file://0001-Makefile.am-suppress-perllocal.pod.patch \
     file://0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch \
     file://0001-Makefile-fix-hardcoded-installation-directories.patch \
     file://0001-rc.apparmor.debian-add-missing-functions.patch \
+    file://py3_10_fixup.patch \
     "
 
-SRCREV = "b0f08aa9d678197b8e3477c2fbff790f50a1de5e"
+SRCREV = "b23de501807b8b5793e9654da8688b5fd3281154"
 S = "${WORKDIR}/git"
 
 PARALLEL_MAKE = ""
diff --git a/recipes-mac/AppArmor/files/py3_10_fixup.patch b/recipes-mac/AppArmor/files/py3_10_fixup.patch
new file mode 100644
index 0000000..05f8460
--- /dev/null
+++ b/recipes-mac/AppArmor/files/py3_10_fixup.patch
@@ -0,0 +1,35 @@
+m4/ax_python_devel.m4: do not check for distutils
+
+With py 3.10 this prints a deprecation warning which is
+taken as an error. Upstream should rework the code to not
+use distuils.
+
+Upstream-Status: Inappropriate [needs a proper fix upstream]
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: git/libraries/libapparmor/m4/ac_python_devel.m4
+===================================================================
+--- git.orig/libraries/libapparmor/m4/ac_python_devel.m4
++++ git/libraries/libapparmor/m4/ac_python_devel.m4
+@@ -66,21 +66,6 @@ variable to configure. See ``configure -
+         fi
+ 
+         #
+-        # Check if you have distutils, else fail
+-        #
+-        AC_MSG_CHECKING([for the distutils Python package])
+-        ac_distutils_result=`$PYTHON -c "import distutils" 2>&1`
+-        if test -z "$ac_distutils_result"; then
+-                AC_MSG_RESULT([yes])
+-        else
+-                AC_MSG_RESULT([no])
+-                AC_MSG_ERROR([cannot import Python module "distutils".
+-Please check your Python installation. The error was:
+-$ac_distutils_result])
+-                PYTHON_VERSION=""
+-        fi
+-
+-        #
+         # Check for Python include path
+         #
+         AC_MSG_CHECKING([for Python include path])
-- 
2.25.1


