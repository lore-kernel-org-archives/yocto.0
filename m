Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com [209.85.216.65])
 by mx.groups.io with SMTP id smtpd.web09.8253.1579985015762178752
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Jan 2020 12:43:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=e8ss/IN3;
 spf=pass (domain: gmail.com, ip: 209.85.216.65, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f65.google.com with SMTP id m4so1414359pjv.3
        for <yocto@lists.yoctoproject.org>; Sat, 25 Jan 2020 12:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=gYsJvkdewCn4Wu6VX9Sp7eAhn+zebO+pk+g7RevVSWI=;
        b=e8ss/IN3sGtQkBn86O9CUIdKng4xasDIx7lomk085MH825EEigA3/YJSdhcrH+82HM
         35Ul8vB8uoNkSVJCX0PSFuA0GsTZokGvKzzLMwxqooJu9eHToifHesyV37k5b+gVgZVB
         29aM/oacDQnitIq55ymonqAw7Nuoo0zybAnI8mRKTaNnx535wIBemRijN4fcO6m9fP0x
         j7BL5g7WkjAvKPODm9JwHz+b8Q2LVzR/ZwNh9NJlT+RRPcWpvpQK4MQt89vN7ry3YiwV
         r+imA6YEAflxsFx/lY8ikO6F4r0Fvi7aiHE7sGAL5N5XvJxSYizCWvsW2czX9Rl1jGx8
         UWkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=gYsJvkdewCn4Wu6VX9Sp7eAhn+zebO+pk+g7RevVSWI=;
        b=iyZY/ONT41uSXlBH5jYhevzbB6HcVq7cMtJry/0RHlUQEsyUv1yR0iktwLEz8IG97s
         n97HYJifFnsE5sBeJArn//vvTgV40hZBLp8W6xjBsyJdBSeKttfZEcTTkdOI/tl38CxE
         ItSd2obxjkFOPJas2BPul/rYsFCyEtc2V1AoY7nNl1fjGZfuX24GfLUlOUF03GPae3bJ
         N1DOSad2dzNUgfh5eLGWjBWIlvEEmK0Ecyj9nCUi1XyqfhnYKnlNJBVC5sj9xetgde/h
         68OIAk+j8KtlE09sJbZXLUJAKHoWvb96lJjWVC04gtiFSKsfTUweFc3YBkgX2BtQGubR
         ZizA==
X-Gm-Message-State: APjAAAVL4xP1JypoCqYWm8nktsg2+WJEOyiKFd1R6xxEwNnr+s7gp5OJ
	+1pCUJqftNyS4jZq9T509jFjq2s9
X-Google-Smtp-Source: APXvYqwd3a7xZzF0LMwIpSnvqA3Hzfh/knPUt4NTL/ZArRAKmMXBKK8XVrzu29SlE/Ss67tIrPQAGQ==
X-Received: by 2002:a17:90a:31cc:: with SMTP id j12mr6217086pjf.103.1579985015075;
        Sat, 25 Jan 2020 12:43:35 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:953f:6ade:6955:1d1c])
        by smtp.gmail.com with ESMTPSA id c17sm10421921pfi.104.2020.01.25.12.43.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jan 2020 12:43:34 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][master][zeus][PATCH 2/2] buck-security: fix rdebends and minor style cleanup
Date: Sat, 25 Jan 2020 12:43:32 -0800
Message-Id: <20200125204332.2605-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200125204332.2605-1-akuster808@gmail.com>
References: <20200125204332.2605-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../buck-security/buck-security_0.7.bb        | 50 ++++++-------------
 1 file changed, 16 insertions(+), 34 deletions(-)

diff --git a/recipes-security/buck-security/buck-security_0.7.bb b/recipes-security/buck-security/buck-security_0.7.bb
index 3733c88..f6cbe3c 100644
--- a/recipes-security/buck-security/buck-security_0.7.bb
+++ b/recipes-security/buck-security/buck-security_0.7.bb
@@ -4,33 +4,6 @@ system. This enables you to quickly overview the security status of your Linux s
 SECTION = "security"
 LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
-RDEPENDS_${PN} = "coreutils \
-                  gnupg \
-                  net-tools \
-                  perl \
-                  perl-module-data-dumper \
-                  perl-module-file-basename \
-                  perl-module-file-spec \
-                  perl-module-getopt-long \
-                  perl-module-lib \
-                  perl-module-posix \
-                  perl-module-term-ansicolor \
-                  perl-module-time-localtime \
-                  pinentry \
-                 "
-
-RDEPENDS_${PN}_class-native = "coreutils \
-                               net-tools \
-                               perl \
-                               perl-module-data-dumper \
-                               perl-module-file-basename \
-                               perl-module-file-spec \
-                               perl-module-getopt-long \
-                               perl-module-lib \
-                               perl-module-posix \
-                               perl-module-term-ansicolor \
-                               perl-module-time-localtime \
-                              "
 
 SRC_URI = "http://sourceforge.net/projects/buck-security/files/buck-security/buck-security_${PV}/${BPN}_${PV}.tar.gz"
 
@@ -39,13 +12,8 @@ SRC_URI[sha256sum] = "c533c6631ec3554dd8d39d2d1c3ed44badbbf50810ebb75469c74639fa
 
 S = "${WORKDIR}/${BPN}_${PV}"
 
-do_configure() {
-    :
-}
-
-do_compile() {
-    :
-}
+do_configure[noexec] = "1"
+do_compile[noexec] = "1"
 
 do_install() {
     install -d ${D}${bindir}/buck
@@ -60,4 +28,18 @@ do_install() {
 
 FILES_${PN} = "${bindir}/*"
 
+RDEPENDS_${PN} = "coreutils gnupg net-tools perl perl-module-data-dumper \
+                  perl-module-file-basename perl-module-file-spec perl-module-getopt-long \
+                  perl-module-lib perl-module-posix perl-module-term-ansicolor \
+                  perl-module-time-localtime pinentry perl-module-pod-usage \
+                  perl-module-pod-text \
+                 "
+
+RDEPENDS_${PN}_class-native = "coreutils net-tools perl perl-module-data-dumper \
+                               perl-module-file-basename perl-module-file-spec perl-module-getopt-long \
+                               perl-module-lib perl-module-posix perl-module-term-ansicolor \
+                               perl-module-time-localtime \
+                              "
+
+
 BBCLASSEXTEND = "native"
-- 
2.17.1

