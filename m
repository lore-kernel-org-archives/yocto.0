Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3991E00DEB; Tue,  3 Sep 2019 19:46:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A18ECE00DD3
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2019 19:46:21 -0700 (PDT)
Received: by mail-pf1-f193.google.com with SMTP id d15so2718805pfo.10
	for <yocto@yoctoproject.org>; Tue, 03 Sep 2019 19:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=ZPJgWiKRKHS7s5/qaMZgdDx6D4g2Y9A3j+gdKZl0O00=;
	b=VLWFOTqyUm/meukwn33tacE/nPOTcIGYiTs2/4dCR9zy44b4yEqTmjFy+0MuUMSDhz
	gfTBlpKouELy18XX7xpRgMtE4pH9YA7IyLrG5MpQhrnNshmiAVGYwqjDQhz1BwB/sSoi
	A0UXi+ec+1TkJR4je/zeflEcVmiejpOSgXBbmw6a94ZYJMZs5TGUH4rZbPoVxoALmco6
	IMmL5hHlCERB6XBpks3YHt9O2Tja9sExXFlOX+TN7N6GLcm7F8yMfES4x8/v1rXjH6lS
	HNHWcnK2HiafocOcCk2EUazboxsivzbISr4diaL3HYt7ECX3MbOT2Fe5DFBy3BKv0XyD
	ONTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=ZPJgWiKRKHS7s5/qaMZgdDx6D4g2Y9A3j+gdKZl0O00=;
	b=MP/Zt4RKvPf7upppeK0/o7RSY+xPMzYHjEc8+Ukj17OcGoSIOtFz3NItlPzM2OZCd7
	BbDhS72ZuNK/e/UbLUFkSNaLMg+PZRhz2NjIW0POzzzMgPhdGGybDfkdJVW5Bbfdpy2d
	9AwPRZMljy/3g9aWCMCXuCpVyC5qEYRWXiWeDV6kITM0vD+wE8p4793FXU4UgU/U59qA
	5Qg8D+Rv3ZB5uooZStMbdzK5Z9f2x+6uG1rDuzNf1fgz39a9jtymzcStVdd0LZozvvs8
	DcY7nG36CW9XFc8b/jjlUzgkOH3dYhSsboZx2HhCOFuxKBXpHmFrG4Sdb8NzfQ2Ng9z7
	1N5w==
X-Gm-Message-State: APjAAAXMMr2ByWDx/QwNyLE0fTDBKmYFPrm90cuO9FY5qSHje8P4WIhi
	yNrRsfW4B1H5bUZHxhDwLfPM84KH
X-Google-Smtp-Source: APXvYqye1e4/HVPy0opypQr7Qlf3M9Mns4VbunUDD2hedvVi7tLrasKo3a2nsm8k5waUQcFdLBBHWA==
X-Received: by 2002:aa7:91d7:: with SMTP id z23mr30282684pfa.262.1567565180933;
	Tue, 03 Sep 2019 19:46:20 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	n10sm18262976pgv.67.2019.09.03.19.46.20 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 03 Sep 2019 19:46:20 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  3 Sep 2019 19:46:14 -0700
Message-Id: <20190904024614.17530-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904024614.17530-1-akuster808@gmail.com>
References: <20190904024614.17530-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] scap-security-guide: add depends on openscap-native do_install
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
X-List-Received-Date: Wed, 04 Sep 2019 02:46:24 -0000

This ensures openscap-native does install the needed patches
security guilde needs to build

Minor recipe cleanup too

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../scap-security-guide/scap-security-guide.inc            | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
index 341721a..3212310 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
@@ -7,14 +7,11 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=97662e4486d9a1d09f358851d9f41a1a"
 LICENSE = "LGPL-2.1"
 
 DEPENDS = "openscap-native python3 python3-pyyaml-native python3-jinja2-native libxml2-native"
-RDEPENDS_${PN} = "openscap"
 
 S = "${WORKDIR}/git"
 
 inherit cmake pkgconfig python3native
 
-#PARALLEL_MAKE = ""
-
 STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
 
 OECMAKE_GENERATOR = "Unix Makefiles"
@@ -23,9 +20,13 @@ EXTRA_OECMAKE += "-DENABLE_PYTHON_COVERAGE=OFF"
 
 B = "${S}/build"
 
+do_configure[depends] += "openscap-native:do_install"
+
 do_configure_prepend () {
     sed -i -e 's:NAMES\ sed:NAMES\ ${HOSTTOOLS_DIR}/sed:g' ${S}/CMakeLists.txt
     sed -i -e 's:NAMES\ grep:NAMES\ ${HOSTTOOLS_DIR}/grep:g' ${S}/CMakeLists.txt
 }
 
 FILES_${PN} += "${datadir}/xml"
+
+RDEPENDS_${PN} = "openscap"
-- 
2.17.1


