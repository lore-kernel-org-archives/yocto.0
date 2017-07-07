Return-Path: <ricardo.ribalda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74E70E00AD0; Fri,  7 Jul 2017 03:31:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ricardo.ribalda[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.53 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32750E00726
	for <yocto@yoctoproject.org>; Fri,  7 Jul 2017 03:31:04 -0700 (PDT)
Received: by mail-lf0-f53.google.com with SMTP id z78so20556265lff.0
	for <yocto@yoctoproject.org>; Fri, 07 Jul 2017 03:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=0kjhUs0+vsMLECyngkLv2eN5tUcbJyR+LkhDecjweTo=;
	b=YAIIPximCqOi0zoaqeKOsOH9Q5ENiO4jMXm+m51PEcN8QMS0B/HJpYSjQJK0pYRuLb
	rK+W8P9VVgm+Mq9u1mGe3QiupRG4cdeWiKwSNOPRbChFP8tGEeoU/pQYtcA/i+vtYXQp
	PIl6BpbY/hdQTh5Vrd1Sh6s6yYLmEC8KZuecVZJXMKYceNf8Z6WdNHiBOVje2nSUKxuT
	K0osCKvye8PfWhauFWt83+ad9gXv74vOtZsf5dF3nGcVkCBgmadB6e4q3SyuMWpnT9qe
	bq+AghRes0l31K9nwtlci50EU5HU1PoqIDROoAf2myJ3m1fqCLrtt1zPWx9SP1FFdrVh
	rsfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=0kjhUs0+vsMLECyngkLv2eN5tUcbJyR+LkhDecjweTo=;
	b=a5TCRGWCobuk54XOnEJuLrN7o4z2S2QuGGMyDV9VjOi/CwmoPZCKRacWKyI6969e6J
	PRR+OmK5KPTATpcCBMCfghGCFau8UZy00+vqOWAJZsD83wU/3/ZfJZHvgaVh9W0dW+ee
	BpLk43cYhTicMPbaFaZEZ+LauNmymAGtH2sWCQQSdy3dwrBBWqiQMTLiTV7ARRYr11wm
	BZYVMaqn8cQY1n0ApNNOz7O+vq9e5NlV3y5gJhossUvTbvKYxnqD/hvXBqt5i7HJHRTj
	QWdH4/w8xvE9K97AAsYTeFNem6pN3Ndr0rokzCwAn6e17pO5Zu1sprwVYX3zDUFZ3Fd7
	Sz/A==
X-Gm-Message-State: AIVw113iyL+cX8jVVY4sN8nxj/J11+dXcgtpG+cRXgbb3Tf4f6OKVbVt
	6QbBTSX6LIhLDvtpJEY=
X-Received: by 10.25.206.203 with SMTP id e194mr9829552lfg.43.1499423463429;
	Fri, 07 Jul 2017 03:31:03 -0700 (PDT)
Received: from neopili.qtec.com
	(cpe.xe-3-0-1-778.vbrnqe10.dk.customer.tdc.net. [80.197.57.18])
	by smtp.gmail.com with ESMTPSA id y7sm541934ljd.40.2017.07.07.03.31.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 07 Jul 2017 03:31:02 -0700 (PDT)
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  7 Jul 2017 12:30:58 +0200
Message-Id: <20170707103058.976-1-ricardo.ribalda@gmail.com>
X-Mailer: git-send-email 2.13.2
Subject: [meta-qt4][PATCH] qt4: Fix build with moc4 and boost
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
X-List-Received-Date: Fri, 07 Jul 2017 10:31:07 -0000

Signed-off-by: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
---
 recipes-qt4/qt4/qt4-4.8.7.inc                        |  1 +
 ...everywhere-opensource-src-4.8.6-QTBUG-22829.patch | 20 ++++++++++++++++++++
 recipes-qt4/qt4/qt4-native.inc                       |  1 +
 3 files changed, 22 insertions(+)
 create mode 100644 recipes-qt4/qt4/qt4-4.8.7/qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch

diff --git a/recipes-qt4/qt4/qt4-4.8.7.inc b/recipes-qt4/qt4/qt4-4.8.7.inc
index 16b22a808a62..4bade85abe98 100644
--- a/recipes-qt4/qt4/qt4-4.8.7.inc
+++ b/recipes-qt4/qt4/qt4-4.8.7.inc
@@ -34,6 +34,7 @@ SRC_URI = "http://download.qt-project.org/official_releases/qt/4.8/${PV}/qt-ever
            file://g++.conf \
            file://linux.conf \
            file://fix-for-mips-n32.patch \
+	   file://qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch \
            "
 
 SRC_URI[md5sum] = "d990ee66bf7ab0c785589776f35ba6ad"
diff --git a/recipes-qt4/qt4/qt4-4.8.7/qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch b/recipes-qt4/qt4/qt4-4.8.7/qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch
new file mode 100644
index 000000000000..2b9da641e42b
--- /dev/null
+++ b/recipes-qt4/qt4/qt4-4.8.7/qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch
@@ -0,0 +1,20 @@
+Error described on: https://bugzilla.redhat.com/show_bug.cgi?id=1396755
+
+Upstream-Status: Backport
+diff -up qt-everywhere-opensource-src-4.8.7/src/tools/moc/main.cpp.QTBUG-22829 qt-everywhere-opensource-src-4.8.7/src/tools/moc/main.cpp
+--- qt-everywhere-opensource-src-4.8.7/src/tools/moc/main.cpp.QTBUG-22829	2015-05-07 09:14:44.000000000 -0500
++++ qt-everywhere-opensource-src-4.8.7/src/tools/moc/main.cpp	2016-12-08 12:32:46.638962448 -0600
+@@ -188,8 +188,12 @@ int runMoc(int _argc, char **_argv)
+     pp.macros["Q_MOC_RUN"];
+     pp.macros["__cplusplus"];
+ 
+-    // Workaround a bug while parsing the boost/type_traits/has_operator.hpp header. See QTBUG-22829
++    // Workaround a bugs while parsing some boost headers. See QTBUG-22829 
+     pp.macros["BOOST_TT_HAS_OPERATOR_HPP_INCLUDED"];
++    pp.macros["BOOST_LEXICAL_CAST_INCLUDED"];
++    pp.macros["BOOST_NEXT_PRIOR_HPP_INCLUDED"];
++    pp.macros["BOOST_TYPE_TRAITS_HPP"];
++    pp.macros["_SYS_SYSMACROS_H_OUTER"];
+ 
+     QByteArray filename;
+     QByteArray output;
diff --git a/recipes-qt4/qt4/qt4-native.inc b/recipes-qt4/qt4/qt4-native.inc
index 5a873de4e8f4..c0d6b3cb4cd4 100644
--- a/recipes-qt4/qt4/qt4-native.inc
+++ b/recipes-qt4/qt4/qt4-native.inc
@@ -21,6 +21,7 @@ SRC_URI = "http://download.qt-project.org/official_releases/qt/4.8/${PV}/qt-ever
 	   file://gcc-6.patch \
            file://g++.conf \
            file://linux.conf \
+	   file://qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch \
 	"
 
 UPSTREAM_CHECK_URI = "http://download.qt.io/official_releases/qt/4.8/"
-- 
2.13.2


