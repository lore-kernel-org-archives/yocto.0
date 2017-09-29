Return-Path: <Jiwei.Sun@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CABA5E00D71; Thu, 28 Sep 2017 19:10:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62FFDE00D5B
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 19:10:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v8T2AWZH012199
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 28 Sep 2017 19:10:32 -0700 (PDT)
Received: from pek-lpd-ccm2.wrs.com (128.224.179.210) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Thu, 28 Sep 2017 19:10:32 -0700
From: Jiwei Sun <jiwei.sun@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 29 Sep 2017 10:09:34 +0800
Message-ID: <1506650980-87720-2-git-send-email-jiwei.sun@windriver.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1506650980-87720-1-git-send-email-jiwei.sun@windriver.com>
References: <1506650980-87720-1-git-send-email-jiwei.sun@windriver.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 29 Sep 2017 08:40:16 -0700
Cc: anibal.limon@linux.intel.com
Subject: [ptest-runner 2/8] Add missing stdint.h
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
X-List-Received-Date: Fri, 29 Sep 2017 02:10:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

$ make check
cc -std=gnu99 -pedantic -Wall -Werror -I . -g -c tests/ptest_list.c -o tests/ptest_list.o
In file included from tests/ptest_list.c:25:0:
tests/ptest_list.c: In function ‘test_length’:
tests/ptest_list.c:85:2: error: unknown type name ‘intmax_t’
ck_assert_int_eq(ptest_list_length(head), ptests_num);
^
tests/ptest_list.c:85:2: error: unknown type name ‘intmax_t’
ck_assert_int_eq(ptest_list_length(head), ptests_num);

Signed-off-by: Jiwei Sun <jiwei.sun@windriver.com>
---
 tests/ptest_list.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tests/ptest_list.c b/tests/ptest_list.c
index 5c0036d..2641620 100644
--- a/tests/ptest_list.c
+++ b/tests/ptest_list.c
@@ -21,6 +21,7 @@
 
 #include <string.h>
 #include <stdlib.h>
+#include <stdint.h>
 #include <stdio.h>
 #include <check.h>
 #include <errno.h>
-- 
1.8.3.1


