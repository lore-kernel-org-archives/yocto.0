Return-Path: <Jiwei.Sun@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B776E00D91; Thu, 28 Sep 2017 19:10:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB614E00D5B
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 19:10:45 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8T2AYR0023579
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 28 Sep 2017 19:10:34 -0700
Received: from pek-lpd-ccm2.wrs.com (128.224.179.210) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Thu, 28 Sep 2017 19:10:33 -0700
From: Jiwei Sun <jiwei.sun@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 29 Sep 2017 10:09:35 +0800
Message-ID: <1506650980-87720-3-git-send-email-jiwei.sun@windriver.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1506650980-87720-1-git-send-email-jiwei.sun@windriver.com>
References: <1506650980-87720-1-git-send-email-jiwei.sun@windriver.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 29 Sep 2017 08:40:16 -0700
Cc: anibal.limon@linux.intel.com
Subject: [ptest-runner 3/8] Fix linker order for libcheck
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
X-List-Received-Date: Fri, 29 Sep 2017 02:10:47 -0000
Content-Type: text/plain

$ gcc  -lm -lrt -lpthread  tests/main.o tests/ptest_list.o tests/utils.o utils.o ptest_list.o -o ptest-runner-test -lcheck
/usr/local/lib/libcheck.a(check.c.o): In function `tcase_create':
/home/edavnys/check/src/check.c:145: undefined reference to `floor'
/home/edavnys/check/src/check.c:148: undefined reference to `floor'
//usr/local/lib/libcheck.a(check.c.o): In function `tcase_set_timeout':
/home/edavnys/check/src/check.c:332: undefined reference to `floor'
/home/edavnys/check/src/check.c:334: undefined reference to `floor'
//usr/local/lib/libcheck.a(check.c.o): In function `check_get_clockid':
/home/edavnys/check/src/check.c:616: undefined reference to `timer_create'
/home/edavnys/check/src/check.c:618: undefined reference to `timer_delete'
//usr/local/lib/libcheck.a(check_run.c.o): In function `tcase_run_tfun_fork':
/home/edavnys/check/src/check_run.c:507: undefined reference to `timer_create'
/home/edavnys/check/src/check_run.c:515: undefined reference to `timer_settime'
/home/edavnys/check/src/check_run.c:529: undefined reference to `timer_delete'
collect2: error: ld returned 1 exit status

Signed-off-by: Jiwei Sun <jiwei.sun@windriver.com>
---
 Makefile | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index 434b89f..3faf2e7 100644
--- a/Makefile
+++ b/Makefile
@@ -21,8 +21,7 @@ EXECUTABLE=ptest-runner
 TEST_SOURCES=tests/main.c tests/ptest_list.c tests/utils.c $(BASE_SOURCES)
 TEST_OBJECTS=$(TEST_SOURCES:.c=.o)
 TEST_EXECUTABLE=ptest-runner-test
-TEST_LDFLAGS=-lm -lrt -lpthread
-TEST_LIBSTATIC=-lcheck
+TEST_LIBSTATIC=-lcheck -lrt -lm -lpthread
 
 TEST_DATA=$(shell echo `pwd`/tests/data)
 
@@ -34,7 +33,7 @@ $(EXECUTABLE): $(OBJECTS)
 tests: $(TEST_SOURCES) $(TEST_EXECUTABLE)
 
 $(TEST_EXECUTABLE): $(TEST_OBJECTS)
-	$(CC) $(LDFLAGS) $(TEST_LDFLAGS) $(TEST_OBJECTS) -o $@ $(TEST_LIBSTATIC)
+	$(CC) $(LDFLAGS) $(TEST_OBJECTS) -o $@ $(TEST_LIBSTATIC)
 
 check: $(TEST_EXECUTABLE)
 	./$(TEST_EXECUTABLE) -d $(TEST_DATA)
-- 
1.8.3.1


