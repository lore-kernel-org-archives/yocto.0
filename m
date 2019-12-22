Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web12.287.1576975566277607131
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Dec 2019 16:46:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kfjlLnf/;
 spf=pass (domain: gmail.com, ip: 209.85.210.175, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id p14so7287511pfn.4
        for <yocto@lists.yoctoproject.org>; Sat, 21 Dec 2019 16:46:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=jQqE8MaI08AlFnD+xMEfyweD9d0kOCIFSrYe1xvrRjg=;
        b=kfjlLnf/2wQkNHFzNNgKn6KAofAWuG3QlkzC2rT83oJiXPrvLv93Dcpo9JH8Jea0DM
         7rdLSf2SmTHBgXMuZuXLBSTl9WijiChJZYDg1Tlts4F48WqtQoiRIwjDkWXUCSRCdHMk
         IqMEGdJNrkzfj1FUB7uhgfzZt9sOQRdFvc5MHJnAoGowuZs/+5lfb2PUzwV9E5zb1vsd
         mhPpA+cmMtN936yUoUJfdSgqCBvSUNU7yanqnZ48snDEIhVqnUzCxhmoKTGUn8WRW6uG
         N7FfTNUGQqB1kx3b6sPNNhH9D2p5us0JmyCqoU7BFKfx6uj4UvyQK6TZZ6YXcQh2vuMB
         U5TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=jQqE8MaI08AlFnD+xMEfyweD9d0kOCIFSrYe1xvrRjg=;
        b=hSScqFvxfnBXY8TGXwMI9poLGG6knVtRTmV1mM8VjVG0inXKnB2x41foTxl5oUz/AK
         bCrzHKddPXEFEUKfG1YpjbWmePlB7y68p3GN2An2yjHKdunZn2RHkqjq6mvnmeun6lTm
         NUdKLmj3HZbYFMAKh+MH2yv2ZlnOPahipeWNx3O1kc6o+OK9T/An9fl2rDQpUYZDr8Jk
         Qk/jyDVAg5Pt6IRoRjelb7qICsWbc6+CtnoVAg4movI3WS5Nwc5rXmtW0jPgyMWN+Tvi
         DJ/B0m1QZ4har72liUrOIw/y584jvS+69sboIHhETIdaDCZdAuxiRvjdrjC/6CSO5iDR
         UNcQ==
X-Gm-Message-State: APjAAAWudyLwzcH47BnWK0ayJM2JsAId8CmMYT1t42ir2/tW+guMfPHQ
	7QK43SmvjVvUbgnq6XCahnga7vKqH5A=
X-Google-Smtp-Source: APXvYqwAdXh5gia6bnCKRgQJyVNQm4sXIEIoQtbp+NMXgf7KxsofYCack81WPq1VdVy1bHALOTrrhA==
X-Received: by 2002:a63:31d0:: with SMTP id x199mr24106647pgx.286.1576975565316;
        Sat, 21 Dec 2019 16:46:05 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from localhost.localdomain (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id e187sm14568374pfa.135.2019.12.21.16.46.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Dec 2019 16:46:04 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] python-fail2ban: Drop python2 package
Date: Sun, 22 Dec 2019 00:46:02 +0000
Message-Id: <20191222004603.19153-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/fail2ban/python-fail2ban.inc | 49 -------------------
 .../fail2ban/python-fail2ban_0.10.4.0.bb      |  4 --
 2 files changed, 53 deletions(-)
 delete mode 100644 recipes-security/fail2ban/python-fail2ban.inc
 delete mode 100644 recipes-security/fail2ban/python-fail2ban_0.10.4.0.bb

diff --git a/recipes-security/fail2ban/python-fail2ban.inc b/recipes-security/fail2ban/python-fail2ban.inc
deleted file mode 100644
index 7270ed8..0000000
--- a/recipes-security/fail2ban/python-fail2ban.inc
+++ /dev/null
@@ -1,49 +0,0 @@
-SUMMARY = "Daemon to ban hosts that cause multiple authentication errors."
-DESCRIPTION = "Fail2Ban scans log files like /var/log/auth.log and bans IP addresses having too \
-many failed login attempts. It does this by updating system firewall rules to reject new \
-connections from those IP addresses, for a configurable amount of time. Fail2Ban comes \
-out-of-the-box ready to read many standard log files, such as those for sshd and Apache, \
-and is easy to configure to read any log file you choose, for any error you choose."
-HOMEPAGE = "http://www.fail2ban.org"
-
-LICENSE = "GPL-2.0"
-LIC_FILES_CHKSUM = "file://COPYING;md5=ecabc31e90311da843753ba772885d9f"
-
-SRCREV ="aa565eb80ec6043317e8430cabcaf9c3f4e61578"
-SRC_URI = " \
-	git://github.com/fail2ban/fail2ban.git;branch=0.11 \
-	file://initd \
-        file://fail2ban_setup.py \
-        file://run-ptest \
-"
-
-inherit update-rc.d ptest
-
-S = "${WORKDIR}/git"
-
-INITSCRIPT_PACKAGES = "${PN}"
-INITSCRIPT_NAME = "fail2ban-server"
-INITSCRIPT_PARAMS = "defaults 25"
-
-do_compile_prepend () {
-    cp ${WORKDIR}/fail2ban_setup.py ${S}/setup.py
-}
-
-do_install_append () {
-	install -d ${D}/${sysconfdir}/fail2ban
-	install -d ${D}/${sysconfdir}/init.d
-    	install -m 0755 ${WORKDIR}/initd ${D}${sysconfdir}/init.d/fail2ban-server
-	chown -R root:root ${D}/${bindir}
-}
-
-do_install_ptest_append () {
-        install -d ${D}${PTEST_PATH}
-        sed -i -e 's/##PYTHON##/${PYTHON_PN}/g' ${D}${PTEST_PATH}/run-ptest
-        install -D ${S}/bin/fail2ban-testcases ${D}${PTEST_PATH}
-}
-
-FILES_${PN} += "/run"
-
-INSANE_SKIP_${PN}_append = "already-stripped"
-
-RDEPENDS_${PN} = "sysklogd iptables sqlite3 ${PYTHON_PN} ${PYTHON_PN}-pyinotify"
diff --git a/recipes-security/fail2ban/python-fail2ban_0.10.4.0.bb b/recipes-security/fail2ban/python-fail2ban_0.10.4.0.bb
deleted file mode 100644
index 17a7dd8..0000000
--- a/recipes-security/fail2ban/python-fail2ban_0.10.4.0.bb
+++ /dev/null
@@ -1,4 +0,0 @@
-inherit setuptools
-require python-fail2ban.inc
-
-RDEPENDS_${PN}-ptest = "python python-modules python-fail2ban"
-- 
2.17.1

