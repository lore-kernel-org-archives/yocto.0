Return-Path: <zertsekel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E32ECE00C09; Thu,  1 Nov 2018 11:50:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zertsekel[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93AA6E00994
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2018 11:50:55 -0700 (PDT)
Received: by mail-wr1-f68.google.com with SMTP id u1-v6so21107108wrn.0
	for <yocto@yoctoproject.org>; Thu, 01 Nov 2018 11:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=667Fa7O7IxX27LIyEvEziItYjmH4dOQuTiYE2eCOut4=;
	b=kq29x0M7DlDmSAqSR08xhZOrQZSyndVrtGrO6YRGhdzsPHD/eq0TvQyLU1IRpwRoyp
	fbDl+BqX+6yFvnKDyT8aAocArX0lly5iLTknJd+sFO2oECVLahemc1D0aJirGaEgM7fC
	hp2iKM42XhkMBzG/eOpdCT7x0vOacmxNEyuPvelSojZyBCbZuTYEuTlmJ2c1NYi+I2SL
	186zuf/eBBLpfClnKkdRndRsq8Eyg2Fzu9BOA/Frng0o9PPuo+qMjpTnc99M5EPc6hnk
	/bXiG7j7yrP/hCYO8GGd3dYc9JiNKjhxjwc6zGyokmXlS0xXJ+J3nLolVHJ7ULgS7OBz
	y2OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=667Fa7O7IxX27LIyEvEziItYjmH4dOQuTiYE2eCOut4=;
	b=SVrSG40/9qE3D8Ib8Z8pWDKpB/UAyGEF7EOTOrgH+fWrmqnZpwcPY2wZrnINPGYRDh
	sR7ywcq6SctxkKdWL+LDisholh9VC2QmNjjfPjQA8OIu3bCXbO5e8ebgiUDyahJiH35l
	iSj9gwNKAGfD2eDKfmxZHC75yuSzgDVTZe5f46K2jTOIJWb6XmIVCv7bN4aqZ/qXBHNA
	j8fkjlHNM3oiKTMM2/489akru3Kwc04Mm28I09uqAkjLzeraH5oNvdxedBzNl+IFRRtY
	8x03M8X40RMmuU26h1uGwMGV5RoXwPWrrlNViPiXagr0tSv5SR7wLHUk6fUyN3QocgF4
	s2kA==
X-Gm-Message-State: AGRZ1gK8TZgl1AAYjxKkdaYQNe/UnyPcm3LHt1hggIIrba0blKQGjssP
	4kdWQ/QxD/wYxyqviq8bX7E=
X-Google-Smtp-Source: AJdET5eEeHaVfpZHnetv11CPjvLHyJecgLafwX4b+aXdG9jrR8SDr+ZY8Zh+S35e7u0JJF4GXRDEdQ==
X-Received: by 2002:adf:e14b:: with SMTP id
	f11-v6mr7226314wri.42.1541098254398; 
	Thu, 01 Nov 2018 11:50:54 -0700 (PDT)
Received: from rnd-server1.yok.int.mrv.com
	(194-90-138-234.bb.netvision.net.il. [194.90.138.234])
	by smtp.gmail.com with ESMTPSA id
	w11-v6sm2506161wrr.96.2018.11.01.11.50.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Nov 2018 11:50:53 -0700 (PDT)
From: Kosta Zertsekel <zertsekel@gmail.com>
To: straka.derek@gmail.com,
	yocto@yoctoproject.org
Date: Thu,  1 Nov 2018 20:50:42 +0200
Message-Id: <20181101185042.17669-1-zertsekel@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [PATCH] nginx: module: add ngx-http-auth-pam-module
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
X-List-Received-Date: Thu, 01 Nov 2018 18:50:57 -0000

NGINX support adding third-party modules.
These modules are created and maintained by members of the NGINX community.
NGINX, Inc. provides support for some of these modules.

Each module is developed as a separate git project, but can be compiled
only as part of NGINX compilation using `--add-module` parameter.

Signed-off-by: Kosta Zertsekel <zertsekel@gmail.com>
---
 recipes-httpd/nginx/nginx_%.bbappend          |  5 ++++
 .../ngx-http-auth-pam-module_git.bb           | 24 +++++++++++++++++++
 2 files changed, 29 insertions(+)
 create mode 100644 recipes-httpd/nginx/nginx_%.bbappend
 create mode 100644 recipes-ngx-http-auth-pam-module/ngx-http-auth-pam-module/ngx-http-auth-pam-module_git.bb

diff --git a/recipes-httpd/nginx/nginx_%.bbappend b/recipes-httpd/nginx/nginx_%.bbappend
new file mode 100644
index 0000000..d3ed1bf
--- /dev/null
+++ b/recipes-httpd/nginx/nginx_%.bbappend
@@ -0,0 +1,5 @@
+DEPENDS += "ngx-http-auth-pam-module"
+
+EXTRA_OECONF += " \
+    --add-module=${STAGING_DIR_TARGET}/ngx-http-auth-pam-module \
+"
diff --git a/recipes-ngx-http-auth-pam-module/ngx-http-auth-pam-module/ngx-http-auth-pam-module_git.bb b/recipes-ngx-http-auth-pam-module/ngx-http-auth-pam-module/ngx-http-auth-pam-module_git.bb
new file mode 100644
index 0000000..8f13c3f
--- /dev/null
+++ b/recipes-ngx-http-auth-pam-module/ngx-http-auth-pam-module/ngx-http-auth-pam-module_git.bb
@@ -0,0 +1,24 @@
+LICENSE = "Unknown"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=1eccc8f95bc958cb0e1569c433286a22"
+
+SRC_URI = "git://github.com/sto/ngx_http_auth_pam_module;protocol=https"
+
+PV = "1.5+git${SRCPV}"
+SRCREV = "d9286fc7b52e1a3584da2cb20423f912ec99169f"
+
+S = "${WORKDIR}/git"
+
+SYSROOT_DIRS += "/${PN}"
+
+do_configure[noexec] = "1"
+do_compile[noexec] = "1"
+
+# Nginx module is compiled as part of nginx build using --add-module,
+# hence, just copy the sources here to be picked up by nginx later.
+do_install () {
+	cd ${S}
+	git checkout-index -a --prefix=${D}/${PN}/
+	cd -
+}
+
+FILES_${PN} = "${PN}/*"
-- 
2.17.1


