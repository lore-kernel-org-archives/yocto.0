Return-Path: <slyfox@gentoo.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E521E00AB3; Wed, 10 Oct 2018 14:00:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [140.211.166.183 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from smtp.gentoo.org (smtp.gentoo.org [140.211.166.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B564E00718
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 14:00:01 -0700 (PDT)
Received: from sf.home (host81-154-9-133.range81-154.btcentralplus.com
	[81.154.9.133])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested) (Authenticated sender: slyfox)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 70CC03409E6;
	Wed, 10 Oct 2018 20:50:23 +0000 (UTC)
Received: by sf.home (Postfix, from userid 1000)
	id EF13621951BA5; Wed, 10 Oct 2018 21:50:17 +0100 (BST)
From: Sergei Trofimovich <slyfox@gentoo.org>
To: mark.hatle@windriver.com
Date: Wed, 10 Oct 2018 21:50:10 +0100
Message-Id: <20181010205010.23640-1-slyfox@gentoo.org>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 10 Oct 2018 14:01:48 -0700
Cc: yocto@yoctoproject.org, Sergei Trofimovich <slyfox@gentoo.org>
Subject: [prelink-cross] [PATCH] testsuite/functions.sh: produce deterministic GNU_PRELINK section
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
X-List-Received-Date: Wed, 10 Oct 2018 21:00:02 -0000
Content-Transfer-Encoding: 8bit

Before the change one test failed due to timestamp drift:
  FAIL: shuffle7.sh

This happens because prelinking takes time on the file
and timestamp differs slightly.

Avoid timestamp drift by overriding real timestamp
with PRELINK_TIMESTAMP variable.

Signed-off-by: Sergei Trofimovich <slyfox@gentoo.org>
---
 testsuite/functions.sh | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/testsuite/functions.sh b/testsuite/functions.sh
index 85bf875..5e98725 100755
--- a/testsuite/functions.sh
+++ b/testsuite/functions.sh
@@ -4,6 +4,12 @@ CCLINK=${CCLINK:-${CC} -Wl,--dynamic-linker=`echo ./ld*.so.*[0-9]`}
 CXX="${CXX:-g++} ${LINKOPTS}"
 CXXLINK=${CXXLINK:-${CXX} -Wl,--dynamic-linker=`echo ./ld*.so.*[0-9]`}
 PRELINK=${PRELINK:-../src/prelink -c ./prelink.conf -C ./prelink.cache --ld-library-path=. --dynamic-linker=`echo ./ld*.so.*[0-9]`}
+
+# force deterministic timestamps to make double prelinking
+# to produce unmodified binary.
+PRELINK_TIMESTAMP=${PRELINK_TIMESTAMP:-12345678}
+export PRELINK_TIMESTAMP
+
 srcdir=${srcdir:-`dirname $0`}
 savelibs() {
   for i in $LIBS $BINS; do cp -p $i $i.orig; done
-- 
2.19.1


