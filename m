Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web12.8922.1582777500956986922
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2020 20:25:01 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 01R4Oxa3023013
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Wed, 26 Feb 2020 20:25:00 -0800 (PST)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Wed, 26 Feb
 2020 20:24:58 -0800
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] scap-security-guide: pass the correct schema file path to openscap-native
Date: Thu, 27 Feb 2020 12:24:56 +0800
Message-ID: <20200227042456.22006-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

There is a build error when using openscap-native sstate cache.
Steps to reproduce:
Create a new build project in build-1 directory.
$ bitbake openscap-native
Then remove the whole build directory only keep the sstate-cache
directory as a sstate mirror.

Create another new build project in build-2 directory.
Set SSTATE_MIRRORS
$ bitbake scap-security-guide

Error message:
OpenSCAP Error: Schema file 'xccdf/1.1/xccdf-schema.xsd' not found in path
'/buildarea/build-1/tmp/work-shared/openscap/oscap-build-artifacts/usr/share/openscap/schemas' when trying to validate
'/buildarea/build-2/tmp/work/core2-64-poky-linux/scap-security-guide/0.1.44+gitAUTOINC+5fdfdcb2e9-r0/git/build/jre/xccdf-unlinked-resolved.xml'
[/buildarea/build-1/tmp/work/x86_64-linux/openscap-native/1.3.1+gitAUTOINC+4bbdb46ff6-r0/git/src/source/validate.c:104]

The oscap command from openscap-native tries to find the schema files in
build-1 directory since these paths are hardcoded when building
openscap-native.

We need to pass the correct schema/xslt/cpe paths to oscap to make sure
it can find the files in right location.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../scap-security-guide/scap-security-guide.inc                | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
index 3212310..66c2623 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
@@ -13,6 +13,9 @@ S = "${WORKDIR}/git"
 inherit cmake pkgconfig python3native
 
 STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
+export OSCAP_CPE_PATH="${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe"
+export OSCAP_SCHEMA_PATH="${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas"
+export OSCAP_XSLT_PATH="${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl"
 
 OECMAKE_GENERATOR = "Unix Makefiles"
 
-- 
2.17.1

