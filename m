Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59BF8E00801; Thu,  7 Aug 2014 01:48:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id AA2D6E007FE
	for <yocto@yoctoproject.org>; Thu,  7 Aug 2014 01:48:24 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.158.1; Thu, 7 Aug 2014
	10:48:22 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 64200288F36;
	Thu,  7 Aug 2014 10:48:22 +0200 (CEST)
From: "Maxin B. John" <maxin.john@enea.com>
To: <yocto@yoctoproject.org>
Date: Thu, 7 Aug 2014 10:48:14 +0200
Message-ID: <1407401294-53559-1-git-send-email-maxin.john@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Subject: [meta-oracle-java][PATCH] README: Update Maintainers list
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
X-List-Received-Date: Thu, 07 Aug 2014 08:48:32 -0000
Content-Type: text/plain

Update the maintainers list
---
 README | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/README b/README
index e65bd7b..7dea1ea 100644
--- a/README
+++ b/README
@@ -30,7 +30,15 @@ in build configuration file (conf/local.conf)
 
 Where to Send Patches
 =====================
-Please submit any patches against this layer to the Yocto mailing list
-(yocto@yoctoproject.org) and cc: the maintainer:
+Please submit any patches against this layer to the Yocto mailing list like:
 
-Maintainer: Nitin A Kamble <nitin.a.kamble@intel.com>
+git send-email --to=yocto@yoctoproject.org -M -1 --subject-prefix="meta-oracle-java][PATCH"
+
+Please substitute "PATCH" with "PATCH v2" if you are submitting a revised version after
+addressing feedback (or v3, v4 etc.)
+
+Maintainers:
+Bruce Ashfield <bruce.ashfield@windriver.com>
+Pavel Shumeika <Pavel_Shumeika@epam.com>
+Maxin B. John <maxin.john@enea.com>
+Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
-- 
1.9.1


