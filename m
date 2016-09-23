Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 575E6E009BF; Thu, 22 Sep 2016 19:39:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10833E0081E
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 19:39:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u8N2ds8n022736
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 19:39:55 -0700 (PDT)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Thu, 22 Sep 2016 19:39:54 -0700
From: <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 23 Sep 2016 10:36:11 +0800
Message-ID: <20160923023611.16078-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.9.3
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] iproute2: make packageconfig selinux work
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
X-List-Received-Date: Fri, 23 Sep 2016 02:39:58 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

iproute2 calls command pkg-config to check whether libselinux exists
then enable or disable selinux support. That makes packageconfig doesn't
work.

The packageconfig selinux is set by checking whether distro feature
selinux exists in with-selinux.bbclass. Modify the configure result file
with same criteria.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 recipes-connectivity/iproute2/iproute2_%.bbappend | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/recipes-connectivity/iproute2/iproute2_%.bbappend b/recipes-connectivity/iproute2/iproute2_%.bbappend
index c1e8ed6..c866b54 100644
--- a/recipes-connectivity/iproute2/iproute2_%.bbappend
+++ b/recipes-connectivity/iproute2/iproute2_%.bbappend
@@ -1 +1,9 @@
 inherit with-selinux
+
+do_configure_append() {
+	if ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'true', 'false', d)}; then
+		sed -i 's/\(HAVE_SELINUX:=\).*/\1y/' ${B}/Config
+	else
+		sed -i 's/\(HAVE_SELINUX:=\).*/\1n/' ${B}/Config
+	fi
+}
-- 
2.9.3


