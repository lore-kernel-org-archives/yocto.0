Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.3949.1584582814565155426
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=W/Kh8FW3;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69BFAE01885; Wed, 18 Mar 2020 18:53:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.216.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D4A2E01845
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:32 -0700 (PDT)
Received: by mail-pj1-f49.google.com with SMTP id ng8so269170pjb.2
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=P78gdh+XS/syLzc1/5OSqSPKEgrOzL2vHCIu55d6JYA=;
        b=W/Kh8FW3OlCXxYYVnO0TzqNu4BSRGayVVq5QVZU5nfmYMsszgqcSFgqgCFtTt12Obg
         XExkmzd0lkuqwen+BDRhym8jV2xTtM1ZyhiNGKI8cK1cnPrIz1PEqxsnbwTevm6OVmEU
         rFqo3o1QWDsXfSThIqYS8vjTJ1G8JWZdEVlmdhwMBE0jd2l0E+QdAw/ARNrCH237aldo
         NPRV96w4BfWGP7+qoXDBoyzOnoIFHtVBTW8ulDSFoAVxUvyec+OJG+Zp5PRB3ykUtVCT
         XtA5XAv+Xa+LVeMWDIbmZ+N+EH+R4VzP3siiBEflYqM+9y2xTWaZnyZLi2sCEQzs83ew
         21Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=P78gdh+XS/syLzc1/5OSqSPKEgrOzL2vHCIu55d6JYA=;
        b=WiqUYX1f/j+n8PeQA+njOa7RN3nJqPYLaufBTDvTD53NPJV/GvcceKM/OPqvqVtcdr
         nGWakRu374pTv4WXmC0ueDSTvEQPelI1CJe9HzXDhUUeyOYHvizuFkBu+niORYO8mxa3
         /PHQgdHthSFNXUN/n/5Is2i/KXiayhseSJoohUQc4NAyvn5twvr1XLmhoRr1YV+CRQUo
         X4q+wVQiCR5QyMJvUxbtYNMo+Id0EaH1sigUdiVS7OGhEb2XEzToXAWWYGQexqaOQlQC
         Njg9aObVXzYU5txIIpvG1yw9q+29DqVIu6ThyGThfEU1UwA6VVdAQUHNT1yKL7ylO2JZ
         AeGw==
X-Gm-Message-State: ANhLgQ1aJGsluNylB8K57o0f842duIHJzYx+6iGIWeM7vr1/UnLz64Vx
	Bw3phmDyAu/DIWfL+ryQqrE=
X-Google-Smtp-Source: ADFU+vvkUEO1zT81UtDN3AqlxHBQZ9FNs1GWQl1E8zRW4SHM2sB0WGbYeHYc8VRc9JyMiTqbyn6mug==
X-Received: by 2002:a17:902:8a8f:: with SMTP id p15mr991686plo.45.1584582811701;
        Wed, 18 Mar 2020 18:53:31 -0700 (PDT)
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id q91sm209168pjb.11.2020.03.18.18.53.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:31 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 1E3A02A09AF; Wed, 18 Mar 2020 18:53:30 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 09/20] monit: Lives in meta-oe now, remove
Date: Wed, 18 Mar 2020 18:53:10 -0700
Message-Id: <20200319015321.15525-9-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 .../monit/files/enable-etc-monit.d-include.patch   |  9 ----
 meta-cgl-common/recipes-cgl/monit/files/init       | 42 ---------------
 meta-cgl-common/recipes-cgl/monit/monit_5.26.0.bb  | 59 ----------------------
 3 files changed, 110 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/monit/files/enable-etc-monit.d-include.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/monit/files/init
 delete mode 100644 meta-cgl-common/recipes-cgl/monit/monit_5.26.0.bb

diff --git a/meta-cgl-common/recipes-cgl/monit/files/enable-etc-monit.d-include.patch b/meta-cgl-common/recipes-cgl/monit/files/enable-etc-monit.d-include.patch
deleted file mode 100644
index 23971a1..0000000
--- a/meta-cgl-common/recipes-cgl/monit/files/enable-etc-monit.d-include.patch
+++ /dev/null
@@ -1,9 +0,0 @@
---- a/monitrc	2014-03-27 13:27:21.000000000 +0100
-+++ b/monitrc	2014-03-31 13:12:49.515395387 +0200
-@@ -248,5 +248,5 @@
- ## It is possible to include additional configuration parts from other files or
- ## directories.
- #
--#  include /etc/monit.d/*
-+include /etc/monit.d/*
- #
diff --git a/meta-cgl-common/recipes-cgl/monit/files/init b/meta-cgl-common/recipes-cgl/monit/files/init
deleted file mode 100644
index 325a552..0000000
--- a/meta-cgl-common/recipes-cgl/monit/files/init
+++ /dev/null
@@ -1,42 +0,0 @@
-#! /bin/sh 
-#
-# This is an init script for openembedded
-# Copy it to /etc/init.d/monit and type
-# > update-rc.d monit defaults 99
-#
-monit=/usr/bin/monit
-pidfile=/var/run/monit.pid
-monit_args="-c /etc/monitrc"
-
-test -x "$monit" || exit 0
-
-case "$1" in
-  start)
-    echo -n "Starting Monit"
-    start-stop-daemon --start --quiet --exec $monit -- $monit_args
-    RETVAL=$?
-    echo "."
-    ;;
-  stop)
-    echo -n "Stopping Monit"
-    start-stop-daemon --stop --quiet --pidfile $pidfile
-    RETVAL=$?
-    echo "."
-    ;;
-  restart)
-    $0 stop
-    $0 start
-    RETVAL=$?
-    ;;
-  status)
-    $monit $monit_args status
-    RETVAL=$?
-    echo "."
-    ;;
-  *)
-    echo "Usage: $0 {start|stop|restart|status}"
-    exit 1
-esac
-
-exit $RETVAL
-
diff --git a/meta-cgl-common/recipes-cgl/monit/monit_5.26.0.bb b/meta-cgl-common/recipes-cgl/monit/monit_5.26.0.bb
deleted file mode 100644
index 6ec1a21..0000000
--- a/meta-cgl-common/recipes-cgl/monit/monit_5.26.0.bb
+++ /dev/null
@@ -1,59 +0,0 @@
-SUMMARY = "Monit is a tool used for system monitoring and error recovery"
-DESCRIPTION = "Monit is a free open source utility for managing and monitoring, \
-  processes, programs, files, directories and filesystems on a UNIX system. \
-  Monit conducts automatic maintenance and repair and can execute meaningful \
-  causal actions in error situations. \
-  "
-HOMEPAGE = "http://mmonit.com/monit/"
-
-LICENSE = "AGPLv3"
-LIC_FILES_CHKSUM = "file://COPYING;md5=ea116a7defaf0e93b3bb73b2a34a3f51"
-
-DEPENDS = "openssl zlib virtual/crypt"
-
-SRC_URI = "\
-	http://mmonit.com/monit/dist/${BP}.tar.gz \
-	file://enable-etc-monit.d-include.patch \
-	file://init \
-	"
-
-SRC_URI[md5sum] = "9f7dc65e902c103e4c5891354994c3df"
-SRC_URI[sha256sum] = "87fc4568a3af9a2be89040efb169e3a2e47b262f99e78d5ddde99dd89f02f3c2"
-
-INITSCRIPT_NAME = "monit"
-INITSCRIPT_PARAMS = "defaults 99"
-
-inherit autotools-brokensep update-rc.d systemd
-
-SYSTEMD_PACKAGES = "${PN}"
-SYSTEMD_SERVICE_${PN} = "monit.service"
-SYSTEMD_AUTO_ENABLE = "enable"
-
-PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'pam', d)}"
-PACKAGECONFIG[pam] = "--with-pam,--without-pam,libpam"
-
-EXTRA_OECONF = "\
-	libmonit_cv_setjmp_available=no \
-	libmonit_cv_vsnprintf_c99_conformant=no \
-	--with-ssl-lib-dir=${STAGING_LIBDIR} \
-	--with-ssl-incl-dir=${STAGING_INCDIR} \
-	"
-
-do_configure_prepend() {
-    rm -rf ${S}/m4
-}
-
-do_install_append() {
-	install -d ${D}${sysconfdir}/init.d/
-	install -m 755 ${WORKDIR}/init ${D}${sysconfdir}/init.d/monit
-
-	install -m 600 ${S}/monitrc ${D}${sysconfdir}/monitrc
-	install -m 700 -d ${D}${sysconfdir}/monit.d/
-	sed -i -e 's:# set daemon  120:set daemon  120:' \
-	       -e 's:include /etc/monit.d/:include /${sysconfdir}/monit.d/:' \
-	       ${D}${sysconfdir}/monitrc
-
-	install -D -m 0644 ${S}/system/startup/monit.service ${D}${systemd_system_unitdir}/monit.service
-}
-
-CONFFILES_${PN} += "${sysconfdir}/monitrc"
-- 
2.13.3

