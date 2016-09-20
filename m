Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DE31E00B52; Tue, 20 Sep 2016 07:25:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.180.40 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 68 seconds by postgrey-1.32 at yocto-www;
	Tue, 20 Sep 2016 07:25:02 PDT
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A2B6E00B52
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 07:25:02 -0700 (PDT)
Received: from 1bmLxg-0007kd-UW by out10d.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1bmLxg-0007lb-Vg
	for yocto@yoctoproject.org; Tue, 20 Sep 2016 07:23:52 -0700
Received: by emcmailer; Tue, 20 Sep 2016 07:23:52 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10d.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1bmLxg-0007kd-UW
	for yocto@yoctoproject.org; Tue, 20 Sep 2016 07:23:52 -0700
Received: from sestofb11.enea.se (172.21.3.152) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 20 Sep 2016 16:23:51 +0200
Received: by sestofb11.enea.se (Postfix, from userid 4451)	id 2291D440421;
	Tue, 20 Sep 2016 16:23:52 +0200 (CEST)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 20 Sep 2016 16:23:50 +0200
Message-ID: <1474381432-28259-2-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1474381432-28259-1-git-send-email-adrian.dudau@enea.com>
References: <1474381432-28259-1-git-send-email-adrian.dudau@enea.com>
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: [meta-cgl][PATCHv2 1/3] packagegroup-cgl-middleware: Add multipath-tools
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
X-List-Received-Date: Tue, 20 Sep 2016 14:25:06 -0000
Content-Type: text/plain

Remove the other multipath related packages which are not necessary.

CGL requirements AVL.7.1.*

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
index 448e038..b0c2cac 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
@@ -18,14 +18,8 @@ DHCP = " \
     "
 
 MULTIPATH_TOOLS = " \
-    libmpathpersist \
-    mpathpersist \
+    multipath-tools \
     kpartx \
-    libmultipath \
-    multipath \
-    multipathd \
-    libmultipath-dev \
-    libmpathpersist-dev \
     "
 
 RDEPENDS_packagegroup-cgl-middleware = "\
-- 
1.9.1


