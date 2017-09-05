Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D172E00CC1; Mon,  4 Sep 2017 23:00:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1D23E00CA5
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 23:00:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8560GxP010015
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 4 Sep 2017 23:00:16 -0700
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 4 Sep 2017 23:00:15 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 4 Sep 2017 22:59:57 -0700
Message-ID: <20170905055958.54697-20-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <20170905055958.54697-1-wenzong.fan@windriver.com>
References: <20170905055958.54697-1-wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 20/21] packagegroup-*: sync package names
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
X-List-Received-Date: Tue, 05 Sep 2017 06:00:18 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Some new packages added after SELinux uprev to 2.7, sync the package
names accordingly:

  policycoreutils-audit2allow      -> selinux-python-audit2allow
  policycoreutils-chcat            -> selinux-python-chcat
  policycoreutils-python           -> selinux-python
  policycoreutils-semanage         -> selinux-python-semanage
  policycoreutils-sandbox          -> selinux-sandbox
  policycoreutils-sepolgen-ifgen   -> selinux-python-sepolgen-ifgen
  policycoreutils-sepolicy         -> selinux-python-sepolicy,
                                      selinux-dbus
  policycoreutils-semodule-deps    -> semodule-utils-semodule-deps
  policycoreutils-semodule-expand  -> semodule-utils-semodule-expand
  policycoreutils-semodule-link    -> semodule-utils-semodule-link
  policycoreutils-semodule-package -> semodule-utils-semodule-package
  system-config-selinux            -> selinux-gui
  sepolgen                         -> selinux-python-sepolgen

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../packagegroups/packagegroup-core-selinux.bb     |  2 +-
 .../packagegroup-selinux-policycoreutils.bb        | 25 +++++++++++-----------
 2 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/recipes-security/packagegroups/packagegroup-core-selinux.bb b/recipes-security/packagegroups/packagegroup-core-selinux.bb
index 128dfba..fd501d6 100644
--- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
+++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
@@ -17,7 +17,7 @@ RDEPENDS_${PN} = " \
 	libselinux-bin \
 	libsemanage \
 	checkpolicy \
-	sepolgen \
+	selinux-python-sepolgen \
 	packagegroup-selinux-policycoreutils \
 	setools \
 	setools-console \
diff --git a/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb b/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb
index b566134..e1ddee6 100644
--- a/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb
+++ b/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb
@@ -12,27 +12,28 @@ PACKAGES = "\
 ALLOW_EMPTY_${PN} = "1"
 
 RDEPENDS_${PN} = "\
-	policycoreutils-audit2allow \
-	policycoreutils-chcat \
 	policycoreutils-fixfiles \
 	policycoreutils-genhomedircon \
 	policycoreutils-loadpolicy \
 	policycoreutils-newrole \
-	policycoreutils-python \
 	policycoreutils-runinit \
-	policycoreutils-sandbox \
 	policycoreutils-secon \
-	policycoreutils-semanage \
 	policycoreutils-semodule \
-	policycoreutils-semodule-deps \
-	policycoreutils-semodule-expand \
-	policycoreutils-semodule-link \
-	policycoreutils-semodule-package \
-	policycoreutils-sepolgen-ifgen \
-	policycoreutils-sepolicy \
 	policycoreutils-sestatus \
 	policycoreutils-setfiles \
 	policycoreutils-setsebool \
 	policycoreutils-hll \
-	system-config-selinux \
+	semodule-utils-semodule-deps \
+	semodule-utils-semodule-expand \
+	semodule-utils-semodule-link \
+	semodule-utils-semodule-package \
+	selinux-python-audit2allow \
+	selinux-python-sepolgen-ifgen \
+	selinux-python-semanage \
+	selinux-python-sepolicy \
+	selinux-python-chcat \
+	selinux-python \
+	selinux-sandbox \
+	selinux-dbus \
+	selinux-gui \
 "
-- 
2.13.0


