Return-Path: <B40527@freescale.com>
Received: from db8outboundpool.messaging.microsoft.com
	(mail-db8lp0187.outbound.messaging.microsoft.com [213.199.154.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC682E014F5
	for <yocto@yoctoproject.org>; Mon, 13 May 2013 20:36:41 -0700 (PDT)
Received: from mail208-db8-R.bigfish.com (10.174.8.232) by
	DB8EHSOBE008.bigfish.com (10.174.4.71) with Microsoft SMTP Server id
	14.1.225.23; Tue, 14 May 2013 03:36:40 +0000
Received: from mail208-db8 (localhost [127.0.0.1])	by
	mail208-db8-R.bigfish.com (Postfix) with ESMTP id 3DF9242033F	for
	<yocto@yoctoproject.org>; Tue, 14 May 2013 03:36:40 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1f42h1ee6h1de0h1fdah1202h1e76h1d1ah1d2ah1fc6hzz8275bhz2dh2a8h668h839hd24he5bhf0ah1288h12a5h12a9h12bdh12e5h1354h137ah139eh13b6h1441h1504h1537h162dh1631h1758h1898h18e1h1946h19b5h1ad9h1b0ah1d0ch1d2eh1d3fh1155h)
Received: from mail208-db8 (localhost.localdomain [127.0.0.1]) by mail208-db8
	(MessageSwitch) id 1368502597510479_18793;
	Tue, 14 May 2013 03:36:37 +0000 (UTC)
Received: from DB8EHSMHS017.bigfish.com (unknown [10.174.8.225])	by
	mail208-db8.bigfish.com (Postfix) with ESMTP id 793A02E007A	for
	<yocto@yoctoproject.org>; Tue, 14 May 2013 03:36:37 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB8EHSMHS017.bigfish.com
	(10.174.4.27) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 14 May 2013 03:36:37 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-004.039d.mgd.msft.net (10.84.1.14) with Microsoft SMTP
	Server (TLS) id 14.2.328.11; Tue, 14 May 2013 03:36:57 +0000
Received: from localhost.localdomain (rhuath.am.freescale.net [10.82.176.1])
	by tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id
	r4E3aYo7010659; Mon, 13 May 2013 20:36:35 -0700
From: <b40527@freescale.com>
To: <yocto@yoctoproject.org>
Date: Mon, 13 May 2013 22:36:34 -0500
Message-ID: <1368502594-31254-1-git-send-email-b40527@freescale.com>
X-Mailer: git-send-email 1.6.2.5
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Zongchun Yu <b40527@freescale.com>
Subject: [PATCH] toolchain-scripts.bbclass:add CROSS_COMPILE variable to environment-setup file
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
X-List-Received-Date: Tue, 14 May 2013 03:36:42 -0000
Content-Type: text/plain

From: Zongchun Yu <b40527@freescale.com>

when compiling the linux kernel manually. users will not have to set CROSS_COMPILE separately
---
 meta/classes/toolchain-scripts.bbclass |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/classes/toolchain-scripts.bbclass b/meta/classes/toolchain-scripts.bbclass
index 050e799..be5623b 100644
--- a/meta/classes/toolchain-scripts.bbclass
+++ b/meta/classes/toolchain-scripts.bbclass
@@ -47,6 +47,7 @@ toolchain_create_sdk_env_script () {
 	echo 'export OECORE_SDK_VERSION="${SDK_VERSION}"' >> $script
 	echo 'export PYTHONHOME=${SDKPATHNATIVE}${prefix_nativesdk}' >> $script
 	echo 'export ARCH=${ARCH}' >> $script
+	echo 'export CROSS_COMPILE=${TARGET_PREFIX}' >> $script
 }
 
 # This function creates an environment-setup-script in the TMPDIR which enables
@@ -92,6 +93,7 @@ toolchain_create_tree_env_script () {
 	echo 'export OECORE_DISTRO_VERSION="${DISTRO_VERSION}"' >> $script
 	echo 'export OECORE_SDK_VERSION="${SDK_VERSION}"' >> $script
 	echo 'export ARCH=${ARCH}' >> $script
+	echo 'export CROSS_COMPILE=${TARGET_PREFIX}' >> $script
 }
 
 # This function creates an environment-setup-script for use by the ADT installer
@@ -137,6 +139,7 @@ toolchain_create_sdk_env_script_for_installer () {
 	echo 'export OECORE_SDK_VERSION="${SDK_VERSION}"' >> $script
 	echo 'export PYTHONHOME=${SDKPATHNATIVE}${prefix_nativesdk}' >> $script
 	echo 'export ARCH=${ARCH}' >> $script
+	echo 'export CROSS_COMPILE=${TARGET_PREFIX}' >> $script
 }
 
 #we get the cached site config in the runtime
-- 
1.7.0.4



