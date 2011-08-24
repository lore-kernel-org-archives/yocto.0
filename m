Return-Path: <liming.wang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7551EE0122D
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 20:01:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7O31t5M002142
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 23 Aug 2011 20:01:55 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.211) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 23 Aug 2011 20:01:54 -0700
From: Liming Wang <liming.wang@windriver.com>
To: <Bruce.Ashfield@windriver.com>
Date: Wed, 24 Aug 2011 10:45:19 +0800
Message-ID: <1314153919-5306-2-git-send-email-liming.wang@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1314153919-5306-1-git-send-email-liming.wang@windriver.com>
References: <1314153919-5306-1-git-send-email-liming.wang@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: [PATCH 1/1] x86: fix a bug of wrong return erorr.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 24 Aug 2011 03:01:55 -0000
Content-Type: text/plain

__vdso_clock_gettime should fall back to call vdso_fallback_gettime function
if no clockid is selected, not just return error.

Signed-off-by: Liming Wang <liming.wang@windriver.com>
---
 arch/x86/vdso/vclock_gettime.c |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/arch/x86/vdso/vclock_gettime.c b/arch/x86/vdso/vclock_gettime.c
index 7bc4815..2365a5b 100644
--- a/arch/x86/vdso/vclock_gettime.c
+++ b/arch/x86/vdso/vclock_gettime.c
@@ -173,8 +173,6 @@ notrace int __vdso_clock_gettime(clockid_t clock, struct timespec *ts)
 			return do_trace_clock(ts);
 		case CLOCK_TRACE_FREQ:
 			return do_trace_clock_freq(ts);
-		default:
-			return -EINVAL;
 		}
 	return vdso_fallback_gettime(clock, ts);
 }
-- 
1.7.0.4


