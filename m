Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B58BE00C0E; Thu, 26 Nov 2015 00:03:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [203.254.224.33 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4376EE00BCC
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 00:02:50 -0800 (PST)
Received: from epcpsbgr4.samsung.com
	(u144.gpu120.samsung.co.kr [203.254.230.144])
	by mailout3.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NYE001TNX0DBLC0@mailout3.samsung.com> for
	yocto@yoctoproject.org; Thu, 26 Nov 2015 17:02:37 +0900 (KST)
Received: from epcpsbgm1new.samsung.com ( [172.20.52.122])
	by epcpsbgr4.samsung.com (EPCPMTA) with SMTP id 64.24.29659.D9CB6565;
	Thu, 26 Nov 2015 17:02:37 +0900 (KST)
X-AuditID: cbfee690-f79e96d0000073db-26-5656bc9d23ef
Received: from epmmp1.local.host ( [203.254.227.16])
	by epcpsbgm1new.samsung.com (EPCPMTA) with SMTP id 8A.15.24993.D9CB6565;
	Thu, 26 Nov 2015 17:02:37 +0900 (KST)
Received: from localhost.localdomain ([107.108.92.210])
	by mmp1.samsung.com (Oracle Communications Messaging Server 7.0.5.31.0
	64bit
	(built May 5 2014)) with ESMTPA id <0NYE00KH3WYK2MK0@mmp1.samsung.com>;
	Thu, 26 Nov 2015 17:02:37 +0900 (KST)
From: Maninder Singh <maninder1.s@samsung.com>
To: mark.hatle@windriver.com
Date: Thu, 26 Nov 2015 13:31:19 +0530
Message-id: <1448524880-31492-2-git-send-email-maninder1.s@samsung.com>
X-Mailer: git-send-email 1.7.9.5
In-reply-to: <1448524880-31492-1-git-send-email-maninder1.s@samsung.com>
References: <1448524880-31492-1-git-send-email-maninder1.s@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNLMWRmVeSWpSXmKPExsWyRsSkSnfunrAwg719YhYvXk1gsdi87iSz
	xYMLV5ks2t7+ZLM4PL+NxWLT84MsFvfebGWyOHRyLqPFpJdr2Bw4Pfq2rGL0WL9lK5NH+4k+
	tgDmKC6blNSczLLUIn27BK6M9d9usBe8Eq14snAjWwPjBqEuRg4OCQETiW3PM7oYOYFMMYkL
	99azdTFycQgJrGCUuHv2EztEwkRiTu8EdojEUkaJw8evMkM4Pxkl9r74zQRSxSagJ7Fq1x4W
	kKkiAjISr79xgdQwCzxmlJjTeZYVpEZYIEKiuXUN2FQWAVWJTzu/gtm8Au4S83a+YoG4SEFi
	ziQbkDCngIfE8qa5jCC2EFDJiYl3wfZKCCxil7i+7gojxBwBiW+TD0H1ykpsOsAMcbSkxMEV
	N1gmMAovYGRYxSiaWpBcUJyUXmSiV5yYW1yal66XnJ+7iREY5qf/PZuwg/HeAetDjAIcjEo8
	vAW2YWFCrIllxZW5hxhNgTZMZJYSTc4HRlNeSbyhsZmRhamJqbGRuaWZkjjva6mfwUIC6Ykl
	qdmpqQWpRfFFpTmpxYcYmTg4pRoYNTl+fbvycuqCte0Gv7N7OGaZ/3hx+njU8+gplrYfXXZ8
	2vZp1dEd3QwW94qdSpsYFaS0NjJ4L9F72nJq2TN7qUUGczbGKf0RCLGQfBV4795PL6nUX9sd
	9DvXaLZLOT/0Wqe9kfOjdGBhiqSqSOb5iaGbqkWsvTWKrRgkH5yYfUvdr2rC6S93lFiKMxIN
	tZiLihMBAWwvbG4CAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJIsWRmVeSWpSXmKPExsVy+t9jAd25e8LCDBZ28Vi8eDWBxWLzupPM
	Fg8uXGWyaHv7k83i8Pw2FotNzw+yWNx7s5XJ4tDJuYwWk16uYXPg9OjbsorRY/2WrUwe7Sf6
	2AKYoxoYbTJSE1NSixRS85LzUzLz0m2VvIPjneNNzQwMdQ0tLcyVFPISc1NtlVx8AnTdMnOA
	DlFSKEvMKQUKBSQWFyvp22GaEBripmsB0xih6xsSBNdjZIAGEtYwZqz/doO94JVoxZOFG9ka
	GDcIdTFyckgImEjM6Z3ADmGLSVy4t56ti5GLQ0hgKaPE4eNXmSGcn4wSe1/8ZgKpYhPQk1i1
	aw9LFyMHh4iAjMTrb1wgNcwCjxkl5nSeZQWpERaIkGhuXQM2lUVAVeLTzq9gNq+Au8S8na/A
	eiUEFCTmTLIBCXMKeEgsb5rLCGILAZWcmHiXeQIj7wJGhlWMEqkFyQXFSem5hnmp5XrFibnF
	pXnpesn5uZsYwdH0TGoH48Fd7ocYBTgYlXh4C2zDwoRYE8uKK3MPMUpwMCuJ8MZkA4V4UxIr
	q1KL8uOLSnNSiw8xmgLdNZFZSjQ5HxjpeSXxhsYm5qbGppYmFiZmlkrivBf2+4UJCaQnlqRm
	p6YWpBbB9DFxcEo1MG7Riv+ZetBjtrA058e82aqr2n0DpuqIuq71WMXN3BfzOd7jiEb+Ijee
	vtBdXIuvRKTWF4QldSzbVFrgyndtoWDPFq5HfdvVLzhvSpjL+Tk6RG7GRpbbO+b85ipl7tyt
	tXTTAudld6Mteo55TeDx6J15NeV516cmwZ87lmeLNof5hwfFuv35qsRSnJFoqMVcVJwIAM9n
	L6q8AgAA
DLP-Filter: Pass
X-MTR: 20000000000000000@CPGS
X-CFilter-Loop: Reflected
Cc: Vaneet Narang <v.narang@samsung.com>, hakbong5.lee@samsung.com,
	yocto@yoctoproject.org, doha.hwang@samsung.com,
	ajeet.y@samsung.com, akhilesh.k@samsung.com,
	Maninder Singh <maninder1.s@samsung.com>, pankaj.m@samsung.com
Subject: [prelink-cross][PATCH 1/2] testsuite: fixes in testsuite according to aarch64
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
X-List-Received-Date: Thu, 26 Nov 2015 08:03:10 -0000

This Patch fixes testsuite by adding support of aarch64

Signed-off-by: Vaneet Narang <v.narang@samsung.com>
Signed-off-by: Maninder Singh <maninder1.s@samsung.com>
---
 testsuite/reloc2.sh |    2 +-
 testsuite/reloc8.sh |    2 +-
 testsuite/reloc9.sh |    2 +-
 testsuite/tls3.sh   |    2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/testsuite/reloc2.sh b/testsuite/reloc2.sh
index b21d535..846182e 100755
--- a/testsuite/reloc2.sh
+++ b/testsuite/reloc2.sh
@@ -2,7 +2,7 @@
 . `dirname $0`/functions.sh
 SHFLAGS=
 case "`$RUN uname -m`" in
-  ia64|ppc*|x86_64|mips*|arm*) SHFLAGS=-fpic;; # Does not support non-pic shared libs
+  ia64|ppc*|x86_64|mips*|arm*|aarch64) SHFLAGS=-fpic;; # Does not support non-pic shared libs
   s390*) if file reloc1lib1.so | grep -q 64-bit; then SHFLAGS=-fpic; fi;;
 esac
 # Disable this test under SELinux if textrel
diff --git a/testsuite/reloc8.sh b/testsuite/reloc8.sh
index 46382af..c2644f4 100755
--- a/testsuite/reloc8.sh
+++ b/testsuite/reloc8.sh
@@ -13,7 +13,7 @@ rm -f reloc8 reloc8lib*.so reloc8.log
 rm -f prelink.cache
 NOCOPYRELOC=-Wl,-z,nocopyreloc
 case "`$RUN uname -m`" in
-  x86_64|s390*|sparc*) if file reloc1lib1.so | grep -q 64-bit; then NOCOPYRELOC=; fi;;
+  x86_64|s390*|sparc*|aarch64) if file reloc1lib1.so | grep -q 64-bit; then NOCOPYRELOC=; fi;;
 esac
 $RUN_HOST $CC -shared -O2 -Wl,-z,nocombreloc -fpic -o reloc8lib1.so $srcdir/reloc3lib1.c
 $RUN_HOST $CC -shared -O2 -Wl,-z,nocombreloc -fpic -o reloc8lib2.so $srcdir/reloc1lib2.c reloc8lib1.so
diff --git a/testsuite/reloc9.sh b/testsuite/reloc9.sh
index 4350c30..33d2845 100755
--- a/testsuite/reloc9.sh
+++ b/testsuite/reloc9.sh
@@ -13,7 +13,7 @@ rm -f reloc9 reloc9lib*.so reloc9.log
 rm -f prelink.cache
 NOCOPYRELOC=-Wl,-z,nocopyreloc
 case "`$RUN uname -m`" in
-  x86_64|s390*|sparc*) if file reloc1lib1.so | grep -q 64-bit; then NOCOPYRELOC=; fi;;
+  x86_64|s390*|sparc*|aarch64) if file reloc1lib1.so | grep -q 64-bit; then NOCOPYRELOC=; fi;;
 esac
 $RUN_HOST $CC -shared -O2 -Wl,-z,nocombreloc -fpic -o reloc9lib1.so $srcdir/reloc3lib1.c
 $RUN_HOST $CC -shared -O2 -Wl,-z,nocombreloc -fpic -o reloc9lib2.so $srcdir/reloc1lib2.c reloc9lib1.so
diff --git a/testsuite/tls3.sh b/testsuite/tls3.sh
index eb6e626..cfab235 100755
--- a/testsuite/tls3.sh
+++ b/testsuite/tls3.sh
@@ -9,7 +9,7 @@ if [ "x$CROSS" = "x" ]; then
 fi
 SHFLAGS=
 case "`$RUN uname -m`" in
-  ia64|ppc*|x86_64|alpha*|s390*|mips*|arm*) SHFLAGS=-fpic;; # Does not support non-pic shared libs
+  ia64|ppc*|x86_64|alpha*|s390*|mips*|arm*|aarch64) SHFLAGS=-fpic;; # Does not support non-pic shared libs
 esac
 # Disable this test under SELinux if textrel
 if test -z "$SHFLAGS" -a -x /usr/sbin/getenforce; then
-- 
1.7.1


