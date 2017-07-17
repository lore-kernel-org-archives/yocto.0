Return-Path: <ricardo.ribalda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 961E0E00C32; Mon, 17 Jul 2017 07:36:29 -0700 (PDT)
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
	*      [209.85.215.54 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD7DBE00C2E
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:36:28 -0700 (PDT)
Received: by mail-lf0-f54.google.com with SMTP id t72so86907245lff.1
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=ylmb+hDT/pHCn7+QD5in8oBm5ZImSdSgKRyimFMkapA=;
	b=CupwBKtw6KZFu+bahzS9hqVlDB8T72N1NzSnLVWgjpN+YlpU1Pxq07hN4plwqsrknN
	/2HvUR6IMZWM9etZ0CrmEKHI/JaWgGMvLLKnxaHKiXzoOaBgPk5ZPGW7xER0s2P/zrrm
	7MNG3WfrW13I5wQQgDqMU5u4iHsYTW+TNEGmubJMSbX6tgFi6H5J8TcrNUShHMK7R89p
	VNd+2CqnHRMiNnv5Ak5uwPvUQKUrRy+uqJwHCV/c2RaH9bl7kKXTEGsFik/xDwDKYDNT
	GiIN3HI7ds6KoVRfJYQe7fD81Vk7DfFUNJqirRCjNI3QYAS8ZQOY3BawE677jjN3UO18
	B1jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ylmb+hDT/pHCn7+QD5in8oBm5ZImSdSgKRyimFMkapA=;
	b=U/nzbkqzcxeIllQxBly6dBciITr0x/daj/y0GRNpC1DYak60T37PyGNZamDF7D2suG
	Yxao1wcd5Pya1i/SpqKRnbouIkB4rgQLXvyhAM/y2CLKzjQiwxzpw4bpClom6bLjUDIa
	A4jwieM3ZAQvLIPZ29nqSjyQ2ff59jadJ0jq/AVtkcqE9wJA72l1VBg9/4n3jSB+O6T2
	v2z4kMnWVc7Qa956UZTq4qfh4H1hDPafJxkr50KoI/x0K8KUjCCHqNRfHWZVWUtIQFUI
	UYrKrfIXZAsvGjVYs297qFqxSztt8dWBlR7JwzKQAB0VJiwevXzXFdHPurxWGlb515mJ
	rEWQ==
X-Gm-Message-State: AIVw1107bBkjrNnlXO+C7fWHBbtkiTpJAmvXbfAHFossJk0mRRa2Mtt1
	g9296812IJlHKw==
X-Received: by 10.46.7.80 with SMTP id i16mr4837667ljd.1.1500302187562;
	Mon, 17 Jul 2017 07:36:27 -0700 (PDT)
Received: from neopili.qtec.com
	(cpe.xe-3-0-1-778.vbrnqe10.dk.customer.tdc.net. [80.197.57.18])
	by smtp.gmail.com with ESMTPSA id p7sm4086777lfp.21.2017.07.17.07.36.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Jul 2017 07:36:26 -0700 (PDT)
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	yocto@yoctoproject.org
Date: Mon, 17 Jul 2017 16:36:20 +0200
Message-Id: <20170717143620.19430-1-ricardo.ribalda@gmail.com>
X-Mailer: git-send-email 2.13.2
Subject: [PATCH v3] qt4: Fix build with moc4 and boost
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
X-List-Received-Date: Mon, 17 Jul 2017 14:36:29 -0000

Signed-off-by: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
---
 recipes-qt4/qt4/qt4-4.8.7.inc                      |  1 +
 ...erywhere-opensource-src-4.8.6-QTBUG-22829.patch | 22 ++++++++++++++++++++++
 recipes-qt4/qt4/qt4-native.inc                     |  1 +
 3 files changed, 24 insertions(+)
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
index 000000000000..3a384c976176
--- /dev/null
+++ b/recipes-qt4/qt4/qt4-4.8.7/qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch
@@ -0,0 +1,22 @@
+Error described on: https://bugzilla.redhat.com/show_bug.cgi?id=1396755
+Patch obtained from: http://pkgs.fedoraproject.org/cgit/rpms/qt.git/tree/qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch
+
+Upstream-Status: Inappropriate
+Signed-off-by: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
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


