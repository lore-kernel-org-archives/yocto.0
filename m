Return-Path: <naveen.kumar.saini@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4380AE00C5C; Sun, 22 Sep 2019 19:04:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=AC_FROM_MANY_DOTS,BAYES_00,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	*  2.0 AC_FROM_MANY_DOTS Multiple periods in From user name
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F4C1E00929
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2019 19:04:24 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Sep 2019 19:04:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,538,1559545200"; d="scan'208";a="190517053"
Received: from saininav-desk1.png.intel.com ([172.30.199.130])
	by orsmga003.jf.intel.com with ESMTP; 22 Sep 2019 19:04:22 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Sep 2019 10:07:13 +0800
Message-Id: <20190923020713.7380-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [PATCH] apparmor: suppress appending of installation to perllocal.pod
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
X-List-Received-Date: Mon, 23 Sep 2019 02:04:26 -0000

perl modules when gets installed can produce a perllocal.pod
file for documenting a list of locally installed perl modules.
This can conflict if multiple packages generate the file.

Hits the conflict with apparmor & rrdtool packages.
Error: Transaction check error:
  file /usr/lib/perl5/5.30.0/x86_64-linux/perllocal.pod conflicts between attempted installs of rrdtool-1.7.2-r0.corei7_64 and apparmor-2.13.3-r0.corei7_64

perllocal.pod files are for documentation purpose, so
disabling does not harm. Generating perllocal.pod for perl
module is disabled by passing NO_PERLLOCAL=1
with ExtUtils::MakeMaker utility.

https://perldoc.perl.org/5.30.0/ExtUtils/MakeMaker.html#Using-Attributes-and-Parameters

[YOCTO #13491]

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-mac/AppArmor/apparmor_2.13.3.bb       |  1 +
 ...1-Makefile.am-suppress-perllocal.pod.patch | 28 +++++++++++++++++++
 2 files changed, 29 insertions(+)
 create mode 100644 recipes-mac/AppArmor/files/0001-Makefile.am-suppress-perllocal.pod.patch

diff --git a/recipes-mac/AppArmor/apparmor_2.13.3.bb b/recipes-mac/AppArmor/apparmor_2.13.3.bb
index 8484404..2e5d221 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.3.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.3.bb
@@ -21,6 +21,7 @@ SRC_URI = " \
 	file://functions \
 	file://apparmor \
 	file://apparmor.service \
+	file://0001-Makefile.am-suppress-perllocal.pod.patch \
 	file://run-ptest \
 	"
 
diff --git a/recipes-mac/AppArmor/files/0001-Makefile.am-suppress-perllocal.pod.patch b/recipes-mac/AppArmor/files/0001-Makefile.am-suppress-perllocal.pod.patch
new file mode 100644
index 0000000..9807be1
--- /dev/null
+++ b/recipes-mac/AppArmor/files/0001-Makefile.am-suppress-perllocal.pod.patch
@@ -0,0 +1,28 @@
+From 9f9cfbf07214ac68a55372a3c2777192765cbeb9 Mon Sep 17 00:00:00 2001
+From: Naveen Saini <naveen.kumar.saini@intel.com>
+Date: Fri, 20 Sep 2019 18:53:53 +0800
+Subject: [PATCH] Makefile.am: suppress perllocal.pod
+
+Upstream-Status: Inappropriate [OE-Specific]
+
+Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
+---
+ libraries/libapparmor/swig/perl/Makefile.am | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/libraries/libapparmor/swig/perl/Makefile.am b/libraries/libapparmor/swig/perl/Makefile.am
+index 6ae4e30c..be00dc7f 100644
+--- a/libraries/libapparmor/swig/perl/Makefile.am
++++ b/libraries/libapparmor/swig/perl/Makefile.am
+@@ -11,7 +11,7 @@ MOSTLYCLEANFILES=libapparmor_wrap.c LibAppArmor.pm
+ LibAppArmor.pm: libapparmor_wrap.c
+ 
+ Makefile.perl: Makefile.PL LibAppArmor.pm
+-	$(PERL) $< PREFIX=$(prefix) MAKEFILE=$@
++	$(PERL) $< PREFIX=$(prefix) MAKEFILE=$@ NO_PERLLOCAL=1
+ 	sed -ie 's/LD_RUN_PATH="\x24(LD_RUN_PATH)"//g' Makefile.perl
+ 	sed -ie 's/^LD_RUN_PATH.*//g' Makefile.perl
+ 
+-- 
+2.17.1
+
-- 
2.17.1


