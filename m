Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA0CEB64DA
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 17:06:28 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
 by mx.groups.io with SMTP id smtpd.web10.17274.1687453582554096600
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 10:06:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=pR7S1aq6;
 spf=pass (domain: gmail.com, ip: 209.85.167.172, mailfrom: akuster808@gmail.com)
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-392116b8f31so5269836b6e.2
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 10:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687453581; x=1690045581;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=XAzlK4YddsWZKY0M60b+wnYaW9jY90A7sTWqCcmoXkc=;
        b=pR7S1aq6CyDr0RuAP7FrTjL2NCSeBYVIRu0FvxGJdMFgNERpskQzr46IoVezXGktHJ
         CHJTiR6hiQvch1DbpQ9klUqEifYz2iPowfaYY00rZt5hV5In/C00SntVgsy2pJjsYpiK
         g8S55ZdZCLVxsOmmRJ0DvvO9Dh/L3QpJEKR3VpNlSlcTx7Y//qsVzVj0Z3PWI+MgxO4p
         Fzbjru5v6TN9QXQwOoCHRYK15lijM8cP17vD8S6E/2UVCVbqg0oV+GL48XRXBxIA/aPa
         Lt6dGAsoJOlrR9pvqY+hrvKI+42YwqsE/oaQ5qvdkV3b4RWkVydK+7oqRc3rUETJvYF3
         Kb5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687453581; x=1690045581;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XAzlK4YddsWZKY0M60b+wnYaW9jY90A7sTWqCcmoXkc=;
        b=MQ/wEyuaPbZ3x6kuQhTSaq2p/oScqRMuJ0oo8M53+0Mug70hzyCnCrMcyLAAHPHNoF
         UISCtwhAGafQbYV5wwB1z3BUkMOHhLubK+mn8TCr2tqZ2KOnorhf+2WNs9+8dnST5hCJ
         DBL6IE9odatMfNmAyRcfl/QuXJAapTGz0Rd3G8T4m/OSmwNVPiHu0wzmUqCxlA8CaGt9
         R6SsKb3tYbc4zv6LUfopSCK89HXboc8O3i59H41A3KUT+BqE1HHLmAy+vmY5d89l4z5s
         siW3UXk8eLrE1lkMLpkZKP6mPgSgeEQvft3pqQi7Cym+SO2rhFm6GiCtSGe6JYcoalpn
         CsRA==
X-Gm-Message-State: AC+VfDy9YM6dIKyM3l3cJScU9h12O2eBjFjBiZLk+EmNoM61fYEUUCui
	RYx3YCE/4psDbJbSVGd68tPCcmzgZcs=
X-Google-Smtp-Source: ACHHUZ51/FGgRVf95aRQUvrcr7FVSErC57RX2QJQeU49AQCK0N6KIswko4pu21nU2z3TTmDakJL1Qg==
X-Received: by 2002:a05:6808:13d2:b0:397:f1b3:f940 with SMTP id d18-20020a05680813d200b00397f1b3f940mr24324829oiw.27.1687453581446;
        Thu, 22 Jun 2023 10:06:21 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:80e:b8b0:6c85:7e])
        by smtp.gmail.com with ESMTPSA id v20-20020a814814000000b0055d7f00d4f7sm1916411ywa.22.2023.06.22.10.06.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 10:06:20 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] openscap: update to 1.3.8
Date: Thu, 22 Jun 2023 13:06:19 -0400
Message-Id: <20230622170620.3800602-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 17:06:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60410

Remediate service is now off by default. Only include if needed.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{openscap_1.3.7.bb => openscap_1.3.8.bb}        | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)
 rename recipes-compliance/openscap/{openscap_1.3.7.bb => openscap_1.3.8.bb} (84%)

diff --git a/recipes-compliance/openscap/openscap_1.3.7.bb b/recipes-compliance/openscap/openscap_1.3.8.bb
similarity index 84%
rename from recipes-compliance/openscap/openscap_1.3.7.bb
rename to recipes-compliance/openscap/openscap_1.3.8.bb
index a8757f3..ecc347c 100644
--- a/recipes-compliance/openscap/openscap_1.3.7.bb
+++ b/recipes-compliance/openscap/openscap_1.3.8.bb
@@ -9,8 +9,8 @@ LICENSE = "LGPL-2.1-only"
 DEPENDS = "dbus acl bzip2 pkgconfig gconf procps curl libxml2 libxslt libcap swig libpcre  xmlsec1"
 DEPENDS:class-native = "pkgconfig-native swig-native curl-native libxml2-native libxslt-native libcap-native libpcre-native xmlsec1-native"
 
-#Jun 20th, 2023
-SRCREV = "c99fc854ff566fac9d130622fe9fd434484eb13d"
+#Jun 22th, 2023
+SRCREV = "a81c66d9bc36612dd1ca83a8c959a59e172eb4b9"
 SRC_URI = "git://github.com/OpenSCAP/openscap.git;branch=maint-1.3;protocol=https \
            "
 
@@ -25,6 +25,7 @@ PACKAGECONFIG[rpm] = "-DENABLE_OSCAP_UTIL_AS_RPM=ON, ,rpm, rpm"
 PACKAGECONFIG[gcrypt] = "-DWITH_CRYPTO=gcrypt, ,libgcrypt"
 PACKAGECONFIG[nss3] = "-DWITH_CRYPTO=nss3, ,nss"
 PACKAGECONFIG[selinux] = ", ,libselinux"
+PACKAGECONFIG[remdediate_service] = "-DENABLE_OSCAP_REMEDIATE_SERVICE=ON,-DENABLE_OSCAP_REMEDIATE_SERVICE=NO,"
 
 EXTRA_OECMAKE += "-DENABLE_PROBES_LINUX=ON -DENABLE_PROBES_UNIX=ON \
                   -DENABLE_PROBES_SOLARIS=OFF -DENABLE_PROBES_INDEPENDENT=ON \
@@ -47,7 +48,9 @@ do_configure:append:class-native () {
 
 do_install:append () {
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
-        install -D -m 0644 ${B}/oscap-remediate.service ${D}${systemd_system_unitdir}/oscap-remediate.service
+        if ${@bb.utils.contains('PACKAGECONFIG','remdediate_service','true','false',d)}; then
+            install -D -m 0644 ${B}/oscap-remediate.service ${D}${systemd_system_unitdir}/oscap-remediate.service
+        fi
     fi
 }
 
@@ -60,7 +63,9 @@ do_install:append:class-native () {
 
 
 SYSTEMD_PACKAGES = "${PN}"
-SYSTEMD_SERVICE:${PN} = "oscap-remediate.service"
+SYSTEMD_SERVICE:${PN} = "${@bb.utils.contains('PACKAGECONFIG','remdediate_service', 'oscap-remediate.service', '',d)}"
+SYSTEMD_AUTO_ENABLE = "disable"
+
 
 FILES:${PN} += "${PYTHON_SITEPACKAGES_DIR}"
 
-- 
2.34.1


