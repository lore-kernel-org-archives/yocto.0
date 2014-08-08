Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E285E0056A; Fri,  8 Aug 2014 09:40:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 76E5EE004DD
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 09:40:00 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.158.1; Fri, 8 Aug 2014
	18:39:57 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 8FE26288F3B;
	Fri,  8 Aug 2014 18:39:57 +0200 (CEST)
From: "Maxin B. John" <maxin.john@enea.com>
To: <yocto@yoctoproject.org>
Date: Fri, 8 Aug 2014 18:39:47 +0200
Message-ID: <1407515991-63868-2-git-send-email-maxin.john@enea.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1407515991-63868-1-git-send-email-maxin.john@enea.com>
References: <1407515991-63868-1-git-send-email-maxin.john@enea.com>
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Subject: [meta-oracle-java][PATCH 1/5] README: Update Notes
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
X-List-Received-Date: Fri, 08 Aug 2014 16:40:06 -0000
Content-Type: text/plain

1. Remove notes related to manual downloading of Oracle Java binaries
2. Add notes about the temporary fix for installing JRE packages

Signed-off-by: Maxin B. John <maxin.john@enea.com>
---
 README | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/README b/README
index 7dea1ea..3f4e177 100644
--- a/README
+++ b/README
@@ -19,14 +19,14 @@ LICENSE_FLAGS_WHITELIST += "oracle_java"
 
 Notes
 =====
-The download URLs mentioned in the SRCURI of the oracle-java recipes
-may show fetch issues with the built in bitbake wget fetcher. This is caused
-by the pre-requirement of clicking the "accept license" button on the oracle
-download webpage. So if you see fetch issues for the oracle java recipes,
-then you can overcome the issue by opening the SRCURI links manually in a web
-browser, downloading the tarballs, and storing in the bitbake download
-location. And the bitbake download location is specified by DL_DIR variable
-in build configuration file (conf/local.conf)
+There are some known install problems for JRE packages due to dependencies
+reported by RPM package manager. Switching to DEB or IPK packaging temporarily
+fixes this.
+ie:
+PACKAGE_CLASSES = "package_deb"
+or
+PACKAGE_CLASSES = "package_ipk"
+in your 'local.conf' file
 
 Where to Send Patches
 =====================
-- 
1.9.1


