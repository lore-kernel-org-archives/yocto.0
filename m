Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A287E0096F; Fri,  5 Jul 2019 00:51:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 124E8E0096F
	for <yocto@yoctoproject.org>; Fri,  5 Jul 2019 00:51:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x657pHa5026387
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 5 Jul 2019 00:51:17 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.439.0; Fri, 5 Jul 2019 00:51:17 -0700
From: <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 5 Jul 2019 15:51:13 +0800
Message-ID: <1562313073-109593-2-git-send-email-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562313073-109593-1-git-send-email-mingli.yu@windriver.com>
References: <1561510813-10520-1-git-send-email-yi.zhao@windriver.com>
	<1562313073-109593-1-git-send-email-mingli.yu@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 2/2] audit: use git fetcher instead of the tarball source
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
X-List-Received-Date: Fri, 05 Jul 2019 07:51:18 -0000
Content-Type: text/plain

From: Mingli Yu <Mingli.Yu@windriver.com>

Per http://people.redhat.com/sgrubb/audit/, the
tarball source moves to https://github.com/linux-audit/audit-userspace,
and since commit [21f84fc insane: add sanity checks to SRC_URI]
applied in oe-core, do not use unstable github archive
tarballs, so use git instead.

Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
---
 recipes-security/audit/audit_2.8.5.bb | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/recipes-security/audit/audit_2.8.5.bb b/recipes-security/audit/audit_2.8.5.bb
index bd09873..d3b9b51 100644
--- a/recipes-security/audit/audit_2.8.5.bb
+++ b/recipes-security/audit/audit_2.8.5.bb
@@ -7,7 +7,7 @@ SECTION = "base"
 LICENSE = "GPLv2+ & LGPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
-SRC_URI = "http://people.redhat.com/sgrubb/${BPN}/${BPN}-${PV}.tar.gz \
+SRC_URI = "git://github.com/linux-audit/${BPN}-userspace.git;branch=2.8_maintenance \
            file://audit-python-configure.patch \
            file://audit-python.patch \
            file://fix-swig-host-contamination.patch \
@@ -16,8 +16,9 @@ SRC_URI = "http://people.redhat.com/sgrubb/${BPN}/${BPN}-${PV}.tar.gz \
            file://auditd.service \
            file://audit-volatile.conf \
 "
-SRC_URI[md5sum] = "9455e5773670afdbccaeb92681b2e97d"
-SRC_URI[sha256sum] = "0e5d4103646e00f8d1981e1cd2faea7a2ae28e854c31a803e907a383c5e2ecb7"
+
+S = "${WORKDIR}/git"
+SRCREV = "5fae55c1ad15b3cefe6890eba7311af163e9133c"
 
 inherit autotools pythonnative update-rc.d systemd
 
-- 
2.7.4


