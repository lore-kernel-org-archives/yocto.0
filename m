Return-Path: <ricardo.ribalda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 521E1E00C32; Mon, 17 Jul 2017 07:18:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ricardo.ribalda[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.51 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4B1CE00C37
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:18:21 -0700 (PDT)
Received: by mail-lf0-f51.google.com with SMTP id h22so86212901lfk.3
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=rg/S4Zf5zYrtfMeGbM9GIhJsrosP8VVBoLytpzl8gMI=;
	b=CmCnb5uO7K00Wb2RctijYikOH3xtaXK3uox31hgjWckMseEc7DOivlIKUeMo5/YIzP
	eVIHdc2zDRhMkkpPeUcO8AoBB2tgicFe4wvh/W0YaAWkMntPGXa06M638qlH3kHc1iRi
	w948BANdh5imlViV3vNzIZcrE9FLV2VU2abn+ZgfbIqI+3J0mhnZqGeZ6BS61DegoVOa
	LjZRssFt3UmdiuZTmOw8N/m7IcXhbvC6s73hWBP1DvcQYSxr5aU8pHUXrJjEEuZccPny
	PQVRuN9PaFUexjE9i7G9oEgwks2a/g0p6Jd6/gvZoRcZCC8PHr4PKz0BPd9cM8TKe1OZ
	/UbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=rg/S4Zf5zYrtfMeGbM9GIhJsrosP8VVBoLytpzl8gMI=;
	b=WemoopIZf5z3OcJF5EpoVnKajRtt7h3RFiuXHOwHmhcctNQawhxHkBLDEvdTjg4k/8
	q8KoDNCOkBI4lnPjH2PgEX9P2bLhr/0yO6PViFBuZMSb4qpWDCjzx9m+plSIwdQgD15x
	qZZpg6P8QC7Em02eyQzl/UeNfkn8G8Im8MtkYb2k/wWq+8FW0UD8FD0o3bhIkInHQqIt
	/kCpnX8SgM+PWNlLFvLX0tq/dyf8ma7feaCo8adgXNGbF/UkY+yp8sBeO3GMoP5mtN9T
	iXuAJ/CCZSBFm/6RS3rJfRPYoKEu6NDCEiJ+fYJapGAfjx2WfJFRmxOqOTByNGRXIoLG
	7JPg==
X-Gm-Message-State: AIVw113+ciRmXL15PcoXGUB072hzjx+MFo77P0v/mGMW2OSYJSds0q4v
	JGLy2CK82fO5HSwWbX0=
X-Received: by 10.25.228.156 with SMTP id x28mr1842910lfi.175.1500301100022;
	Mon, 17 Jul 2017 07:18:20 -0700 (PDT)
Received: from neopili.qtec.com
	(cpe.xe-3-0-1-778.vbrnqe10.dk.customer.tdc.net. [80.197.57.18])
	by smtp.gmail.com with ESMTPSA id
	j12sm4040469lfh.23.2017.07.17.07.18.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Jul 2017 07:18:19 -0700 (PDT)
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	yocto@yoctoproject.org
Date: Mon, 17 Jul 2017 16:18:16 +0200
Message-Id: <20170717141816.11895-1-ricardo.ribalda@gmail.com>
X-Mailer: git-send-email 2.13.2
Subject: [PATCH v2] qt4: Fix build with moc4 and boost
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
X-List-Received-Date: Mon, 17 Jul 2017 14:18:24 -0000

Signed-off-by: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
---
 recipes-qt4/qt4/qt4-4.8.7.inc                       |  1 +
 ...verywhere-opensource-src-4.8.6-QTBUG-22829.patch | 21 +++++++++++++++++++++
 recipes-qt4/qt4/qt4-native.inc                      |  1 +
 3 files changed, 23 insertions(+)
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
index 000000000000..e5d3c266bade
--- /dev/null
+++ b/recipes-qt4/qt4/qt4-4.8.7/qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch
@@ -0,0 +1,21 @@
+Error described on: https://bugzilla.redhat.com/show_bug.cgi?id=1396755
+Patch obtained from: http://pkgs.fedoraproject.org/cgit/rpms/qt.git/tree/qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch
+
+Upstream-Status: Inappropriate
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


