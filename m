Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3AB0E00D41; Fri, 27 Oct 2017 04:23:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.35.17.14 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1953 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 Oct 2017 04:23:55 PDT
Received: from david.siemens.de (david.siemens.de [192.35.17.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77121E00D3E
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 04:23:54 -0700 (PDT)
Received: from mail3.siemens.de (mail3.siemens.de [139.25.208.14])
	by david.siemens.de (8.15.2/8.15.2) with ESMTPS id v9RApIfJ019691
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK); 
	Fri, 27 Oct 2017 12:51:18 +0200
Received: from dev.sbt.siemens.com (MD1FZU9C.ad001.siemens.net [139.16.78.244])
	by mail3.siemens.de (8.15.2/8.15.2) with ESMTP id v9RApIHX020480;
	Fri, 27 Oct 2017 12:51:18 +0200
From: Pascal Bach <pascal.bach@siemens.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Fri, 27 Oct 2017 12:51:06 +0200
Message-Id: <1509101466-32192-1-git-send-email-pascal.bach@siemens.com>
X-Mailer: git-send-email 2.1.4
Subject: [meta-mono][PATCH] mono-4.xx: compiling mono 4 with btls requires cmake
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
X-List-Received-Date: Fri, 27 Oct 2017 11:23:56 -0000

This was probably working before pyro and the recipes specific sysroots.

Signed-off-by: Pascal Bach <pascal.bach@siemens.com>
---
 recipes-mono/mono/mono-4.xx.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-mono/mono/mono-4.xx.inc b/recipes-mono/mono/mono-4.xx.inc
index e06fac7..cf9170b 100644
--- a/recipes-mono/mono/mono-4.xx.inc
+++ b/recipes-mono/mono/mono-4.xx.inc
@@ -4,7 +4,7 @@ HOMEPAGE = "http://mono-project.com"
 BUGTRACKER = "http://bugzilla.xamarin.com/"
 SECTION = "devel"
 
-DEPENDS = "zlib"
+DEPENDS = "zlib cmake-native"
 
 SRC_URI = "http://download.mono-project.com/sources/mono/mono-${PV}.tar.bz2 \
            file://dllmap-config.in.diff \
-- 
2.1.4


