Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web12.4893.1594959005845525397
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 21:10:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=U22E37dg;
 spf=pass (domain: gmail.com, ip: 209.85.214.171, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id k4so4871329pld.12
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jul 2020 21:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=3lBVsfWgvAjKBI2+IhotV+U5DisG7Myqrx8nMw7iHtI=;
        b=U22E37dg7a+1Mpfk9apKocAJOW8MWfCHGKriP185j4Cu3TuNx1VEuRUPhJfmQBtjCD
         69jtbFDWAoAEfuUZGrmvuG+I8Vj4NgZ1nj/qhjTeAkbE8a7ONYfD1iyyJhzXW0EoRbEx
         kVT4GMBeSFgRQiZY8CdZWEF0SCuAhJnLSjNv128Z9ZGZdNkX3cSP2xAi8In8cyCBGkAw
         ApUGxt/mJN2a9T49gheJdiTZT3iPNv0eoq/Yo5CUvcgT6s1yOc19fDE4JyWUh7skuhvl
         m5MojumYxFzC8UgWREKkdNXjkn0/xymaxhdldsZmxH7FWwZywzQ1pRnGARYlBfjMSVlA
         i8vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=3lBVsfWgvAjKBI2+IhotV+U5DisG7Myqrx8nMw7iHtI=;
        b=uVLZpk+68v4de3KeLo0so4qcU1mhQlHoRYlREqJ/RtdAaaiji6Bjl9Z5wy89aAaGxg
         te1qFIperfBWPoviJV3T3aEzoGuRdIZkP7jEcH0A51foUUp4LWZDpA/ULLvyyUlwSXlA
         OQtU0xjswx6TV3zhY7NdLwUNhG20ay4UsDka5IKqgZOJ75hVFHkGltYYt+ZQS5kzX7eL
         ZxVAGGCf9lyJPDBsNZPWcOQPFcul7N7mGGH7dkY/Qeg/SbkD0H6zJM2UGlkrudizE7tt
         Epc7hK9ctcSb2LlbnDXBXClKCciEQ5R3rpnsCZ0pC0t2xGsQVAUTBGB/zu3tYSGi+78v
         NliA==
X-Gm-Message-State: AOAM531IzSE+Cv2hv0/4qWhvTglOkXqhDKV7ZIMj9mirktE4ThstacHp
	wSOB0uA0Z7d+qvU0dpT4ABv/7amXOcM=
X-Google-Smtp-Source: ABdhPJyBQt5bZFy3t20b2xUhKCDIyh+C4OlPT1wvWAJGnmPdaqIVMUzuFyquT84KK7ByF4E6edC0wg==
X-Received: by 2002:a17:90a:3a81:: with SMTP id b1mr8246383pjc.217.1594959004748;
        Thu, 16 Jul 2020 21:10:04 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from localhost.localdomain (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id k7sm6212446pgh.46.2020.07.16.21.10.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2020 21:10:04 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/6] python3-privacyidea: adding initial support for mfa
Date: Fri, 17 Jul 2020 04:09:57 +0000
Message-Id: <20200717041001.17312-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.8.6
In-Reply-To: <20200717041001.17312-1-akuster808@gmail.com>
References: <20200717041001.17312-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/mfa/python3-privacyidea_3.3.bb | 40 +++++++++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 recipes-security/mfa/python3-privacyidea_3.3.bb

diff --git a/recipes-security/mfa/python3-privacyidea_3.3.bb b/recipes-security/mfa/python3-privacyidea_3.3.bb
new file mode 100644
index 0000000..eb6b7eb
--- /dev/null
+++ b/recipes-security/mfa/python3-privacyidea_3.3.bb
@@ -0,0 +1,40 @@
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
+do_install_append () {
+    #install ${D}/var/log/privacyidea
+
+    rm -fr ${D}${libdir}/${PYTHON_DIR}/site-packages/tests
+}
+
+USERADD_PACKAGES = "${PN}"
+GROUPADD_PARAM_${PN} = "--system privacyidea"
+USERADD_PARAM_${PN} = "--system -g privacyidea -o -r -d /opt/${BPN}  \
+    --shell /bin/false privacyidea"
+
+FILES_${PN} += " ${datadir}/etc/privacyidea/* ${datadir}/lib/privacyidea/*"
+
+RDEPENDS_${PN} += " bash perl freeradius-mysql freeradius-utils"
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
+RDEPENDS_${PN} += "python3-pyopenssl python3-pyrad python3-dateutil python3-editor python3-gnupg"
+RDEPENDS_${PN} += "python3-pytz python3-pyyaml python3-qrcode python3-redis python3-requests python3-rsa"
+RDEPENDS_${PN} += "python3-six python3-smpplib python3-soupsieve python3-soupsieve "
+RDEPENDS_${PN} += "python3-sqlalchemy python3-sqlsoup python3-urllib3 python3-werkzeug"
-- 
2.8.6

