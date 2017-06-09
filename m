Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FFA8E00C12; Thu,  8 Jun 2017 18:10:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60F87E00BBF
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 18:10:11 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v591AAEW015561
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 8 Jun 2017 18:10:10 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Thu, 8 Jun 2017 18:10:10 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 9 Jun 2017 09:10:03 +0800
Message-ID: <56859464db62fa1deafa2f163107bfe752e04397.1496970398.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1496970398.git.jackie.huang@windriver.com>
References: <cover.1496970398.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 3/4 v2] resource-agents: fix builds error when S != B
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
X-List-Received-Date: Fri, 09 Jun 2017 01:10:14 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

It fails to find fs.sh.in when srddir and builddir are not the same:

make[5]: Entering directory '/path/to/builddir/rgmanager/src/resources'
cat fs.sh.in | sed \
    -e 's#@''LOGDIR@#/var/log/cluster#g' \
    > fs.sh.out
    cat: fs.sh.in: No such file or directorychmod +x fs.sh.out
    mv fs.sh.out fs.sh

Add abs_srcdir to fix this.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 ...uilds-when-srcdir-and-builddir-are-sepera.patch | 39 ++++++++++++++++++++++
 .../resource-agents_3.9.7.bb                       |  1 +
 2 files changed, 40 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fs.sh-fix-builds-when-srcdir-and-builddir-are-sepera.patch

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fs.sh-fix-builds-when-srcdir-and-builddir-are-sepera.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fs.sh-fix-builds-when-srcdir-and-builddir-are-sepera.patch
new file mode 100644
index 0000000..3247927
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fs.sh-fix-builds-when-srcdir-and-builddir-are-sepera.patch
@@ -0,0 +1,39 @@
+From 5b7a84dbb9d06112c4b2804223163d91ba8ab786 Mon Sep 17 00:00:00 2001
+From: Jackie Huang <jackie.huang@windriver.com>
+Date: Thu, 1 Jun 2017 10:34:38 +0800
+Subject: [PATCH] fs.sh: fix builds when srcdir and builddir are seperated
+
+It fails to find fs.sh.in when srddir and builddir are not the same:
+
+make[5]: Entering directory '/path/to/builddir/rgmanager/src/resources'
+cat fs.sh.in | sed \
+    -e 's#@''LOGDIR@#/var/log/cluster#g' \
+    > fs.sh.out
+    cat: fs.sh.in: No such file or directorychmod +x fs.sh.out
+    mv fs.sh.out fs.sh
+
+Add abs_srcdir to fix this.
+
+Upstream-Status: Submitted [https://github.com/ClusterLabs/resource-agents/pull/986]
+
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+---
+ rgmanager/src/resources/Makefile.am | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/rgmanager/src/resources/Makefile.am b/rgmanager/src/resources/Makefile.am
+index de88c69..30b3be9 100644
+--- a/rgmanager/src/resources/Makefile.am
++++ b/rgmanager/src/resources/Makefile.am
+@@ -68,7 +68,7 @@ rngdir			= ${CLUSTERDATA}/relaxng
+ rng_DATA		= $(DTD) $(XSL) $(RESRNG)
+ 
+ $(TARGET):
+-	cat $@.in | sed \
++	cat $(abs_srcdir)/$@.in | sed \
+ 		-e 's#@''LOGDIR@#${LOGDIR}#g' \
+ 	> $@.out
+ 	chmod +x $@.out
+-- 
+2.11.0
+
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
index 2d2dd88..2f36b1b 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
@@ -19,6 +19,7 @@ SRC_URI = "https://codeload.github.com/ClusterLabs/resource-agents/tar.gz/v${PV}
            file://02-set-OCF_ROOT_DIR-to-libdir-ocf.patch \
            file://03-fix-header-defs-lookup.patch \
            file://fix-install-sh-not-found.patch \
+           file://fs.sh-fix-builds-when-srcdir-and-builddir-are-sepera.patch \
           "
 
 SRC_URI[md5sum] = "c59096b1bacc704e8a5a285f15729109"
-- 
2.11.0


