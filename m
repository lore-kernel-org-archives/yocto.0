Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A78EDE00566; Fri,  8 Aug 2014 09:40:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 01AFFE00563
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 09:40:04 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.158.1; Fri, 8 Aug 2014
	18:39:59 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 225DC288FE2;
	Fri,  8 Aug 2014 18:39:59 +0200 (CEST)
From: "Maxin B. John" <maxin.john@enea.com>
To: <yocto@yoctoproject.org>
Date: Fri, 8 Aug 2014 18:39:50 +0200
Message-ID: <1407515991-63868-5-git-send-email-maxin.john@enea.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1407515991-63868-1-git-send-email-maxin.john@enea.com>
References: <1407515991-63868-1-git-send-email-maxin.john@enea.com>
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Subject: [meta-oracle-java][PATCH 4/5] oracle-jse-jre-i586: add custom fetch method
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
X-List-Received-Date: Fri, 08 Aug 2014 16:40:07 -0000
Content-Type: text/plain

Provide a custom fetch method to avoid manual downloading of binaries.

Signed-off-by: Maxin B. John <maxin.john@enea.com>
---
 recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
index 6125025..1fca3a8 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
+++ b/recipes-devtools/oracle-java/oracle-jse-jre-i586_1.7.0.bb
@@ -1,4 +1,3 @@
-PR = "r0"
 PV_UPDATE = "25"
 
 require oracle-jse-jre.inc
@@ -7,3 +6,12 @@ SRC_URI = "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jre-7u25-linux-i
 
 SRC_URI[md5sum] = "0e9ccefe49e937e592dbb605f2e8e7d8"
 SRC_URI[sha256sum] = "4016965536d8607743267812ab04e6d428036dda432893748c1df6cb77b09628"
+
+RDEPENDS_${PN} = "libxml2 libx11 glib-2.0 alsa-lib libxext libxtst libxrender \
+                  fontconfig libxxf86vm"
+
+do_fetch () {
+  wget  --header=Cookie:oraclelicense=a ${SRC_URI} -O ${DL_DIR}/jre-7u25-linux-i586.tar.gz
+}
+
+COMPATIBLE_HOST = '(i.86.*)-(linux)'
-- 
1.9.1


