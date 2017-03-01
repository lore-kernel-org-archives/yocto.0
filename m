Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98BD5E0082E; Wed,  1 Mar 2017 02:23:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE7B9E00726
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 02:23:11 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id 25so5410124pgy.3
	for <yocto@yoctoproject.org>; Wed, 01 Mar 2017 02:23:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=+yQWHnyjP/WrrZREOoRPngqa3sSahI8B5SkG/SPYepo=;
	b=X8Kym6dZTiWpESptuCUulC7ZlWBF8z6z+Ec8Bu1Wgwz++B6Sku8hkkU/xqBpK5s5H7
	66O5zAWubDZ7f8CanF7aaTT+j0KVYupgcTxjSOt2lkglOsDXm99C4fPYf6ZmW8NP1TCE
	+OLW2y5HyMCSJaYVmh63JaCXay0G7yGs9P1lQjFP2Gx3hkPUXjZnvFpO9RB66Q9S1xlQ
	feSMolqzuRWAqDja9quFAq5zpbMmm/DeW5Chn9uwwxgaoVacO9DFRaHcJR9R2A2Wn6hC
	0RIRBtYCbbDPgsuqLDk14G3EhAhgEim/VrLybdxnIOAO5SmEqC5/JXmfQOn6T5mfBoQn
	hHDA==
X-Gm-Message-State: AMke39mx9NmPgGcfpVhRJh5+G7SNzLfF0dkvdTCnLHoXedV1j0Goasqd3ecDo3jbZnSQaA==
X-Received: by 10.84.216.15 with SMTP id m15mr9324004pli.22.1488363790978;
	Wed, 01 Mar 2017 02:23:10 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	u129sm9521192pfb.130.2017.03.01.02.23.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 01 Mar 2017 02:23:10 -0800 (PST)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: yocto@yoctoproject.org, eddie.cai.linux@gmail.com, romain.perier@gmail.com,
	twoerner@gmail.com
Date: Wed,  1 Mar 2017 18:23:02 +0800
Message-Id: <1488363782-15062-1-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
Cc: Jacob Chen <jacob-chen@iotwrt.com>
Subject: [PATCH] udev-extraconf: add rockchip specific rules
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
X-List-Received-Date: Wed, 01 Mar 2017 10:23:15 -0000

This rules file help to set suitable mode for device node.

vpu-service, vpu_service, rkvdec, hevc-service are different ip.
mali0 is mali-midgard and mali is mali-utgard.

Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
---
 recipes-core/udev/udev-extraconf/10-rk.rules |  6 ++++++
 recipes-core/udev/udev-extraconf_%.bbappend  | 13 +++++++++++++
 2 files changed, 19 insertions(+)
 create mode 100644 recipes-core/udev/udev-extraconf/10-rk.rules
 create mode 100644 recipes-core/udev/udev-extraconf_%.bbappend

diff --git a/recipes-core/udev/udev-extraconf/10-rk.rules b/recipes-core/udev/udev-extraconf/10-rk.rules
new file mode 100644
index 0000000..2308c9a
--- /dev/null
+++ b/recipes-core/udev/udev-extraconf/10-rk.rules
@@ -0,0 +1,6 @@
+KERNEL=="hevc-service", MODE="0666", GROUP="video"
+KERNEL=="rkvdec", MODE="0666", GROUP="video"
+KERNEL=="mali0", MODE="0666", GROUP="video"
+KERNEL=="mali", MODE="0666", GROUP="video"
+KERNEL=="vpu-service", MODE="0666", GROUP="video"
+KERNEL=="vpu_service", MODE="0666", GROUP="video"
diff --git a/recipes-core/udev/udev-extraconf_%.bbappend b/recipes-core/udev/udev-extraconf_%.bbappend
new file mode 100644
index 0000000..4691a31
--- /dev/null
+++ b/recipes-core/udev/udev-extraconf_%.bbappend
@@ -0,0 +1,13 @@
+# extra configuration udev rules
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI_append = " \
+    file://10-rk.rules \
+"
+
+do_install_prepend () {
+	install -d ${D}${sysconfdir}/udev/rules.d
+	install -m 0644 ${WORKDIR}/*.rules ${D}${sysconfdir}/udev/rules.d
+}
+
+PACKAGE_ARCH = "${MACHINE_ARCH}"
-- 
2.7.4


