Return-Path: <jaap.dejong@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0192E00AD5; Fri,  7 Apr 2017 06:19:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [213.160.213.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.nedap.com (smtp4.nedap.com [213.160.213.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26D29E00A0A
	for <yocto@yoctoproject.org>; Fri,  7 Apr 2017 06:19:49 -0700 (PDT)
Received: from nvc2354.nedap.local (10.1.8.77) by NVS0468.nedap.local
	(10.1.8.59) with Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Fri, 7 Apr 2017 15:19:48 +0200
From: Jaap de Jong <jaap.dejong@nedap.com>
To: <yocto@yoctoproject.org>
Date: Fri, 7 Apr 2017 15:19:39 +0200
Message-ID: <1491571179-28844-1-git-send-email-jaap.dejong@nedap.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.1.8.77]
X-ClientProxiedBy: NVS0468.nedap.local (10.1.8.59) To NVS0468.nedap.local
	(10.1.8.59)
Subject: [meta-oracle-java][PATCH] oracle-jse-ejre: Fix destination
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
X-List-Received-Date: Fri, 07 Apr 2017 13:19:54 -0000
Content-Type: text/plain

---
 recipes-devtools/oracle-java/oracle-jse-ejre.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
index bea4a03..0af0b6b 100644
--- a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
@@ -19,7 +19,7 @@ LIC_FILES_CHKSUM = "\
 	"
 
 do_compile() {
-	DEST=${S}/ejre${PV}_${PV_UPDATE}
+	DEST=${S}/ejre${PV}_${PV_UPDATE}/jre
 	rm -rf ${DEST}
 	JAVA_HOME=${STAGING_DIR_NATIVE}/${JDK_HOME} ejdk${PV}_${PV_UPDATE}/bin/jrecreate.sh --dest ${DEST}
 }
-- 
2.7.4


