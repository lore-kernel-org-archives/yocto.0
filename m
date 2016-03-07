Return-Path: <sds@tycho.nsa.gov>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40648E0083D; Mon,  7 Mar 2016 12:53:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [63.239.67.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from emvm-gh1-uea08.nsa.gov (emvm-gh1-uea08.nsa.gov [63.239.67.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46E09E0077F
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 12:53:34 -0800 (PST)
X-TM-IMSS-Message-ID: <75f28dc90008a497@nsa.gov>
Received: from tarius.tycho.ncsc.mil ([144.51.242.1]) by nsa.gov
	([10.208.42.193]) with ESMTP (TREND IMSS SMTP Service 7.1) id
	75f28dc90008a497 ; Mon, 7 Mar 2016 15:52:23 -0500
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
	by tarius.tycho.ncsc.mil (8.14.4/8.14.4) with ESMTP id
	u27KrMGE003618; Mon, 7 Mar 2016 15:53:22 -0500
From: Stephen Smalley <sds@tycho.nsa.gov>
To: flihp@twobit.us
Date: Mon,  7 Mar 2016 15:52:40 -0500
Message-Id: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
X-Mailer: git-send-email 2.4.3
X-TM-AS-MML: disable
Cc: yocto@yoctoproject.org
Subject: [PATCH 01/13] Add include file for the 20160223 SELinux userspace release.
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
X-List-Received-Date: Mon, 07 Mar 2016 20:53:36 -0000

Signed-off-by: Stephen Smalley <sds@tycho.nsa.gov>
---
 recipes-security/selinux/selinux_20160223.inc | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 recipes-security/selinux/selinux_20160223.inc

diff --git a/recipes-security/selinux/selinux_20160223.inc b/recipes-security/selinux/selinux_20160223.inc
new file mode 100644
index 0000000..4c1ef6b
--- /dev/null
+++ b/recipes-security/selinux/selinux_20160223.inc
@@ -0,0 +1,5 @@
+SELINUX_RELEASE = "20160223"
+
+SRC_URI = "https://raw.githubusercontent.com/wiki/SELinuxProject/selinux/files/releases/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz"
+
+include selinux_common.inc
-- 
2.4.3


