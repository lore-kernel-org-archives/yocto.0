Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67B80E00BF3; Tue, 25 Aug 2015 02:11:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 3E911E00BAE
	for <yocto@yoctoproject.org>; Tue, 25 Aug 2015 02:11:56 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 25 Aug 2015 11:11:54 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id 32C9A28BA20;
	Tue, 25 Aug 2015 11:11:55 +0200 (CEST)
From: Alexandru.Vaduva <alexandru.vaduva@linux.com>
To: <yocto@yoctoproject.org>
Date: Tue, 25 Aug 2015 11:10:54 +0200
Message-ID: <1440493854-62923-1-git-send-email-alexandru.vaduva@linux.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: Pass (SESTOEX08.enea.se: domain of alexandru.vaduva@linux.com
	designates 172.21.3.145 as permitted sender) receiver=SESTOEX08.enea.se;
	client-ip=172.21.3.145; helo=sestofb10.enea.se;
Cc: alex <alexandru.vaduva@linux.com>
Subject: [meta-cgl][PATCH] README: updated maintainers and general content accordingly
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
X-List-Received-Date: Tue, 25 Aug 2015 09:11:59 -0000
Content-Type: text/plain

From: alex <alexandru.vaduva@linux.com>

Signed-off-by: Alexandru.Vaduva <alexandru.vaduva@linux.com>
---
 README | 23 +++++++----------------
 1 file changed, 7 insertions(+), 16 deletions(-)

diff --git a/README b/README
index d25fb0b..7d48b4c 100644
--- a/README
+++ b/README
@@ -44,7 +44,9 @@ http://git.yoctoproject.org/git/meta-cgl
 Maintenance
 ===========
 
-Maintainers: Enea Linux Team <linux-maintainers@enea.com>
+Maintainers:
+    Alexandru Vaduva <alexandru.vaduva@linux.com>
+    Joe MacDonald <joe_macdonald@mentor.com>
 
 
 Contributing
@@ -61,6 +63,7 @@ here: https://wiki.yoctoproject.org/wiki/Contribution_Guidelines
 example:
 git send-email -1 -M --to yocto@yoctoproject.org  --subject-prefix=meta-cgl][PATCH
 
+
 Table of Contents
 =================
 
@@ -84,12 +87,13 @@ other layers needed. Adapt the below list to proper format.
   BBLAYERS:
 
     meta
-    meta-cgl
+    meta-cgl/meta-cgl-common
     meta-qt3
     meta-openembedded/meta-networking
     meta-openembedded/meta-filesystems
     meta-openembedded/meta-oe
     meta-openembedded/meta-perl
+    meta-openembedded/meta-python
     meta-yocto
     meta-yocto-bsp
     meta-virtualization
@@ -105,6 +109,7 @@ Now there is available the "cgl-init-build-env" script which could be used to
 automize the above mentione information:
 ./scripts/cgl-checkout -b master -l meta-fsl-ppc
 
+
 II. Misc
 ========
 
@@ -139,17 +144,3 @@ or programming language operations required in the application system at
 a later stage.
     Interface - shared boundary or connection between two dissimilar
 objects, devices or systems.
-
-    Users of this layer might experience a problem with openipmi package, if this happens then this
-package can be removed from packagegroup-cgl-middleware.bb package group and exclude it from the
-image used for building a CGL compliant image.
-    The latest tested head for the depending layers were:
-        poky:                   bb00d83675a1293ee8d7a3ac22cf01243fa2397b
-        meta-cloud-services:    a06e28ced8f622dbe6d6fbd9bea20b215d8ac938
-        meta-openclovis:        83b1f76a75266743dc9eb0238039d5b973ad8ac0
-        meta-qt3:               3016129d90b7ac8517a5227d819f10ad417b5b45
-        meta-security:          b3f08c7b2bdf1bea28b081319d7c135af45f39e3
-        meta-selinux:           1699b56fd801f0194b708b4a1d9d95a831a3bbe4
-        meta-virtualization:    b94455174264240bf8519e4148ea5f1fb38d55c6
-    The machine for which this layer was tested are: 'qemuppc' and 'p2020rdb'. The latest tested head
-for meta-fsl-ppc layer is:      d953212ae5936a7d969d13801b0c2c1eb65cee6f
-- 
1.9.1


