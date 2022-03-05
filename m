Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49CFBC433EF
	for <webhook@archiver.kernel.org>; Sat,  5 Mar 2022 00:30:32 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web11.1311.1646440231568524200
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Mar 2022 16:30:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=f0A+x9v3;
 spf=pass (domain: gmail.com, ip: 209.85.216.44,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id
 m11-20020a17090a7f8b00b001beef6143a8so9348177pjl.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 04 Mar 2022 16:30:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aI7Rmy3oYxZ/hsFDo5uDMnZ0r4PsuOHT/NdrUIWDBqk=;
        b=f0A+x9v36He3PH1jxDtETKspgUPRMubUSNJ2BDJENW3e7gQiWG+Fr0wouhE2rfNmi1
         90NaZAFIStN1WKx+dgtfw7F5EuuBmyN1Qqf6TuZnROxefI2kvwSZmNknKoo4O2/iajIy
         Te+BDaKjzLdqQk3Y5YqW5KmilpPljvlnFkSMSc4q4/1sSkgPFeYrzaHdBh7GqpJLyC6e
         8KhqF1/derc/QkqAvNTQZ5JADKd6Cy+FNRPOlS80XA4fV2kJFZOiT6XO9HmMPLWgPY2w
         6wy7eODM4UkwipDpojg5I+6kab2jXuXMl5NsAMubZ0xAKb6GJuYw0iMyY6D5Elz5h7//
         TpeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aI7Rmy3oYxZ/hsFDo5uDMnZ0r4PsuOHT/NdrUIWDBqk=;
        b=640FXACqNvoI1xPKRdRzCRSitWmlRL4iwt/4hXzX5uH5bkl6+4HG3kSQwUE4D+muKg
         dA32Bn1SfDCzGe1AWAV7XOvDab40zjOLnXnpQnYMSRIIdBfHHIud6m1NxD/HWlT4SYFr
         4KLoGnS3tIGxnqqNcm68fQpGbFYEDg7Zpv7SS/TS2JNS0Ngw75m42bmK4OCPzrjB+ewt
         L++Nwe2waLGKrz1N6LCq8S4tRq3ULbWQ94jeHkMeIfm10ZgbhZim2ABExchhvfO7m6Ke
         qR7U1by6CXrpd4VUoyWCO6gWN/7R7H4em4hHcr70db+hFCc1q2ZK+bzhEHpRecHmfCgV
         4tVQ==
X-Gm-Message-State: AOAM5300WUbqq7n1oJDkKaGJXcOvPwGW0MM+KqumPLsQ0o8e0rMvEpZ6
	qZJdMjl1W7REwvzfiWHHQOI/Qa89Rrg=
X-Google-Smtp-Source: 
 ABdhPJz+IcZvVJmPJPahXn5lrR7ZpTgcPn1q1mGMu3G8+jk/7Qd0IW7cW4T2Hcxiewk30Vv7BUDGpw==
X-Received: by 2002:a17:903:247:b0:151:b174:fba9 with SMTP id
 j7-20020a170903024700b00151b174fba9mr918200plh.79.1646440230573;
        Fri, 04 Mar 2022 16:30:30 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:4a57:ddb1:e4ac:8918])
        by smtp.gmail.com with ESMTPSA id
 z23-20020a056a001d9700b004f6d2974269sm286659pfw.113.2022.03.04.16.30.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Mar 2022 16:30:30 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] swtpm: update to 0.7.1
Date: Fri,  4 Mar 2022 16:30:28 -0800
Message-Id: <20220305003029.3893656-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 05 Mar 2022 00:30:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56372

fixes: CVE-2022-23645.
Add implementation of SWTPM_HMAC using OpenSSL 3.0 APIs

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../swtpm/files/oe_configure.patch            | 65 -------------------
 .../swtpm/{swtpm_0.6.1.bb => swtpm_0.7.1.bb}  |  5 +-
 2 files changed, 2 insertions(+), 68 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm/swtpm/files/oe_configure.patch
 rename meta-tpm/recipes-tpm/swtpm/{swtpm_0.6.1.bb => swtpm_0.7.1.bb} (94%)

diff --git a/meta-tpm/recipes-tpm/swtpm/files/oe_configure.patch b/meta-tpm/recipes-tpm/swtpm/files/oe_configure.patch
deleted file mode 100644
index 5aee933..0000000
--- a/meta-tpm/recipes-tpm/swtpm/files/oe_configure.patch
+++ /dev/null
@@ -1,65 +0,0 @@
-Don't check for tscd deamon on host.
-
-Upstream-Status: OE Specific
-
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: git/configure.ac
-===================================================================
---- git.orig/configure.ac
-+++ git/configure.ac
-@@ -179,15 +179,6 @@ AC_SUBST([LIBTPMS_LIBS])
- AC_CHECK_LIB(c, clock_gettime, LIBRT_LIBS="", LIBRT_LIBS="-lrt")
- AC_SUBST([LIBRT_LIBS])
- 
--AC_PATH_PROG([TCSD], tcsd)
--if test "x$TCSD" = "x"; then
--    have_tcsd=no
--    AC_MSG_WARN([tcsd could not be found; typically need it for tss user account and tests])
--else
--    have_tcsd=yes
--fi
--AM_CONDITIONAL([HAVE_TCSD], test "$have_tcsd" != "no")
--
- dnl We either need netstat (more common across systems) or 'ss' for test cases
- AC_PATH_PROG([NETSTAT], [netstat])
- if test "x$NETSTAT" = "x"; then
-@@ -440,23 +431,6 @@ AC_ARG_WITH([tss-group],
-             [TSS_GROUP="tss"]
- )
- 
--case $have_tcsd in
--yes)
--	AC_MSG_CHECKING([whether TSS_USER $TSS_USER is available])
--	if ! test $(id -u $TSS_USER); then
--		AC_MSG_ERROR(["$TSS_USER is not available"])
--	else
--		AC_MSG_RESULT([yes])
--	fi
--	AC_MSG_CHECKING([whether TSS_GROUP $TSS_GROUP is available])
--	if ! test $(id -g $TSS_GROUP); then
--		AC_MSG_ERROR(["$TSS_GROUP is not available"])
--	else
--		AC_MSG_RESULT([yes])
--	fi
--	;;
--esac
--
- AC_SUBST([TSS_USER])
- AC_SUBST([TSS_GROUP])
- 
-Index: git/tests/Makefile.am
-===================================================================
---- git.orig/tests/Makefile.am
-+++ git/tests/Makefile.am
-@@ -83,10 +83,6 @@ TESTS += \
- 	test_tpm2_swtpm_cert \
- 	test_tpm2_swtpm_cert_ecc \
- 	test_tpm2_swtpm_setup_create_cert
--if HAVE_TCSD
--TESTS += \
--	test_tpm2_samples_create_tpmca
--endif
- endif
- 
- EXTRA_DIST=$(TESTS) \
diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.1.bb
similarity index 94%
rename from meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
rename to meta-tpm/recipes-tpm/swtpm/swtpm_0.7.1.bb
index 63734b9..85e4c5d 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.1.bb
@@ -6,10 +6,9 @@ SECTION = "apps"
 # expect-native, socat-native, coreutils-native and net-tools-native are reportedly only required for the tests
 DEPENDS = "libtasn1 coreutils-native expect-native socat-native glib-2.0 net-tools-native libtpm json-glib"
 
-SRCREV = "98187d24fe14851653a7c46eb16e9c5f0b9beaa1"
-SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.6;protocol=https \
+SRCREV = "92a7035f45d9b08aa7c6b8bd6fa4c6916ef07a9e"
+SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.7-next;protocol=https \
            file://ioctl_h.patch \
-           file://oe_configure.patch \
            "
 PE = "1"
 
-- 
2.25.1


