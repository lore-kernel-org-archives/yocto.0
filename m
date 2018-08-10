Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B75FEE00C8B; Fri, 10 Aug 2018 01:11:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 304ECE00D82
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 01:10:58 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w7A8AcdC004440
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 01:10:48 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.399.0; Fri, 10 Aug 2018 01:10:27 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 10 Aug 2018 16:10:00 +0800
Message-ID: <1533888603-57726-4-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1533888603-57726-1-git-send-email-changqing.li@windriver.com>
References: <1533888603-57726-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
Subject: [PATCH][meta-cgl] libtest-pod-perl: 1.51 -> 1.52
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
X-List-Received-Date: Fri, 10 Aug 2018 08:11:04 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 .../perl/{libtest-pod-perl_1.51.bb => libtest-pod-perl_1.52.bb}       | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-cgl-common/recipes-perl/perl/{libtest-pod-perl_1.51.bb => libtest-pod-perl_1.52.bb} (78%)

diff --git a/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.51.bb b/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.52.bb
similarity index 78%
rename from meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.51.bb
rename to meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.52.bb
index 230576f..ff5538e 100644
--- a/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.51.bb
+++ b/meta-cgl-common/recipes-perl/perl/libtest-pod-perl_1.52.bb
@@ -12,8 +12,8 @@ RDEPENDS_${PN} += " perl-module-test-more \
 PR = "r2"
 
 SRC_URI ="http://search.cpan.org/CPAN/authors/id/E/ET/ETHER/Test-Pod-${PV}.tar.gz;name=test-pod-perl-${PV}"
-SRC_URI[test-pod-perl-1.51.md5sum] = "f806aa84de2f0c0fba48b3a5a8a4aecf"
-SRC_URI[test-pod-perl-1.51.sha256sum] = "c1a1d3cedf4a579e3aad89c36f9878a8542b6656dbe71f1581420f49582d7efb"
+SRC_URI[test-pod-perl-1.52.md5sum] = "472dda77746d48e6465bf62e47aeca81"
+SRC_URI[test-pod-perl-1.52.sha256sum] = "60a8dbcc60168bf1daa5cc2350236df9343e9878f4ab9830970a5dde6fe8e5fc"
 S = "${WORKDIR}/Test-Pod-${PV}"
 
 inherit cpan
-- 
2.7.4


