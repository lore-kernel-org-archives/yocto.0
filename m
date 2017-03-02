Return-Path: <Adrian.Calianu@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F201E009DA; Thu,  2 Mar 2017 04:55:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.181.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 270 seconds by postgrey-1.32 at yocto-www;
	Thu, 02 Mar 2017 04:55:02 PST
Received: from smtp-out11.electric.net (smtp-out11.electric.net
	[185.38.181.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEFFCE00970
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 04:55:02 -0800 (PST)
Received: from 1cjQBi-0004wJ-V2 by out11a.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Calianu@enea.com>) id 1cjQBi-0004zV-W9
	for yocto@yoctoproject.org; Thu, 02 Mar 2017 04:50:30 -0800
Received: by emcmailer; Thu, 02 Mar 2017 04:50:30 -0800
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out11a.electric.net with esmtps (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.87) (envelope-from <Adrian.Calianu@enea.com>)
	id 1cjQBi-0004wJ-V2
	for yocto@yoctoproject.org; Thu, 02 Mar 2017 04:50:30 -0800
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.319.2; Thu, 2 Mar 2017
	13:50:30 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4191)	id 75DC228B5D8;
	Thu,  2 Mar 2017 13:50:30 +0100 (CET)
From: Adrian Calianu <adrian.calianu@enea.com>
To: <yocto@yoctoproject.org>
Date: Thu, 2 Mar 2017 13:50:17 +0100
Message-ID: <1488459017-15312-4-git-send-email-adrian.calianu@enea.com>
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
Subject: [meta-java][PATCH 3/3] jamvm: add missing dependencies
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

Fix build issues according to latest poky changes
where all dependencies must be installed into recipe
work folder.

Signed-off-by: Adrian Calianu <adrian.calianu@enea.com>
---
 recipes-core/jamvm/jamvm.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-core/jamvm/jamvm.inc b/recipes-core/jamvm/jamvm.inc
index 880b1e7..cad91a2 100644
--- a/recipes-core/jamvm/jamvm.inc
+++ b/recipes-core/jamvm/jamvm.inc
@@ -4,7 +4,7 @@ LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
 
 DEPENDS = "zlib classpath virtual/javac-native libffi virtual/java-initial-native"
-DEPENDS_virtclass-native = "zlib-native classpath-native ecj-initial-native libffi-native"
+DEPENDS_virtclass-native = "virtual/java-initial-native classpath-initial-native zlib-native classpath-native ecj-initial-native libffi-native"
 
 RDEPENDS_${PN} = "classpath"
 RDEPENDS_${PN}_virtclass-native = ""
@@ -16,7 +16,7 @@ RPROVIDES_${PN}_virtclass-native = ""
 BBCLASSEXTEND = "native"
 
 
-inherit java autotools update-alternatives pkgconfig
+inherit java autotools update-alternatives pkgconfig relative_symlinks
 
 # This uses 32 bit arm, so force the instruction set to arm, not thumb
 ARM_INSTRUCTION_SET = "arm"
-- 
1.9.1


