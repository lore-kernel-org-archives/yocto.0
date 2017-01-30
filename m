Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED523E009CD; Mon, 30 Jan 2017 00:46:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46A2CE009DA
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:48 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id 19so22844048pfo.3
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=wx/seCHocIMWqbPic735pk+7H8jZtaKIlxkZd9B0dso=;
	b=XWPQ7t0/Vh4wdHr1fDfWbDxmRMd2lkyEmL21yxAvJwEiIahCIHoU7okga2J6zIGr0W
	YSrqvk5p0uZnrUFZAnryNHmq4fCELaQN1amBeV/1DR8ZLD2tjmNpghU8133B8S/PpjMn
	mzgPRrcxzcK9SYyV32gcMfaski4KNTuB6b2o7zd6TwCRnuLpQuUpdDkFcPQwNTxFY+DC
	WftGBX1QIoIrLhSjYiAZxBl6VX3yZvW9s9zPqCxxHndIgM7oXWdQd1Bv1yFgTFxwqU+/
	UFlpqeB0vRBrEGFfhz6PfGjr144wnB84ZoRkyCV37DXnFFWf+GGIxz0uqtaSGYsvwLzV
	Oc5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=wx/seCHocIMWqbPic735pk+7H8jZtaKIlxkZd9B0dso=;
	b=q6bTk+kzNcp4Y8K0+rW//9/Jj8OfJg3v8IgSF7wJF7BQgEJZ6t3FveOHNmfgvzXuSm
	DlJrTJR1r9tnOUMx72ZWxfGLwS+JGocJi948dc1RFxFUc/UpyJOVLv/ZrOooCE8xtQSn
	OXRtYsVG9KS7MrHojnOoMbofAUxjV6lpvcthBSZK9CIBzcIbUQ+hYfBM/XIflLqkmks1
	4JjvHee4cbJIDnG3JT/5+pwyPnycGgrtzSJ96EnO+mgCTHjkeRRQN3f9sHOkc5xKR04O
	EGVpGQ2EOdcxLyvAycEK4iJ7spODF+xVbhNTv3nn/XeDBbGEJrHuoRGwi1bvGpaG6drS
	1bbA==
X-Gm-Message-State: AIkVDXLSfV1nC7MsF6fqOBI/TKOvcoMDBEmpzwVGCmk9fZdygLhEtEL4IzC+HdVKgO5H+g==
X-Received: by 10.84.236.76 with SMTP id h12mr30344088pln.173.1485765948042;
	Mon, 30 Jan 2017 00:45:48 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	j7sm30193478pfe.84.2017.01.30.00.45.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:45:47 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-19-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 19/19] libgcrypt_1.7.3.bbappend: Add patch to fix configure bug for mingw32
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
X-List-Received-Date: Mon, 30 Jan 2017 08:46:04 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Resolve bug with the generation of the versioninfo.rc file which depends
on the BUILD_REVISION being set during configure. The BUILD_REVISION is
unset when building against tarball source due to no git repository
information. This patch sets the BUILD_REVISION to 0 when no information
is available.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 ...c-Set-mym4_revision-to-0-if-not-a-git-rep.patch | 46 ++++++++++++++++++++++
 recipes-support/libgcrypt/libgcrypt_1.7.3.bbappend |  6 +++
 2 files changed, 52 insertions(+)
 create mode 100644 recipes-support/libgcrypt/files/configure.ac-Set-mym4_revision-to-0-if-not-a-git-rep.patch
 create mode 100644 recipes-support/libgcrypt/libgcrypt_1.7.3.bbappend

diff --git a/recipes-support/libgcrypt/files/configure.ac-Set-mym4_revision-to-0-if-not-a-git-rep.patch b/recipes-support/libgcrypt/files/configure.ac-Set-mym4_revision-to-0-if-not-a-git-rep.patch
new file mode 100644
index 0000000000..b7b407ab4b
--- /dev/null
+++ b/recipes-support/libgcrypt/files/configure.ac-Set-mym4_revision-to-0-if-not-a-git-rep.patch
@@ -0,0 +1,46 @@
+From bb6f9e18b5ccef26978f3f3ed2fe7bf3d4d498e7 Mon Sep 17 00:00:00 2001
+From: Nathan Rossi <nathan@nathanrossi.com>
+Date: Fri, 30 Dec 2016 18:02:26 +1000
+Subject: [PATCH] configure.ac: Set 'mym4_revision' to 0 if not a git repo
+
+---
+It is possible for the source to not be located in a git repository
+(e.g. source is from a tarball). In which case the git repository
+information is not available. This results in the mym4_revision being an
+empty string however this value is used in BUILD_FILEVERSION where it is
+assumed to be 4 decimal values. Additionally BUILD_REVISION uses this
+value and is also assumed to be non-empty.
+
+In the case of BUILD_FILEVERSION it is used in versioninfo.rc.in, where
+it must be populated as 4 decimal values due to the expected syntax. In
+cases where it is not (e.g. when BUILD_FILEVERSION = '1,7,5,' a syntax
+error is raised.
+
+    windres: versioninfo.rc.in:21: syntax error
+
+This patch changes mym4_revision so that if the 'git rev-parse' returns
+non-zero (e.g. not in a git repository) the value falls back to '0'.
+This propagates as '0' to both BUILD_FILEVERSION and BUILD_REVISION.
+
+Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
+Upstream-Status: Submitted
+---
+ configure.ac | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/configure.ac b/configure.ac
+index 31c0d553fa..a3deffa6e9 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -39,7 +39,7 @@ m4_define(mym4_version_micro, [0])
+ m4_define(mym4_version,
+           [mym4_version_major.mym4_version_minor.mym4_version_micro])
+ m4_define([mym4_revision],
+-          m4_esyscmd([git rev-parse --short HEAD | tr -d '\n\r']))
++          m4_esyscmd([(git rev-parse --short HEAD || printf '0') | tr -d '\n\r']))
+ m4_define([mym4_revision_dec],
+           m4_esyscmd_s([echo $((0x$(echo ]mym4_revision[|head -c 4)))]))
+ m4_define([mym4_betastring],
+-- 
+2.11.0
+
diff --git a/recipes-support/libgcrypt/libgcrypt_1.7.3.bbappend b/recipes-support/libgcrypt/libgcrypt_1.7.3.bbappend
new file mode 100644
index 0000000000..e30e37688e
--- /dev/null
+++ b/recipes-support/libgcrypt/libgcrypt_1.7.3.bbappend
@@ -0,0 +1,6 @@
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+SRC_URI_append = " \
+		file://configure.ac-Set-mym4_revision-to-0-if-not-a-git-rep.patch \
+		"
+
-- 
2.11.0


