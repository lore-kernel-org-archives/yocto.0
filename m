Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7A81E006CC
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 06:01:36 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 8DC3640164;
	Wed, 30 Jan 2013 14:21:49 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 15:01:33 +0100
Message-Id: <461a6da937514cbab8527b6bd340c2feaa46c8d6.1359476560.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <a95e46a53364c364f900d15631e366785f1239a5.1359476560.git.timo.mueller@bmw-carit.de>
References: <cover.1359476560.git.timo.mueller@bmw-carit.de>
	<d8ee0c11e8def36416453669cc11dcaf9a53d282.1359476560.git.timo.mueller@bmw-carit.de>
	<95c2be703c8568993b9ed156ac5c6f3f55f5f5ac.1359476560.git.timo.mueller@bmw-carit.de>
	<162236628ecd020d007df425c5e92d560154c856.1359476560.git.timo.mueller@bmw-carit.de>
	<401cffb10bb37b8c09cc619aa964195c7f86a53a.1359476560.git.timo.mueller@bmw-carit.de>
	<6b6e68cb4b9d938918456b1089a3218fb5d1306b.1359476560.git.timo.mueller@bmw-carit.de>
	<7cf27bee15d63bef3f80921b5d3cb7cad3ee0a3d.1359476560.git.timo.mueller@bmw-carit.de>
	<d8794536b470d26adb1215bca4bdc548ee0d24bc.1359476560.git.timo.mueller@bmw-carit.de>
	<e5e95b1a6e34bcbe11925e66a470d270a9b3bed1.1359476560.git.timo.mueller@bmw-carit.de>
	<3fb57ad9e8ce5450d7b7a776c69c3671a8ae4775.1359476560.git.timo.mueller@bmw-carit.de>
	<f32e349409af888deef5a4c52073827da64d41f9.1359476560.git.timo.mueller@bmw-carit.de>
	<8b070e88f4f43f1385f5ce1ff018be977e8bd3e4.1359476560.git.timo.mueller@bmw-carit.de>
	<a95e46a53364c364f900d15631e366785f1239a5.1359476560.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1359476560.git.timo.mueller@bmw-carit.de>
References: <cover.1359476560.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v4 13/13] (TEMPORARY): Use origin/timo branch of yocto docs project
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
X-List-Received-Date: Wed, 30 Jan 2013 14:01:37 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

As the eclipse generation is currently not part of the master the
generation is always using the origin/timo branch to generate the
eclipse help. This patch is added for testing purposes only.

DO NOT MERGE THIS PATCH UPSTREAM - ONLY APPLY LOCALLY FOR TESTING

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 scripts/generate-doc.sh | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/scripts/generate-doc.sh b/scripts/generate-doc.sh
index edbacae..a49a089 100755
--- a/scripts/generate-doc.sh
+++ b/scripts/generate-doc.sh
@@ -48,6 +48,11 @@ else
 fi
 PLUGIN_FOLDER=`readlink -f $2`
 
+# ====================================================================
+# TODO remove this section if eclipse generation is merged into master
+REFERENCE=origin/timo
+# ====================================================================
+
 TOP=`pwd`
 
 DOC_DIR=${PLUGIN_FOLDER}/docs
-- 
1.7.11.7


