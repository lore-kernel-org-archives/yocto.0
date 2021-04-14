Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web08.7013.1618364494977635279
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 18:41:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oJthVduW;
 spf=pass (domain: gmail.com, ip: 209.85.214.173, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f173.google.com with SMTP id j7so9225634plx.2
        for <yocto@lists.yoctoproject.org>; Tue, 13 Apr 2021 18:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7Zl1GywJt6nYgRh2nTlNqx0nZR4sehudsQTS6xGFJY8=;
        b=oJthVduWcOsnD/XO4IAf+5tks/fqrXaEjKo+6a+TM4yqTlopdy9758F26vt4Kpuhiu
         x8qHbV+N9ixCGhBStYWYGIQJ07DBgjdJ58mzABXh/3wjfHJcbyjNcLg0mApgSo5ZVQN6
         1/prUyz5n06XFi+iy5TTIkojZdtzSOQFLnylEcIwkkwUF9hM/BXzCwadp4nGZ2ZlCSMf
         HTwl/gm9MeFCk0+YRPVUhNrEt1EgSBvGbiR1xlNljs7KogLdGvpF+wlsAu1Ed0p8EGah
         D1XKpoHBI1OM5uwYph/LSZ2ZV+40i5JLsNy41T+rwDVl6O6gzTuDDyo8STnrLOehPC9v
         zVMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7Zl1GywJt6nYgRh2nTlNqx0nZR4sehudsQTS6xGFJY8=;
        b=ljzO+Afgo59nNVe56JWouycc3TVkracJg2XKZLr3RMXzUX8OE+U9Sb6PdvW2deAo6E
         6Ak5Z2JIgBaV/OF6y7WrMJ2eDQTB0Y8KEnyLnp3QttdZx2di3bCdjyVDpT+URAgVRXKW
         Psr33SLr6CKAzJ8dhJgui+dvSjaU8MYzAytU4M19Nq8ZZm0evTPyN+duKrVgrePNLRc7
         ToogCa5uw0t6yf/7BIG4enu5mM9tSH/8zmGoGCGb/aj76aEE2Dx1xnlwChYfG3uGRrVM
         xzHFuOmM6RmTMBpZ1PgHtTpb/VtHlWB1/4Wrqbs9rvAH/itRlZWa6EPRSbkAKFvUNv2r
         rsJg==
X-Gm-Message-State: AOAM531HMWDbwsQ2udWKz7ioe9IhqmZ2zQ/iSQtFR5vEiAf5IjuN5buO
	qcqXvQxAitR21ggElJzHE/2oGYe9Zp7h1w==
X-Google-Smtp-Source: ABdhPJyCR57FzMELkNiQXjHKl26fbaDjml7FBkHxYQq3at3XS+9BRpRWqdPjemPcYDfS91H63nrFBg==
X-Received: by 2002:a17:90a:414e:: with SMTP id m14mr719673pjg.9.1618364493990;
        Tue, 13 Apr 2021 18:41:33 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id g24sm13427307pgn.18.2021.04.13.18.41.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 18:41:33 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] clamav: remove rest of mirror.dat ref
Date: Wed, 14 Apr 2021 01:41:31 +0000
Message-Id: <20210414014132.2273249-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/clamav/clamav_0.104.0.bb | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/recipes-scanners/clamav/clamav_0.104.0.bb b/recipes-scanners/clamav/clamav_0.104.0.bb
index ba036b0..36e498d 100644
--- a/recipes-scanners/clamav/clamav_0.104.0.bb
+++ b/recipes-scanners/clamav/clamav_0.104.0.bb
@@ -31,7 +31,7 @@ inherit cmake chrpath pkgconfig useradd systemd multilib_header multilib_script
 CLAMAV_UID ?= "clamav"
 CLAMAV_GID ?= "clamav"
 
-MULTILIB_SCRIPTS = "${PN}-dev:${bindir}/clamav-config ${PN}-cvd:${localstatedir}/lib/clamav/mirrors.dat"
+MULTILIB_SCRIPTS = "${PN}-dev:${bindir}/clamav-config"
 
 EXTRA_OECMAKE = " -DCMAKE_BUILD_TYPE=Release -DOPTIMIZE=ON -DENABLE_JSON_SHARED=OFF \
                   -DCLAMAV_GROUP=${CLAMAV_GID} -DCLAMAV_USER=${CLAMAV_UID} \ 
@@ -85,7 +85,7 @@ pkg_postinst_ontarget_${PN} () {
 }
 
 
-PACKAGES = "${PN} ${PN}-dev ${PN}-dbg ${PN}-daemon ${PN}-doc ${PN}-cvd \
+PACKAGES = "${PN} ${PN}-dev ${PN}-dbg ${PN}-daemon ${PN}-doc \
             ${PN}-clamdscan ${PN}-freshclam ${PN}-libclamav ${PN}-staticdev"
 
 FILES_${PN} = "${bindir}/clambc ${bindir}/clamscan ${bindir}/clamsubmit ${sbindir}/clamonacc \
@@ -134,8 +134,6 @@ FILES_${PN}-doc = "${mandir}/man/* \
                    ${datadir}/man/* \
                    ${docdir}/* "
 
-FILES_${PN}-cvd =  "${localstatedir}/lib/clamav/*.cvd ${localstatedir}/lib/clamav/*.dat"
-
 USERADD_PACKAGES = "${PN}"
 GROUPADD_PARAM_${PN} = "--system ${CLAMAV_UID}"
 USERADD_PARAM_${PN} = "--system -g ${CLAMAV_GID} --home-dir  \
-- 
2.25.1

