Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63A31E00C9F; Sun, 28 Feb 2016 02:48:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFCE1E00BBF
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 02:48:14 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id n186so5562823wmn.0
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 02:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=U3nviXCHqcfnL/yJon9FdMAUArKNcEScIxpYdnTOt9k=;
	b=c8mYgpG1Rmk7eLhFJdrmpAlpwbk0AZUYQUfvhkhYJI6s992hTTemXjrlpyyvppdBnt
	8EIpR6W3f4hxTvM4I2d40MaZxxsfnKMUKed2OJB+egtOjB7WTMmU4qVV11Jq+0XKCkr5
	MODcZhEPIdF1Vjk7Y4xqh3AOJX0hoKINf+h/VBjwjo4wxVbQO9Wm1hsBvUAYOilN5bt4
	irfyd4ilQLnA31j6tGSbPvCw23245Zyl5YiFEf94gjyO4crOyGIohdOjixZuNXOLK/c6
	8DhVe8Xy7zsUXC3DjPdH9FF+7MqrOfUrbWqBzkhTbrFrWX4fyVQT7fh6KH2G/WrpX+rG
	mTLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=U3nviXCHqcfnL/yJon9FdMAUArKNcEScIxpYdnTOt9k=;
	b=NEg3DtzTEqi/TiP1mo3LqHjutCrNWmw60/7wZXP6AVWW+0LZKGZ+wHm8QEr9D2BXJD
	NrWA7jBxoR3yTAalFb6+MZoF9tjQrPVUUqZVEak0N4tM2uGoerVfCCXVARBzw27JgsyR
	REwGxOfA5M+4RsLabM1bzYECrzcZ292q+7i9Co1v44jXiiwFtDqCu9Uh2M6SaFfEka15
	yWsDcUAtCzlW9jGsHooLaG7NOP77BOiKWyFICWdUVDzBeASOiyqTOcJZAZWNqWR0PtJR
	nqJ0Aupy/Dy7/N8BvcynvTuov3mSaJ6MHCJeBRunyFCEQMKRMlvwzYtbJUohs8E3mkbu
	YxDA==
X-Gm-Message-State: AD7BkJKmS0Gwr+skm/a84X0/SKlxmSCybVbboOcw74AAWBhHVtoMY1u5mGR9A+54s03KsA==
X-Received: by 10.194.115.35 with SMTP id jl3mr9611155wjb.76.1456656493272;
	Sun, 28 Feb 2016 02:48:13 -0800 (PST)
Received: from localhost.localdomain
	([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	c136sm11030402wmd.3.2016.02.28.02.48.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Feb 2016 02:48:12 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 28 Feb 2016 11:48:08 +0100
Message-Id: <1456656488-1882-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.0
MIME-Version: 1.0
Cc: =?UTF-8?q?St=C3=A9phane=20Cerveau?= <voxtok@voxtok.com>,
	=?UTF-8?q?St=C3=A9phane=20Cerveau?= <scerveau@voxtok.com>
Subject: [meta-raspberrypi][PATCH v3 1/1] linux-raspberry.inc: add initramfs support
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
X-List-Received-Date: Sun, 28 Feb 2016 10:48:18 -0000
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


