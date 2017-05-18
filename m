Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEDA5E00B3D; Thu, 18 May 2017 00:27:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C62CE00B2F
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 00:27:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v4I7R7eA029970
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 00:27:07 -0700 (PDT)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Thu, 18 May 2017 00:27:06 -0700
From: <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 18 May 2017 15:22:37 +0800
Message-ID: <20170518072237.9271-2-kai.kang@windriver.com>
X-Mailer: git-send-email 2.10.1
In-Reply-To: <20170518072237.9271-1-kai.kang@windriver.com>
References: <20170518072237.9271-1-kai.kang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH] mtree: add recipe
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
X-List-Received-Date: Thu, 18 May 2017 07:27:09 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

Add recipe mtree port from BSD. Add a patch to handle null return
from getlogin.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 recipes-security/mtree/mtree/mtree-getlogin.patch | 49 +++++++++++++++++++++++
 recipes-security/mtree/mtree_1.0.3.bb             | 22 ++++++++++
 2 files changed, 71 insertions(+)
 create mode 100644 recipes-security/mtree/mtree/mtree-getlogin.patch
 create mode 100644 recipes-security/mtree/mtree_1.0.3.bb

diff --git a/recipes-security/mtree/mtree/mtree-getlogin.patch b/recipes-security/mtree/mtree/mtree-getlogin.patch
new file mode 100644
index 0000000..35b0f8d
--- /dev/null
+++ b/recipes-security/mtree/mtree/mtree-getlogin.patch
@@ -0,0 +1,49 @@
+Upstream-Status: Pending
+
+Handle NULL return from getlogin.
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+---
+diff --git a/create.c b/create.c
+index e2d24d3..583af9b 100644
+--- a/create.c
++++ b/create.c
+@@ -77,6 +77,29 @@ static void     output(int, int *, const char *, ...) __attribute__ ((__format__
+ static int      statd(FTS *, FTSENT *, uid_t *, gid_t *, mode_t *, u_long *);
+ static void     statf(int, FTSENT *);
+ 
++char *my_getlogin()
++{
++        const char *s = getlogin();
++        if (s && *s)
++                return s;
++
++        struct passwd *p = getpwuid(geteuid());
++        char *ss;
++        if (p && p->pw_name) {
++                if (asprintf(&ss,"(no controlling terminal) %s",p->pw_name) < 0) {
++                        perror("asprintf");
++                        return NULL;
++                }
++        } else {
++                if (asprintf(&ss,"(no controlling terminal) #%d",geteuid()) < 0) {
++                        perror("asprintf");
++                        return NULL;
++            }
++        }
++
++        return ss;
++}
++
+ void
+ cwalk(void)
+ {
+@@ -92,7 +115,7 @@ cwalk(void)
+                 (void)gethostname(host, sizeof(host));
+                 (void)printf(
+                     "#\t   user: %s\n#\tmachine: %s\n",
+-                    getlogin(), host);
++                    my_getlogin(), host);
+                 (void)printf(
+                     "#\t   tree: %s\n#\t   date: %s",
+                     fullpath, ctime(&cl));
diff --git a/recipes-security/mtree/mtree_1.0.3.bb b/recipes-security/mtree/mtree_1.0.3.bb
new file mode 100644
index 0000000..17d1cf7
--- /dev/null
+++ b/recipes-security/mtree/mtree_1.0.3.bb
@@ -0,0 +1,22 @@
+SUMMARY = "BSD directory hierarchy mapping tool"
+DESCRIPTION = "mtree compares a file hierarchy against a specification, creates a specification for a file hierarchy, or modifies a specification."
+
+SECTION = "utils"
+
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://COPYING;md5=bb19ea4eac951288efda4010c5c669a8"
+
+SRC_URI = "git://github.com/archiecobbs/mtree-port.git \
+           file://mtree-getlogin.patch \
+           "
+SRCREV = "172e1827c381ff3851cc99edb5fd89443cf260e9"
+
+S = "${WORKDIR}/git"
+
+DEPENDS = "openssl"
+
+inherit autotools
+
+do_configure_prepend() {
+    touch ${S}/NEWS ${S}/AUTHORS ${S}/ChangeLog
+}
-- 
2.10.1


