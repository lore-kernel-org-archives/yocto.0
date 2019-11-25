Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6754.1574699985350281456
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 08:39:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=InGIJmsB;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: kergoth@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38E16E00F22; Mon, 25 Nov 2019 08:39:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (kergoth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53FFFE00DAE
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 08:39:44 -0800 (PST)
Received: by mail-wr1-f44.google.com with SMTP id 4so15649579wro.7
        for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 08:39:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8ddoRHjULtHCHuJE4A7bG+jlZYSBtbBIwwA6w89LjFo=;
        b=InGIJmsB999oSiKfGged616bZk/lFeGL2J0Fq6XE7IgXuyrOd5sXF2e+/El+D+IZwY
         Q8hodF6bmJYQP76onloxKvjF3CjlVdRvMUPTzotNwG1vDxA3HcNyWh9d+6jheXJB+UYw
         10VAk5euvIO1zqElijo0gLX13kSSxoFam+avc+PphbqkYZwdPmg6S7s1GVMSL77OdRwY
         +xjjxldRFqaNSgLN6EuGHFMtes77+p6XCm8hbMqqHeX852fFnsRB6yyp/LWU4OMNX9ym
         pbBKVAGWLuZA3LaeRZ8AhcSzGIlVgobAIQcw7RLVxMXtcJcTO56nSRFqtBg6EGBPrYJC
         wMew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8ddoRHjULtHCHuJE4A7bG+jlZYSBtbBIwwA6w89LjFo=;
        b=d29JiURfgaDzmvE8RDtxhGx3/R1mA3iQYrjhJsGTxHGbfR0k+3VzBZ+o4RyDfhKWS1
         +ri2yZg+Ae9k0u2Sny8WOuqlcHSat/en3EpbJIAaiz4mFSZGg/qxu+0UOebOUG2LnY5A
         BiekbJmnQ6vp09LOzzbscAQjmTMHYZMPWZngPvRDhpqH4vAFEy3Mf6cgpEfPnY2JpTUp
         J/mhZvxA/qc8swRBpHQ3TrIn1Hc3eOqlAGFe/pq8nIkMM5GzySu/U58LN5fqvNXcj6oV
         hgCpCtpOuYcnnJQh6Y4/d80KM9GiboW635xe2ZUp3e5E8IQ1oNJGZ71KQMqnUOQVt49Q
         RvWA==
X-Gm-Message-State: APjAAAUOLXVe75vNtM5LLkoznlmR6OWGwPyp3NHwBXwt7pUdTucc6MR7
	QU3jsRznZz6xLgRE4CNlVtB+oxfYLKI=
X-Google-Smtp-Source: APXvYqzT1rCZYsYfueSknHLf90EfYa1WtvcneAEXaJ7GfqjA4F1ZWyUoleyp8/GJllNpSpG33lJPkg==
X-Received: by 2002:adf:db8e:: with SMTP id u14mr24435614wri.274.1574699983137;
        Mon, 25 Nov 2019 08:39:43 -0800 (PST)
Received: from svr-pkl-eng-07.mgc.mentorg.com ([110.93.212.98])
        by smtp.gmail.com with ESMTPSA id m15sm11016123wrq.97.2019.11.25.08.39.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 25 Nov 2019 08:39:42 -0800 (PST)
From: Christopher Larson <kergoth@gmail.com>
To: yocto@yoctoproject.org
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-security][PATCH 3/3] suricata: add tmpfiles.d config
Date: Mon, 25 Nov 2019 21:41:12 +0500
Message-Id: <20191125164112.7063-3-kergoth@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20191125164112.7063-1-kergoth@gmail.com>
References: <20191125164112.7063-1-kergoth@gmail.com>

From: Christopher Larson <chris_larson@mentor.com>

This is needed to ensure our /var/log directory is created when using
systemd.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 recipes-ids/suricata/files/tmpfiles.suricata |  2 ++
 recipes-ids/suricata/suricata_4.1.5.bb       | 28 ++++++++++++++++++----------
 2 files changed, 20 insertions(+), 10 deletions(-)
 create mode 100644 recipes-ids/suricata/files/tmpfiles.suricata

diff --git a/recipes-ids/suricata/files/tmpfiles.suricata b/recipes-ids/suricata/files/tmpfiles.suricata
new file mode 100644
index 00000000..fbf37848
--- /dev/null
+++ b/recipes-ids/suricata/files/tmpfiles.suricata
@@ -0,0 +1,2 @@
+#Type Path        Mode UID  GID  Age Argument
+d /var/log/suricata 0755 root root
diff --git a/recipes-ids/suricata/suricata_4.1.5.bb b/recipes-ids/suricata/suricata_4.1.5.bb
index e15a9a33..b2700d63 100644
--- a/recipes-ids/suricata/suricata_4.1.5.bb
+++ b/recipes-ids/suricata/suricata_4.1.5.bb
@@ -6,6 +6,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd
 
 SRC_URI += " \
     file://volatiles.03_suricata \
+    file://tmpfiles.suricata \
     file://suricata.yaml \
     file://suricata.service \
     file://run-ptest \
@@ -59,14 +60,19 @@ do_install_append () {
 
     install -m 0644 ${S}/threshold.config ${D}${sysconfdir}/suricata
 
-    install -d ${D}${systemd_unitdir}/system
-    sed  -e s:/etc:${sysconfdir}:g \
-         -e s:/var/run:/run:g \
-         -e s:/var:${localstatedir}:g \
-         -e s:/usr/bin:${bindir}:g \
-         -e s:/bin/kill:${base_bindir}/kill:g \
-         -e s:/usr/lib:${libdir}:g \
-         ${WORKDIR}/suricata.service > ${D}${systemd_unitdir}/system/suricata.service
+    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
+        install -d ${D}${sysconfdir}/tmpfiles.d
+        install -m 0644 ${WORKDIR}/tmpfiles.suricata ${D}${sysconfdir}/tmpfiles.d/suricata.conf
+
+        install -d ${D}${systemd_unitdir}/system
+        sed  -e s:/etc:${sysconfdir}:g \
+             -e s:/var/run:/run:g \
+             -e s:/var:${localstatedir}:g \
+             -e s:/usr/bin:${bindir}:g \
+             -e s:/bin/kill:${base_bindir}/kill:g \
+             -e s:/usr/lib:${libdir}:g \
+             ${WORKDIR}/suricata.service > ${D}${systemd_unitdir}/system/suricata.service
+    fi
 
     # Remove /var/run as it is created on startup
     rm -rf ${D}${localstatedir}/run
@@ -74,7 +80,9 @@ do_install_append () {
 }
 
 pkg_postinst_ontarget_${PN} () {
-if [ -e /etc/init.d/populate-volatile.sh ] ; then
+if command -v systemd-tmpfiles >/dev/null; then
+    systemd-tmpfiles --create ${sysconfdir}/tmpfiles.d/suricata.conf
+elif [ -e ${sysconfdir}/init.d/populate-volatile.sh ]; then
     ${sysconfdir}/init.d/populate-volatile.sh update
 fi
 }
@@ -82,7 +90,7 @@ fi
 SYSTEMD_PACKAGES = "${PN}"
 
 PACKAGES =+ "${PN}-socketcontrol"
-FILES_${PN} += "${systemd_unitdir}"
+FILES_${PN} += "${systemd_unitdir} ${sysconfdir}/tmpfiles.d"
 FILES_${PN}-socketcontrol = "${bindir}/suricatasc ${PYTHON_SITEPACKAGES_DIR}"
 
 CONFFILES_${PN} = "${sysconfdir}/suricata/suricata.yaml"
-- 
2.11.1

