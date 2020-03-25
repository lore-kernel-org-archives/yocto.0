Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com [209.85.208.195])
 by mx.groups.io with SMTP id smtpd.web11.9340.1585136632305280971
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Mar 2020 04:44:12 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="key unavailable" header.i=@gmail.com header.s=20161025 header.b=Htm1avqa;
 spf=temperror, err=temporary DNS error (domain: gmail.com, ip: 209.85.208.195, mailfrom: jonatan.p@gmail.com)
Received: by mail-lj1-f195.google.com with SMTP id r24so2084790ljd.4
        for <yocto@lists.yoctoproject.org>; Wed, 25 Mar 2020 04:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7sJW1/3YSVhj5bmG+9f+2GzRwl0kKFWtSXl+9wXvFX0=;
        b=Htm1avqa0MY8ckHiF4IzcEhu1s96t3K4GwqxPlN2DWDmEFIIy9rYCiZKMzDqn+HcPg
         Ip6wyFfIxKAhgZWbiTb07BVQJj8hHr4rpjbhlnGsPL7N8z60+UzNrAxSM52OZoWpTbFm
         c/ieDIZnM3sXC52zgONA8JnB6DsKNPoU/B05C5rowtUl6cD1PbIttOxOOPZzFtig12ZT
         6BjT5CT9hy1LYLeXRzuVRfByFlEK6i6zoEdI95hMi8szQL3KNffpAq/uHqXUI24tVRM5
         Lj7S/mHEYi9txmVsWtPTs+fXwlNet2TIBNm7MqFanvTfqmpYFwCWeg0i5xhwl4UQXxKj
         nvgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7sJW1/3YSVhj5bmG+9f+2GzRwl0kKFWtSXl+9wXvFX0=;
        b=TNPpIxswO5q/QW4E3rKwJwsBhVJrOXr4WCTlL5Cxl2ucNVA19WOOe4BYZyvs+lySjB
         PZYkRL1mPlYHXqyTOIZQIdxti5/6n8V4AMq4/TtcHRrqYyqPk3FYyMTwQKbAKJ3s4P4S
         XSFNoS8iQqvmiJW+kUBusHx9tQZtUtRZWJ8kH8HMSZHEh5ticfSu7QOWTyiHpSDvK5+c
         9mXNvSMuikrGdN7QCGdQ3oZJOReKLQ6D6BOjYL++MSdhAhb8O86hxL/Su3amzZbC2Wde
         VtNfGUhAzP+uI8Q91B17NMaBhSNRZZ0ADFGU4Yw0EEIHHuZKJFMIiEJWKvM8Hw0O1QgV
         CRVw==
X-Gm-Message-State: ANhLgQ3HjiHt/JX7kbTwklqK1yaO8j4dneAJZt0x2eljb5D0uR11tCFJ
	7EE6QPjkvuhBFNNtTDuzpwo95omQDgM=
X-Google-Smtp-Source: APiQypLAITgY+w81ij3wEhpB8rGmWbtMtJTxfPU/YPV9sm6EhbAbL91T1hByPoipxDBu/+8bEmJCNw==
X-Received: by 2002:a2e:85c6:: with SMTP id h6mr1671684ljj.218.1585136630170;
        Wed, 25 Mar 2020 04:43:50 -0700 (PDT)
Return-Path: <jonatan.p@gmail.com>
Received: from localhost.localdomain (h-217-237.A357.priv.bahnhof.se. [81.170.217.237])
        by smtp.gmail.com with ESMTPSA id c22sm7182729lja.86.2020.03.25.04.43.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 04:43:49 -0700 (PDT)
From: =?UTF-8?B?Sm9uYXRhbiBQw6Vsc3Nvbg==?= <jonatan.p@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Jonatan=20P=C3=A5lsson?= <jonatan.p@gmail.com>
Subject: [meta-security][PATCH 3/6] sssd: Add sudo PACKAGECONFIG
Date: Wed, 25 Mar 2020 12:43:16 +0100
Message-Id: <20200325114319.2115155-3-jonatan.p@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200325114319.2115155-1-jonatan.p@gmail.com>
References: <20200325114319.2115155-1-jonatan.p@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

sudo was previously on by default, so add it to the default
PACKAGECONFIG.

The systemd files are only installed when --with-sudo is passed to
configure, so conditionally add them to SYSTEMD_SERVICE.

Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
---
 recipes-security/sssd/sssd_1.16.4.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index 24cc003..99697fc 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -33,7 +33,7 @@ CACHED_CONFIGUREVARS = "ac_cv_member_struct_ldap_conncb_lc_arg=no \
     ac_cv_path_NSUPDATE=${bindir} ac_cv_prog_HAVE_PYTHON3=${PYTHON_DIR} \
     "
 
-PACKAGECONFIG ?="nss nscd autofs"
+PACKAGECONFIG ?="nss nscd autofs sudo"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
 
@@ -49,6 +49,7 @@ PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
 PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
 PACKAGECONFIG[selinux] = "--with-selinux, --with-selinux=no --with-semanage=no, libselinux"
 PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
+PACKAGECONFIG[sudo] = "--with-sudo, --with-sudo=no, "
 PACKAGECONFIG[systemd] = "--with-initscript=systemd,--with-initscript=sysv"
 
 EXTRA_OECONF += " \
@@ -98,6 +99,7 @@ INITSCRIPT_NAME = "sssd"
 INITSCRIPT_PARAMS = "start 02 5 3 2 . stop 20 0 1 6 ."
 SYSTEMD_SERVICE_${PN} = " \
     ${@bb.utils.contains('PACKAGECONFIG', 'autofs', 'sssd-autofs.service sssd-autofs.socket', '', d)} \
+    ${@bb.utils.contains('PACKAGECONFIG', 'sudo', 'sssd-sudo.service sssd-sudo.socket', '', d)} \
     sssd-ifp.service \
     sssd-nss.service \
     sssd-nss.socket \
@@ -107,8 +109,6 @@ SYSTEMD_SERVICE_${PN} = " \
     sssd-secrets.service \
     sssd-secrets.socket \
     sssd.service \
-    sssd-sudo.service \
-    sssd-sudo.socket \
 "
 SYSTEMD_AUTO_ENABLE = "disable"
 
-- 
2.26.0

