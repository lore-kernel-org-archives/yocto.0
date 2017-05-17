Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85F0AE00B01; Wed, 17 May 2017 00:55:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B02E6E00AE4
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 00:54:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 May 2017 00:54:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,353,1491289200"; d="scan'208";a="87816535"
Received: from heimdall.fi.intel.com ([10.237.68.147])
	by orsmga002.jf.intel.com with ESMTP; 17 May 2017 00:54:56 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 17 May 2017 10:54:54 +0300
Message-Id: <4ed846be354d15d40c24501b029f85439dd33fed.1495007050.git.jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1495007050.git.jussi.kukkonen@intel.com>
References: <cover.1495007050.git.jussi.kukkonen@intel.com>
Subject: [libfakekey][PATCH 1/2] tests/Makefile.am: Add missing LIBS
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
X-List-Received-Date: Wed, 17 May 2017 07:55:01 -0000

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---
 tests/Makefile.am | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/Makefile.am b/tests/Makefile.am
index 67ed38b..aac1dbd 100644
--- a/tests/Makefile.am
+++ b/tests/Makefile.am
@@ -2,4 +2,4 @@ INCLUDES=-I${top_srcdir}/src -I${top_srcdir} $(FAKEKEY_CFLAGS)
 
 noinst_PROGRAMS=fakekey-test
 
-fakekey_test_LDADD=../src/libfakekey.la
\ No newline at end of file
+fakekey_test_LDADD=../src/libfakekey.la $(FAKEKEY_LIBS)
-- 
2.11.0


