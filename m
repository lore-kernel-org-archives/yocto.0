Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA96CE00EEC; Fri, 20 May 2016 04:52:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44BAEE00EE5
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 04:52:39 -0700 (PDT)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])
	by msfrf2604.sfr.fr (SMTP Server) with ESMTP id ADF5B1C005C32;
	Fri, 20 May 2016 13:52:38 +0200 (CEST)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2604.sfr.fr (SMTP Server) with ESMTPSA;
	Fri, 20 May 2016 13:52:37 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Fri, 20 May 2016 19:51:47 +0800
Message-Id: <1463745113-55142-8-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1463745113-55142-1-git-send-email-herve.jourdain@neuf.fr>
References: <1463745113-55142-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v2 07/13] firmware.inc: bump version to support vc4graphics
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
X-List-Received-Date: Fri, 20 May 2016 11:52:39 -0000

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 recipes-bsp/common/firmware.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 8f095b9..b467fc6 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,5 +1,5 @@
-RPIFW_SRCREV ?= "c5e131971c323f5658c7c5d4b1dd105d37903a99"
-RPIFW_DATE ?= "20160421"
+RPIFW_SRCREV ?= "c17fa41b8e8321d891230f97837fee98feebc1ac"
+RPIFW_DATE ?= "20160513"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
2.7.4


