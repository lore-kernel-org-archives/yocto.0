Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1AD0E007C2; Thu, 14 Aug 2014 06:16:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DACFE0079A
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 06:16:46 -0700 (PDT)
Received: by mail-we0-f179.google.com with SMTP id u57so1075878wes.38
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 06:16:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=7LVpmc9LwBXZxJg63dVbPx0rGIVMNgZOQdyoZ8fwsNw=;
	b=DdtxiA0wiMg3CR7LnLGVnRCADEBVIizFuFwVuup71C4OlPxP6V7GGKZCb4YmyZzzWK
	eZFeFAyxXAPjBUYYOLI85uJDrUn/U9Itrb99xBcbkmZ/y7G7ua/OvjoIHU8xMkZg4ySJ
	qZt63cqTpwk3qpJJ+Ce3/cAguD59D4NDgSjKgP3Ljo3nQcwhn1PknnXBkheQzbRgsH5m
	m0uQ2t0PYv/D0kQPFhmHeXQ+19sqn8mW4p6Au0nLTuY7sS40w1gk82lqrMfksSBhl069
	1cMxzm6Td/2nqRwODhBn2e8u4mQMzSp/JJp1SY6/X4+0qmBMAjQv73XBlw6f8G66wSLx
	owbg==
X-Gm-Message-State: ALoCoQnS5drMQSqxeYot8feBekHwtEmribTISOzez6ppwKbrvUqwvNAPdSZl3nx9T6ymCBoEBsD2
X-Received: by 10.180.12.239 with SMTP id b15mr45267942wic.75.1408022205764;
	Thu, 14 Aug 2014 06:16:45 -0700 (PDT)
Received: from otp-agherzan-l1.corp.ad.wrs.com (dhcp-189-34.gjk.dk.
	[195.249.189.34])
	by mx.google.com with ESMTPSA id e3sm11470689wjp.4.2014.08.14.06.16.44
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Aug 2014 06:16:45 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 14 Aug 2014 15:16:39 +0200
Message-Id: <1408022200-3960-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.9.3
Subject: [meta-raspberrypi][PATCH 1/2] gstreamer1.0-plugins-bad: Sync version with yocto master
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
X-List-Received-Date: Thu, 14 Aug 2014 13:16:48 -0000

Change-Id: I7913b849ddfc615de4846dbd653e03d084bb8039
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.4.bbappend | 3 ---
 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.4.0.bbappend | 3 +++
 2 files changed, 3 insertions(+), 3 deletions(-)
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.4.bbappend
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.4.0.bbappend

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.4.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.4.bbappend
deleted file mode 100644
index fba7e1a..0000000
--- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.2.4.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-EXTRA_OECONF_append_raspberrypi = " CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads \
-                                   -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux' \
-                                    --with-egl-window-system=rpi"
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.4.0.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.4.0.bbappend
new file mode 100644
index 0000000..fba7e1a
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.4.0.bbappend
@@ -0,0 +1,3 @@
+EXTRA_OECONF_append_raspberrypi = " CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads \
+                                   -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux' \
+                                    --with-egl-window-system=rpi"
-- 
1.9.3


