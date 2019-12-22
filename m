Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
 by mx.groups.io with SMTP id smtpd.web12.288.1576975567155696066
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Dec 2019 16:46:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ns/cYu3C;
 spf=pass (domain: gmail.com, ip: 209.85.214.194, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f194.google.com with SMTP id f20so5704001plj.5
        for <yocto@lists.yoctoproject.org>; Sat, 21 Dec 2019 16:46:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=UsIGPbmmMyAt725JYZm21DOreVgxMjbaIPg4za63Ndo=;
        b=Ns/cYu3CT3RWn8/hgL/6S13w3oPAJvYJcBpKjusaB0RoWyQIi57ky+PhpXIC13uJ3A
         uKHlMtiGvVIEA6N6NqbPpNejPASAM8kfOfxsGa/8P8uRBnMMXvI74GMEp87ElSJubKnq
         ZBjIj4a4LS5dBqPsZ606SrrhjGDBcqIeB9/qF+dsf4DOTZ2UUy6MpQQpFFbE+uk7gd/M
         ENge0wLsUGzcRjxuxZuMVHlyOgQEcfBv4gzvQKPc8cw6GbU70m7aK2PFOvlg+KdP5AIL
         dfO+NMhulUXQxoXABYDhedD1Ub/2fNtDGjf2PxxYxKJVUL323XPu3ZJ3VUeb+5ZGXT8t
         1SsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=UsIGPbmmMyAt725JYZm21DOreVgxMjbaIPg4za63Ndo=;
        b=fdbnbVE6fSNC5LLQzBzIAwBTJb2D1ThXn/vqGw9GQdjAfh8W1kiw8J70wugw1scQYq
         ACn137A9osTLMGhZQc/XmgjtH6cwmco7WKKtyd0JDRWKtjPc+wJeKzBLpw7LAWoSKWru
         ibzNM3GAafR1wokVcdJ8jguSKUskseSgAnOhzl0ui7s0PnuPUiqkHcn0y9jmna2ymb49
         XOXPnRlw35ja0nyPS2m+L9T4PUbcf4rQZysj91danLI5ZqTl8snXJHjdUccfF0L7oDuo
         IKpPMe993SDBH+qxFIwNEhEEaviM6pS1LWVZGl9XiWDYyRntwn/l4H+gIywv1Um3Igpb
         wlOQ==
X-Gm-Message-State: APjAAAXyZnTjsvaI9ZRcme8e8ep+v6ZJRp1MyABXoPkD4+6a5WDXPSYc
	1wXVTJ9nZnP65IFEur4m3DODwJDfq6A=
X-Google-Smtp-Source: APXvYqzyR52pkd3dqBGW+FoUVyvz6Crr15nW+FJS+XTa1TtyvlWadUkiDiQ/g0RPT0EVbfwUL3dtHg==
X-Received: by 2002:a17:902:6b4b:: with SMTP id g11mr23644730plt.335.1576975566304;
        Sat, 21 Dec 2019 16:46:06 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from localhost.localdomain (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id e187sm14568374pfa.135.2019.12.21.16.46.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Dec 2019 16:46:05 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] python3-fail2ban: include python-fail2ban.inc
Date: Sun, 22 Dec 2019 00:46:03 +0000
Message-Id: <20191222004603.19153-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191222004603.19153-1-akuster808@gmail.com>
References: <20191222004603.19153-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../fail2ban/python3-fail2ban_0.10.4.0.bb     | 51 +++++++++++++++++--
 1 file changed, 47 insertions(+), 4 deletions(-)

diff --git a/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb b/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb
index 23ef027..53f94ff 100644
--- a/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb
+++ b/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb
@@ -1,8 +1,51 @@
-inherit setuptools3
-require python-fail2ban.inc
+SUMMARY = "Daemon to ban hosts that cause multiple authentication errors."
+DESCRIPTION = "Fail2Ban scans log files like /var/log/auth.log and bans IP addresses having too \
+many failed login attempts. It does this by updating system firewall rules to reject new \
+connections from those IP addresses, for a configurable amount of time. Fail2Ban comes \
+out-of-the-box ready to read many standard log files, such as those for sshd and Apache, \
+and is easy to configure to read any log file you choose, for any error you choose."
+HOMEPAGE = "http://www.fail2ban.org"
 
-RDEPENDS_${PN}-ptest = "python3-core python3-io python3-modules python3-fail2ban"
+LICENSE = "GPL-2.0"
+LIC_FILES_CHKSUM = "file://COPYING;md5=ecabc31e90311da843753ba772885d9f"
 
-SRC_URI += " \
+SRCREV ="aa565eb80ec6043317e8430cabcaf9c3f4e61578"
+SRC_URI = " \
+	git://github.com/fail2ban/fail2ban.git;branch=0.11 \
+	file://initd \
+        file://fail2ban_setup.py \
+        file://run-ptest \
         file://0001-To-fix-build-error-of-xrang.patch \
 "
+
+inherit update-rc.d ptest setuptools3
+
+S = "${WORKDIR}/git"
+
+do_compile_prepend () {
+    cp ${WORKDIR}/fail2ban_setup.py ${S}/setup.py
+}
+
+do_install_append () {
+	install -d ${D}/${sysconfdir}/fail2ban
+	install -d ${D}/${sysconfdir}/init.d
+    	install -m 0755 ${WORKDIR}/initd ${D}${sysconfdir}/init.d/fail2ban-server
+	chown -R root:root ${D}/${bindir}
+}
+
+do_install_ptest_append () {
+        install -d ${D}${PTEST_PATH}
+        sed -i -e 's/##PYTHON##/${PYTHON_PN}/g' ${D}${PTEST_PATH}/run-ptest
+        install -D ${S}/bin/fail2ban-testcases ${D}${PTEST_PATH}
+}
+
+FILES_${PN} += "/run"
+
+INITSCRIPT_PACKAGES = "${PN}"
+INITSCRIPT_NAME = "fail2ban-server"
+INITSCRIPT_PARAMS = "defaults 25"
+
+INSANE_SKIP_${PN}_append = "already-stripped"
+
+RDEPENDS_${PN} = "sysklogd iptables sqlite3 ${PYTHON_PN} ${PYTHON_PN}-pyinotify"
+RDEPENDS_${PN}-ptest = "python3-core python3-io python3-modules python3-fail2ban"
-- 
2.17.1

