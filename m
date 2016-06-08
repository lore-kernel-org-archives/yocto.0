Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43378E00D57; Wed,  8 Jun 2016 06:21:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4433E00CF9
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 06:21:08 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 08 Jun 2016 06:21:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,439,1459839600"; d="scan'208";a="824133872"
Received: from mshirsix-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.147.125])
	by orsmga003.jf.intel.com with ESMTP; 08 Jun 2016 06:21:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 Jun 2016 01:20:01 +1200
Message-Id: <6d0a365676c20240568e2411e143a0100ea3bca8.1465391621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH v2 08/15] Fix for changes in modern django-reversion
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
X-List-Received-Date: Wed, 08 Jun 2016 13:21:30 -0000

We have to upgrade django-reversion to 1.8 due to upgrading Django, but
unfortunately in that same version the author has removed the type field
on Version model, without a particularly good explanation as to why. This
is really annoying as we were using it to provide a reasonable audit
including for deletes. I suspect we'll need to move away from
django-reversion and do our own thing in future, but for now at least
allow the layer index to keep working.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/views.py | 45 +++++++++++++++++++++++----------------------
 1 file changed, 23 insertions(+), 22 deletions(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index d9480c9..1f42039 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -630,29 +630,30 @@ def annotate_revision(sender, **kwargs):
     for ver, inst in zip(versions, instances):
         currentVersion = ver.field_dict
         modelmeta = ver.content_type.model_class()._meta
-        if ver.type == reversion.models.VERSION_DELETE:
-            changelist.append("Deleted %s: %s" % (modelmeta.verbose_name.lower(), ver.object_repr))
+        #FIXME modern django-reversion dropped the type field (argh!)
+        #if ver.type == reversion.models.VERSION_DELETE:
+        #    changelist.append("Deleted %s: %s" % (modelmeta.verbose_name.lower(), ver.object_repr))
+        #else:
+        pastver = reversion.get_for_object(inst)
+        if pastver:# and ver.type != reversion.models.VERSION_ADD:
+            pastVersion = pastver[0].field_dict
+            changes = set(currentVersion.items()) - set(pastVersion.items())
+            changedVars = [var[0] for var in changes]
+            fieldchanges = []
+            for field in changedVars:
+                if field not in ignorefields:
+                    modelfield = modelmeta.get_field(field)
+                    newvalue = currentVersion[field]
+                    if modelfield.choices:
+                        for v in modelfield.choices:
+                            if v[0] == newvalue:
+                                newvalue = v[1]
+                                break
+                    fieldchanges.append("%s to '%s'" % (modelfield.verbose_name.lower(), newvalue))
+            if fieldchanges:
+                changelist.append("Changed %s %s %s" % (modelmeta.verbose_name.lower(), ver.object_repr, ", ".join(fieldchanges)))
         else:
-            pastver = reversion.get_for_object(inst)
-            if pastver and ver.type != reversion.models.VERSION_ADD:
-                pastVersion = pastver[0].field_dict
-                changes = set(currentVersion.items()) - set(pastVersion.items())
-                changedVars = [var[0] for var in changes]
-                fieldchanges = []
-                for field in changedVars:
-                    if field not in ignorefields:
-                        modelfield = modelmeta.get_field(field)
-                        newvalue = currentVersion[field]
-                        if modelfield.choices:
-                            for v in modelfield.choices:
-                                if v[0] == newvalue:
-                                    newvalue = v[1]
-                                    break
-                        fieldchanges.append("%s to '%s'" % (modelfield.verbose_name.lower(), newvalue))
-                if fieldchanges:
-                    changelist.append("Changed %s %s %s" % (modelmeta.verbose_name.lower(), ver.object_repr, ", ".join(fieldchanges)))
-            else:
-                changelist.append("Added %s: %s" % (modelmeta.verbose_name.lower(), ver.object_repr))
+            changelist.append("Added %s: %s" % (modelmeta.verbose_name.lower(), ver.object_repr))
     comment = '\n'.join(changelist)
     if not comment:
         comment = 'No changes'
-- 
2.5.5


