Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A934E009C3; Tue, 20 Oct 2015 09:41:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF8D9E00708
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 09:41:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t9KGfBpu024348
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 09:41:11 -0700 (PDT)
Received: from msp-dhcp23.wrs.com (172.25.34.23) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 20 Oct 2015 09:41:10 -0700
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 20 Oct 2015 11:41:06 -0500
Message-ID: <1445359268-172321-3-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1445359268-172321-1-git-send-email-mark.hatle@windriver.com>
References: <1445359268-172321-1-git-send-email-mark.hatle@windriver.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH 2/4] binutils*.bbappend: Work with all 2.25 versions
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
X-List-Received-Date: Tue, 20 Oct 2015 16:41:19 -0000
Content-Type: text/plain

From: Peter Seebach <peter.seebach@windriver.com>

Signed-off-by: Peter Seebach <peter.seebach@windriver.com>
Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend | 5 +++++
 recipes-devtools/binutils/binutils-cross-canadian_2.25.bbappend  | 5 -----
 2 files changed, 5 insertions(+), 5 deletions(-)
 create mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
 delete mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.25.bbappend

diff --git a/recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend b/recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
new file mode 100644
index 0000000..026c932
--- /dev/null
+++ b/recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
@@ -0,0 +1,5 @@
+EXTRA_OECONF_append_sdkmingw32 = " --disable-plugins --disable-nls"
+LDFLAGS_append_sdkmingw32 = " -Wl,-static"
+
+DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
+DEPENDS_remove_sdkmingw32 = "nativesdk-flex"
diff --git a/recipes-devtools/binutils/binutils-cross-canadian_2.25.bbappend b/recipes-devtools/binutils/binutils-cross-canadian_2.25.bbappend
deleted file mode 100644
index 026c932..0000000
--- a/recipes-devtools/binutils/binutils-cross-canadian_2.25.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-EXTRA_OECONF_append_sdkmingw32 = " --disable-plugins --disable-nls"
-LDFLAGS_append_sdkmingw32 = " -Wl,-static"
-
-DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
-DEPENDS_remove_sdkmingw32 = "nativesdk-flex"
-- 
1.9.3


