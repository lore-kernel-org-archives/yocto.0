Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6EDAE00DB0; Fri, 11 Sep 2015 04:06:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.35.17.28 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from goliath.siemens.de (goliath.siemens.de [192.35.17.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F68DE00B6D
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 04:06:27 -0700 (PDT)
Received: from mail2.siemens.de (mail2.siemens.de [139.25.208.11])
	by goliath.siemens.de (8.15.2/8.15.2) with ESMTPS id t8BB6JPT031530
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 13:06:19 +0200
Received: from dev.sbt.siemens.com (MD1FZU9C.ww002.siemens.net [139.16.78.24])
	by mail2.siemens.de (8.15.1/8.15.1) with ESMTP id t8BB6JiB012887;
	Fri, 11 Sep 2015 13:06:19 +0200
From: Pascal Bach <pascal.bach@siemens.com>
To: yocto@yoctoproject.org
Date: Fri, 11 Sep 2015 13:06:12 +0200
Message-Id: <1441969572-24321-1-git-send-email-pascal.bach@siemens.com>
X-Mailer: git-send-email 2.1.4
Subject: [yocto-docs][PATCH] adt-manual: Change mentioning of YOCTOADT_IPKG_REPO to YOCTOADT_REPO
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
X-List-Received-Date: Fri, 11 Sep 2015 11:06:30 -0000

Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
---
 documentation/adt-manual/adt-prepare.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/adt-manual/adt-prepare.xml b/documentation/adt-manual/adt-prepare.xml
index 01f569f..c69966e 100644
--- a/documentation/adt-manual/adt-prepare.xml
+++ b/documentation/adt-manual/adt-prepare.xml
@@ -199,7 +199,7 @@
                             NFS booting to work.</note></para></listitem>
                     <listitem><para><filename>YOCTOADT_ROOTFS_</filename><replaceable>arch</replaceable>: The root
                         filesystem images you want to download from the
-                        <filename>YOCTOADT_IPKG_REPO</filename> repository.</para></listitem>
+                        <filename>YOCTOADT_REPO</filename> repository.</para></listitem>
                     <listitem><para><filename>YOCTOADT_TARGET_SYSROOT_IMAGE_</filename><replaceable>arch</replaceable>: The
                         particular root filesystem used to extract and create the target sysroot.
                         The value of this variable must have been specified with
-- 
2.1.4


