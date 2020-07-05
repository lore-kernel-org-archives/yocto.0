Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web12.42661.1593975494588123690
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jul 2020 11:58:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nk/9nD2j;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id x9so812971plr.2
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jul 2020 11:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=WsVoI8AhSDEswUCIpVdssYZTgJQgdigMkA39EEGBiQ8=;
        b=nk/9nD2jErQ2Mt3Uu+akMEb68Ct5rLtrAW7TZuFKC+imECfgIU88VwFCaAYtSVBirJ
         aHof+AJpUl6QGJ+cH0fMzS1k5e69nIWKT2abi9HG/vCOJyeWUpmVLgnWnD3xvB5hpozF
         YPcNSw77aM7NU6D9gIYC6Uek7GUWr9Bu3y4HrpNxx0afkdbfeT2tjZdBlfPHgk5SnFbs
         4kCf0s0d+STAYRUMz0jj3iSvWR9oUm3+cx1KbtaqjdTauSWQIZeyax4F/hryO8G+GCE3
         C/xU3evU9KxKB2OIvQNXBw6McVVqxD4W0OaBGLSjTIMN5x7IpahE2vHoqgK3F0YQaYaH
         NFGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=WsVoI8AhSDEswUCIpVdssYZTgJQgdigMkA39EEGBiQ8=;
        b=qTBa03i6GPJUM+2ymyBYy4dW7GUHKeyoCwAWV5YlIs+BU6ZG1lRZR8uLgFEUnLKBwg
         9TLOaa4NsQkrE0pyylosysXC9M+w9J3FCgnMpsGBbGbcPU+82+LYw2s9IGQBlNlXFvQE
         FprrJmR1P1aTKnF4rKV8HVSLSKk44Ir+FAmeT5760iteLU9H9AFNJ7hFfqNVkmheHJZB
         NWYEH9xksP+sfsEFsgnMxv/Wjiw+TYfbZpVqU7SDs2SYHeT/5FeSoWEWXl8nAsZBEfba
         IyJU1W/WzHDlaG2bbVdlnYrHBShVgIp3yWWPkFPoqNTAR0rH+nicN/GWNw4OmD4eWQ/S
         cFEQ==
X-Gm-Message-State: AOAM531jSO+jw6HXDNw5+fpAGPfJDQcTp7nZLJfa7bVYl/f7NO5M+Ri4
	sYs/kql18wciB1gNSGYEU8pT8e9bRj0=
X-Google-Smtp-Source: ABdhPJziepUGfKb8kTvymYzmksvVIBr4JSgrtCofMBy7mBe9Aq+QCXXtUAT6DNkBSt1Sceo3kQfgsg==
X-Received: by 2002:a17:90a:1089:: with SMTP id c9mr8726761pja.180.1593975493796;
        Sun, 05 Jul 2020 11:58:13 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:4da7:8833:1925:8aef])
        by smtp.gmail.com with ESMTPSA id d5sm15464534pjo.20.2020.07.05.11.58.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2020 11:58:13 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/5] python3-privacyidea: add a mfa support
Date: Sun,  5 Jul 2020 11:58:08 -0700
Message-Id: <20200705185808.3912-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200705185808.3912-1-akuster808@gmail.com>
References: <20200705185808.3912-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../mfa/python3-privacyidea_3.3.bb            | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 recipes-security/mfa/python3-privacyidea_3.3.bb

diff --git a/recipes-security/mfa/python3-privacyidea_3.3.bb b/recipes-security/mfa/python3-privacyidea_3.3.bb
new file mode 100644
index 0000000..8952f97
--- /dev/null
+++ b/recipes-security/mfa/python3-privacyidea_3.3.bb
@@ -0,0 +1,48 @@
+SUMMARY = "identity, multifactor authentication (OTP), authorization, audit"
+DESCRIPTION = "privacyIDEA is an open solution for strong two-factor authentication like OTP tokens, SMS, smartphones or SSH keys. Using privacyIDEA you can enhance your existing applications like local login (PAM, Windows Credential Provider), VPN, remote access, SSH connections, access to web sites or web portals with a second factor during authentication. Thus boosting the security of your existing applications."
+
+HOMEPAGE = "http://www.privacyidea.org/"
+LICENSE = "AGPL-3.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=c0acfa7a8a03b718abee9135bc1a1c55"
+
+PYPI_PACKAGE = "privacyIDEA"
+SRC_URI[sha256sum] = "55fbdd0fdc8957f7fc5b8900453fd9dc294860bae218e53e7fe394d93f982518"
+
+inherit pypi setuptools3
+
+#install ${D}${sysconfdir}/privacyidea
+
+do_install_append () {
+    #install ${D}/var/log/privacyidea
+
+    rm -fr ${D}${libdir}/${PYTHON_DIR}/site-packages/tests
+}
+
+# Create encryption key
+#privacyidea-create-enckey -f /opt/privacyIDEA/etc/privacyidea/privacyidea.ini
+#privacyidea-create-auditkeys -f /opt/privacyIDEA/etc/privacyidea/privacyidea.ini 
+# Create db tables
+#paster setup-app /opt/privacyIDEA/etc/privacyidea/privacyidea.ini 
+
+USERADD_PACKAGES = "${PN}"
+GROUPADD_PARAM_${PN} = "--system privacyidea"
+USERADD_PARAM_${PN} = "--system -g privacyidea -o -r -d /opt/${BPN}  \
+    --shell /bin/false privacyidea"
+
+FILES_${PN} += " ${datadir}/etc/privacyidea/* ${datadir}/lib/privacyidea/*"
+
+RDEPENDS_${PN} += " bash perl apache2 freeradius-mysql freeradius-utils"
+
+RDEPENDS_${PN} += "python3 python3-alembic python3-babel python3-backports-functools-lru-cache python3-bcrypt"
+RDEPENDS_${PN} += "python3-beautifulsoup4 python3-cbor2 python3-certifi python3-cffi python3-chardet"
+RDEPENDS_${PN} += "python3-click python3-configobj python3-croniter python3-cryptography python3-defusedxml"
+RDEPENDS_${PN} += "python3-ecdsa  python3-flask python3-flask-babel python3-flask-migrate"
+RDEPENDS_${PN} += "python3-flask-script python3-flask-sqlalchemy python3-flask-versioned"
+RDEPENDS_${PN} += "python3-future python3-httplib2 python3-huey python3-idna python3-ipaddress"
+RDEPENDS_${PN} += "python3-itsdangerous python3-jinja2 python3-ldap python3-lxml python3-mako"
+RDEPENDS_${PN} += "python3-markupsafe python3-netaddr python3-oauth2client python3-passlib python3-pillow"
+RDEPENDS_${PN} += "python3-pyasn1 python3-pyasn1-modules python3-pycparser python3-pyjwt python3-pymysql"
+RDEPENDS_${PN} += "python3-pyopenssl python3-pyrad python3-dateutil python3-editor gnupg"
+RDEPENDS_${PN} += "python3-pytz python3-pyyaml python3-qrcode python3-redis python3-requests python3-rsa"
+RDEPENDS_${PN} += "python3-six python3-smpplib python3-soupsieve python3-soupsieve "
+RDEPENDS_${PN} += "python3-sqlalchemy python3-sqlsoup python3-urllib3 python3-werkzeug"
-- 
2.17.1

