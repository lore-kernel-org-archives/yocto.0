Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5185E00CE9; Tue, 30 Aug 2016 14:05:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88849E00CE9
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2016 14:05:15 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Aug 2016 14:04:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,258,1470726000"; d="scan'208";a="1049368804"
Received: from ashuvini-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.135])
	by fmsmga002.fm.intel.com with ESMTP; 30 Aug 2016 14:03:58 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 31 Aug 2016 09:03:30 +1200
Message-Id: <3cc87cff7755d8efdbdab661cc08b75a20da400a.1472590929.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1472590929.git.paul.eggleton@linux.intel.com>
References: <cover.1472590929.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1472590929.git.paul.eggleton@linux.intel.com>
References: <cover.1472590929.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 2/3] Fix output decoding/reporting for bulk change patch download
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
X-List-Received-Date: Tue, 30 Aug 2016 21:05:17 -0000

With Python 3 we need to take care of decoding the output so we can
treat it as a string. At the same time, it's more useful to see the
output string rather than the exception if there is some output.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/views.py | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/layerindex/views.py b/layerindex/views.py
index dfe4453..62f5268 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -237,8 +237,11 @@ def bulk_change_patch_view(request, pk):
     except Exception as e:
         output = getattr(e, 'output', None)
         if output:
+            output = output.decode('utf-8', errors="ignore")
             if 'timeout' in output:
                 return HttpResponse('Failed to generate patches: timed out waiting for lock. Please try again shortly.', content_type='text/plain')
+            else:
+                return HttpResponse('Failed to generate patches: %s' % output, content_type='text/plain')
         return HttpResponse('Failed to generate patches: %s' % e, content_type='text/plain')
     # FIXME better error handling
 
-- 
2.5.5


