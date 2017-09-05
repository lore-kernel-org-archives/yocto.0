Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B769EE00C94; Tue,  5 Sep 2017 02:07:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B77BE00C88
	for <yocto@yoctoproject.org>; Tue,  5 Sep 2017 02:07:18 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v8597Ig1007158
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 5 Sep 2017 02:07:18 -0700 (PDT)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Tue, 5 Sep 2017 02:07:17 -0700
From: <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 5 Sep 2017 16:54:42 +0800
Message-ID: <20170905085442.2038-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.14.1
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] attr: fix ptest failures when selinux enabled
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
X-List-Received-Date: Tue, 05 Sep 2017 09:07:19 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

When selinux is enabled, a file has a default attribute
"security.selinux" and the output of getfattr shows:

  # file: here
  security.selinux="system_u:object_r:lib_t:s0"

That always causes more output of command getfattr than expected.

Filter out selinux related attribute info, and if the file has only
selinux attribute info, remove its whole output.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 .../fix-ptest-failures-when-selinux-enabled.patch  | 41 ++++++++++++++++++++++
 recipes-support/attr/attr_%.bbappend               |  5 +++
 2 files changed, 46 insertions(+)
 create mode 100644 recipes-support/attr/attr/fix-ptest-failures-when-selinux-enabled.patch
 create mode 100644 recipes-support/attr/attr_%.bbappend

diff --git a/recipes-support/attr/attr/fix-ptest-failures-when-selinux-enabled.patch b/recipes-support/attr/attr/fix-ptest-failures-when-selinux-enabled.patch
new file mode 100644
index 0000000..e1eefa7
--- /dev/null
+++ b/recipes-support/attr/attr/fix-ptest-failures-when-selinux-enabled.patch
@@ -0,0 +1,41 @@
+Upstream-Status: Pending
+
+When enable selinux, file has a default attribute:
+
+# file: here
+security.selinux="system_u:object_r:lib_t:s0"
+
+That cause there is always more output than expected.
+
+Filter out selinux related attribute info to make ptest pass.
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+---
+diff --git a/test/run b/test/run
+index cf15252..945741e 100755
+--- a/test/run
++++ b/test/run
+@@ -132,6 +132,23 @@ sub process_test($$$$) {
+        print "[$prog_line] \$ ", join(' ',
+              map { s/\s/\\$&/g; $_ } @$p), " -- ";
+        my $result = exec_test($prog, $in);
++
++       # filter selinux related attributes info
++       my @strip1;
++       my @strip2;
++       foreach (@$result) {
++           unless (/security.selinux=.*\n/) {
++               push @strip1, $_;
++           }
++       }
++       for (my $i = 0; $i <= $#strip1; $i++) {
++           if ($strip1[$i] =~ /^# file:.*/ && $strip1[$i+1] =~ /^\n$/) {
++               $i++;
++           } else {
++               push @strip2, $strip1[$i];
++           }
++       }
++       $result = \@strip2;
+        my @good = ();
+        my $nmax = (@$out > @$result) ? @$out : @$result;
+        for (my $n=0; $n < $nmax; $n++) {
diff --git a/recipes-support/attr/attr_%.bbappend b/recipes-support/attr/attr_%.bbappend
new file mode 100644
index 0000000..6be8191
--- /dev/null
+++ b/recipes-support/attr/attr_%.bbappend
@@ -0,0 +1,5 @@
+inherit selinux
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"
+
+SRC_URI += "${@target_selinux(d, 'file://fix-ptest-failures-when-selinux-enabled.patch')}"
-- 
2.14.1


