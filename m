Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25E36E009B8; Sun, 16 Sep 2018 08:57:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.179 listed in list.dnswl.org]
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27D6DE007B3
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:23 -0700 (PDT)
Received: by mail-pg1-f179.google.com with SMTP id i190-v6so6508852pgc.6
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=IbFAm9aiqqJaqHd6n4RJpP7Y4NA/+q4GcQfEh5lKwew=;
	b=YC5H0JjBmIV2r25olSJdFnIbBimMcdibEA5lU9HzLcuBL2jetIqDytPX5mqLKrYPkM
	m/f1nPWJZV0ANlmw7Rs9kMtQimYoZjJFg7zDoL6GPUneM8RBXSxUmnLoVybgUWKxTllG
	HUfBxIuMmZqHmp7+GQfCQ1lqzoxSvV3hj0SkSdymlxMUyuftLLSUOE4wamgkFxQNiXGI
	UMtAeBD1zu5/DcSpA1Bljv4H07quS6LhBV4AT0JRR6IudIzThzMXyEihZ5dif8pvhrcj
	CsC3t6/kWee443/yaUkQB2BBV2sb7omKo9sfE83LsergJIms4NrYJSOF3X565Jk0re/6
	hY6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=IbFAm9aiqqJaqHd6n4RJpP7Y4NA/+q4GcQfEh5lKwew=;
	b=D3NwY5e1fD+TzqJTnFh6M/olxNRHEbWSKBP1lkjyRTT2+VCIv6vCrrzC8bRfs17NTY
	Dh7G2hQgxTUmoFdi7sLlFtBU2rS3TOQAFwFpbv4ETBnURB+aqPKX/6X6iKUrS99SKIbk
	gx0G5chJnW3dRYA8tkeQh1OAWYQA/tX72NHG+0A+1P5a4f4hEaXcdCIjDbQbUiaBVJ0B
	3j3+51K79euJN6ID9Cvld0kBgnUdQ2ID91YZwSwzwIM38EhyeMqUqu8jf+SlpaCBqvzk
	fSPRJ09MRCKJr6eARVMdO9wPfw+FMXB1HakqEIjhRe/xedDAn2m5fh2uEUcJU5LmSoJ9
	kt0A==
X-Gm-Message-State: APzg51A7/6N/w6NuBNl4gbJ73UB17bJAkynA0yBxPynqikDqn6gTR8ND
	7Jn8fiLCoyfSn2AnoLdszBT/joEJ
X-Google-Smtp-Source: ANB0VdZoZdrplsW7bDWM143PZu+0Js9E7yieQ1BFkbHiA0BUq/5qEVMgvZlnvyPELG8Q4qHFxsXnHA==
X-Received: by 2002:a63:e255:: with SMTP id
	y21-v6mr20193400pgj.160.1537113442426; 
	Sun, 16 Sep 2018 08:57:22 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.21
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:21 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:56:56 -0700
Message-Id: <20180916155719.9911-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 02/25] fail2ban: update to 10.3.1
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:25 -0000

covert to python package standard

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{fail2ban_0.10.2.bb => python-fail2ban.inc}       | 11 ++++++-----
 recipes-security/fail2ban/python-fail2ban_0.10.3.1.bb |  2 ++
 .../fail2ban/python3-fail2ban_0.10.3.1.bb             |  2 ++
 3 files changed, 10 insertions(+), 5 deletions(-)
 rename recipes-security/fail2ban/{fail2ban_0.10.2.bb => python-fail2ban.inc} (80%)
 create mode 100644 recipes-security/fail2ban/python-fail2ban_0.10.3.1.bb
 create mode 100644 recipes-security/fail2ban/python3-fail2ban_0.10.3.1.bb

diff --git a/recipes-security/fail2ban/fail2ban_0.10.2.bb b/recipes-security/fail2ban/python-fail2ban.inc
similarity index 80%
rename from recipes-security/fail2ban/fail2ban_0.10.2.bb
rename to recipes-security/fail2ban/python-fail2ban.inc
index 7e2deba..0b88f83 100644
--- a/recipes-security/fail2ban/fail2ban_0.10.2.bb
+++ b/recipes-security/fail2ban/python-fail2ban.inc
@@ -9,14 +9,14 @@ HOMEPAGE = "http://www.fail2ban.org"
 LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ecabc31e90311da843753ba772885d9f"
 
-SRCREV ="a45488465e0dd547eb8479c0fa9fd577c1837213"
+SRCREV ="ac0d441fd68852ffda7b15c71f16b7f4fde1a7ee"
 SRC_URI = " \
-	git://github.com/fail2ban/fail2ban.git;branch=0.10 \
+	git://github.com/fail2ban/fail2ban.git;branch=0.11 \
 	file://initd \
-	file://fail2ban_setup.py \
+        file://fail2ban_setup.py \
 "
 
-inherit update-rc.d setuptools
+inherit update-rc.d
 
 S = "${WORKDIR}/git"
 
@@ -32,10 +32,11 @@ do_install_append () {
 	install -d ${D}/${sysconfdir}/fail2ban
 	install -d ${D}/${sysconfdir}/init.d
     	install -m 0755 ${WORKDIR}/initd ${D}${sysconfdir}/init.d/fail2ban-server
+	chown -R root:root ${D}/${bindir}
 }
 
 FILES_${PN} += "/run"
 
 INSANE_SKIP_${PN}_append = "already-stripped"
 
-RDEPENDS_${PN} = "sysklogd iptables sqlite3 python python-pyinotify"
+RDEPENDS_${PN} = "sysklogd iptables sqlite3 ${PYTHON_PN} ${PYTHON_PN}-pyinotify"
diff --git a/recipes-security/fail2ban/python-fail2ban_0.10.3.1.bb b/recipes-security/fail2ban/python-fail2ban_0.10.3.1.bb
new file mode 100644
index 0000000..70c3bd9
--- /dev/null
+++ b/recipes-security/fail2ban/python-fail2ban_0.10.3.1.bb
@@ -0,0 +1,2 @@
+inherit setuptools
+require python-fail2ban.inc
diff --git a/recipes-security/fail2ban/python3-fail2ban_0.10.3.1.bb b/recipes-security/fail2ban/python3-fail2ban_0.10.3.1.bb
new file mode 100644
index 0000000..bdb4146
--- /dev/null
+++ b/recipes-security/fail2ban/python3-fail2ban_0.10.3.1.bb
@@ -0,0 +1,2 @@
+inherit setuptools3
+require python-fail2ban.inc
-- 
2.17.1


