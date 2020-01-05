Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web11.4212.1578266317055892540
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jan 2020 15:18:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ErYRZQzB;
 spf=pass (domain: gmail.com, ip: 209.85.215.178, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f178.google.com with SMTP id z124so25985039pgb.13
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jan 2020 15:18:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7bTgxgTCypusA79/x6pOM3APBs23AcQLghC420UXmAI=;
        b=ErYRZQzBT8D31OFyENoYGx2C4Aaf9IMK03SVaIeyisxfhxaAlEVXklqInhfq24kZzu
         DOtPE+evg/SWKoqRzoDtLr8FV0qTAoMTGYqld2Z6rd4ZkuvreoQaaW7tO1IG/NQrAaD/
         PhV1LwZKXC2bM3Zl6Uvwkg3ljNNV+yw1lcAruNBbWZ3GbQgeA4tN/b2LfO7JoyYR6N7Z
         W5F04y8uqq3TGleOpf3S123oCCysp0DUkSFIPhvTSGoviksewDm0GwFtNQlJEB3+3/FR
         XI01AV5HhA+pJF6sn6Mru+WVGKVTMa8dNFQfFutGegjEeTIQxfXSohJgio7SPKMmpmlS
         oTFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=7bTgxgTCypusA79/x6pOM3APBs23AcQLghC420UXmAI=;
        b=qUBXvpZArEKEvfM0xIFYoe68UHb1WAbIPH8HP8Yh5iQMrcibCP45+bA7GtXyubnf4w
         2c7SXX0ovsm4rM3KHr47VKxoXD3u9YcyxfiMcQDI6xiuJKNTkT5zG1Lzz4SOIp2ZYy6T
         V1U08ApvySJdgSDLnBeicGntbKiB6I/gi/6kOcn5iwMsvNlvADjbrx4graBassA3zxL5
         pQSFtmcqajldIh7TechQwgkLPMdDpO+AGfMT77iLx9MhUSY9p1bqRaEOTZxiZFvB3Zfx
         Z43JHh6e+UneZHTTckb8A2v8Fa00dwDVtWsw3Ro3hfpp84r9W3FwBKmz0X+fsU9qMpp6
         MQtQ==
X-Gm-Message-State: APjAAAXKJtpKpLpLhstrros4HPabiYm2saPAP/xwyybQrphW0VPnzPbe
	CJkB1KKAyDpDVkSPA+SQIIggs9B+
X-Google-Smtp-Source: APXvYqxVKpkWyj/SFORN3NWAkwokjwaK8G6q/uwuRNemE5Ql0dkkQnScCttPOTmMoxfseDeTFw1Zig==
X-Received: by 2002:a63:4465:: with SMTP id t37mr105546686pgk.256.1578266316344;
        Sun, 05 Jan 2020 15:18:36 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:24ce:b2a3:bac9:47a9])
        by smtp.gmail.com with ESMTPSA id v4sm50705947pff.174.2020.01.05.15.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2020 15:18:35 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-security][zeus][PATCH 5/9] suricata: add tmpfiles.d config
Date: Sun,  5 Jan 2020 15:18:26 -0800
Message-Id: <20200105231830.5281-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200105231830.5281-1-akuster808@gmail.com>
References: <20200105231830.5281-1-akuster808@gmail.com>

From: Christopher Larson <chris_larson@mentor.com>

This is needed to ensure our /var/log directory is created when using
systemd.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/files/tmpfiles.suricata |  2 ++
 recipes-ids/suricata/suricata_4.1.5.bb       | 28 +++++++++++++-------
 2 files changed, 20 insertions(+), 10 deletions(-)
 create mode 100644 recipes-ids/suricata/files/tmpfiles.suricata

diff --git a/recipes-ids/suricata/files/tmpfiles.suricata b/recipes-ids/suricata/files/tmpfiles.suricata
new file mode 100644
index 0000000..fbf3784
--- /dev/null
+++ b/recipes-ids/suricata/files/tmpfiles.suricata
@@ -0,0 +1,2 @@
+#Type Path        Mode UID  GID  Age Argument
+d /var/log/suricata 0755 root root
diff --git a/recipes-ids/suricata/suricata_4.1.5.bb b/recipes-ids/suricata/suricata_4.1.5.bb
index e15a9a3..b2700d6 100644
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
2.17.1

