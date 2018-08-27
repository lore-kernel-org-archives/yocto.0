Return-Path: <joe.slater@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E2C2E00939; Mon, 27 Aug 2018 14:41:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DFEBE0053F
	for <yocto@yoctoproject.org>; Mon, 27 Aug 2018 14:40:59 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w7RLewW2007325
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 27 Aug 2018 14:40:58 -0700 (PDT)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.408.0;
	Mon, 27 Aug 2018 14:40:57 -0700
From: Joe Slater <joe.slater@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 27 Aug 2018 14:40:57 -0700
Message-ID: <20180827214057.222319-1-joe.slater@windriver.com>
X-Mailer: git-send-email 2.13.0
MIME-Version: 1.0
Cc: joe.slater@windriver.com
Subject: [meta-security][PATCH 1/1] keynote: add dependency on bison-native
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
X-List-Received-Date: Mon, 27 Aug 2018 21:41:00 -0000
Content-Type: text/plain

bison/yacc is no longer automatically supplied.

Signed-off-by: Joe Slater <joe.slater@windriver.com>
---
 recipes-security/keynote/keynote_2.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/keynote/keynote_2.3.bb b/recipes-security/keynote/keynote_2.3.bb
index e692485..0300894 100644
--- a/recipes-security/keynote/keynote_2.3.bb
+++ b/recipes-security/keynote/keynote_2.3.bb
@@ -23,7 +23,7 @@ inherit autotools-brokensep ptest
 SRC_URI[md5sum] = "a14553e6ad921b5c85026ce5bec3afe7"
 SRC_URI[sha256sum] = "38d2acfa1c3630a07adcb5c8fe92d2aef7f0e6d242b8998b2bbb1c6e4c408d46"
 
-DEPENDS = "flex openssl"
+DEPENDS = "flex openssl bison-native"
 
 EXTRA_OEMAKE += "test-sample -j1"
 
-- 
2.7.4


