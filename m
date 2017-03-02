Return-Path: <Adrian.Calianu@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05207E008D0; Thu,  2 Mar 2017 04:55:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.181.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out11.electric.net (smtp-out11.electric.net
	[185.38.181.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88EA9E008F2
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 04:55:03 -0800 (PST)
Received: from 1cjQBi-0004wJ-V0 by out11a.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Calianu@enea.com>) id 1cjQBi-000501-WD
	for yocto@yoctoproject.org; Thu, 02 Mar 2017 04:50:30 -0800
Received: by emcmailer; Thu, 02 Mar 2017 04:50:30 -0800
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out11a.electric.net with esmtps (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.87) (envelope-from <Adrian.Calianu@enea.com>)
	id 1cjQBi-0004wJ-V0
	for yocto@yoctoproject.org; Thu, 02 Mar 2017 04:50:30 -0800
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.319.2; Thu, 2 Mar 2017
	13:50:30 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4191)	id 66C1128B58F;
	Thu,  2 Mar 2017 13:50:30 +0100 (CET)
From: Adrian Calianu <adrian.calianu@enea.com>
To: <yocto@yoctoproject.org>
Date: Thu, 2 Mar 2017 13:50:15 +0100
Message-ID: <1488459017-15312-2-git-send-email-adrian.calianu@enea.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1488459017-15312-1-git-send-email-adrian.calianu@enea.com>
References: <1488459017-15312-1-git-send-email-adrian.calianu@enea.com>
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: adrian.calianu@enea.com does not
	designate permitted sender hosts)
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Calianu@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:ECDHE-RSA-AES256-SHA:256
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: [meta-java][PATCH 1/3] classpath-native: fix build dependencies
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
X-List-Received-Date: Thu, 02 Mar 2017 12:55:06 -0000
Content-Type: text/plain

Add missing dependencies in order to build according
to latest changes done in poky where all dependencies
must be installed relative to recipe WORKDIR.

Signed-off-by: Adrian Calianu <adrian.calianu@enea.com>
---
 recipes-core/classpath/classpath-native_0.99.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/classpath/classpath-native_0.99.bb b/recipes-core/classpath/classpath-native_0.99.bb
index d49d7d7..a97cae0 100644
--- a/recipes-core/classpath/classpath-native_0.99.bb
+++ b/recipes-core/classpath/classpath-native_0.99.bb
@@ -1,7 +1,7 @@
 require classpath-native.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=af0004801732bc4b20d90f351cf80510"
-DEPENDS += "ecj-initial-native virtual/java-initial-native"
+DEPENDS += "classpath-initial-native ecj-initial-native virtual/java-initial-native"
 
 PR = "${INC_PR}.0"
 
-- 
1.9.1


