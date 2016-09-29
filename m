Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9595AE00CAC; Wed, 28 Sep 2016 22:56:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 625A9E00C9D
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2016 22:56:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u8T5udBw015529
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2016 22:56:39 -0700
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Wed, 28 Sep 2016 22:56:38 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 29 Sep 2016 13:38:56 +0800
Message-ID: <20160929053856.24032-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.8.3
MIME-Version: 1.0
Subject: [meta-security][PATCH] scapy: upgrade to 2.3.2
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
X-List-Received-Date: Thu, 29 Sep 2016 05:56:43 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

* update the SRC_URI since it's been moved
  from bitbucket to github.

* add ptest support

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 recipes-security/scapy/scapy/run-ptest                    |  4 ++++
 recipes-security/scapy/{scapy_2.3.1.bb => scapy_2.3.2.bb} | 15 +++++++++++----
 2 files changed, 15 insertions(+), 4 deletions(-)
 create mode 100755 recipes-security/scapy/scapy/run-ptest
 rename recipes-security/scapy/{scapy_2.3.1.bb => scapy_2.3.2.bb} (71%)

diff --git a/recipes-security/scapy/scapy/run-ptest b/recipes-security/scapy/scapy/run-ptest
new file mode 100755
index 0000000..91b29f9
--- /dev/null
+++ b/recipes-security/scapy/scapy/run-ptest
@@ -0,0 +1,4 @@
+#!/bin/sh
+UTscapy -t regression.uts -f text -l -C \
+    -o @PTEST_PATH@/scapy_ptest_$(date +%Y%m%d-%H%M%S).log \
+    2>&1 | sed -e 's/^passed None/PASS:/' -e 's/^failed None/FAIL:/'
diff --git a/recipes-security/scapy/scapy_2.3.1.bb b/recipes-security/scapy/scapy_2.3.2.bb
similarity index 71%
rename from recipes-security/scapy/scapy_2.3.1.bb
rename to recipes-security/scapy/scapy_2.3.2.bb
index d8c731b..0a42ad9 100644
--- a/recipes-security/scapy/scapy_2.3.1.bb
+++ b/recipes-security/scapy/scapy_2.3.2.bb
@@ -5,12 +5,19 @@ LICENSE = "GPLv2"
 
 LIC_FILES_CHKSUM = "file://bin/scapy;beginline=9;endline=13;md5=1d5249872cc54cd4ca3d3879262d0c69"
 
-SRC_URI = "https://bitbucket.org/secdev/${PN}/downloads/${BP}.zip"
+SRC_URI = "https://github.com/secdev/${BPN}/archive/v${PV}.tar.gz;downloadfilename=${BP}.tar.gz \
+           file://run-ptest \
+"
 
-SRC_URI[md5sum] = "a30d828e59801d1d092219b349f1da9e"
-SRC_URI[sha256sum] = "8972c02e39a826a10c02c2bdd5025f7251dce9589c57befd9bb55c65f02e4934"
+SRC_URI[md5sum] = "00f11df3d6b46fe6ac306efd757486f9"
+SRC_URI[sha256sum] = "1b8a86d687feb8ed01114c0c016b428674cbfec04e3eb6f5249a018c427c4f6a"
 
-inherit setuptools
+inherit setuptools ptest
+
+do_install_ptest() {
+    install -m 0644 ${S}/test/regression.uts ${D}${PTEST_PATH}
+    sed -i 's,@PTEST_PATH@,${PTEST_PATH},' ${D}${PTEST_PATH}/run-ptest
+}
 
 RDEPENDS_${PN} = "tcpdump python-subprocess python-compression python-netclient  \
                   python-netserver python-pydoc python-pkgutil python-shell \
-- 
2.8.3


