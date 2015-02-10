Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F38D5E00945; Mon,  9 Feb 2015 17:00:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6996E00596
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 17:00:50 -0800 (PST)
Received: by mail-pa0-f45.google.com with SMTP id et14so37325942pad.4
	for <yocto@yoctoproject.org>; Mon, 09 Feb 2015 17:00:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=8DarGRBZ08QYTtrygKma/ta8+0/68qPRmE+bpgvXInw=;
	b=lxZvh+IsRO8DAZpXKb4FgR9cKtcC2/wfdchyveXuePtCkmzoJui/VYo9t4VF/Fp3A2
	Lb2HA79cC+dP0o2/2upm13aYg38epWLhixwfyLMont9Ob7aulDPnYT4ntLkVkMwtIR3B
	xc/Jt1ua/Ie4HC++U/37A6aTd1oMUi2EsIx9TjnyY3RLN85yUzeNw5Cq8PEfDs27uT4y
	DA94TxChn6jITfJ1bXL3rcPXH0INDckqHQujpBdgBzdYqGqJsu+E44tZoRDJa6OHKO+H
	BgPigZOv3CUj3Gqkat5ax+gjWsQubv57+j0qGbATz7YOzK8+5jdu5kuIA4RkL+GPdtau
	LgGg==
X-Received: by 10.66.146.193 with SMTP id te1mr33457733pab.109.1423530049918; 
	Mon, 09 Feb 2015 17:00:49 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id df7sm7231473pdb.14.2015.02.09.17.00.47
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 09 Feb 2015 17:00:48 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  9 Feb 2015 17:00:38 -0800
Message-Id: <1423530040-20457-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1423530040-20457-1-git-send-email-akuster808@gmail.com>
References: <1423530040-20457-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 1/3] afflib: new package
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
X-List-Received-Date: Tue, 10 Feb 2015 01:00:57 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-forensic/afflib/afflib_3.6.6.bb            | 30 ++++++++++++++++++++++
 .../afflib/files/configure_rm_ms_flags.patch       | 18 +++++++++++++
 2 files changed, 48 insertions(+)
 create mode 100644 recipes-forensic/afflib/afflib_3.6.6.bb
 create mode 100644 recipes-forensic/afflib/files/configure_rm_ms_flags.patch

diff --git a/recipes-forensic/afflib/afflib_3.6.6.bb b/recipes-forensic/afflib/afflib_3.6.6.bb
new file mode 100644
index 0000000..5fb6e21
--- /dev/null
+++ b/recipes-forensic/afflib/afflib_3.6.6.bb
@@ -0,0 +1,30 @@
+SUMMARY = "The Advanced Forensic Format (AFF) is on-disk format for storing computer forensic information."
+HOMEPAGE = "http://www.afflib.org/"
+LICENSE = " BSD-4-Clause  & CPL-1.0"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d1b2c6d0d6908f45d143ef6380727828"
+
+DEPENDS = " zlib ncurses readline openssl libgcrypt"
+
+SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/a/${BPN}/${BPN}_${PV}.orig.tar.gz;name=orig \
+        http://archive.ubuntu.com/ubuntu/pool/universe/a/${BPN}/${BPN}_${PV}-1.1.diff.gz;name=dpatch \
+        file://configure_rm_ms_flags.patch \
+        "
+
+SRC_URI[orig.md5sum] = "b7ff4d2945882018eb1536cad182ad01"
+SRC_URI[orig.sha256sum] = "19cacfd558dc00e11975e820e3c4383b52aabbd5ca081d27bb7994a035d2f4ad"
+SRC_URI[dpatch.md5sum] = "171e871024545b487589e6c85290576f"
+SRC_URI[dpatch.sha256sum] = "db632e254ee51a1e4328cd4449d414eff4795053d4e36bfa8e0020fcb4085cdd"
+
+inherit autotools-brokensep
+
+CPPFLAGS = "-I${STAGING_INCDIR}"
+LDFLAGS = "-L${STAGING_LIBDIR}"
+
+PACKAGECONFIG ??= ""
+PACKAGECONFIG[curl] = "--with-curl=PATH, --without-curl, curl"
+PACKAGECONFIG[expat] = "--with-expat=PATH, --without-expat, expat"
+PACKAGECONFIG[fuse] = "--enable-fuse=yes, --enable-fuse=no, fuse"
+PACKAGECONFIG[python] = "--enable-python=yes, --enable-python=no, python"
+
+EXTRA_OECONF += "--enable-s3=no CPPFLAGS=-I${STAGING_INCDIR} LDFLAGS=-L${STAGING_LIBDIR}"
+EXTRA_OEMAKE += "CPPFLAGS='${CPPFLAGS}' LDFLAGS='-L${STAGING_LIBDIR}'"
diff --git a/recipes-forensic/afflib/files/configure_rm_ms_flags.patch b/recipes-forensic/afflib/files/configure_rm_ms_flags.patch
new file mode 100644
index 0000000..ac33500
--- /dev/null
+++ b/recipes-forensic/afflib/files/configure_rm_ms_flags.patch
@@ -0,0 +1,18 @@
+Upstream-Status: Inappropriate [configuration]
+
+remove ms lib options when cross compiling
+
+Signed-Off-By: Armin Kuster <akuster808@gmail.com>
+
+Index: configure.ac
+===================================================================
+--- a.orig/configure.ac
++++ a/configure.ac
+@@ -47,7 +47,6 @@ if test x"${cross_compiling}" = "xno" ;
+   AC_MSG_NOTICE([ LDFLAGS = ${LDFLAGS} ])
+ else
+   AC_MSG_NOTICE([Cross Compiling --- will not update CPPFALGS or LDFLAGS with /usr/local, /opt/local or /sw])
+-  LIBS="$LIBS -lws2_32 -lgdi32"
+ fi
+ 
+ if test -r /bin/uname.exe ; then
-- 
1.9.1


