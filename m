Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DE97E0059A
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 14:26:37 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Feb 2012 14:26:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="102858504"
Received: from unknown (HELO localhost) ([10.255.14.201])
	by orsmga001.jf.intel.com with ESMTP; 01 Feb 2012 14:26:36 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Tom Zanussi <tom.zanussi@intel.com>, Yocto Project <yocto@yoctoproject.org>
Date: Wed,  1 Feb 2012 14:26:03 -0800
Message-Id: <6c598896584af47478c75ec08f3b4e8fd954b5fb.1328135056.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
References: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1328135056.git.dvhart@linux.intel.com>
References: <cover.1328135056.git.dvhart@linux.intel.com>
Subject: [pull-sys940x 2/4] ranpwd: Add ranpwd recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 Feb 2012 22:26:37 -0000

ranpwd is used to generate random strings of various types, including
passwords, UUIDs, and MAC addresses.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb |   23 ++++++++++++++++++++
 1 files changed, 23 insertions(+), 0 deletions(-)
 create mode 100644 meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb

diff --git a/meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb b/meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb
new file mode 100644
index 0000000..66fcc26
--- /dev/null
+++ b/meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb
@@ -0,0 +1,23 @@
+DESCRIPTION = "Random password generator"
+#SECTION = "utilities"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://ranpwd.c;beginline=1;endline=11;md5=0e8585e19117526efedfaeb50c345d7a"
+PR = "r0"
+
+inherit autotools
+
+SRC_URI = "git://git.zytor.com/utils/ranpwd.git"
+SRCREV = "b62aab579e288715b82d5575befaa2b8ff210c2b"
+
+S=${WORKDIR}/git
+
+do_configure_prepend () {
+	if [ ! -e acinclude.m4 -a -e aclocal.m4 ]; then
+		cp aclocal.m4 acinclude.m4
+	fi
+}
+
+do_install() {
+	install -d ${D}/${bindir}
+	install -m 0755 ${S}/ranpwd ${D}/${bindir}/ranpwd
+}
-- 
1.7.6.5


