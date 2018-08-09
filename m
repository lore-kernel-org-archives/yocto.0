Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55EE3E00B5E; Thu,  9 Aug 2018 16:04:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
	[209.85.215.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B3C4E009AC
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 16:04:20 -0700 (PDT)
Received: by mail-pg1-f173.google.com with SMTP id r1-v6so3428741pgp.11
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2018 16:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Hxqk3epLAx//hKYIaV4gZH4jZeSaQFeLYKANcLSE9Qg=;
	b=TItWxY0NQZym31RygFZKPXBnYjMUZfpySV2keWINsE8upObRNpZh5Bv0AQd/jpzT6M
	hgJGHQ9a59RYb897vSqS/W7D9SAUJJjaCn6TBb7xT4/dGFvuxrbs/ekhHQFcNKd0OyCs
	Oh3Dk1odQmIdnfkaY6wD+AEC4VIbA5DlFs8MVbqDzIdq5vz7NqJzwpv/80C/Sx3azTCL
	Qa/Mzui/4erN9aC8mQGZXSLhoecXBqt1CkBBCPSJpoEHQzNBuYpggofI0m4pbaplvmSX
	roHYPzgeZGY0pMCDidg8C73pmk4LOIfibZOPraN295dy96KFR/Q+UefG9aVFw5enhsjm
	5AUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Hxqk3epLAx//hKYIaV4gZH4jZeSaQFeLYKANcLSE9Qg=;
	b=fznO0157bxrBpJORYCbz8+VMNf8ZRDHh6SuOHimvEExImhk9yXnIHcj8i++adJLmFF
	xw+oNuSYSN5JdbIUPlValD/PoR9Uiez57G6lZFUZhY5jAwCf+spiQ2ORTYr/pExRD7w/
	2HOSV2DOkcl8B4tw9BarajdClDMDmZvV6ZCAwNO4MWc5bsnrxhD4mVJTcdi7YhPOmqgm
	ZAnmFUjzZdB+WlkHNTo8QT+qkOD01j7UEOl49A7p1easKFJVGt05pXX9VYLJeypN1A6L
	KgmVEVoTb2M2N7TW81QnInnYdCMkHH7K3tEUfe4fenOOCV8d+/ms1xcRtjMIV+mFwfku
	PvRw==
X-Gm-Message-State: AOUpUlHDiJaNxsieqN8hYbQmSfIhEdx6kklrTOsX1Q28X3lMtTSKGgBP
	+z1buUwtWq8LlbzKdtxYOeA=
X-Google-Smtp-Source: AA+uWPwbbV+WLRWv5b9nyHXYv/bTVhmOl04nGCnwCfyni0htbyWe5DfUG4BSucMNAAuWmVnMYOu7XA==
X-Received: by 2002:a63:a919:: with SMTP id
	u25-v6mr3984917pge.211.1533855860256; 
	Thu, 09 Aug 2018 16:04:20 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	16-v6sm13150200pfo.164.2018.08.09.16.04.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 09 Aug 2018 16:04:19 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Thu,  9 Aug 2018 16:04:16 -0700
Message-Id: <20180809230417.15925-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180809230417.15925-1-akuster808@gmail.com>
References: <20180809230417.15925-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/3] suricata: update 4.0.5
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 09 Aug 2018 23:04:21 -0000

Fix rules make. Don't allow the makefile to download the rules. Use
fetcher

add install configs and remove manual intall of those files

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{suricata_4.0.0.bb => suricata_4.0.5.bb}  | 24 ++++++++++++-------
 1 file changed, 15 insertions(+), 9 deletions(-)
 rename recipes-security/suricata/{suricata_4.0.0.bb => suricata_4.0.5.bb} (85%)

diff --git a/recipes-security/suricata/suricata_4.0.0.bb b/recipes-security/suricata/suricata_4.0.5.bb
similarity index 85%
rename from recipes-security/suricata/suricata_4.0.0.bb
rename to recipes-security/suricata/suricata_4.0.5.bb
index 6efa351..6ccf3d2 100644
--- a/recipes-security/suricata/suricata_4.0.0.bb
+++ b/recipes-security/suricata/suricata_4.0.5.bb
@@ -4,17 +4,23 @@ require suricata.inc
 
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd1e02800a1f548"
 
+SRC_URI += "https://rules.emergingthreats.net/open/suricata-4.0/emerging.rules.tar.gz;name=rules"
+
 SRC_URI += " \
            file://volatiles.03_suricata \
            file://suricata.yaml \
            file://suricata.service \
            "
 
+SRC_URI[rules.md5sum] = "7e8b570d318c98bff65f2ddc457122cb"
+SRC_URI[rules.sha256sum] = "229e3035804c2b816092c6eea09e35f9db0ea421758551a7a740cdd9c15e3feb"
+
 inherit autotools-brokensep pkgconfig python-dir systemd 
 
 CFLAGS += "-D_DEFAULT_SOURCE"
 
-CACHED_CONFIGUREVARS = "ac_cv_header_htp_htp_h=yes ac_cv_lib_htp_htp_conn_create=yes "
+CACHED_CONFIGUREVARS = "ac_cv_header_htp_htp_h=yes ac_cv_lib_htp_htp_conn_create=yes \
+                        ac_cv_path_HAVE_WGET=no ac_cv_path_HAVE_CURL=no "
 
 EXTRA_OECONF += " --disable-debug \
     --enable-non-bundled-htp \
@@ -41,19 +47,20 @@ export logdir = "${localstatedir}/log"
 
 do_install_append () {
 
+    install -d ${D}${sysconfdir}/suricata
+
+    oe_runmake install-conf DESTDIR=${D}
+
+    # mimic move of downloaded rules to e_sysconfrulesdir
+    cp -rf  ${WORKDIR}/rules ${D}${sysconfdir}/suricata
+
     oe_runmake install-rules DESTDIR=${D}
 
-    install -d ${D}${sysconfdir}/suricata
     install -d ${D}${sysconfdir}/suricata ${D}${sysconfdir}/default/volatiles
-    install -m 644 classification.config ${D}${sysconfdir}/suricata
-    install -m 644 reference.config ${D}${sysconfdir}/suricata
-    install -m 644 ${WORKDIR}/suricata.yaml ${D}${sysconfdir}/suricata
     install -m 0644 ${WORKDIR}/volatiles.03_suricata  ${D}${sysconfdir}/default/volatiles/volatiles.03_suricata
 
     install -m 0644 ${S}/threshold.config ${D}${sysconfdir}/suricata
 
-    install -d ${D}${logdir}/suricata
-
     install -d ${D}${systemd_unitdir}/system
     sed  -e s:/etc:${sysconfdir}:g \
          -e s:/var/run:/run:g \
@@ -62,7 +69,6 @@ do_install_append () {
          -e s:/bin/kill:${base_bindir}/kill:g \
          -e s:/usr/lib:${libdir}:g \
          ${WORKDIR}/suricata.service > ${D}${systemd_unitdir}/system/suricata.service
-
 }
 
 pkg_postinst_ontarget_${PN} () {
@@ -74,7 +80,7 @@ fi
 SYSTEMD_PACKAGES = "${PN}"
 
 PACKAGES =+ "${PN}-socketcontrol"
-FILES_${PN} += "${logdir}/suricata ${systemd_unitdir}"
+FILES_${PN} += "${systemd_unitdir} /run"
 FILES_${PN}-socketcontrol = "${bindir}/suricatasc ${PYTHON_SITEPACKAGES_DIR}"
 
 CONFFILES_${PN} = "${sysconfdir}/suricata/suricata.yaml"
-- 
2.17.1


