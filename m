Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFA94E006C6; Fri, 10 Feb 2017 23:16:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00, DATE_IN_PAST_06_12, 
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before
	Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8F17E0052B
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2017 23:16:29 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Feb 2017 23:16:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,145,1484035200"; d="scan'208";a="42877641"
Received: from chiron.jf.intel.com ([10.7.159.56])
	by orsmga002.jf.intel.com with ESMTP; 10 Feb 2017 23:16:29 -0800
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 10 Feb 2017 16:22:29 -0800
Message-Id: <20170211002229.55071-1-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.9.3
Subject: [meta-selinux][PATCH] audit: update to v2.7.1
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
X-List-Received-Date: Sat, 11 Feb 2017 07:16:34 -0000

Added swig-native to DEPENDS

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 recipes-security/audit/{audit_2.7.bb => audit_2.7.1.bb} | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename recipes-security/audit/{audit_2.7.bb => audit_2.7.1.bb} (95%)

diff --git a/recipes-security/audit/audit_2.7.bb b/recipes-security/audit/audit_2.7.1.bb
similarity index 95%
rename from recipes-security/audit/audit_2.7.bb
rename to recipes-security/audit/audit_2.7.1.bb
index 6bcbecd..975e6e9 100644
--- a/recipes-security/audit/audit_2.7.bb
+++ b/recipes-security/audit/audit_2.7.1.bb
@@ -15,8 +15,8 @@ SRC_URI = "http://people.redhat.com/sgrubb/${BPN}/${BPN}-${PV}.tar.gz \
            file://auditd.service \
            file://audit-volatile.conf \
 "
-SRC_URI[md5sum] = "d3b1017e259509b9b3054656d0d2b4e9"
-SRC_URI[sha256sum] = "05533f5d88d9520ceebfd8bfb3fd998ca4a2b246757fec7bbd8e33c287544537"
+SRC_URI[md5sum] = "b224ea6f000c8281e5deee86903ac5ba"
+SRC_URI[sha256sum] = "0441790794fd9375dbca598fa0ffb46c57ff37b3a24b94ffec0bbee3215cca09"
 
 inherit autotools pythonnative update-rc.d systemd
 
@@ -26,7 +26,7 @@ INITSCRIPT_PARAMS = "defaults"
 
 SYSTEMD_SERVICE_${PN} = "auditd.service"
 
-DEPENDS += "python tcp-wrappers libcap-ng linux-libc-headers (>= 2.6.30)"
+DEPENDS += "python tcp-wrappers libcap-ng linux-libc-headers (>= 2.6.30) swig-native"
 
 EXTRA_OECONF += "--without-prelude \
 	--with-libwrap \
-- 
2.9.3


