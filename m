Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20D1EE0055C; Thu,  5 Jan 2017 00:23:32 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A645CE00443
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 00:23:29 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v058NSZO003829
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 5 Jan 2017 00:23:28 -0800 (PST)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 5 Jan 2017 00:23:27 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 5 Jan 2017 00:23:18 -0800
Message-ID: <920f821bdf51d044f8c614487ad31c3a45d3ec93.1483601828.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1483601828.git.wenzong.fan@windriver.com>
References: <cover.1483601828.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/9] selinux: uprev include file to 20161014
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
X-List-Received-Date: Thu, 05 Jan 2017 08:23:32 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/{selinux_20160223.inc => selinux_20161014.inc} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/selinux/{selinux_20160223.inc => selinux_20161014.inc} (84%)

diff --git a/recipes-security/selinux/selinux_20160223.inc b/recipes-security/selinux/selinux_20161014.inc
similarity index 84%
rename from recipes-security/selinux/selinux_20160223.inc
rename to recipes-security/selinux/selinux_20161014.inc
index 4c1ef6b..c97e35b 100644
--- a/recipes-security/selinux/selinux_20160223.inc
+++ b/recipes-security/selinux/selinux_20161014.inc
@@ -1,4 +1,4 @@
-SELINUX_RELEASE = "20160223"
+SELINUX_RELEASE = "20161014"
 
 SRC_URI = "https://raw.githubusercontent.com/wiki/SELinuxProject/selinux/files/releases/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz"
 
-- 
2.7.4


