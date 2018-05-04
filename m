Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 496D8E00C4D; Fri,  4 May 2018 04:56:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 155AEE00C4D
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 04:56:04 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 May 2018 04:56:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,362,1520924400"; d="scan'208";a="221609867"
Received: from sruthimx-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.245])
	by orsmga005.jf.intel.com with ESMTP; 04 May 2018 04:56:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  4 May 2018 23:55:25 +1200
Message-Id: <61b32b483d30463238a9649c3ba08e8d11011a56.1525434801.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <cover.1525434801.git.paul.eggleton@linux.intel.com>
References: <cover.1525434801.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 1/3] views: fix regression in publish email sending code
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
X-List-Received-Date: Fri, 04 May 2018 11:56:05 -0000

In e902b67bccddf34d8bbd65ad6c81d078e945ebb8 I missed a couple of Context
usages in the layer publish view and the result was that it broke
publishing a layer (and apparently I didn't run a final test on that,
shame on me).

Thanks to Yi Zhao <yi.zhao@windriver.com> for pointing this out.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/views.py | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index c84982ae..bc3cddfa 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -20,7 +20,6 @@ from django.db import transaction
 from django.contrib.auth.models import User, Permission
 from django.db.models import Q, Count, Sum
 from django.template.loader import get_template
-from django.template import Context
 from django.utils.decorators import method_decorator
 from django.contrib.auth.decorators import login_required
 from django.contrib import messages
@@ -277,19 +276,19 @@ def publish_view(request, name):
             break
 
     # create subject from subject template
-    d = Context({
+    d = {
         'layer_name': layeritem.name,
         'site_name': request.META['HTTP_HOST'],
-    })
+    }
     subject = subjecttext.render(d).rstrip()
 
     #create body from body template
-    d = Context({
+    d = {
         'maintainers': maintainer_names,
         'layer_name': layeritem.name,
         'layer_url': layer_url,
         'help_contact': help_contact,
-    })
+    }
     body = bodytext.render(d)
 
     tasks.send_email.apply_async((subject, body, from_email, [m.email for m in maintainers]))
-- 
2.14.3


