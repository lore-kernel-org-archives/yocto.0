Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD124C433F5
	for <webhook@archiver.kernel.org>; Sat, 26 Feb 2022 19:00:52 +0000 (UTC)
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
 [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web09.1766.1645902051671452093
 for <yocto@lists.yoctoproject.org>;
 Sat, 26 Feb 2022 11:00:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Hf7dn0yZ;
 spf=pass (domain: gmail.com, ip: 209.85.215.179,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id 75so7840319pgb.4
        for <yocto@lists.yoctoproject.org>;
 Sat, 26 Feb 2022 11:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=b2C9aDrCY4r9jazL520fi4K7Nxb/GKU9nI/EXVpqQ5U=;
        b=Hf7dn0yZu01EP+QAVcPUA/m6/iF2zHgE6LLdo5YyjMu8/3S7G2gJbFiRzbSHBk0hJ4
         jGbatkR1KdNDvkesCt0LshspnxeLKLXhVNYlNa/+ZUhUO4oFd40mxx/PtqSGxzpjZznA
         a5TcGrm5Tq+dXZUM6OnOB7jY4AvrN+1CLQjV8RLmnmBX8+iJMg+sU4hdlkpIJqoXc6Qv
         M+qk0Y5SXGCI2/PvCgGsQlmXGV+wfg7aMK8uMWtWHyO+dzar+ZY9B+fvLGwNUorya2eB
         kLT5T4lyVsiVjupKMFKr7Gwlg2spEypDOKUllruowLEpgEX8ph0+6AQz2KzbJMCHjKTD
         7ZjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=b2C9aDrCY4r9jazL520fi4K7Nxb/GKU9nI/EXVpqQ5U=;
        b=jF/nan3Ia4mSedz0N1FdguLVA6sYH9rZxSITG8WTdVro+HDqsqNfeXf0M5YYNavyFT
         JYeG1MOhzIIfysWligNnXrqnI7FNac9Gxc3IFBEAR3VluXCUFl1QZB63B9g1+fyuctpz
         Gg+RnsvrvQofxvd5McQwSU20Xwt03Z9h8OJr3H0DRRvgO9gAHTL6dZqewZPSw6pmzQDy
         S9zlURHGHHxnRl/0EfnB8G41fBK0LxSjoRJ7dXYcce+orXHCYWQgXswE7p94T/VGsY7Q
         Sv3CvgVkeF0GgmF7+r9YF4kw1KVPz61OWWkDF3SjCsGqzyNKWDjDlW8Vh96bMZzOqOhP
         BKLQ==
X-Gm-Message-State: AOAM532AS5CaoNjWWRpxgMqJY6TrW4jYmeGN3IbDg++DiGSEGuYZAOXH
	/qf4ZoSJO4OuBtdcG6LXzmAQ6tbkGpQ=
X-Google-Smtp-Source: 
 ABdhPJw5j0UsQPs+9DDaaBEBlz2tFKYWkqxe86ARgllmokYT0DJHQ8sdN2NhyPmsi/oHFxq16V4vKQ==
X-Received: by 2002:a05:6a00:1704:b0:4cc:c8d7:e54a with SMTP id
 h4-20020a056a00170400b004ccc8d7e54amr13842130pfc.16.1645902050548;
        Sat, 26 Feb 2022 11:00:50 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:5954:439:c7aa:7238])
        by smtp.gmail.com with ESMTPSA id
 f4-20020a63f744000000b00373855b7cf2sm6064137pgk.22.2022.02.26.11.00.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Feb 2022 11:00:50 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] apparmor: update to 3.0.4
Date: Sat, 26 Feb 2022 11:00:48 -0800
Message-Id: <20220226190048.3264760-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 26 Feb 2022 19:00:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56294

drop to patches no longer needed
use setuptools

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{apparmor_3.0.1.bb => apparmor_3.0.4.bb}  |  6 +-
 ...Update-make-check-to-select-tools-ba.patch | 91 -------------------
 recipes-mac/AppArmor/files/py3_10_fixup.patch | 35 -------
 3 files changed, 2 insertions(+), 130 deletions(-)
 rename recipes-mac/AppArmor/{apparmor_3.0.1.bb => apparmor_3.0.4.bb} (97%)
 delete mode 100644 recipes-mac/AppArmor/files/0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch
 delete mode 100644 recipes-mac/AppArmor/files/py3_10_fixup.patch

diff --git a/recipes-mac/AppArmor/apparmor_3.0.1.bb b/recipes-mac/AppArmor/apparmor_3.0.4.bb
similarity index 97%
rename from recipes-mac/AppArmor/apparmor_3.0.1.bb
rename to recipes-mac/AppArmor/apparmor_3.0.4.bb
index 818be15..8ad3c76 100644
--- a/recipes-mac/AppArmor/apparmor_3.0.1.bb
+++ b/recipes-mac/AppArmor/apparmor_3.0.4.bb
@@ -18,20 +18,18 @@ SRC_URI = " \
     file://run-ptest \
     file://crosscompile_perl_bindings.patch \
     file://0001-Makefile.am-suppress-perllocal.pod.patch \
-    file://0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch \
     file://0001-Makefile-fix-hardcoded-installation-directories.patch \
     file://0001-rc.apparmor.debian-add-missing-functions.patch \
-    file://py3_10_fixup.patch \
     "
 
-SRCREV = "b23de501807b8b5793e9654da8688b5fd3281154"
+SRCREV = "9799fbde997820bb12a49e292356f7a6ce12e972"
 S = "${WORKDIR}/git"
 
 PARALLEL_MAKE = ""
 
 COMPATIBLE_MACHINE:mips64 = "(!.*mips64).*"
 
-inherit pkgconfig autotools-brokensep update-rc.d python3native python3targetconfig perlnative cpan systemd features_check bash-completion
+inherit pkgconfig autotools-brokensep update-rc.d python3native python3targetconfig perlnative cpan systemd features_check bash-completion setuptools3
 
 REQUIRED_DISTRO_FEATURES = "apparmor"
 
diff --git a/recipes-mac/AppArmor/files/0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch b/recipes-mac/AppArmor/files/0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch
deleted file mode 100644
index e7abd60..0000000
--- a/recipes-mac/AppArmor/files/0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch
+++ /dev/null
@@ -1,91 +0,0 @@
-From 5ed21abbef4d4c2983e70bd2868fb817150e883e Mon Sep 17 00:00:00 2001
-From: Armin Kuster <akuster808@gmail.com>
-Date: Sat, 3 Oct 2020 11:26:46 -0700
-Subject: [PATCH] Revert "profiles: Update 'make check' to select tools based
- on USE_SYSTEM"
-
-This reverts commit 6016f931ebf7b61e1358f19453ef262d9d184a4e.
-
-Upstream-Status: Inappropriate [OE specific]
-These changes cause during packaging with perms changing.
-
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
----
- profiles/Makefile | 50 ++++++++++-------------------------------------
- 1 file changed, 10 insertions(+), 40 deletions(-)
-
-diff --git a/profiles/Makefile b/profiles/Makefile
-index ba47fc16..5384cb05 100644
---- a/profiles/Makefile
-+++ b/profiles/Makefile
-@@ -35,49 +35,9 @@ EXTRAS_SOURCE=./apparmor/profiles/extras/
- SUBDIRS=$(shell find ${PROFILES_SOURCE} -type d -print)
- TOPLEVEL_PROFILES=$(filter-out ${SUBDIRS}, $(wildcard ${PROFILES_SOURCE}/*))
- 
--ifdef USE_SYSTEM
--    PYTHONPATH=
--    PARSER?=apparmor_parser
--    LOGPROF?=aa-logprof
--else
--    # PYTHON_DIST_BUILD_PATH based on libapparmor/swig/python/test/Makefile.am
--    PYTHON_DIST_BUILD_PATH = ../libraries/libapparmor/swig/python/build/$$($(PYTHON) -c "import distutils.util; import platform; print(\"lib.%s-%s\" %(distutils.util.get_platform(), platform.python_version()[:3]))")
--    LIBAPPARMOR_PATH=../libraries/libapparmor/src/.libs/
--    LD_LIBRARY_PATH=$(LIBAPPARMOR_PATH):$(PYTHON_DIST_BUILD_PATH)
--    PYTHONPATH=../utils/:$(PYTHON_DIST_BUILD_PATH)
--    PARSER?=../parser/apparmor_parser
--    # use ../utils logprof
--    LOGPROF?=LD_LIBRARY_PATH=$(LD_LIBRARY_PATH) PYTHONPATH=$(PYTHONPATH) $(PYTHON) ../utils/aa-logprof
--endif
--
- # $(PWD) is wrong when using "make -C profiles" - explicitely set it here to get the right value
- PWD=$(shell pwd)
- 
--.PHONY: test-dependencies
--test-dependencies: __parser __libapparmor
--
--
--.PHONY: __parser __libapparmor
--__parser:
--ifndef USE_SYSTEM
--	@if [ ! -f $(PARSER) ]; then \
--		echo "error: $(PARSER) is missing. Pick one of these possible solutions:" 1>&2; \
--		echo "  1) Test using the in-tree parser by building it first and then trying again. See the top-level README for help." 1>&2; \
--		echo "  2) Test using the system parser by adding USE_SYSTEM=1 to your make command." 1>&2; \
--		exit 1; \
--	fi
--endif
--
--__libapparmor:
--ifndef USE_SYSTEM
--	@if [ ! -f $(LIBAPPARMOR_PATH)libapparmor.so ]; then \
--		echo "error: $(LIBAPPARMOR_PATH)libapparmor.so is missing. Pick one of these possible solutions:" 1>&2; \
--		echo "  1) Build against the in-tree libapparmor by building it first and then trying again. See the top-level README for help." 1>&2; \
--		echo "  2) Build against the system libapparmor by adding USE_SYSTEM=1 to your make command." 1>&2; \
--		exit 1; \
--	fi
--endif
--
- local:
- 	for profile in ${TOPLEVEL_PROFILES}; do \
- 		fn=$$(basename $$profile); \
-@@ -109,6 +69,16 @@ else
-   Q=
- endif
- 
-+ifndef PARSER
-+# use system parser
-+PARSER=../parser/apparmor_parser
-+endif
-+
-+ifndef LOGPROF
-+# use ../utils logprof
-+LOGPROF=PYTHONPATH=../utils $(PYTHON) ../utils/aa-logprof
-+endif
-+
- .PHONY: docs
- # docs: should we have some here?
- docs:
--- 
-2.17.1
-
diff --git a/recipes-mac/AppArmor/files/py3_10_fixup.patch b/recipes-mac/AppArmor/files/py3_10_fixup.patch
deleted file mode 100644
index 05f8460..0000000
--- a/recipes-mac/AppArmor/files/py3_10_fixup.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-m4/ax_python_devel.m4: do not check for distutils
-
-With py 3.10 this prints a deprecation warning which is
-taken as an error. Upstream should rework the code to not
-use distuils.
-
-Upstream-Status: Inappropriate [needs a proper fix upstream]
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: git/libraries/libapparmor/m4/ac_python_devel.m4
-===================================================================
---- git.orig/libraries/libapparmor/m4/ac_python_devel.m4
-+++ git/libraries/libapparmor/m4/ac_python_devel.m4
-@@ -66,21 +66,6 @@ variable to configure. See ``configure -
-         fi
- 
-         #
--        # Check if you have distutils, else fail
--        #
--        AC_MSG_CHECKING([for the distutils Python package])
--        ac_distutils_result=`$PYTHON -c "import distutils" 2>&1`
--        if test -z "$ac_distutils_result"; then
--                AC_MSG_RESULT([yes])
--        else
--                AC_MSG_RESULT([no])
--                AC_MSG_ERROR([cannot import Python module "distutils".
--Please check your Python installation. The error was:
--$ac_distutils_result])
--                PYTHON_VERSION=""
--        fi
--
--        #
-         # Check for Python include path
-         #
-         AC_MSG_CHECKING([for Python include path])
-- 
2.25.1


