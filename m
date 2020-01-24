Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
 by mx.groups.io with SMTP id smtpd.web12.7088.1579830716968806834
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 17:51:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZtBS39w8;
 spf=pass (domain: gmail.com, ip: 209.85.210.193, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f193.google.com with SMTP id q8so314032pfh.7
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 17:51:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=O6bLMSwidq+4ym80BzsZjmije7ZDgD6817ICXP1TyEg=;
        b=ZtBS39w83kaYilK2sXxWUoq2amWUYWJM/IHo+01dcUZyQS25/YdEUyek1pTurjMEyF
         /kPj+S68Qdn7iGm/KuTfHKf4zpAP9g5xVighUhzvBCjX/05qrrE3xGD5DZaFKSi37qHl
         yeCG7DvmSgsmmY6JA0xJOWmkQkiZNH3kyUDIKS2Z5XQ/2nuVdgBNUBjwwMAJT8yJGx+F
         5+qY6D9DGa4NhPPojQECMtBsFymQ1ANmXpC45BjN8wHyQHFR7LHL5vpGElm/Sl8Hpqum
         AUAlRNQA49FdRcHlHT0EGBM75IwqgpbPWQPf06ZXR1gSfoT57kIX/f/FXd/t+nk8udWf
         jJIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=O6bLMSwidq+4ym80BzsZjmije7ZDgD6817ICXP1TyEg=;
        b=Io8ishryfPdz4ZLb6CJvx1dOFn0tlXRxhFsO0vHSHn1F622mvXidoABcCbAc3beMkD
         r+wPXdTQkVIn2PT4JglJJSyD8H8dQ5KhpQHHbatq/kdMRKJyX2mi2lZOaLmFpxnT3VfR
         4XghCzFUxcZKYFs4nZjkJMTKKMH2/XmO1migsDDgYZz9x1d45Tc/F9IcKDMYwu7fYOtd
         74tf+GOicQBJ5JwDGQ6dWq9zpJVUjZ0NesT/m6pBToAQgClk+R8lWjDGAKAbrG10MPmR
         RYrn4RQub7hsgrY606izew9toujN8PJQX+Cmh2i/CjbLUM+Azp4oA5cCC6dO043AZp3k
         FSlg==
X-Gm-Message-State: APjAAAU8HSejN9XGxMnqsFV7R7fVzzX/nKV9009K6p4v8rsMMQJAPHNw
	lZhpjavMjtzJQuo3F/V0DoH5umzf
X-Google-Smtp-Source: APXvYqytYiAofVAZfKJfEuhP8mRP/DeI5cdZ1psXx2q8Q7ZjfQr6yt1oXTgbyvdmuSrjHpZNBqEKcw==
X-Received: by 2002:a62:2643:: with SMTP id m64mr1096328pfm.123.1579830716335;
        Thu, 23 Jan 2020 17:51:56 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:682c:76b9:6d8a:bbd2])
        by smtp.gmail.com with ESMTPSA id k10sm3982572pjq.14.2020.01.23.17.51.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2020 17:51:55 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] python3-fail2ban: update to latest
Date: Thu, 23 Jan 2020 17:51:51 -0800
Message-Id: <20200124015151.15742-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200124015151.15742-1-akuster808@gmail.com>
References: <20200124015151.15742-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../fail2ban/python3-fail2ban_0.10.4.0.bb     | 22 +++++++++----------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb b/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb
index 53f94ff..79bd2b0 100644
--- a/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb
+++ b/recipes-security/fail2ban/python3-fail2ban_0.10.4.0.bb
@@ -9,13 +9,11 @@ HOMEPAGE = "http://www.fail2ban.org"
 LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ecabc31e90311da843753ba772885d9f"
 
-SRCREV ="aa565eb80ec6043317e8430cabcaf9c3f4e61578"
-SRC_URI = " \
-	git://github.com/fail2ban/fail2ban.git;branch=0.11 \
-	file://initd \
+SRCREV ="3befbb177017957869425c81a560edb8e27db75a"
+SRC_URI = " git://github.com/fail2ban/fail2ban.git;branch=0.11 \
+        file://initd \
         file://fail2ban_setup.py \
         file://run-ptest \
-        file://0001-To-fix-build-error-of-xrang.patch \
 "
 
 inherit update-rc.d ptest setuptools3
@@ -27,16 +25,16 @@ do_compile_prepend () {
 }
 
 do_install_append () {
-	install -d ${D}/${sysconfdir}/fail2ban
-	install -d ${D}/${sysconfdir}/init.d
-    	install -m 0755 ${WORKDIR}/initd ${D}${sysconfdir}/init.d/fail2ban-server
-	chown -R root:root ${D}/${bindir}
+    install -d ${D}/${sysconfdir}/fail2ban
+    install -d ${D}/${sysconfdir}/init.d
+    install -m 0755 ${WORKDIR}/initd ${D}${sysconfdir}/init.d/fail2ban-server
+    chown -R root:root ${D}/${bindir}
 }
 
 do_install_ptest_append () {
-        install -d ${D}${PTEST_PATH}
-        sed -i -e 's/##PYTHON##/${PYTHON_PN}/g' ${D}${PTEST_PATH}/run-ptest
-        install -D ${S}/bin/fail2ban-testcases ${D}${PTEST_PATH}
+    install -d ${D}${PTEST_PATH}
+    sed -i -e 's/##PYTHON##/${PYTHON_PN}/g' ${D}${PTEST_PATH}/run-ptest
+    install -D ${S}/bin/fail2ban-testcases ${D}${PTEST_PATH}
 }
 
 FILES_${PN} += "/run"
-- 
2.17.1

