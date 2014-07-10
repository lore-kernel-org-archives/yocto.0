Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E34BE00559; Wed,  9 Jul 2014 18:32:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45EFBE002AA
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 18:32:06 -0700 (PDT)
Received: by mail-pa0-f43.google.com with SMTP id lf10so10158357pab.2
	for <yocto@yoctoproject.org>; Wed, 09 Jul 2014 18:32:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=E/U73kL/AMMXI5Au38kEIlImdITP6yWW+9TVhbmNV6c=;
	b=hhjefLM3Q3Y/hM51fWrPBkn77ARe3g3rtVs58kp6SrE8ip9RvjDo8w+FLWK/IJ0uAK
	CkCTEkw4kNneGD/OgCMXhFILw8SNsiJjX0hTTouYUsK7H6yD4QuCmk+Ob9doiVHI36nL
	i1Mj4khlIM2ssaQrS7RfE0vLIXnmW9ECt3ds8QClWdpzM6Q39Oi37Rv7FqL6c2Xzlvrn
	TT9Mj6R0/jOrdpIlKOvl0iJen6b5luwHG/IqxuGx2JUohCTSP56d6Y1sfgJ+yUjNS106
	kIH+0TNHFLOk2ohn4jEC7APqiIWO3JqOTKEgOdojDmO9c0hazIJolTQj3vVi5kQQrvW9
	vWwg==
X-Gm-Message-State: ALoCoQmF/GJzhPLjGJ/hf3tQrlMgHY5+Bfx3+UI0ckqaRas/Oqy4nxxd2spi3dYIKTfwqgKhVWxt
X-Received: by 10.67.2.73 with SMTP id bm9mr26873854pad.73.1404955925752;
	Wed, 09 Jul 2014 18:32:05 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	kk1sm47730891pbd.61.2014.07.09.18.32.04 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 09 Jul 2014 18:32:05 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Wed,  9 Jul 2014 18:32:02 -0700
Message-Id: <1404955922-13315-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] nmap: update to 6.46
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
X-List-Received-Date: Thu, 10 Jul 2014 01:32:09 -0000

Updated to later version on nmap.
remove patch which is included in update
Added ndiff package
Include zenmap build changes but commented out for now and untested

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-security/nmap/files/lua.patch | 79 -----------------------------------
 recipes-security/nmap/nmap_6.25.bb    | 24 -----------
 recipes-security/nmap/nmap_6.46.bb    | 36 ++++++++++++++++
 3 files changed, 36 insertions(+), 103 deletions(-)
 delete mode 100644 recipes-security/nmap/files/lua.patch
 delete mode 100644 recipes-security/nmap/nmap_6.25.bb
 create mode 100644 recipes-security/nmap/nmap_6.46.bb

diff --git a/recipes-security/nmap/files/lua.patch b/recipes-security/nmap/files/lua.patch
deleted file mode 100644
index 7cb86ab..0000000
--- a/recipes-security/nmap/files/lua.patch
+++ /dev/null
@@ -1,79 +0,0 @@
-Added missing definitions which caused failuire at do_configure
-with --without-liblua option.
-
-Upstream Status : pending
-
-Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
---- a/output.h
-+++ b/output.h
-@@ -226,6 +226,10 @@
- void printscriptresults(ScriptResults *scriptResults, stype scantype);
- 
- void printhostscriptresults(Target *currenths);
-+
-+/*This is a helper function to determine the ordering of the script results
-+  based on their id */
-+bool comparescriptids(ScriptResult first, ScriptResult second);
- #endif
- 
- /* Print a table with traceroute hops. */
-@@ -253,8 +257,4 @@
-    were found. */
- void printdatafilepaths();
- 
--/*This is a helper function to determine the ordering of the script results
--  based on their id */
--bool comparescriptids(ScriptResult first, ScriptResult second);
--
- #endif /* OUTPUT_H */
---- a/output.cc
-+++ b/output.cc
-@@ -2613,6 +2613,7 @@
-   }
- }
- 
-+#ifndef NOLUA
- /*This is a helper function to determine the ordering of the script results
-   based on their id */
- bool comparescriptids(ScriptResult first, ScriptResult second){
-@@ -2625,5 +2626,6 @@
-     else
-         return false;
- }
-+#endif
- 
- 
---- a/portlist.cc
-+++ b/portlist.cc
-@@ -144,6 +144,7 @@
-   }
- }
- 
-+#ifndef NOLUA
- void Port::freeScriptResults(void)
- {
-     while (!scriptResults.empty()) {
-@@ -151,6 +152,7 @@
-         scriptResults.pop_front();
-     }
- }
-+#endif
- 
- /* Fills in namebuf (as long as there is space in buflen) with the
-    Name nmap normal output will use to describe the port.  This takes
---- a/Target.cc
-+++ b/Target.cc
-@@ -162,10 +162,12 @@
- 
- Target::~Target() {
-   FreeInternal();
-+#ifndef NOLUA
-   while (!scriptResults.empty()) {
-     scriptResults.front().clear();
-     scriptResults.pop_front();
-   }
-+#endif
- }
- 
- void Target::FreeInternal() {
-
diff --git a/recipes-security/nmap/nmap_6.25.bb b/recipes-security/nmap/nmap_6.25.bb
deleted file mode 100644
index 5efcc70..0000000
--- a/recipes-security/nmap/nmap_6.25.bb
+++ /dev/null
@@ -1,24 +0,0 @@
-SUMMARY = "network auditing tool"
-DESCRIPTION = "Nmap ("Network Mapper") is a free and open source (license) utility for network discovery and security auditing."
-SECTION = "security"
-LICENSE = "GPL-2.0"
-LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
-FILES_${PN} += "${target_datadir}/ncat"
-
-SRC_URI = "http://nmap.org/dist/${PN}-${PV}.tar.bz2 \
-           file://lua.patch"
-
-SRC_URI[md5sum] = "fcc80f94ff3adcb11eedf91092ea6f5e"
-SRC_URI[sha256sum] = "3349cc6d36b86b95ca2b8075d16615a3a598cef494920d6652f9a8bf9f7660b5"
-
-inherit autotools-brokensep
-
-DEPENDS = "libpcap"
-
-EXTRA_OECONF = "--without-liblua --without-zenmap --without-subversion --with-pcap=linux"
-
-do_configure() {
-    autoconf
-    oe_runconf
-}
-
diff --git a/recipes-security/nmap/nmap_6.46.bb b/recipes-security/nmap/nmap_6.46.bb
new file mode 100644
index 0000000..42db71f
--- /dev/null
+++ b/recipes-security/nmap/nmap_6.46.bb
@@ -0,0 +1,36 @@
+SUMMARY = "network auditing tool"
+DESCRIPTION = "Nmap ("Network Mapper") is a free and open source (license) utility for network discovery and security auditing."
+SECTION = "security"
+LICENSE = "GPL-2.0"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
+FILES_${PN} += "${target_datadir}/ncat"
+
+SRC_URI = "http://nmap.org/dist/${BPN}-${PV}.tar.bz2"
+
+SRC_URI[md5sum] = "5a36ad3a63d5b7ea5514f745a397436a"
+SRC_URI[sha256sum] = "3f89d9053c69507fe9533c40188a6561d49607a37b1db6380aed9039d4883137"
+
+inherit autotools-brokensep
+
+DEPENDS = "libpcap"
+
+EXTRA_OECONF = "--without-liblua --without-zenmap --without-subversion --with-pcap=linux"
+
+do_configure() {
+    autoconf
+    oe_runconf
+}
+
+# should add a conditional for "--without-zenmap" test. 
+# zenmap builds if the below are uncommented. Not tested
+#PACKAGES =+ "${PN}-zenmap"
+#FILES_${PN}-zenmap = "/usr/share/zenmap/*"
+
+#  should add a conditional based for "--without-ndiff"
+PACKAGES =+ "${PN}-python"
+DESCRIPTION_${PN}-python = \
+"The ${PN}-python package includes the ndiff utility. \
+Ndiff is a tool to aid in the comparison of Nmap scans."
+FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
+
+
-- 
1.9.1


