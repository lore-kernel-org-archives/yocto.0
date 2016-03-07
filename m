Return-Path: <sds@tycho.nsa.gov>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F043E00BA0; Mon,  7 Mar 2016 12:54:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [63.239.67.10 listed in list.dnswl.org]
Received: from emvm-gh1-uea09.nsa.gov (emvm-gh1-uea09.nsa.gov [63.239.67.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D28D1E00B9C
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 12:53:56 -0800 (PST)
X-TM-IMSS-Message-ID: <522094ee00020a9c@nsa.gov>
Received: from tarius.tycho.ncsc.mil ([144.51.242.1]) by nsa.gov
	([10.208.42.194]) with ESMTP (TREND IMSS SMTP Service 7.1) id
	522094ee00020a9c ; Mon, 7 Mar 2016 15:56:55 -0500
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
	by tarius.tycho.ncsc.mil (8.14.4/8.14.4) with ESMTP id
	u27KrMGF003618; Mon, 7 Mar 2016 15:53:43 -0500
From: Stephen Smalley <sds@tycho.nsa.gov>
To: flihp@twobit.us
Date: Mon,  7 Mar 2016 15:52:41 -0500
Message-Id: <1457383972-6283-2-git-send-email-sds@tycho.nsa.gov>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
References: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
X-TM-AS-MML: disable
Cc: yocto@yoctoproject.org
Subject: [PATCH 02/13] libsepol: uprev to 2.5 (release 20160223)
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
X-List-Received-Date: Mon, 07 Mar 2016 20:54:06 -0000

Signed-off-by: Stephen Smalley <sds@tycho.nsa.gov>
---
 recipes-security/selinux/libsepol_2.4.bb | 9 ---------
 recipes-security/selinux/libsepol_2.5.bb | 9 +++++++++
 2 files changed, 9 insertions(+), 9 deletions(-)
 delete mode 100644 recipes-security/selinux/libsepol_2.4.bb
 create mode 100644 recipes-security/selinux/libsepol_2.5.bb

diff --git a/recipes-security/selinux/libsepol_2.4.bb b/recipes-security/selinux/libsepol_2.4.bb
deleted file mode 100644
index ef835b3..0000000
--- a/recipes-security/selinux/libsepol_2.4.bb
+++ /dev/null
@@ -1,9 +0,0 @@
-include selinux_20150202.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
-
-SRC_URI[md5sum] = "8a75d27acf17af1911797e6b12986b50"
-SRC_URI[sha256sum] = "299015d59932404c6b69d365fdecffe5c0e2f9c44e08b47286a4bfc02ee49659"
-
-SRC_URI += "file://0001-src-Makefile-fix-includedir-in-libsepol.pc.patch"
diff --git a/recipes-security/selinux/libsepol_2.5.bb b/recipes-security/selinux/libsepol_2.5.bb
new file mode 100644
index 0000000..f96b59a
--- /dev/null
+++ b/recipes-security/selinux/libsepol_2.5.bb
@@ -0,0 +1,9 @@
+include selinux_20160223.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
+
+SRC_URI[md5sum] = "5b18e0e1e50bdf648c2c42241c42052c"
+SRC_URI[sha256sum] = "2bdeec56d0a08b082b93b40703b4b3329cc5562152f7254d8f6ef6b56afe850a"
+
+SRC_URI += "file://0001-src-Makefile-fix-includedir-in-libsepol.pc.patch"
-- 
2.4.3


