Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2923CE00B5C; Tue, 18 Apr 2017 11:13:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC402E00B3D
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:13:39 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id z129so872705wmb.1
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=w0NgCLsklOqJVe18tb4By64bvpJKO+xp5oXdC/3nYWk=;
	b=MvSJ28vdCCLPatF+oG9LXXUbh+2c6PxVTaePOj/D4W6fPYAD846xr1eTSnpC7UIE42
	/aAbcBLW9dPB0EtGd/ZTdPqV7uBiav+qIcsBlSVT6VZxu9RhlfqyIH7IrYLVMqEhuzo5
	FF68qpnikR2tb4qUYObR2pxkwVFeJgsQa8862sTh/7zng25pSAO3/WxmffOrkvVTPZZ1
	JkE6aELLU58LO9re2t9z0TrIE8uM35Au57PqZag0r19a9m03Hx7nOBu6hPHDEHKGHRiQ
	KdqrPOEXhyNJ3sMOk1/ekEDZL774s+BCYB9ZZZZUEVg3sY1XdCb8A/jXG60B81pYYKhG
	hA7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=w0NgCLsklOqJVe18tb4By64bvpJKO+xp5oXdC/3nYWk=;
	b=R2huL89vzJPsBtj0ltgEqpRgqB6V/hJCUHhgf0n0VUL+9WWSrvx/0WsrvQBspN/Z9N
	9qPQULyElCDMFQFJWcwEhspnI2SfjICtez3SYWxWgBt62BOUThYCllx34OzyRAcUenhH
	NqN2mm1ySuEK34B4SFTUVy2+K6DUh8vUIJl94O8p1t9qhlwMvEGXdHwzJF6QzjOSgJpM
	1/bHAc+qhxhVBUHqm28Md2cg1EN/W27lc+WLduuRdCkIlNahScws9uMT2g8KQjnrD6oS
	keD8qPr69001PXVeCKK/libeWSYqu4ZJrbjDBs641PXmmTk5uALdemfJqgwa2oIy1f1I
	Nvhw==
X-Gm-Message-State: AN3rC/43hU7l8kjWkz3JBrftE9RMGX9l5/WhH976r7sjympQdjVdlIiZ
	O3Zgj8Ehbv2RsQ==
X-Received: by 10.28.25.130 with SMTP id 124mr13845046wmz.40.1492539218611;
	Tue, 18 Apr 2017 11:13:38 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id
	i144sm361566wmf.13.2017.04.18.11.13.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 18 Apr 2017 11:13:37 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 18 Apr 2017 19:13:32 +0100
Message-Id: <20170418181334.14839-1-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
Subject: [meta-raspberrypi][morty][PATCH 1/3] udev: Create rules file to generate serial0/1
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
X-List-Received-Date: Tue, 18 Apr 2017 18:13:47 -0000

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


