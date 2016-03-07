Return-Path: <sds@tycho.nsa.gov>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60322E00BA0; Mon,  7 Mar 2016 12:54:13 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC29CE00894
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 12:54:05 -0800 (PST)
X-TM-IMSS-Message-ID: <5220bde100020aa3@nsa.gov>
Received: from tarius.tycho.ncsc.mil ([144.51.242.1]) by nsa.gov
	([10.208.42.194]) with ESMTP (TREND IMSS SMTP Service 7.1) id
	5220bde100020aa3 ; Mon, 7 Mar 2016 15:57:05 -0500
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
	by tarius.tycho.ncsc.mil (8.14.4/8.14.4) with ESMTP id
	u27KrMGK003618; Mon, 7 Mar 2016 15:53:53 -0500
From: Stephen Smalley <sds@tycho.nsa.gov>
To: flihp@twobit.us
Date: Mon,  7 Mar 2016 15:52:46 -0500
Message-Id: <1457383972-6283-7-git-send-email-sds@tycho.nsa.gov>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
References: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
X-TM-AS-MML: disable
Cc: yocto@yoctoproject.org
Subject: [PATCH 07/13] sepolgen: uprev to 1.2.3 (20160223)
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
 recipes-security/selinux/sepolgen_1.2.1.bb | 7 -------
 recipes-security/selinux/sepolgen_1.2.3.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/sepolgen_1.2.1.bb
 create mode 100644 recipes-security/selinux/sepolgen_1.2.3.bb

diff --git a/recipes-security/selinux/sepolgen_1.2.1.bb b/recipes-security/selinux/sepolgen_1.2.1.bb
deleted file mode 100644
index c636ac3..0000000
--- a/recipes-security/selinux/sepolgen_1.2.1.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20140506.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "ce662a83188bc3a9b40c15792fcaf2c8"
-SRC_URI[sha256sum] = "438c246bdc6b3cf1b12116831f4c601aaae6e93decb007dddab212a3c88781b0"
diff --git a/recipes-security/selinux/sepolgen_1.2.3.bb b/recipes-security/selinux/sepolgen_1.2.3.bb
new file mode 100644
index 0000000..2d30847
--- /dev/null
+++ b/recipes-security/selinux/sepolgen_1.2.3.bb
@@ -0,0 +1,7 @@
+include selinux_20160223.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "d17b4072ed14d1f8d94ffd667ddc2864"
+SRC_URI[sha256sum] = "3ee1745257fa55301070219c77978c7c9eeb9aa595ce0b6b29c3baa4687d5cf0"
-- 
2.4.3


