Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7482E00C34; Sun, 28 Oct 2018 11:50:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02B87E00C28
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:40 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id n10-v6so2778349pgv.10
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=QwszvTRgRtvxZzXz3jAT+ZCOrEqmUuOfRnYlMU8PVpE=;
	b=KGbKVbB9PzAGwsZiRHoUJAtcFcQZGSerqgHk26HXglIkQEkAMQqDb0fLS46lFZcGau
	cYIUdwdIGcLsoAsV5d+SrQqTrWWgUMbwWnBZDDFL4QMfLBL/bXwjZb5B9aWF3OoLxkpu
	rJo/+MgHfDOzMVU36FrvXfhjEu2LSLOy+l3eT0H16txEB9rDMTdtjIqZd1pXGcrD2LfS
	1dWLPcHrtM3nBKjb+k3zYnDN5jswxH6L2ZBqence6vKY0LhYd/tFmAdbvOmG5ixaB+G8
	TBqGwze8MetFAOHRvZRttWD9eZg9yQyWo3SgoAHeHVC3P4cb4HTmJxsfq/9xGV3qOwjn
	sEPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=QwszvTRgRtvxZzXz3jAT+ZCOrEqmUuOfRnYlMU8PVpE=;
	b=ZH7NKACYIQ4Sc4xoJCsVA2fJ+I2VTW45Pwh4LCO0XATRMmBww6mReyZg99TBDH3FNy
	GJEGVOk1VDUJ/HcooTiBKuFw3gYLjzqM+aIwLxPqphkk/R/wHkudgHOSkyFpCZKQdIWy
	6quW049DhTfq9F1SCNZQcVGAqOsEq9COxKwfqMh2/CbsJJtICENODyc0235uCJ+VNt3e
	leeokpS2kwD+2ek+q4b9NPV+P6ua7KR0zwGA1vSLn2msJNq6GbnLIDQnkL4HSV6mb3HT
	vz1p7DGzepI5iNKoL7qc57f72pKeVGyEgtOAOdwHLrnUgvAcbSgbSZmAeojVsqjwHrmg
	g88w==
X-Gm-Message-State: AGRZ1gKazSwDLH3EV/VoGFjBJ/yfx/Pz+Rc0X8Ww94erre2jtG4zSDtB
	8vGq5rpIGXvu1wzdrN0NT+aB4S43
X-Google-Smtp-Source: AJdET5dYy8Enm58oxn3GM5z7fJXfXsq06Inary+zJfDlXBPxQImQupkYy1qhbUJ2oY3U/LgJvWQZ5Q==
X-Received: by 2002:a63:65c7:: with SMTP id
	z190mr11006544pgb.249.1540752639414; 
	Sun, 28 Oct 2018 11:50:39 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:dd9d:5398:e0dd:9d0f])
	by smtp.gmail.com with ESMTPSA id
	y144-v6sm25394451pfb.81.2018.10.28.11.50.38
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Oct 2018 11:50:38 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Oct 2018 18:50:26 +0000
Message-Id: <1540752628-10832-11-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
References: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 11/13] fail2ban: add ptest
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
X-List-Received-Date: Sun, 28 Oct 2018 18:50:42 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/fail2ban/files/run-ptest              | 3 +++
 recipes-security/fail2ban/python-fail2ban.inc          | 9 ++++++++-
 recipes-security/fail2ban/python-fail2ban_0.10.3.1.bb  | 2 ++
 recipes-security/fail2ban/python3-fail2ban_0.10.3.1.bb | 2 ++
 4 files changed, 15 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/fail2ban/files/run-ptest

diff --git a/recipes-security/fail2ban/files/run-ptest b/recipes-security/fail2ban/files/run-ptest
new file mode 100644
index 0000000..9f6aebe
--- /dev/null
+++ b/recipes-security/fail2ban/files/run-ptest
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+##PYTHON## fail2ban-testcases
diff --git a/recipes-security/fail2ban/python-fail2ban.inc b/recipes-security/fail2ban/python-fail2ban.inc
index 0b88f83..9245f17 100644
--- a/recipes-security/fail2ban/python-fail2ban.inc
+++ b/recipes-security/fail2ban/python-fail2ban.inc
@@ -14,9 +14,10 @@ SRC_URI = " \
 	git://github.com/fail2ban/fail2ban.git;branch=0.11 \
 	file://initd \
         file://fail2ban_setup.py \
+        file://run-ptest \
 "
 
-inherit update-rc.d
+inherit update-rc.d ptest
 
 S = "${WORKDIR}/git"
 
@@ -35,6 +36,12 @@ do_install_append () {
 	chown -R root:root ${D}/${bindir}
 }
 
+do_install_ptest_append () {
+        install -d ${D}${PTEST_PATH}
+        sed -i -e 's/##PYTHON##/${PYTHON_PN}/g' ${D}${PTEST_PATH}/run-ptest
+        install -D ${S}/bin/fail2ban-testcases ${D}${PTEST_PATH}
+}
+
 FILES_${PN} += "/run"
 
 INSANE_SKIP_${PN}_append = "already-stripped"
diff --git a/recipes-security/fail2ban/python-fail2ban_0.10.3.1.bb b/recipes-security/fail2ban/python-fail2ban_0.10.3.1.bb
index 70c3bd9..17a7dd8 100644
--- a/recipes-security/fail2ban/python-fail2ban_0.10.3.1.bb
+++ b/recipes-security/fail2ban/python-fail2ban_0.10.3.1.bb
@@ -1,2 +1,4 @@
 inherit setuptools
 require python-fail2ban.inc
+
+RDEPENDS_${PN}-ptest = "python python-modules python-fail2ban"
diff --git a/recipes-security/fail2ban/python3-fail2ban_0.10.3.1.bb b/recipes-security/fail2ban/python3-fail2ban_0.10.3.1.bb
index bdb4146..5c887e8 100644
--- a/recipes-security/fail2ban/python3-fail2ban_0.10.3.1.bb
+++ b/recipes-security/fail2ban/python3-fail2ban_0.10.3.1.bb
@@ -1,2 +1,4 @@
 inherit setuptools3
 require python-fail2ban.inc
+
+RDEPENDS_${PN}-ptest = "python3-core python3-io python3-modules python3-fail2ban"
-- 
2.7.4


