Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA631E00D84; Thu, 28 Sep 2017 21:26:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE9F5E00D9B
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:50 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id g65so267934pfe.1
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 21:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=graDfM9M9h+Kqu3OC9U4+prLzNrQLg4FFqrhOTFUymA=;
	b=pfzKdVhprrhk8h1R4Y1cB9lqTKnm7VOWFMDJ9kmwNc4jrapuMENBgtd+LgRaJrdhpU
	Tk0Ek+ghl1dUV9r+XxtDSCYOAGHkzocuf/K7YbTKLOXOuYCfdjrR3eU6/oUo63CZ41ex
	uOyuKY3Kjr30tbNk9P/b0a/1dT1VksAqT76ChyNWsmSgfqLrDQkmeE9qIqBpWul6Qd4f
	e+CXFTQhzkgFv8LZq7cE7xu3C4L3vmRd8xgh7NOVuRZet5mdh2UO4h6n5l/1OKcB0qG5
	2tRhkMwmpxjfI296Uf5ciP+GFbbQ9y1h+PHBaepOQ1TzRv23y48D3uuzyV4ELlw2Bslo
	l6Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=graDfM9M9h+Kqu3OC9U4+prLzNrQLg4FFqrhOTFUymA=;
	b=fEELQ7gq055+8aDxFCIzbUGw0+5v5j3kcMtJS7s8BOQUb2fcEBtNwh9U3Ri1omIzp2
	CWPBdkUmY1hMuKXHjm6Vi92Yct6q7bOO7yA9Wc4Rxu2ry0TyshGceTeli2LMWu7Oyjuq
	1Fm4lTDGOeOleSx46UpYxGUMYMD7g/0g0Wuo/Wd77yOiGraGLRUBhYFbrXaP6ZPXUwCX
	e4dveNN4qmyqe56x8SI3tbgvv64P38zaymsBY4vjjYzFq6I10ZOgPGWa7du9e7EO82eu
	ohQ5fDqZBIEVNY25xwdvGURh3No+55wWsRuEP/O2dRD6IzDx9+wijexjo0c+vgdVl5yX
	WxqQ==
X-Gm-Message-State: AHPjjUjwXBa0/uL2uLy4UN31tpkp7NCG9U/6oGjKx/zyMokucPl005Gw
	xEVS/EWULA13E7TSGe0rlfciIw==
X-Google-Smtp-Source: AOwi7QCx0ZU4b2QO1weEKLgiQ+KYyU8/RZJlvV+MUYxnX2RgK67GfEmM6DHeTAkJfloyMBzrfRwWPg==
X-Received: by 10.98.200.197 with SMTP id i66mr6122792pfk.73.1506659210093;
	Thu, 28 Sep 2017 21:26:50 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4001:9ea0:c06:a05b:fc56:fd72])
	by smtp.gmail.com with ESMTPSA id
	r66sm5060330pfl.15.2017.09.28.21.26.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Sep 2017 21:26:49 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Thu, 28 Sep 2017 21:26:37 -0700
Message-Id: <1506659201-21501-5-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506659201-21501-1-git-send-email-akuster808@gmail.com>
References: <1506659201-21501-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 4/8] openscap: add scap-security-guide
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
X-List-Received-Date: Fri, 29 Sep 2017 04:26:51 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../scap-security-guide_0.1.33.bb                  | 57 ++++++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.33.bb

diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.33.bb b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.33.bb
new file mode 100644
index 0000000..7fa417d
--- /dev/null
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.33.bb
@@ -0,0 +1,57 @@
+# Copyright (C) 2017 Armin Kuster  <akuster808@gmail.com>
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SUMARRY = "SCAP content for various platforms"
+HOME_URL = "https://www.open-scap.org/security-policies/scap-security-guide/"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=236e81befc8154d18c93c848185d7e52"
+LICENSE = "LGPL-2.1"
+
+DEPENDS = "openscap-native"
+
+SRCREV = "423d9f40021a03abd018bef7818a3a9fe91a083c"
+SRC_URI = "git://github.com/akuster/scap-security-guide.git;branch=oe;"
+
+inherit cmake
+
+PARALLEL_MAKE = ""
+
+S = "${WORKDIR}/git"
+
+STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
+
+EXTRA_OECMAKE += "-DSSG_PRODUCT_CHROMIUM:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_DEBIAN8:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_FEDORA:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_FIREFOX:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_JBOSS_EAP5:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_JBOSS_FUSE6:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_JRE:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_OPENSUSE:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_OSP7:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_RHEL5:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_RHEL6:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_RHEL7:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_RHEV3:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_SUSE11:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_SUSE12:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_UBUNTU1404:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_UBUNTU1604:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_WRLINUX:BOOL=OFF"
+EXTRA_OECMAKE += "-DSSG_PRODUCT_WEBMIN:BOOL=OFF"
+
+do_configure_prepend () {
+	sed -i -e 's:NAMES\ sed:NAMES\ ${HOSTTOOLS_DIR}/sed:g'   ${S}/CMakeLists.txt
+        sed -i 's:/usr/share/openscap/:${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/:g' ${S}/cmake/SSGCommon.cmake
+}
+
+do_compile () {
+	cd ${B}
+	make openembedded 
+}
+
+do_install () {
+	cd ${B}
+	make DESTDIR=${D} install
+}
+FILES_${PN} += "${datadir}/xml"
+RDEPNEDS_${PN} = "openscap"
-- 
2.7.4


