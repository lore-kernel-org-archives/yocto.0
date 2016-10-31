Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1382E00BF4; Mon, 31 Oct 2016 11:26:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AD1CE009DA
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 11:26:15 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id n85so9348978pfi.3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 11:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=DWWgXD+H23LzPhOYHNmxwjyQVMwM4V9CjK2wjDFG5yU=;
	b=ndzCEYP0fbBgP5qZCZXf2+NIGP7ch7OXbKN250czX/OaSg+7Ioftu4cGHvRk6dW581
	08mHCY47As4SxBvXdwLbtX7FANlxd3bNwBRCJSwQ1hH4QsnL/hzaTaocfTDZhKJsdJZI
	UxPBA5PWUwMnSfJPmSuXm7nc1nBv5pWR+a3mPO/8h0IBdegYFm2DJ0py0BFEauym7vVh
	bUTaQoxsHlbWGZDQF4qVeC0JOOY6pBQzSily82eIuueJDy1DeS1dcn7afa9QK5YLGYfI
	2IEymmGb730O6CbP+A9hziSs9B2c638IOByseVLwZ6c1+/SsMyKtPOTKQNbWaznHbgvK
	tFvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=DWWgXD+H23LzPhOYHNmxwjyQVMwM4V9CjK2wjDFG5yU=;
	b=hSXgF4gKh7+itIyp5Q5NGAgiew/VKGnMJeRKC2ctt/7Dqm8UkdV46U8U02kfcTVMKG
	D+MxIC1XyThS4vh8CnurUszqxZoAKwpTvoaI24Fbmm/WIYOVIZmk7XYgEQ+UyZRu1RtZ
	ud1sdn2MTPMRYcsJQcOfeljRAebrncV9r354eHf5UxOSGOqXfu+zL06kS3/tLIjlmuHE
	JOZ2bLO/QaAwdG6oabCedekD9bpzeqGYM2RSgOne83e6wv1Vsa6rCaci15ONygtYyZf8
	4hEUdyp01We64h0y4baP1PYRuXhckMlIz5G0zpdAAOF/zcypSOThoS8zvk54xb1BwEMd
	sRgA==
X-Gm-Message-State: ABUngvc6LVZhqMDP0B89fMOmGrVgZfS+KC8VdFcrzu9ltXxCkbB3tjEXdv4FxESxx4rvQw==
X-Received: by 10.99.246.17 with SMTP id m17mr11924553pgh.134.1477938374784;
	Mon, 31 Oct 2016 11:26:14 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:a515:1856:7377:d74f])
	by smtp.gmail.com with ESMTPSA id
	qy2sm37183770pab.27.2016.10.31.11.26.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 31 Oct 2016 11:26:14 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Mon, 31 Oct 2016 11:26:12 -0700
Message-Id: <1477938373-9937-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][WIP]PATCH 1/2] yocto-kernel: add apparmor fragments
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
X-List-Received-Date: Mon, 31 Oct 2016 18:26:29 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto-4.8/apparmor.cfg | 13 +++++++++++++
 recipes-kernel/linux/linux-yocto_4.8.bbappend     |  1 +
 2 files changed, 14 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-yocto-4.8/apparmor.cfg

diff --git a/recipes-kernel/linux/linux-yocto-4.8/apparmor.cfg b/recipes-kernel/linux/linux-yocto-4.8/apparmor.cfg
new file mode 100644
index 0000000..1dc4168
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-4.8/apparmor.cfg
@@ -0,0 +1,13 @@
+CONFIG_AUDIT=y
+CONFIG_AUDITSYSCALL=y
+CONFIG_AUDIT_WATCH=y
+CONFIG_AUDIT_TREE=y
+# CONFIG_NETFILTER_XT_TARGET_AUDIT is not set
+CONFIG_SECURITY_PATH=y
+# CONFIG_SECURITY_SELINUX is not set
+CONFIG_SECURITY_APPARMOR=y
+CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
+CONFIG_SECURITY_APPARMOR_HASH=y
+CONFIG_SECURITY_APPARMOR_HASH_DEFAULT=y
+CONFIG_INTEGRITY_AUDIT=y
+# CONFIG_DEFAULT_SECURITY_APPARMOR is not set
diff --git a/recipes-kernel/linux/linux-yocto_4.8.bbappend b/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 048e8fd..78d5101 100644
--- a/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -4,6 +4,7 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.8:"
 SRC_URI += "\
         ${@bb.utils.contains('DISTRO_FEATURES', 'tpm', ' file://tpm.cfg', '', d)} \
         ${@bb.utils.contains('DISTRO_FEATURES', 'tpm', ' file://tpm.scc', '', d)} \
+        ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor.cfg', '', d)} \
 "
 
 SRC_URI += "\
-- 
2.7.4


