Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5935AE008D0; Wed,  1 Mar 2017 02:39:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35A8BE00726
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 02:39:08 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id s67so5453770pgb.1
	for <yocto@yoctoproject.org>; Wed, 01 Mar 2017 02:39:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=+yQWHnyjP/WrrZREOoRPngqa3sSahI8B5SkG/SPYepo=;
	b=WchphjVyqISjp1v/zUQTIRqn8P1w48skkPur2HlGMKEDamC5SfFJ43ybgecXI71U2Y
	LSxYucgNDdw6iKE+sczrIJrYW2ycvD2qpaJ/UO8+HN1GGnOLDSQf051t4fxQaoXU6wvd
	fUMHTUEtXirXUcrkk6kMJiqyc6aThMeW07ryEevZfsCVPGWttzEk4kfU8kFuhCBtNoRo
	O8esZUlVrdAivp88GUKbrhZuSaO9VaAZ9FmnJAMawIvMJd6C0UCrhYKg2Th8bgCSAKQf
	S5RKWDflNbNcSJ8E4L0k8wuC5ythMcXwMdmahjYcCpw/ELHSr+vDbG1kzVdBYmj932WE
	QzUQ==
X-Gm-Message-State: AMke39kKxvLLvlUQR10QtOwNGjYfNEzNtIgKqaePPjVxUvzjwLhpl/28oc80tZ7rkfX/JA==
X-Received: by 10.98.196.12 with SMTP id y12mr7965226pff.49.1488364748681;
	Wed, 01 Mar 2017 02:39:08 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	c28sm9670473pfj.77.2017.03.01.02.39.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 01 Mar 2017 02:39:08 -0800 (PST)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: yocto@yoctoproject.org, eddie.cai.linux@gmail.com, romain.perier@gmail.com,
	twoerner@gmail.com
Date: Wed,  1 Mar 2017 18:39:00 +0800
Message-Id: <1488364741-16116-1-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
Cc: Jacob Chen <jacob-chen@iotwrt.com>
Subject: [meta-rockchip][PATCH 1/2] udev-extraconf: add rockchip specific rules
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
X-List-Received-Date: Wed, 01 Mar 2017 10:39:10 -0000

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


