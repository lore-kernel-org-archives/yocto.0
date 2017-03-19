Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 804D8E00ABE; Sun, 19 Mar 2017 10:54:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68234E00A81
	for <yocto@yoctoproject.org>; Sun, 19 Mar 2017 10:54:39 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:3fe5:5e2:ef97:4abb])
	by kozue.soulik.info (Postfix) with ESMTPA id E6F1D102262;
	Mon, 20 Mar 2017 02:55:23 +0900 (JST)
From: ayaka <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Mon, 20 Mar 2017 01:54:24 +0800
Message-Id: <1489946065-28272-3-git-send-email-ayaka@soulik.info>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489946065-28272-1-git-send-email-ayaka@soulik.info>
References: <1489946065-28272-1-git-send-email-ayaka@soulik.info>
X-Mailman-Approved-At: Mon, 20 Mar 2017 10:57:32 -0700
Cc: Jacob Chen <jacob-chen@iotwrt.com>, ayaka <ayaka@soulik.info>
Subject: [PATCH 2/3] recipes-multimedia: gstreamer: update to 1.10.4
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
X-List-Received-Date: Sun, 19 Mar 2017 17:54:42 -0000

I need a various of features from the new version.

Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
Signed-off-by: ayaka <ayaka@soulik.info>
---
 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend  | 4 ++++
 recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_%.bbappend | 4 ++++
 recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_%.bbappend | 4 ++++
 recipes-multimedia/gstreamer/gstreamer1.0_%.bbappend              | 4 ++++
 4 files changed, 16 insertions(+)
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_%.bbappend
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_%.bbappend
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0_%.bbappend

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
new file mode 100644
index 0000000..5f2255f
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
@@ -0,0 +1,4 @@
+PV="1.10.4"
+
+SRC_URI[md5sum] = "2757103e57a096a1a05b3ab85b8381af"
+SRC_URI[sha256sum] = "23ddae506b3a223b94869a0d3eea3e9a12e847f94d2d0e0b97102ce13ecd6966"
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_%.bbappend
new file mode 100644
index 0000000..0bc9c6e
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_%.bbappend
@@ -0,0 +1,4 @@
+PV="1.10.4"
+
+SRC_URI[md5sum] = "f6b46f8fac01eb773d556e3efc369e86"
+SRC_URI[sha256sum] = "f6d245b6b3d4cb733f81ebb021074c525ece83db0c10e932794b339b8d935eb7"
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_%.bbappend
new file mode 100644
index 0000000..5176458
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_%.bbappend
@@ -0,0 +1,4 @@
+PV="1.10.4"
+
+SRC_URI[md5sum] = "cc0cc13cdb07d4237600b6886b81f31d"
+SRC_URI[sha256sum] = "8a86c61434a8c44665365bd0b3557a040937d1f44bf69caee4e9ea816ce74d7e"
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0_%.bbappend
new file mode 100644
index 0000000..83c4c1d
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0_%.bbappend
@@ -0,0 +1,4 @@
+PV="1.10.4"
+
+SRC_URI[md5sum] = "7c91a97e4a2dc81eafd59d0a2f8b0d6e"
+SRC_URI[sha256sum] = "50c2f5af50a6cc6c0a3f3ed43bdd8b5e2bff00bacfb766d4be139ec06d8b5218"
-- 
2.7.4


