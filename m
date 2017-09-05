Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00921E00CC0; Mon,  4 Sep 2017 23:00:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A295E00CA2
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 23:00:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8560386007428
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 4 Sep 2017 23:00:03 -0700 (PDT)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 4 Sep 2017 23:00:02 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 4 Sep 2017 22:59:43 -0700
Message-ID: <20170905055958.54697-6-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <20170905055958.54697-1-wenzong.fan@windriver.com>
References: <20170905055958.54697-1-wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 06/21] secilc: uprev to 2.7 (20170804)
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
X-List-Received-Date: Tue, 05 Sep 2017 06:00:08 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/{secilc_2.6.bb => secilc_2.7.bb} | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename recipes-security/selinux/{secilc_2.6.bb => secilc_2.7.bb} (35%)

diff --git a/recipes-security/selinux/secilc_2.6.bb b/recipes-security/selinux/secilc_2.7.bb
similarity index 35%
rename from recipes-security/selinux/secilc_2.6.bb
rename to recipes-security/selinux/secilc_2.7.bb
index 0f84b0e..611f165 100644
--- a/recipes-security/selinux/secilc_2.6.bb
+++ b/recipes-security/selinux/secilc_2.7.bb
@@ -1,7 +1,7 @@
-include selinux_20161014.inc
+include selinux_20170804.inc
 include ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=5fb82e8deb357d4e5fd8f3fed01d2f38"
 
-SRC_URI[md5sum] = "38c06fb8d97206a12016b4516ee23efc"
-SRC_URI[sha256sum] = "a84838c15bb7b0141238b48294b15ff0e1618107f547541a0067d1ddabcc9502"
+SRC_URI[md5sum] = "301a4e477bc7214be16558f7c2dcbcff"
+SRC_URI[sha256sum] = "9ec63dd64645c718f66d33c96299adfe0445b0aa62d7ac8c642f873c570609c5"
-- 
2.13.0


