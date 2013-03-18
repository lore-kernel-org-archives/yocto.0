Return-Path: <simon.egli@tik.ee.ethz.ch>
Received: from smtp.ee.ethz.ch (smtp.ee.ethz.ch [129.132.2.219])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1C4CE01342
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 04:41:34 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp.ee.ethz.ch (Postfix) with ESMTP id 9F953D9309;
	Mon, 18 Mar 2013 12:41:32 +0100 (MET)
X-Virus-Scanned: by amavisd-new on smtp.ee.ethz.ch
Received: from smtp.ee.ethz.ch ([127.0.0.1])
	by localhost (.ee.ethz.ch [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id IGjWmzBSeODB; Mon, 18 Mar 2013 12:41:32 +0100 (MET)
Received: from [82.130.102.217] (unknown [82.130.102.217])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested) (Authenticated sender: eglis)
	by smtp.ee.ethz.ch (Postfix) with ESMTPSA id 59AA8D9305;
	Mon, 18 Mar 2013 12:41:32 +0100 (MET)
Message-ID: <5146FD6C.8070803@tik.ee.ethz.ch>
Date: Mon, 18 Mar 2013 12:41:32 +0100
From: Simon Egli <simon.egli@tik.ee.ethz.ch>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: [META-OE][PATCH] iperf 2.0.5 + fix for minor bug while cross-compiling
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
X-List-Received-Date: Mon, 18 Mar 2013 11:41:35 -0000
X-Groupsio-MsgNum: 12643
Content-Type: multipart/mixed; boundary="------------060405000503010103010703"

--------------060405000503010103010703
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Please see attached my patch to iperf 2.0.5 + fix
I hope this may be of use for someone and that it will be integrated in 
to yocto master

Greetings,

Simon

--------------060405000503010103010703
Content-Type: text/x-patch;
 name="0001-Recipe-for-iperf-2.0.5.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-Recipe-for-iperf-2.0.5.patch"

From 5a46a34945539ac46046bec9534322c09ff0896a Mon Sep 17 00:00:00 2001
From: Simon Egli <simon.egli@tik.ee.ethz.ch>
Date: Mon, 18 Mar 2013 12:37:20 +0100
Subject: [PATCH 1/2] Recipe for iperf 2.0.5

Signed-off-by: Simon Egli <simon.egli@tik.ee.ethz.ch>
---
 meta-oe/recipes-benchmark/iperf/iperf_2.0.5.bb |   21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 meta-oe/recipes-benchmark/iperf/iperf_2.0.5.bb

diff --git a/meta-oe/recipes-benchmark/iperf/iperf_2.0.5.bb b/meta-oe/recipes-benchmark/iperf/iperf_2.0.5.bb
new file mode 100644
index 0000000..3f93ee5
--- /dev/null
+++ b/meta-oe/recipes-benchmark/iperf/iperf_2.0.5.bb
@@ -0,0 +1,21 @@
+DESCRIPTION = "Iperf is a tool to measure maximum TCP bandwidth, allowing the tuning of various parameters and UDP characteristics"
+HOMEPAGE = "http://dast.nlanr.net/Projects/Iperf/"
+SECTION = "console/network"
+LICENSE = "NewBSD"
+LIC_FILES_CHKSUM = "file://COPYING;md5=e8478eae9f479e39bc34975193360298"
+
+SRC_URI = " \
+	${SOURCEFORGE_MIRROR}/iperf/iperf-${PV}.tar.gz \
+	file://0001-Fixing-special-format-bug-with-bitbake.patch \
+	"
+
+
+SRC_URI[md5sum] = "44b5536b67719f4250faed632a3cd016"
+SRC_URI[sha256sum] = "636b4eff0431cea80667ea85a67ce4c68698760a9837e1e9d13096d20362265b"
+
+inherit autotools
+
+S="${WORKDIR}/iperf-${PV}"
+
+EXTRA_OECONF = "--exec-prefix=${STAGING_DIR_HOST}${layout_exec_prefix}"
+
-- 
1.7.9.5


--------------060405000503010103010703
Content-Type: text/x-patch;
 name="0002-Fixing-special-format-bug-with-bitbake.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0002-Fixing-special-format-bug-with-bitbake.patch"

From 85fdd92a41626e821c98251ee13a0dd8f280de40 Mon Sep 17 00:00:00 2001
From: Simon Egli <simon.egli@tik.ee.ethz.ch>
Date: Mon, 18 Mar 2013 12:37:40 +0100
Subject: [PATCH 2/2] Fixing special format bug with bitbake

    On overo (native) we get HAVE_QUAD_SUPPORT, but don't seem with bitbake.
    This leads to "iperf -s -u -y c" returning empty bandwith and jitter,
    because of formatting error.
    Didn't seem to work with "'CFLAGS += "-HAVE_QUAD_SUPPORT"', because of configure error,
    so giving iperf HAVE_QUAD_SUPPORT in Locale.c

Signed-off-by: Simon Egli <simon.egli@tik.ee.ethz.ch>
---
 ...01-Fixing-special-format-bug-with-bitbake.patch |   31 ++++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 meta-oe/recipes-benchmark/iperf/iperf-2.0.5/0001-Fixing-special-format-bug-with-bitbake.patch

diff --git a/meta-oe/recipes-benchmark/iperf/iperf-2.0.5/0001-Fixing-special-format-bug-with-bitbake.patch b/meta-oe/recipes-benchmark/iperf/iperf-2.0.5/0001-Fixing-special-format-bug-with-bitbake.patch
new file mode 100644
index 0000000..fb04cd7
--- /dev/null
+++ b/meta-oe/recipes-benchmark/iperf/iperf-2.0.5/0001-Fixing-special-format-bug-with-bitbake.patch
@@ -0,0 +1,31 @@
+From 8f359740e9d8b4b18c83873aab6d80b40e36beaf Mon Sep 17 00:00:00 2001
+From: Simon Egli <simon.egli@tik.ee.ethz.ch>
+Date: Mon, 18 Mar 2013 12:30:12 +0100
+Subject: [PATCH] Fixing special format bug with bitbake
+
+On overo (native) we get HAVE_QUAD_SUPPORT, but don't seem with bitbake.
+This leads to "iperf -s -u -y c" returning empty bandwith and jitter,
+because of formatting error.
+Didn't seem to work with "'CFLAGS += "-HAVE_QUAD_SUPPORT"', because of configure error,
+so giving iperf HAVE_QUAD_SUPPORT in Locale.c
+
+Signed-off-by: Simon Egli <simon.egli@tik.ee.ethz.ch>
+---
+ src/Locale.c |    1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/src/Locale.c b/src/Locale.c
+index b5d42b1..f0e10b6 100644
+--- a/src/Locale.c
++++ b/src/Locale.c
+@@ -238,6 +238,7 @@ const char server_reporting[] =
+ const char reportCSV_peer[] =
+ "%s,%u,%s,%u";
+ 
++#define HAVE_QUAD_SUPPORT
+ #ifdef HAVE_QUAD_SUPPORT
+ #ifdef HAVE_PRINTF_QD
+ const char reportCSV_bw_format[] =
+-- 
+1.7.9.5
+
-- 
1.7.9.5


--------------060405000503010103010703--
