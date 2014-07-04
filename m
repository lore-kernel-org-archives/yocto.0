Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEE10E002AC; Fri,  4 Jul 2014 10:42:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F353E002A6
	for <yocto@yoctoproject.org>; Fri,  4 Jul 2014 10:42:37 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id et14so2258959pad.21
	for <yocto@yoctoproject.org>; Fri, 04 Jul 2014 10:42:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=E/U73kL/AMMXI5Au38kEIlImdITP6yWW+9TVhbmNV6c=;
	b=PzaanTFe3GQn3Kf8vlr/4qPB+Y4oXGmLPTvftus37xnf34fJ/O4LZMzmoFm7mnIpsU
	0owF97wsaEYwVBiyO0eD5vvJCB3fuMfnYYLT/YGdVop/bK7QMZUxQqKb163oAyM0wZ5o
	p7wMNQAi/FsOKRzy9px5t4ZfpW5Csm0Lt5WfPMdoJMUwhYbnhrK4Ls9nackm3ecmLK5n
	u5hWaf9bItNnxk3lVodNVhpZNq6qBDm6uvm7vUqoDreEyREavYmupeaBA3z5sIbAls0K
	1QxyqmaMQ3ZVGn/UiKaFfi6cCJoCUt94cAGCEsOwa9EaI3hFIQIHK17L0JLaoudit7AV
	Ps7Q==
X-Gm-Message-State: ALoCoQlS7oqsEtc3yQ22j09vJMjUCeHE1PjiRC5yuFmomRLPSiG410ujgpKGAMit1U4ZyI6kCdEH
X-Received: by 10.70.102.169 with SMTP id fp9mr7297543pdb.118.1404495756910;
	Fri, 04 Jul 2014 10:42:36 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	su8sm44781281pbc.72.2014.07.04.10.42.35 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 04 Jul 2014 10:42:36 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Fri,  4 Jul 2014 10:42:34 -0700
Message-Id: <1404495754-9347-1-git-send-email-akuster@mvista.com>
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
X-List-Received-Date: Fri, 04 Jul 2014 17:42:42 -0000

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


