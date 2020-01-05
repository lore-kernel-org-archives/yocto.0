Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
 by mx.groups.io with SMTP id smtpd.web11.4211.1578266316171529405
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jan 2020 15:18:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CE9EtiXb;
 spf=pass (domain: gmail.com, ip: 209.85.215.177, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f177.google.com with SMTP id b9so25989214pgk.12
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jan 2020 15:18:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=344LHvd+KPDv9KzJuUdH4u9mC1byPtHOKkCpjXSOvrE=;
        b=CE9EtiXbsCBZf8I/IaFn1V8qmhPZbPuEUKatQx/cSpRcWTK1Ac7jq5PknGnKYpStdx
         MlFfhul4YbT2/sVVo/jPuHqWwZiBNKw26v4gRYYmXoi8WzzuE2DqpPuODV/xNezgx3qT
         WbWVu+0z4pH9NYQ6s9tvVd0tO4doh0QlnIdSJZ3JiHSLI+qp/p9Pxacm7Q/Q8Reg/H+v
         8EoQfL2LDHkLFjMtGwkfZEPfDf5LH4I7/c0XyggUGoqH0V67a9de8Ksrch6H+HfC4dX9
         5E9P3uoZBhv1Ip60GDwJTkBM37Xhou89TZZW9td6ZCka5bNyvZEKQxoHbc8IhSjxwl+P
         vibg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=344LHvd+KPDv9KzJuUdH4u9mC1byPtHOKkCpjXSOvrE=;
        b=ovyKljIf39LpY7byjnMgraUZzlbhZ5bTi8EqHPP3cPo7VYQOn5xBq8NLbUUFiizMsU
         Qod6Dp4gzLCpJU9iq9bC6PH/qFnB8zGdruMzGrqozbOtUvwnSKB7uyPuyER/18k70NSV
         pGDzuLXQIcgqGF8ujKEW4D7Lp3pn7XkdwadNsKlCxP6IzGblKHjiq3LDv3cx87SsVcdu
         Wqq8kI2vppMgB165ROA5NK2zjEC6Ms1O9NGD+PV8o1K66Lg7DWsAOz1iZ3F1LzrJEi0q
         u0oUFvN5XGvybH478gCFz7JU4O1XQlfWQGDWAzSerpK78R9SjAcH2SL0nBVtsq27uyf1
         86/g==
X-Gm-Message-State: APjAAAUZNu03Oi/Yf8SW0uFrEZH0WGPYwX1dmJd/wT6nTXq5LxT/BmR9
	usIOpfYslagMLhRnzseodpCJf+JJ
X-Google-Smtp-Source: APXvYqw+/MR3hV96ZIgNZdjSi1xMDTNIspc9rRNzD08TVxby7EuM0ABeFCrFiOC8AmPyEhWu9j29uQ==
X-Received: by 2002:a63:4282:: with SMTP id p124mr104514147pga.155.1578266315504;
        Sun, 05 Jan 2020 15:18:35 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:24ce:b2a3:bac9:47a9])
        by smtp.gmail.com with ESMTPSA id v4sm50705947pff.174.2020.01.05.15.18.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2020 15:18:35 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-security][zeus][PATCH 4/9] clamav: add tmpfiles.d config
Date: Sun,  5 Jan 2020 15:18:25 -0800
Message-Id: <20200105231830.5281-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200105231830.5281-1-akuster808@gmail.com>
References: <20200105231830.5281-1-akuster808@gmail.com>

From: Christopher Larson <chris_larson@mentor.com>

This is needed to ensure freshclam's /var/log directory and file are
created when using systemd.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.99.4.bb      | 8 +++++++-
 recipes-security/clamav/files/tmpfiles.clamav | 3 +++
 2 files changed, 10 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/clamav/files/tmpfiles.clamav

diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-security/clamav/clamav_0.99.4.bb
index 7f04337..a340b48 100644
--- a/recipes-security/clamav/clamav_0.99.4.bb
+++ b/recipes-security/clamav/clamav_0.99.4.bb
@@ -15,6 +15,7 @@ SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.99 \
     file://clamd.conf \
     file://freshclam.conf \
     file://volatiles.03_clamav \
+    file://tmpfiles.clamav \
     file://${BPN}.service \
     file://freshclam-native.conf \
     "
@@ -104,11 +105,15 @@ do_install_append_class-target () {
     install -m 666 ${S}/clamav_db/* ${D}/${localstatedir}/lib/clamav/.
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)};then
         install -D -m 0644 ${WORKDIR}/clamav.service ${D}${systemd_unitdir}/system/clamav.service
+        install -d ${D}${sysconfdir}/tmpfiles.d
+        install -m 0644 ${WORKDIR}/tmpfiles.clamav ${D}${sysconfdir}/tmpfiles.d/clamav.conf
     fi
 }
 
 pkg_postinst_ontarget_${PN} () {
-    if [ -e /etc/init.d/populate-volatile.sh ] ; then
+    if command -v systemd-tmpfiles >/dev/null; then
+        systemd-tmpfiles --create ${sysconfdir}/tmpfiles.d/clamav.conf
+    elif [ -e ${sysconfdir}/init.d/populate-volatile.sh ]; then
         ${sysconfdir}/init.d/populate-volatile.sh update
     fi
     mkdir -p ${localstatedir}/lib/clamav
@@ -140,6 +145,7 @@ FILES_${PN}-daemon = "${bindir}/clamconf ${bindir}/clamdtop ${sbindir}/clamd \
 FILES_${PN}-freshclam = "${bindir}/freshclam \
                         ${sysconfdir}/freshclam.conf*  \
                         ${sysconfdir}/clamav ${sysconfdir}/default/volatiles \
+                        ${sysconfdir}/tmpfiles.d/*.conf \
                         ${localstatedir}/lib/clamav \
                         ${docdir}/${PN}-freshclam ${mandir}/man1/freshclam.* \
                         ${mandir}/man5/freshclam.conf.* \
diff --git a/recipes-security/clamav/files/tmpfiles.clamav b/recipes-security/clamav/files/tmpfiles.clamav
new file mode 100644
index 0000000..fd5adfe
--- /dev/null
+++ b/recipes-security/clamav/files/tmpfiles.clamav
@@ -0,0 +1,3 @@
+#Type Path        Mode UID  GID  Age Argument
+d /var/log/clamav 0755 clamav clamav -
+f /var/log/clamav/freshclam.log 0644 clamav clamav -
-- 
2.17.1

