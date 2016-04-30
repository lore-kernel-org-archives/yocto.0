Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9660E00D8D; Sat, 30 Apr 2016 05:09:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E0B2E00D7C
	for <yocto@yoctoproject.org>; Sat, 30 Apr 2016 05:09:33 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id r12so9975187wme.0
	for <yocto@yoctoproject.org>; Sat, 30 Apr 2016 05:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Li0RpbOlnodzCZzhTevu5X3crFLRj2uA+uFxq6/KPn4=;
	b=nS2L5vcioK9JJ2SWlGScIDcru1PhcNgxITap2Dzt7VA2mKmwmB5oK9Yy0XlP2+LXTz
	skPEum4aQvySDUghPN3iUoqQcSurCtDgcwoiMl7vERw3rHsDw8cmwgL3ggu6CLyUBUT+
	DEINKGF5EqLFPCVfaGwkdROkPzNhXsi9T14tWaU421QcbpiwRBUkFSXXQxue8JhxBI3k
	8EJsPQmiblIHZPus3QK6ZF60IqiCj2gEjSyA2kQ1pQiar2M4yoWOLqKFm9DRCHt3idVc
	6yBqK3uZ+TI69JtHmcX/DaVhcwEg6t0039qyTjB7g33+d6szUl251TLqBQRDarOCqDXN
	EvRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Li0RpbOlnodzCZzhTevu5X3crFLRj2uA+uFxq6/KPn4=;
	b=FFmXb2JsL4Nof8PwpYCL0YktuHdtJ2xO+AAaj709a2ieKYNqwnpU5BkoMKRDLCHqqz
	72DmCt4nOES35xzvxUnlTFf6xn55sjoMBctaO4e+dVFjR0ILr0XM0OI7v6EyOyrNJBVH
	qCHPmVEJoZ6pK7kVA6xICBRnpNQjB4eexdBp8j5VMx0Kf25uzM1C0B/rELyYR5pZEko5
	KMWCFGOH5PhGgXHC0Ltcm0Ks58/1cBubwyabsishfvgddyyrGlaihhEOX1OuRJNUfFVR
	MOGVIPtojoXIAdkG+slYxPYb3ujgV0aEArihDAXBVnYEA4cXKLIS2CdFGAMF2YiyYl5b
	qQjQ==
X-Gm-Message-State: AOPr4FVLlnAZGp7ceiJ+aZFpyPFKM4oknaUp9U2O2gv/UpSLlyNFBzERwfCQBkzs4/Zheg==
X-Received: by 10.28.48.203 with SMTP id w194mr9829009wmw.67.1462018173067;
	Sat, 30 Apr 2016 05:09:33 -0700 (PDT)
Received: from localhost.localdomain (p54AA5862.dip0.t-ipconnect.de.
	[84.170.88.98]) by smtp.googlemail.com with ESMTPSA id
	vu4sm19490468wjc.27.2016.04.30.05.09.32 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 30 Apr 2016 05:09:32 -0700 (PDT)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Sat, 30 Apr 2016 14:09:24 +0200
Message-Id: <1462018164-10212-1-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 2.5.5
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] replace base_contains by bb.utils.contains
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
X-List-Received-Date: Sat, 30 Apr 2016 12:09:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
---
 recipes-connectivity/bluez5/bluez5_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-connectivity/bluez5/bluez5_%.bbappend b/recipes-connectivity/bluez5/bluez5_%.bbappend
index eec52e0..89798a4 100644
--- a/recipes-connectivity/bluez5/bluez5_%.bbappend
+++ b/recipes-connectivity/bluez5/bluez5_%.bbappend
@@ -13,7 +13,7 @@ do_install_append_raspberrypi3() {
     install -d ${D}/lib/firmware/brcm/
     install -m 0644 ${WORKDIR}/BCM43430A1.hcd ${D}/lib/firmware/brcm/BCM43430A1.hcd
 
-    if ${@base_contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
+    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
         install -d ${D}${systemd_unitdir}/system
         install -m 0644 ${WORKDIR}/brcm43438.service ${D}${systemd_unitdir}/system
     fi
-- 
2.5.5


