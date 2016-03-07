Return-Path: <sds@tycho.nsa.gov>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7336CE008B4; Mon,  7 Mar 2016 12:54:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [63.239.67.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from emvm-gh1-uea09.nsa.gov (emvm-gh1-uea09.nsa.gov [63.239.67.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B97E0E00C27
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 12:54:08 -0800 (PST)
X-TM-IMSS-Message-ID: <5220c21600020aa5@nsa.gov>
Received: from tarius.tycho.ncsc.mil ([144.51.242.1]) by nsa.gov
	([10.208.42.194]) with ESMTP (TREND IMSS SMTP Service 7.1) id
	5220c21600020aa5 ; Mon, 7 Mar 2016 15:57:06 -0500
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
	by tarius.tycho.ncsc.mil (8.14.4/8.14.4) with ESMTP id
	u27KrMGL003618; Mon, 7 Mar 2016 15:53:54 -0500
From: Stephen Smalley <sds@tycho.nsa.gov>
To: flihp@twobit.us
Date: Mon,  7 Mar 2016 15:52:47 -0500
Message-Id: <1457383972-6283-8-git-send-email-sds@tycho.nsa.gov>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
References: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
X-TM-AS-MML: disable
Cc: yocto@yoctoproject.org
Subject: [PATCH 08/13] secilc: Add recipe
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
X-List-Received-Date: Mon, 07 Mar 2016 20:54:13 -0000

SELinux Common Intermediate Language (CIL) policy compiler

Signed-off-by: Stephen Smalley <sds@tycho.nsa.gov>
---
 recipes-security/selinux/secilc.inc    | 11 +++++++++++
 recipes-security/selinux/secilc_2.5.bb |  7 +++++++
 2 files changed, 18 insertions(+)
 create mode 100644 recipes-security/selinux/secilc.inc
 create mode 100644 recipes-security/selinux/secilc_2.5.bb

diff --git a/recipes-security/selinux/secilc.inc b/recipes-security/selinux/secilc.inc
new file mode 100644
index 0000000..e263f11
--- /dev/null
+++ b/recipes-security/selinux/secilc.inc
@@ -0,0 +1,11 @@
+SUMMARY = "SELinux Common Intermediate Language (CIL) compiler"
+DESCRIPTION = "\
+This package contains secilc, the SELinux Common Intermediate \
+Language (CIL) compiler."
+
+SECTION = "base"
+LICENSE = "BSD"
+
+DEPENDS += "libsepol xmlto-native"
+
+BBCLASSEXTEND = "native"
diff --git a/recipes-security/selinux/secilc_2.5.bb b/recipes-security/selinux/secilc_2.5.bb
new file mode 100644
index 0000000..56e0086
--- /dev/null
+++ b/recipes-security/selinux/secilc_2.5.bb
@@ -0,0 +1,7 @@
+include selinux_20160223.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=5fb82e8deb357d4e5fd8f3fed01d2f38"
+
+SRC_URI[md5sum] = "af73267cccd0e46cb455d5702565cd41"
+SRC_URI[sha256sum] = "4303d911c06ee5c207e00f778ca786c1a6efa2554a562f5d014dbc0d2f4cc4a4"
-- 
2.4.3


