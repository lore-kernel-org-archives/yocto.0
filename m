Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F7C6E00A03; Sat, 11 Feb 2017 21:27:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1D39E00A03
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:08 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 204so6503711pge.2
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=yivF7REQO385aTJG9hYuwauWdo4XlnCBixZfSTH28Ks=;
	b=VG1AfVdmTmUFfJ6VaMPCrhlkJUqJRCz+Rd4r50FUqtKsEkJeGB483+kjVNPZSdp7oO
	+zbv1KxEF+clCKUtKg5N2YzJBrCVfmdFGC5lhuBu7UR1HdZzgN0co2vICvMJX2SI9LRg
	pIzjoPyCB+2EnjjKpz8obEVwtLJn8YXm0qF/GXWvev72wqO7JpuD5zSPRBsl4DLDBiD0
	7HwcqN/5Qg2dIhsF4w4+UhBhDbza4v8b6aJpjx2F3LYddmcfgdbCZyiJhLqHWl8gzTaz
	dgxsQ8SRdwVT2Sa7owpOSAst4WzAWkLfalTizuQ1ehOsZK91r+ONKMCcgKimB2mxFRq6
	A2gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=yivF7REQO385aTJG9hYuwauWdo4XlnCBixZfSTH28Ks=;
	b=JRy1bZ6l/LDqJJ6TOKUHA/Kytl+7OZmVD+MdcNBUttepXEl2/4ZLu6vO1tyPo3gX9o
	E5LmDAP0qecu0SZG5Y4aKrlMmB/UUAuN2j2MzImuad11yCH6ZJm0YavIhD8RqCTTNRms
	gcjvioT0hRl4vkzr5312vt0XPq8K5aFiADxid6TJnSOcsW8f9CqdJjQSpFX7qbK0KI/f
	gmJQRUBqlKXMtrJCX4MLXeL+xdNttr85Dg0qsfFNIotpIowWoNIaCaTh11BaqmbgehM/
	mE8guOA6mBRRVAPw2lyhkqUprAFdfMoJZSZBmeu8uDvkUi68/eUQRcnQSa6EnBbLnwjh
	IajA==
X-Gm-Message-State: AMke39kb3NCc3OTkLVZVlBlksDwSaN3KRv+1UzgXDivY76JQqVqG7xCxgc/82VkvBUrP0w==
X-Received: by 10.98.79.150 with SMTP id f22mr19130650pfj.55.1486877227687;
	Sat, 11 Feb 2017 21:27:07 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	f3sm13549604pfd.10.2017.02.11.21.27.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 Feb 2017 21:27:07 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 11 Feb 2017 21:26:48 -0800
Message-Id: <20170212052655.12342-4-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170212052655.12342-1-raj.khem@gmail.com>
References: <20170212052655.12342-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V2 04/11] linux-raspberrypi_dev.bb: Add recipe for tracking development tip
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
X-List-Received-Date: Sun, 12 Feb 2017 05:27:11 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_dev.bb | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_dev.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_dev.bb b/recipes-kernel/linux/linux-raspberrypi_dev.bb
new file mode 100644
index 0000000..9440d80
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_dev.bb
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
+
+LINUX_VERSION ?= "4.9.0-rc7"
+
+SRCREV = "10da0c942de1830b48dfbfb5d68ec00af7ca7c43"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
+"
+require linux-raspberrypi.inc
-- 
2.11.1


