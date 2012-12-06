Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5203E0144D
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 07:48:41 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 840C64028F;
	Thu,  6 Dec 2012 16:13:01 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Thu,  6 Dec 2012 16:48:38 +0100
Message-Id: <0021e2c50161a819911d9604a7bc1666662a136a.1354805521.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <b5947a7db458d557db00e16819782a5e7fa8f5cb.1354805521.git.timo.mueller@bmw-carit.de>
References: <cover.1354805521.git.timo.mueller@bmw-carit.de>
	<b7c6bd306781ef02179f4b82c46cfa4f73792c1f.1354805521.git.timo.mueller@bmw-carit.de>
	<bde760220ffcfa140bab6930f327977ecf085f22.1354805521.git.timo.mueller@bmw-carit.de>
	<e247a383ace4fcb7a2cb47f7a88abd06b23166ac.1354805521.git.timo.mueller@bmw-carit.de>
	<97a95f82f6fb74dccfbdbafb5542bef21b8f82d2.1354805521.git.timo.mueller@bmw-carit.de>
	<48cf1e2fec74552d010f6fedc08f7758793be2ca.1354805521.git.timo.mueller@bmw-carit.de>
	<b5947a7db458d557db00e16819782a5e7fa8f5cb.1354805521.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354805521.git.timo.mueller@bmw-carit.de>
References: <cover.1354805521.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFCv3 7/7] (TEMPORARY): Use origin/timo branch of yocto docs project
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Dec 2012 15:48:42 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

As the eclipse generation is currently not part of the master the generation is always using the origin/timo branch to generate the eclipse help. This patch is added for testing purposes only.

DO NOT MERGE THIS PATCH UPSTREAM - ONLY APPLY LOCALLY FOR TESTING
---
 scripts/generate_doc.sh |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/scripts/generate_doc.sh b/scripts/generate_doc.sh
index 7d4911f..f5ae55e 100755
--- a/scripts/generate_doc.sh
+++ b/scripts/generate_doc.sh
@@ -48,6 +48,11 @@ else
 fi
 PLUGIN_FOLDER=$2
 
+# ====================================================================
+# TODO remove this section if eclipse generation is merged into master
+REFERENCE=origin/timo
+# ====================================================================
+
 TOP=`pwd`
 
 DOC_DIR=${PLUGIN_FOLDER}/docs
-- 
1.7.7.6


