Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F174DE00E32; Mon,  8 Jan 2018 20:21:15 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBC53E00DEF
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 20:21:14 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Jan 2018 20:21:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,334,1511856000"; 
   d="scan'208";a="9740736"
Received: from cooi24-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.70.11])
	by orsmga006.jf.intel.com with ESMTP; 08 Jan 2018 20:21:11 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  9 Jan 2018 17:20:25 +1300
Message-Id: <bc26b95d0b2f27d7fb34f067a284ef0184b0a77d.1515471545.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <cover.1515471545.git.paul.eggleton@linux.intel.com>
References: <cover.1515471545.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 2/6] Explicitly handle too-long field values
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
X-List-Received-Date: Tue, 09 Jan 2018 04:21:16 -0000

If you use a traditional database engine (such as MySQL/MariaDB) then
maximum character field lengths are enforced, however depending on the
configuration this may result in an exception rather than a warning and
truncation and will also break the per-layer transaction. To avoid that
ugliness, add a signal handler to do it internally, which as a bonus
lets us know if field lenghts are too short for data when using database
engines that don't enforce lengths (e.g. SQLite).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/models.py | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/layerindex/models.py b/layerindex/models.py
index 6fdef04..648ef1f 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -9,10 +9,31 @@ from datetime import datetime
 from django.contrib.auth.models import User
 from django.core.urlresolvers import reverse
 from django.core.validators import URLValidator
+from django.db.models.signals import pre_save
+from django.dispatch import receiver
 import os.path
 import re
 import posixpath
 
+from . import utils
+
+
+logger = utils.logger_create('LayerIndexModels')
+
+
+@receiver(pre_save)
+def truncate_charfield_values(sender, instance, *args, **kwargs):
+    # Instead of leaving this up to the database, check and handle it
+    # ourselves to avoid nasty exceptions; as a bonus we won't miss when
+    # the max length is too short with databases that don't enforce
+    # the limits (e.g. sqlite)
+    for field in instance._meta.get_fields():
+        if isinstance(field, models.CharField):
+            value = getattr(instance, field.name)
+            if value and len(value) > field.max_length:
+                logger.warning('%s.%s: length %s exceeds maximum (%s), truncating' % (instance.__class__.__name__, field.name, len(value), field.max_length))
+                setattr(instance, field.name, value[:field.max_length])
+
 
 class PythonEnvironment(models.Model):
     name = models.CharField(max_length=50)
-- 
2.9.5


