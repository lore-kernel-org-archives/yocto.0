Return-Path: <coldnew.tw@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6577FE0087D; Fri, 24 Oct 2014 19:22:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (coldnew.tw[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07426E0084E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 19:22:01 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id hz1so2128780pad.22
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 19:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=QMBht4XEf9dobmlXPzugdbQQerV2J5zsYlIpKiHnYvc=;
	b=ebR5x02/+Aj4gdsQjBLbmn1X4pjOEHH+J37exYwDEIQb2gHh8+M79LdrAJtewFuwnl
	WLEib9GQeKvOOjchpFmgWdo00zCc5fO+kc/EJGrbDQi9TmLe1K+MGN3hfkJIgWg+QcMS
	pVKdSB/Cs6ic2f/quY5EJWkMooj5CaYb5AtbMr7pax5lXJWinyGN4iVvIY968oP2f9XR
	v1ijEpbUyFCtOnHBtdbks008SvUiwUeDre8aafN23lbToxLVVc90/TlGXX8Axh3mVIXj
	CNMCStDmQk5ouMqLgC/2bSvDfsWdS97/pxy/PjyDA7rwZxiZxchEOl/1Y4Vo+DAJsXZL
	PFNw==
X-Received: by 10.68.166.130 with SMTP id zg2mr8237637pbb.87.1414203721219;
	Fri, 24 Oct 2014 19:22:01 -0700 (PDT)
Received: from localhost.localdomain
	(61-62-6-208-adsl-tpe.dynamic.so-net.net.tw. [61.62.6.208])
	by mx.google.com with ESMTPSA id
	nk11sm4958548pdb.40.2014.10.24.19.21.57 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 24 Oct 2014 19:21:59 -0700 (PDT)
From: Yen-Chin Lee <coldnew.tw@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 25 Oct 2014 10:21:47 +0800
Message-Id: <1414203707-21296-1-git-send-email-coldnew.tw@gmail.com>
X-Mailer: git-send-email 1.9.3 (Apple Git-50)
Subject: [meta-raspberrypi][PATCH] qtbase: Add basic Qt5 building support
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
X-List-Received-Date: Sat, 25 Oct 2014 02:22:06 -0000

To build raspberrypi with Qt5, we need to add extra QT_CONFIG_FLAGS to
indicate device config.

Signed-off-by: Yen-Chin Lee <coldnew.tw@gmail.com>
---
 recipes-qt/qt5/qtbase_%.bbappend | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 recipes-qt/qt5/qtbase_%.bbappend

diff --git a/recipes-qt/qt5/qtbase_%.bbappend b/recipes-qt/qt5/qtbase_%.bbappend
new file mode 100644
index 0000000..c994cf5
--- /dev/null
+++ b/recipes-qt/qt5/qtbase_%.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+QT_CONFIG_FLAGS += " \
+    -device linux-rasp-pi-g++ \
+    -device-option CROSS_COMPILE=${TARGET_PREFIX} \
+    -I${STAGING_DIR_TARGET}${includedir}/interface/vcos/pthreads \
+"
-- 
1.9.3 (Apple Git-50)


