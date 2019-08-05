Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B04E3E00C27; Sun,  4 Aug 2019 20:21:01 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 330A0E00D8E
	for <yocto@yoctoproject.org>; Sun,  4 Aug 2019 20:20:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x753KI9I024539
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 4 Aug 2019 20:20:29 -0700
Received: from localhost (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Sun, 4 Aug 2019 20:20:08 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <akuster808@gmail.com>
Date: Mon, 5 Aug 2019 11:20:01 +0800
Message-ID: <1564975201-29244-2-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564975201-29244-1-git-send-email-yi.zhao@windriver.com>
References: <1564975201-29244-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.195]
Subject: [meta-security][PATCH 2/2] scap-security-guide: fix typo
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
X-List-Received-Date: Mon, 05 Aug 2019 03:21:01 -0000
Content-Type: text/plain

Fix typo: RDEPNEDS_${PN} -> RDEPENDS_${PN}

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../recipes-openscap/scap-security-guide/scap-security-guide.inc        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
index d123561..341721a 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=97662e4486d9a1d09f358851d9f41a1a"
 LICENSE = "LGPL-2.1"
 
 DEPENDS = "openscap-native python3 python3-pyyaml-native python3-jinja2-native libxml2-native"
-RDEPNEDS_${PN} = "openscap"
+RDEPENDS_${PN} = "openscap"
 
 S = "${WORKDIR}/git"
 
-- 
2.7.4


