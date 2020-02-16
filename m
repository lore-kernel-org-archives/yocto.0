Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.967.1581882015604068973
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Feb 2020 11:40:16 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: mail1.xn--80adja5bqm.su, ip: 140.211.169.56, mailfrom: jin@mail1.xn--80adja5bqm.su)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28ECEE01722; Sun, 16 Feb 2020 11:40:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	KHOP_HELO_FCRDNS,SPF_HELO_PASS,SUBJ_OBFU_PUNCT_FEW autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 FORGED_SPF_HELO FORGED_SPF_HELO
	*  0.4 KHOP_HELO_FCRDNS Relay HELO differs from its IP's reverse DNS
	*  0.7 SUBJ_OBFU_PUNCT_FEW Possible punctuation-obfuscated Subject: header
Received: from mail1.xn--80adja5bqm.su (xn--80adja5bqm.su [45.62.210.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59B89E00852
	for <yocto@yoctoproject.org>; Sun, 16 Feb 2020 11:40:13 -0800 (PST)
Received: by mail1.xn--80adja5bqm.su (Postfix, from userid 1000)
	id 016FF202B937; Sun, 16 Feb 2020 13:46:44 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail1.xn--80adja5bqm.su 016FF202B937
From: "Sergey Bostandzhyan" <jin@mediatomb.cc>
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>
Subject: [meta-rockchip][PATCH] Install appropriate fw_env.config for rk3288
Date: Sun, 16 Feb 2020 13:46:38 +0100
Message-Id: <1581857198-21199-1-git-send-email-jin@mediatomb.cc>
X-Mailer: git-send-email 1.8.3.1

From: Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>

libubootenv provides fw_printenv/fw_setenv utilities, however they only
work if a correct /etc/fw_env.config file is available.

Signed-off-by: Sergey Bostandzhyan <jin@mediatomb.cc>
---
 recipes-bsp/u-boot/libubootenv_%.bbappend | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 recipes-bsp/u-boot/libubootenv_%.bbappend

diff --git a/recipes-bsp/u-boot/libubootenv_%.bbappend b/recipes-bsp/u-boot/libubootenv_%.bbappend
new file mode 100644
index 0000000..b0c70ca
--- /dev/null
+++ b/recipes-bsp/u-boot/libubootenv_%.bbappend
@@ -0,0 +1,5 @@
+do_install_append_rk3288() {
+    install -d ${D}${sysconfdir}
+    echo "/dev/${RK_BOOT_DEVICE}	0x3f8000	0x8000" > ${D}${sysconfdir}/fw_env.config
+}
+
-- 
2.24.1

