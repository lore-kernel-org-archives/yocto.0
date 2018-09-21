Return-Path: <okaya@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D736AE00ADF; Fri, 21 Sep 2018 15:12:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.145.29.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3247E00ABE
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 15:12:36 -0700 (PDT)
Received: from
	sinanubuntu1604.mkjiurmyylmellclgttazegk5f.bx.internal.cloudapp.net
	(unknown [137.117.33.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8987721476;
	Fri, 21 Sep 2018 22:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1537567956;
	bh=H866h8ulDMFhVpe+vAf/sEH7EL8nJgpEgbNV8NjC4vs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=vc7+RHjlzk5eZHIbulcRKfeIg5dCLiAcQcpm61T/ImaZpqfGw6Hm+SRhJsRA3pQVD
	y/yWxz+RiMkW6qwhUe3eSGGOxfQ6sx+lOom/fScZURrlF4pv8CvteuFkz06P8m1lpl
	v4l3c96a2stwtD6iZl2xjMHZj+0MZ2RGwZlQJafk=
From: Sinan Kaya <okaya@kernel.org>
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2018 22:12:33 +0000
Message-Id: <20180921221234.23154-2-okaya@kernel.org>
X-Mailer: git-send-email 2.19.0
In-Reply-To: <20180921221234.23154-1-okaya@kernel.org>
References: <20180921221234.23154-1-okaya@kernel.org>
MIME-Version: 1.0
Subject: [PATCH v1 2/3] libpng: CVE-2018-13785
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
X-List-Received-Date: Fri, 21 Sep 2018 22:12:37 -0000
Content-Transfer-Encoding: 8bit

* CVE-2018-13785
In libpng 1.6.34, a wrong calculation of row_factor in the
png_check_chunk_length function (pngrutil.c) may trigger an
integer overflow and resultant divide-by-zero while processing
a crafted PNG file, leading to a denial of service.

(cherry picked from 8a05766cb74af05c04c53e6c9d60c13fc4d59bf2)

Affects libpng <= 1.6.34

CVE: CVE-2018-13785
Upstream-Status: Backport [https://github.com/glennrp/libpng/commit/8a05766cb74af05c04c53e6c9d60c13fc4d59bf2]
Ref: https://access.redhat.com/security/cve/cve-2018-13785
Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 .../libpng/files/CVE-2018-13785.patch         | 35 +++++++++++++++++++
 .../libpng/libpng_1.6.34.bb                   |  4 ++-
 2 files changed, 38 insertions(+), 1 deletion(-)
 create mode 100644 meta/recipes-multimedia/libpng/files/CVE-2018-13785.patch

diff --git a/meta/recipes-multimedia/libpng/files/CVE-2018-13785.patch b/meta/recipes-multimedia/libpng/files/CVE-2018-13785.patch
new file mode 100644
index 0000000000..3ffbe0813e
--- /dev/null
+++ b/meta/recipes-multimedia/libpng/files/CVE-2018-13785.patch
@@ -0,0 +1,35 @@
+From 8a05766cb74af05c04c53e6c9d60c13fc4d59bf2 Mon Sep 17 00:00:00 2001
+From: Cosmin Truta <ctruta@gmail.com>
+Date: Sun, 17 Jun 2018 22:56:29 -0400
+Subject: [PATCH] [libpng16] Fix the calculation of row_factor in
+ png_check_chunk_length
+
+(Bug report by Thuan Pham, SourceForge issue #278)
+---
+ pngrutil.c | 9 ++++++---
+ 1 file changed, 6 insertions(+), 3 deletions(-)
+
+diff --git a/pngrutil.c b/pngrutil.c
+index 95571b517..5ba995abf 100644
+--- a/pngrutil.c
++++ b/pngrutil.c
+@@ -3167,10 +3167,13 @@ png_check_chunk_length(png_const_structrp png_ptr, const png_uint_32 length)
+    {
+       png_alloc_size_t idat_limit = PNG_UINT_31_MAX;
+       size_t row_factor =
+-         (png_ptr->width * png_ptr->channels * (png_ptr->bit_depth > 8? 2: 1)
+-          + 1 + (png_ptr->interlaced? 6: 0));
++         (size_t)png_ptr->width
++         * (size_t)png_ptr->channels
++         * (png_ptr->bit_depth > 8? 2: 1)
++         + 1
++         + (png_ptr->interlaced? 6: 0);
+       if (png_ptr->height > PNG_UINT_32_MAX/row_factor)
+-         idat_limit=PNG_UINT_31_MAX;
++         idat_limit = PNG_UINT_31_MAX;
+       else
+          idat_limit = png_ptr->height * row_factor;
+       row_factor = row_factor > 32566? 32566 : row_factor;
+-- 
+2.19.0
+
diff --git a/meta/recipes-multimedia/libpng/libpng_1.6.34.bb b/meta/recipes-multimedia/libpng/libpng_1.6.34.bb
index e52d032289..3877d6cbf0 100644
--- a/meta/recipes-multimedia/libpng/libpng_1.6.34.bb
+++ b/meta/recipes-multimedia/libpng/libpng_1.6.34.bb
@@ -8,7 +8,9 @@ DEPENDS = "zlib"
 
 LIBV = "16"
 
-SRC_URI = "${SOURCEFORGE_MIRROR}/project/${BPN}/${BPN}${LIBV}/${PV}/${BP}.tar.xz"
+SRC_URI = "${SOURCEFORGE_MIRROR}/project/${BPN}/${BPN}${LIBV}/${PV}/${BP}.tar.xz \
+           file://CVE-2018-13785.patch \
+"
 SRC_URI[md5sum] = "c05b6ca7190a5e387b78657dbe5536b2"
 SRC_URI[sha256sum] = "2f1e960d92ce3b3abd03d06dfec9637dfbd22febf107a536b44f7a47c60659f6"
 
-- 
2.19.0


