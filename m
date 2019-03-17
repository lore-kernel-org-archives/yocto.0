Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AECAE009A0; Sat, 16 Mar 2019 19:21:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
	[209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32C64E009A0
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2019 19:21:38 -0700 (PDT)
Received: by mail-pg1-f177.google.com with SMTP id k11so8991537pgb.8
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2019 19:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=1Z9seBEipzFhx4wpkDj0J1PDUt6WSw/16FR5cpgvjLs=;
	b=WkMVOPCGNwx568FaexvqSWGF3pyp6sL8cV0j3x8vSxzPJAWiNWDR1ujsaVk6jTLyBn
	mSkhvDYpDiYg9OcL6Nt0wCxGH1jKpxl1q1scIozHQ0B0HKWACrcJ+LYvcy1UVLh9bui8
	DjB8SJjp0cs9vnObDbUH5ctLbbL/pRynV9NnkJwtx2lvzrPHiWP8Riaj1nxfiR5zdQUG
	+dyxSQGvPjuXwofV+4Cv817RHu6Po/CGh0z0xGKocT7nOUm11iMVtINvSUy+8BsyVxiM
	jd9NUUSjxle8z9auBOQjtIcuPUvTN5dNjPtMp9ArgFfF2NGd38nsI1HZclOJ7a0jcCEf
	wcUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=1Z9seBEipzFhx4wpkDj0J1PDUt6WSw/16FR5cpgvjLs=;
	b=GnZ81OwAD5+Q6si5/AkEKIgeVYo8zmoWy9q97ovrMFaPNNWYvdNqq6EpLK8vjYhUP/
	LgIP0t7CSM37O/UI5/Qs0YhiWqLMYoILit4NpBgrkXnBOAtr4b5GrudukzVRhdqH5bXh
	NPgithLTkQro0+RWGwIYbwuN5rCsmOn07Lgs0XUp0MEz4S17zTIkQ2FJJ/4VAu4OGvUI
	cyPiyoajqayLzzDcALpqBfVVylII6s/eGvizhyEMUHbXZ+wUTyCQ2AxivuLNMyRct9XV
	Ok5tgSfcWI03DN4/vVqnfqMooBX7RCJAno76Wg/nW9Mp1f5HOAMwJ0SkqDx9a+8R4NfV
	YO+Q==
X-Gm-Message-State: APjAAAU/PFniDWIgsDmmaDPVi9L+PaUEdVKv/w1dV0Db9/cm4Mhr6BpK
	byi1B3Vt1kfBluvMDj8TawdxNIs5
X-Google-Smtp-Source: APXvYqwksBSIF3cMSAGzgU6BSm9E3KJ2fneKgr2nJPjb3t1/1qqsRIApwPZkP9LSXuLx4DISwuRoeA==
X-Received: by 2002:a62:29c5:: with SMTP id
	p188mr10470661pfp.203.1552789297662; 
	Sat, 16 Mar 2019 19:21:37 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	c2sm10529002pfm.187.2019.03.16.19.21.36 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 16 Mar 2019 19:21:36 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 16 Mar 2019 19:21:35 -0700
Message-Id: <20190317022135.12276-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] tpm2-tcti-uefi: add new package
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
X-List-Received-Date: Sun, 17 Mar 2019 02:21:44 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../files/configure_oe_fixup.patch            | 27 +++++++++++++++++++
 .../tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb    | 18 +++++++++++++
 2 files changed, 45 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/configure_oe_fixup.patch
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb

diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/configure_oe_fixup.patch b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/configure_oe_fixup.patch
new file mode 100644
index 0000000..8a216cd
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/configure_oe_fixup.patch
@@ -0,0 +1,27 @@
+Upstream-Status: OE specific
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: git/configure.ac
+===================================================================
+--- git.orig/configure.ac
++++ git/configure.ac
+@@ -84,9 +84,6 @@ AC_ARG_WITH([efi-lds],
+             AS_HELP_STRING([--with-efi-lds=LDS_PATH],[Path to gnu-efi lds file.]),
+             [],
+             [with_efi_lds="/usr/lib/elf_${ARCH}_efi.lds"])
+-AC_CHECK_FILE(["${with_efi_lds}"],
+-              [],
+-              [AC_MSG_ERROR([Missing file: ${with_efi_lds}.])])
+ EXTRA_LDFLAGS="-L /usr/lib -L /usr/lib64 -Wl,--script=${with_efi_lds}"
+ 
+ # path to object file from gnu-efi
+@@ -94,9 +91,6 @@ AC_ARG_WITH([efi-crt0],
+             AS_HELP_STRING([--with-efi-crt0=OBJ_PATH],[Path to gnu-efi crt0 object file.]),
+             [],
+             [with_efi_crt0="/usr/lib/crt0-efi-${ARCH}.o"])
+-AC_CHECK_FILE(["${with_efi_crt0}"],
+-              [],
+-              [AC_MSG_ERROR([Missing ${with_efi_crt0} file.])])
+ EXTRA_LDLIBS="${with_efi_crt0}"
+ 
+ # check for efi and gnuefi libraries
diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
new file mode 100644
index 0000000..815691d
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
@@ -0,0 +1,18 @@
+SUMMARY = "TCTI module for use with TSS2 libraries in UEFI environment"
+SECTION = "security/tpm"
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
+DEPENDS = "libtss2-dev gnu-efi-native gnu-efi pkgconfig"
+
+SRC_URI = "git://github.com/tpm2-software/tpm2-tcti-uefi.git \
+           file://configure_oe_fixup.patch \
+          "
+SRCREV = "131889d12d2c7d8974711d2ebd1032cd32577b7f"
+
+S = "${WORKDIR}/git"
+
+inherit autotools pkgconfig
+
+COMPATIBLE_HOST = "(i.86|x86_64).*-linux"
+EXTRA_OECONF_append = " --with-efi-includedir=${STAGING_INCDIR}/efi --with-efi-lds=${STAGING_LIBDIR_NATIVE}/"
+RDEPENDS_${PN} = "gnu-efi"
-- 
2.17.1


