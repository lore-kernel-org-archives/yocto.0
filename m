Return-Path: <sds@tycho.nsa.gov>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2CFAE008DB; Mon,  7 Mar 2016 12:54:13 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B974EE00973
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 12:54:10 -0800 (PST)
X-TM-IMSS-Message-ID: <5220cf6e00020aa6@nsa.gov>
Received: from tarius.tycho.ncsc.mil ([144.51.242.1]) by nsa.gov
	([10.208.42.194]) with ESMTP (TREND IMSS SMTP Service 7.1) id
	5220cf6e00020aa6 ; Mon, 7 Mar 2016 15:57:10 -0500
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
	by tarius.tycho.ncsc.mil (8.14.4/8.14.4) with ESMTP id
	u27KrMGM003618; Mon, 7 Mar 2016 15:53:57 -0500
From: Stephen Smalley <sds@tycho.nsa.gov>
To: flihp@twobit.us
Date: Mon,  7 Mar 2016 15:52:48 -0500
Message-Id: <1457383972-6283-9-git-send-email-sds@tycho.nsa.gov>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
References: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
X-TM-AS-MML: disable
Cc: yocto@yoctoproject.org
Subject: [PATCH 09/13] Delete include files for 20140506 and 20150202 releases.
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

These include files are no longer used by any .bb files.

Signed-off-by: Stephen Smalley <sds@tycho.nsa.gov>
---
 recipes-security/selinux/selinux_20140506.inc | 5 -----
 recipes-security/selinux/selinux_20150202.inc | 5 -----
 2 files changed, 10 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux_20140506.inc
 delete mode 100644 recipes-security/selinux/selinux_20150202.inc

diff --git a/recipes-security/selinux/selinux_20140506.inc b/recipes-security/selinux/selinux_20140506.inc
deleted file mode 100644
index beaaff0..0000000
--- a/recipes-security/selinux/selinux_20140506.inc
+++ /dev/null
@@ -1,5 +0,0 @@
-SELINUX_RELEASE = "20140506"
-
-SRC_URI = "https://raw.githubusercontent.com/wiki/SELinuxProject/selinux/files/releases/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz"
-
-include selinux_common.inc
diff --git a/recipes-security/selinux/selinux_20150202.inc b/recipes-security/selinux/selinux_20150202.inc
deleted file mode 100644
index b8d7982..0000000
--- a/recipes-security/selinux/selinux_20150202.inc
+++ /dev/null
@@ -1,5 +0,0 @@
-SELINUX_RELEASE = "20150202"
-
-SRC_URI = "https://raw.githubusercontent.com/wiki/SELinuxProject/selinux/files/releases/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz"
-
-include selinux_common.inc
-- 
2.4.3


