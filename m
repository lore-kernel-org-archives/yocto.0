Return-Path: <sds@tycho.nsa.gov>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83614E008DB; Mon,  7 Mar 2016 12:54:13 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B73B7E00803
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 12:54:04 -0800 (PST)
X-TM-IMSS-Message-ID: <5220b36600020aa0@nsa.gov>
Received: from tarius.tycho.ncsc.mil ([144.51.242.1]) by nsa.gov
	([10.208.42.194]) with ESMTP (TREND IMSS SMTP Service 7.1) id
	5220b36600020aa0 ; Mon, 7 Mar 2016 15:57:03 -0500
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
	by tarius.tycho.ncsc.mil (8.14.4/8.14.4) with ESMTP id
	u27KrMGI003618; Mon, 7 Mar 2016 15:53:51 -0500
From: Stephen Smalley <sds@tycho.nsa.gov>
To: flihp@twobit.us
Date: Mon,  7 Mar 2016 15:52:44 -0500
Message-Id: <1457383972-6283-5-git-send-email-sds@tycho.nsa.gov>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
References: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
X-TM-AS-MML: disable
Cc: yocto@yoctoproject.org
Subject: [PATCH 05/13] checkpolicy: uprev to 2.5 (20160223)
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

Signed-off-by: Stephen Smalley <sds@tycho.nsa.gov>
---
 recipes-security/selinux/checkpolicy.inc    | 2 +-
 recipes-security/selinux/checkpolicy_2.4.bb | 7 -------
 recipes-security/selinux/checkpolicy_2.5.bb | 7 +++++++
 3 files changed, 8 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-security/selinux/checkpolicy_2.4.bb
 create mode 100644 recipes-security/selinux/checkpolicy_2.5.bb

diff --git a/recipes-security/selinux/checkpolicy.inc b/recipes-security/selinux/checkpolicy.inc
index e0c7377..efcd821 100644
--- a/recipes-security/selinux/checkpolicy.inc
+++ b/recipes-security/selinux/checkpolicy.inc
@@ -9,7 +9,7 @@ encapsulated/abstracted by a proper shared library interface."
 SECTION = "base"
 LICENSE = "GPLv2+"
 
-DEPENDS += "libsepol libselinux bison-native flex-native"
+DEPENDS += "libsepol bison-native flex-native"
 
 SRC_URI += "file://checkpolicy-Do-not-link-against-libfl.patch"
 
diff --git a/recipes-security/selinux/checkpolicy_2.4.bb b/recipes-security/selinux/checkpolicy_2.4.bb
deleted file mode 100644
index 68fc5a1..0000000
--- a/recipes-security/selinux/checkpolicy_2.4.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20150202.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "4d35189dcfdcf9e3b8b8466f3f706756"
-SRC_URI[sha256sum] = "9bbdac28a88de4c405c769730863f3adcd266adbfa45881a5de67e3a4895bcd4"
diff --git a/recipes-security/selinux/checkpolicy_2.5.bb b/recipes-security/selinux/checkpolicy_2.5.bb
new file mode 100644
index 0000000..c603d52
--- /dev/null
+++ b/recipes-security/selinux/checkpolicy_2.5.bb
@@ -0,0 +1,7 @@
+include selinux_20160223.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "a8099a2a36de32327abf681159027c58"
+SRC_URI[sha256sum] = "33af9f3eb19135a7e6536ecd3fbb9686323000016cd51eb88346346ed7546001"
\ No newline at end of file
-- 
2.4.3


