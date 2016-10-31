Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47BF8E00839; Mon, 31 Oct 2016 09:52:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 063E9E00752
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:52:18 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id y68so3319482pfb.1
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=sqm06oQr+H0gv/Cf0GWy4YPSOmMFDNQUA+R5cb5AQ4o=;
	b=ocHKIOiLY1f2lIdWPdtvAKs2racbOA54lIR+zcqOCV8P4mz0fg+OExzxTK+3KdT270
	BvTMWzL0jgyv2f+p+rnnum+jS592QV9o/dmV7hmaq+TyGNOveSDXh6eXkiXMGJLu1QOG
	A5FEOBvK455eydajxqYwZlzkmkCzfJHJWmRLXeYBFbluBfXWi6Xa+DRBdcQ/KUTWLYxe
	C9L9rZiI/4cy8rmzwCAhVXfFGUariKx4XGuDTQb4cvYYkLyGSuvsFM5GVs0j4SYjvBHV
	IbLnuwip4is1Z4A7PEvgP+Tu+hTO/Zz+NrNiCBTuBxM5aoXqcC3bPKmBOX7xaErjjJhQ
	ukuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=sqm06oQr+H0gv/Cf0GWy4YPSOmMFDNQUA+R5cb5AQ4o=;
	b=IwHZ/9YW5KhQVqSSwj+++fdbySdoTkHtGNwxKTy+fU03UEppE6onEjM8lzkPWedXqZ
	0ASbulCMAH5/hbnXGBIricWthoDRzU6kjLHiiGt+ElbNvE44u/VaeHd+9w+s++62EoaP
	Gcp1ACaaBhVbvEPMNpoCoY2aakaLKcE8rZzhDuRQePMRKYOz+lejKRKdhKgFVfwN0e7Q
	oR+8E3iAfZQkVqvq2ju5tiCHRJcy18CUGlCQfvlyJOLdNa93MqxJdKSRpK9rRKKjV7fK
	EtElem/xkeT9WXkGHEg8g8PW/p+1NX9GoB5lvly7uW8X1r698qn3b+4uNYjlPcTvGJLd
	fGAw==
X-Gm-Message-State: ABUngvd68IvHAz6yQxZWhcHchfInBb2L+VvKUeWSBy4goMaeBUwcWFkzeHdR4ti981wzaQ==
X-Received: by 10.98.153.21 with SMTP id d21mr44829389pfe.44.1477932738109;
	Mon, 31 Oct 2016 09:52:18 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	r2sm14653100pfi.67.2016.10.31.09.52.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 09:52:17 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 31 Oct 2016 09:52:05 -0700
Message-Id: <20161031165208.16286-3-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.1
In-Reply-To: <20161031165208.16286-1-raj.khem@gmail.com>
References: <20161031165208.16286-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 3/6] weston: Unify bbappends for weston into single file
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
X-List-Received-Date: Mon, 31 Oct 2016 16:52:22 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/wayland/weston_%.bbappend | 10 ++++++++++
 recipes-graphics/weston/weston_%.bbappend  |  8 --------
 2 files changed, 10 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-graphics/weston/weston_%.bbappend

diff --git a/recipes-graphics/wayland/weston_%.bbappend b/recipes-graphics/wayland/weston_%.bbappend
index 57b8079..f2cb7aa 100644
--- a/recipes-graphics/wayland/weston_%.bbappend
+++ b/recipes-graphics/wayland/weston_%.bbappend
@@ -1,2 +1,12 @@
 EXTRA_OECONF_append_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' --enable-rpi-compositor WESTON_NATIVE_BACKEND=rpi-backend.so', d)}"
 
+PACKAGECONFIG_remove_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', 'fbdev', '', d)}"
+
+EXTRA_OECONF += "--disable-xwayland-test \
+                 --disable-simple-egl-clients \
+"
+
+EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--enable-rpi-compositor', d)}"
+EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--disable-resize-optimization', d)}"
+EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--disable-setuid-install', d)}"
+EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', 'WESTON_NATIVE_BACKEND=rpi-backend.so', d)}"
diff --git a/recipes-graphics/weston/weston_%.bbappend b/recipes-graphics/weston/weston_%.bbappend
deleted file mode 100644
index b964542..0000000
--- a/recipes-graphics/weston/weston_%.bbappend
+++ /dev/null
@@ -1,8 +0,0 @@
-PACKAGECONFIG_remove_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', ' fbdev', '', d)}"
-EXTRA_OECONF += "--disable-xwayland-test \
-                 --disable-simple-egl-clients \
-"
-EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--enable-rpi-compositor', d)}"
-EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--disable-resize-optimization', d)}"
-EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', '--disable-setuid-install', d)}"
-EXTRA_OECONF += "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', 'WESTON_NATIVE_BACKEND=rpi-backend.so', d)}"
-- 
2.10.1


