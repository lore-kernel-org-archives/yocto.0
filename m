Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0455E00A31; Tue, 18 Apr 2017 11:13:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.196 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABE29E00A31
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:13:28 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id l28so118915wre.0
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=w0NgCLsklOqJVe18tb4By64bvpJKO+xp5oXdC/3nYWk=;
	b=bklxdKGXPlqDbqfprr9t1N0Lm/1eAF4/TtOmp4t5v+iu8ccZ+TfmfwujaXE33zeDef
	O/Pq02U0ZokodkEB+B09TtuqhPpsogcZmPHr0JiqL1HTEGR+bgw+aORAJoRFF8j17vzL
	Yp8PnSHMODDU09Y9GRvDJ/d35v7XhqaspnYqBb0F3YGSxLNZbBR+h/rGTXjcv6NpcQmf
	V4q85V+yRhjIkJuD21GB7eieFKuv/t8d43R4Fra80//h1fROyZjslaJUAQk3kZRMSc7U
	KzNXKZ/YTpT6q2FQx7zhHkKWaXyo2P5TXaVrexxSXuRpyLRdLR/wTmvV/vGUvoQwZlAN
	ccvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=w0NgCLsklOqJVe18tb4By64bvpJKO+xp5oXdC/3nYWk=;
	b=WtHLrCx1XmXRboPHTt/oNQrTWFo757mLQYzyQr3C88ROhyROGOif2WULBVtaHnAB0e
	8UlX5yOkPw/+gsohW/BQqtgQ02ShXL00gkrJlzu6nB5kCMSIiEbDeszZ4u6PJE+cj3pn
	Ooq60vm8dNX+RJGWVIkeC2uOTN3iGlQay7+GBujZxx+YfTAXoHBpMuB9q0DIs5y4pceE
	JZsfddQuQ4dTqBBnvaG2YE+IbhH1BgjBDxyPX+XmJVzFTARbiBESI6LbmWLwHWeyo9sE
	qvDk6bs8SkyggW1wDAOCvmms6JKjm4/6FIAELb/aYE7/cNzY9FfzUC6KYu0oC2eLdnLZ
	LNLg==
X-Gm-Message-State: AN3rC/7Othy6rA01CyJLN6NX4++mtAHu0aRmAnWD5s88/iazZwXui6HF
	GkoCWosK5u9Hwg0UVd4=
X-Received: by 10.223.133.152 with SMTP id 24mr25075298wrt.86.1492539207016;
	Tue, 18 Apr 2017 11:13:27 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id k4sm365104wmf.12.2017.04.18.11.13.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 18 Apr 2017 11:13:26 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 18 Apr 2017 19:13:20 +0100
Message-Id: <20170418181322.14588-1-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
Subject: [meta-raspberrypi][PATCH 1/3] udev: Create rules file to generate serial0/1
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
X-List-Received-Date: Tue, 18 Apr 2017 18:13:31 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-core/udev/udev-rules-rpi.bb           | 12 ++++++++++++
 recipes-core/udev/udev-rules-rpi/99-com.rules | 21 +++++++++++++++++++++
 2 files changed, 33 insertions(+)
 create mode 100644 recipes-core/udev/udev-rules-rpi.bb
 create mode 100644 recipes-core/udev/udev-rules-rpi/99-com.rules

diff --git a/recipes-core/udev/udev-rules-rpi.bb b/recipes-core/udev/udev-rules-rpi.bb
new file mode 100644
index 0000000..20443d3
--- /dev/null
+++ b/recipes-core/udev/udev-rules-rpi.bb
@@ -0,0 +1,12 @@
+DESCRIPTION = "udev rules for Raspberry Pi Boards"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+SRC_URI = " file://99-com.rules"
+
+S = "${WORKDIR}"
+
+do_install () {
+    install -d ${D}${sysconfdir}/udev/rules.d
+    install -m 0644 ${WORKDIR}/99-com.rules ${D}${sysconfdir}/udev/rules.d/
+}
diff --git a/recipes-core/udev/udev-rules-rpi/99-com.rules b/recipes-core/udev/udev-rules-rpi/99-com.rules
new file mode 100644
index 0000000..6bf019b
--- /dev/null
+++ b/recipes-core/udev/udev-rules-rpi/99-com.rules
@@ -0,0 +1,21 @@
+KERNEL=="ttyAMA[01]", PROGRAM="/bin/sh -c '\
+	ALIASES=/proc/device-tree/aliases; \
+	if cmp -s $ALIASES/uart0 $ALIASES/serial0; then \
+		echo 0;\
+	elif cmp -s $ALIASES/uart0 $ALIASES/serial1; then \
+		echo 1; \
+	else \
+		exit 1; \
+	fi\
+'", SYMLINK+="serial%c"
+
+KERNEL=="ttyS0", PROGRAM="/bin/sh -c '\
+	ALIASES=/proc/device-tree/aliases; \
+	if cmp -s $ALIASES/uart1 $ALIASES/serial0; then \
+		echo 0; \
+	elif cmp -s $ALIASES/uart1 $ALIASES/serial1; then \
+		echo 1; \
+	else \
+		exit 1; \
+	fi \
+'", SYMLINK+="serial%c"
-- 
2.12.2


