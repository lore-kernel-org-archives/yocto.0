Return-Path: <scerveau@connected-labs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B554DE00CE0; Wed, 10 Feb 2016 02:28:02 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C1A0E00CD4
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 02:28:00 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id c200so3247782wme.0
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 02:28:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=connected-labs-com.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:cc:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding;
	bh=2A8PkFYF1MKCOWiuizlIS701iw0C8T/ElzAAfxSsxLg=;
	b=McHuT/0oVWAUI/1G7v9DqE2ffac5OqYzK0RDmPUTnxP73Th8zEIkSI81J30K9opcNI
	kwJQTjd5CR/skieRfyHzwRMGO+ovyyU2vFWLdnscqMyrImzEgzO7KTf+G6KWlCEvZaFq
	3sUY/mvWf8OmyBwCX8q2FfdkkeHHlwe4PQ27lkFDALEsQTa4jft8a7sKDWshCe3dSjZz
	KD60g5GbJFNl+9VZ2885R5pQzaaPBONb++09XNeSRT2jFx4y7/xGkrcV3tD4+WC277PW
	2JTeg94WkJ66EsWskihNvn4TjnH+ztPP4oEK/kgNEy1/s1LAA9cDWBI/dt+oExXZZpKy
	sJWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:mime-version:content-type:content-transfer-encoding;
	bh=2A8PkFYF1MKCOWiuizlIS701iw0C8T/ElzAAfxSsxLg=;
	b=jAXNJep6r0uFP8f5F9m7dDZtnS+cd+DvIFgcRvfclYA+RFX6fCwIFOmzb+JbGobLLZ
	ixhQEz6OyZL9RzfuxHRMhdnoNkAxv5XMHmpTfv/E/kdpiyhT4D5FW168psdOy2S+ivM4
	2tz3RRNYQdHMH0S5w5zoLbBKUJIwoLlgA6KLQy8PAqcrA7tZ/Sn5lyAxL+8MNCV+D8N4
	7Ox1Rhtf55w7V1E6cls3JuhrpgtWJz9tipWBFCVgSohzRJNJd3aJBUxnPo/I6fBUvC+0
	5U8TgLEsUh3WLmAp6MNOdI6bErcAWOoek+PzNFon6oqXB0WeQZ170Kn8IhjCOM9QAYiV
	Pjtg==
X-Gm-Message-State: AG10YOSUwrLrTxlcin8mgEW5xsAfePtbHsiz4otpteNiqU0bwN9xbD3p0P+rN4CvXKAxEg==
X-Received: by 10.28.21.14 with SMTP id 14mr9783010wmv.39.1455100080072;
	Wed, 10 Feb 2016 02:28:00 -0800 (PST)
Received: from maupiti.lan (connected-labs-gw1.ter2.neodc.mpl.cust.as8218.eu.
	[94.103.137.126])
	by smtp.gmail.com with ESMTPSA id di1sm2306907wjc.3.2016.02.10.02.27.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 10 Feb 2016 02:27:58 -0800 (PST)
Sender: Stephane Cerveau <scerveau@connected-labs.com>
From: "=?UTF-8?q?St=C3=A9phane=20Cerveau?=" <scerveau@voxtok.com>
X-Google-Original-From: =?UTF-8?q?St=C3=A9phane=20Cerveau?= <voxtok@voxtok.com>
To: yocto@yoctoproject.org
Date: Wed, 10 Feb 2016 11:26:34 +0100
Message-Id: <1455099994-7591-1-git-send-email-voxtok@voxtok.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 10 Feb 2016 07:08:11 -0800
Cc: =?UTF-8?q?St=C3=A9phane=20Cerveau?= <voxtok@voxtok.com>
Subject: [meta-raspberrypi][PATCH V2] linux-raspberry.inc: add initramfs support
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
X-List-Received-Date: Wed, 10 Feb 2016 10:28:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

append initramfs creation to install RPi bootloader trailer

Signed-off-by: Stéphane Cerveau <voxtok@voxtok.com>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 70e8bfe..74dbf19 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -64,4 +64,13 @@ do_rpiboot_mkimage() {
         fi
     fi
 }
+do_bundle_initramfs_append() {
+    if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
+        if test -n "${KERNEL_DEVICETREE}"; then
+            # Add RPi bootloader trailer to kernel image to enable DeviceTree support
+            ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok ${KERNEL_OUTPUT}.initramfs ${KERNEL_OUTPUT}.initramfs
+        fi
+    fi
+}
+
 addtask rpiboot_mkimage before do_install after do_compile
-- 
2.1.4


