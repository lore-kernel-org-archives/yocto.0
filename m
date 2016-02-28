Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AEDAE00C9F; Sun, 28 Feb 2016 03:48:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55CCCE00BBF
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 03:48:45 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id n186so5692937wmn.0
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 03:48:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=U3nviXCHqcfnL/yJon9FdMAUArKNcEScIxpYdnTOt9k=;
	b=osVCL75yqW4EBbYKv3vGHdd+GK7BJ8gQS9KQkyDIAkAtc5As1Jvi792fxTptwhusJR
	SXFUijCw0H5/dzp2JDiSa8RE/EM7c5UIL8b+sESYms/4gmD4zyJ20uLT4ObSp/epY4t7
	TmURNfWkSzu01iWDD0bhViC1kAPLj9S9ZFAWeimujuCCLlC/ItCbUDlbG7Y+3sH/XQkz
	rnwEfu9naPP1Er2tb2O/chpAwlGHIwoyEirxg9ZW81XrUprJw5a6YuvBspj8qbVHt4XB
	GmmIo7cdQNqx8EKbocis8DvLyRniYvL4C9gKv9VTS4nntd1VVsi38FPAbfbjSlJZEFfs
	akzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=U3nviXCHqcfnL/yJon9FdMAUArKNcEScIxpYdnTOt9k=;
	b=WV9uM0HKTGjoEC4GTu7QutlFIZjZHuGCaBCGNVwj6/EPbDVx1Hn3bcfG/RkXIxYbv/
	V5Kvhi8+ktqc7KV1e8gZxT5iIQvxCVbYvzmHJb70eUiitHFqGMsAs0K1/ZW2WAgGzCmI
	afxVg95DMg7JRbMRkSopc8kQWs1hm8mWfwiS9TTCXbBiUa9ZpUQB6JrbmruGPqDWrB/2
	0HKIB9AYztetq0Buyv/gxdNqah7bC9F5SVac8qiQXxrCh2VwAKVeUdDtxNJveKcj2I8v
	yrtjgn+TzBKb93BnYn2FPa1kbTwIP4koim4HdQAu1jyoc+N7xfS8ajGQsSxmrmAomAHP
	GNbA==
X-Gm-Message-State: AD7BkJKIuawVBoR6FONZdNXCPpfo0XWOpdn9e8EFoDFpvcgY9WPUgAcGXTxlHGLQ0nT3jA==
X-Received: by 10.28.178.208 with SMTP id b199mr6083847wmf.51.1456660124565;
	Sun, 28 Feb 2016 03:48:44 -0800 (PST)
Received: from localhost.localdomain
	([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	gg7sm20842892wjd.10.2016.02.28.03.48.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Feb 2016 03:48:43 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 28 Feb 2016 12:48:35 +0100
Message-Id: <1456660116-15810-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.0
MIME-Version: 1.0
Cc: =?UTF-8?q?St=C3=A9phane=20Cerveau?= <voxtok@voxtok.com>,
	=?UTF-8?q?St=C3=A9phane=20Cerveau?= <scerveau@voxtok.com>
Subject: [meta-raspberrypi][PATCH v4 1/2] linux-raspberry.inc: add initramfs support
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
X-List-Received-Date: Sun, 28 Feb 2016 11:48:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Stéphane Cerveau <scerveau@voxtok.com>

append initramfs creation to install RPi bootloader trailer

Signed-off-by: Stéphane Cerveau <voxtok@voxtok.com>
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 8c7c46c..1befee4 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -64,4 +64,14 @@ do_rpiboot_mkimage() {
         fi
     fi
 }
+
+do_bundle_initramfs_append() {
+    if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
+        if test -n "${KERNEL_DEVICETREE}"; then
+            # Add RPi bootloader trailer to kernel image to enable DeviceTree support
+            ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT}.initramfs ${KERNEL_OUTPUT}.initramfs
+        fi
+    fi
+}
+
 addtask rpiboot_mkimage before do_install after do_compile
-- 
2.7.0


