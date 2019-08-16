Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68599E00E0B; Thu, 15 Aug 2019 19:17:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 441EBE00DE2
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2019 19:17:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x7G2HZuR028437
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2019 19:17:45 -0700
Received: from localhost (128.224.162.136) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 15 Aug 2019 19:17:24 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 16 Aug 2019 10:17:22 +0800
Message-ID: <1565921842-7806-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.136]
Subject: [meta-security][PATCH] openscap: fix scap-security-guide build error
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
X-List-Received-Date: Fri, 16 Aug 2019 02:17:57 -0000
Content-Type: text/plain

It would fail to build scap-security-guide when use openscap-native
sstate cache.

Steps to reproduce:
Create a new build project:
$ bitbake openscap-native
$ bitbake openscap-native -c clean
$ bitbake scap-security-guide

Error message:
OpenSCAP Error: Schema file 'xccdf/1.1/xccdf-schema.xsd' not found in path
'/buildarea/build/tmp/work-shared/openscap/oscap-build-artifacts/usr/share/openscap/schemas'
when trying to validate
'/buildarea/build/tmp/work/core2-64-poky-linux/scap-security-guide/0.1.44+gitAUTOINC+5fdfdcb2e9-r0/git/build/chromium/xccdf-unlinked-resolved.xml'
[/buildarea/build/tmp/work/x86_64-linux/openscap-native/1.3.1+gitAUTOINC+4bbdb46ff6-r0/git/src/source/validate.c:104]
Invalid XCCDF Checklist (1.1) content in
/buildarea/build/tmp/work/core2-64-poky-linux/scap-security-guide/0.1.44+gitAUTOINC+5fdfdcb2e9-r0/git/build/chromium/xccdf-unlinked-resolved.xml.
[/buildarea/build/tmp/work/x86_64-linux/openscap-native/1.3.1+gitAUTOINC+4bbdb46ff6-r0/git/src/source/oscap_source.c:346]
chromium/CMakeFiles/generate-internal-chromium-xccdf-unlinked-resolved.xml.dir/build.make:63: recipe for target 'chromium/xccdf-unlinked-resolved.xml' failed

When using sstate cache, the openscap-native doesn't install the
artifacts to work-shared/openscap/oscap-build-artifacts when prepare
recipe sysroot for scap-security-guide.

Set do_install[nostamp] to 1 to ensure the openscap-native artifacts
are installed to work-shared/openscap/oscap-build-artifacts even if
using sstate cache.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-security-compliance/recipes-openscap/openscap/openscap.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap.inc b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
index 53309e8..07d9700 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap.inc
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
@@ -41,6 +41,7 @@ do_configure_append_class-native () {
 }
 
 do_clean[cleandirs] += "${STAGING_OSCAP_BUILDDIR}"
+do_install[nostamp] = "1"
 
 do_install_append_class-native () {
     oscapdir=${STAGING_OSCAP_BUILDDIR}/${datadir_native}
-- 
2.7.4


