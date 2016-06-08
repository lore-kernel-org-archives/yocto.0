Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19BCAE00CED; Wed,  8 Jun 2016 06:20:51 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E727DE00CEC
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 06:20:47 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 08 Jun 2016 06:20:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,439,1459839600"; d="scan'208";a="824133526"
Received: from mshirsix-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.147.125])
	by orsmga003.jf.intel.com with ESMTP; 08 Jun 2016 06:20:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 Jun 2016 01:19:54 +1200
Message-Id: <48c0839482023832ce00a12c9c78f74d14fce6c5.1465391621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH v2 01/15] Allow blanking out field values in bulk change
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
X-List-Received-Date: Wed, 08 Jun 2016 13:20:51 -0000

If you're moving a short description value from DESCRIPTION to SUMMARY
then part of that is setting DESCRIPTION to blank, however that wasn't
possible - the code was assuming that a null value meant "keep the
original value". Change the logic so that the value in the bulk change
object is always set and is compared to the original value to see if it
is different. This provides less safety against bulk change data going
stale in the face of the metadata being updated, but without using an
additional "magic" field value that's the price we have to pay, and it's
unlikely to bother too many people I would imagine.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/bulkchange.py | 17 +++++++++--------
 layerindex/forms.py      | 19 -------------------
 layerindex/models.py     | 20 ++++++++++++--------
 layerindex/views.py      |  3 +--
 4 files changed, 22 insertions(+), 37 deletions(-)

diff --git a/layerindex/bulkchange.py b/layerindex/bulkchange.py
index ed36859..c569b61 100644
--- a/layerindex/bulkchange.py
+++ b/layerindex/bulkchange.py
@@ -97,14 +97,15 @@ def patch_recipe(fn, relpath, values):
 
     with tempfile.NamedTemporaryFile('w', delete=False) as tf:
         def outputvalue(name):
-            rawtext = '%s = "%s"\n' % (name, values[name])
-            if name in nowrap_vars:
-                tf.write(rawtext)
-            else:
-                wrapped = textwrap.wrap(rawtext)
-                for wrapline in wrapped[:-1]:
-                    tf.write('%s \\\n' % wrapline)
-                tf.write('%s\n' % wrapped[-1])
+            if values[name]:
+                rawtext = '%s = "%s"\n' % (name, values[name])
+                if name in nowrap_vars:
+                    tf.write(rawtext)
+                else:
+                    wrapped = textwrap.wrap(rawtext)
+                    for wrapline in wrapped[:-1]:
+                        tf.write('%s \\\n' % wrapline)
+                    tf.write('%s\n' % wrapped[-1])
 
         tfn = tf.name
         with open(fn, 'r') as f:
diff --git a/layerindex/forms.py b/layerindex/forms.py
index 78711e5..60653cf 100644
--- a/layerindex/forms.py
+++ b/layerindex/forms.py
@@ -189,25 +189,6 @@ class BulkChangeEditForm(forms.ModelForm):
         model = RecipeChange
         fields = ('summary', 'description', 'homepage', 'bugtracker', 'section', 'license')
 
-    def __init__(self, *args, **kwargs):
-        instance = kwargs.get('instance', None)
-        initial = kwargs.get('initial', {})
-        if instance:
-            recipe = instance.recipe
-            if recipe:
-                for fieldname in self._meta.fields:
-                    if not getattr(instance, fieldname):
-                        initial[fieldname] = getattr(recipe, fieldname)
-        kwargs['initial'] = initial
-        super(BulkChangeEditForm, self).__init__(*args, **kwargs)
-
-    def clear_same_values(self):
-        for fieldname in self._meta.fields:
-            oldval = getattr(self.instance.recipe, fieldname)
-            newval = getattr(self.instance, fieldname)
-            if oldval == newval:
-                setattr(self.instance, fieldname, '')
-
 BulkChangeEditFormSet = modelformset_factory(RecipeChange, form=BulkChangeEditForm, extra=0)
 
 
diff --git a/layerindex/models.py b/layerindex/models.py
index cde8fe3..e0d85ea 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -415,12 +415,16 @@ class RecipeChange(models.Model):
 
     def changed_fields(self, mapped = False):
         res = {}
-        for field in self._meta.fields:
-            if not field.name in ['id', 'changeset', 'recipe']:
-                value = getattr(self, field.name)
-                if value:
-                    if mapped:
-                        res[self.RECIPE_VARIABLE_MAP[field.name]] = value
-                    else:
-                        res[field.name] = value
+        for fieldname in self.RECIPE_VARIABLE_MAP:
+            value = getattr(self, fieldname)
+            origvalue = getattr(self.recipe, fieldname)
+            if value != origvalue:
+                if mapped:
+                    res[self.RECIPE_VARIABLE_MAP[fieldname]] = value
+                else:
+                    res[fieldname] = value
         return res
+
+    def reset_fields(self):
+        for fieldname in self.RECIPE_VARIABLE_MAP:
+            setattr(self, fieldname, getattr(self.recipe, fieldname))
diff --git a/layerindex/views.py b/layerindex/views.py
index 898a7c4..d033046 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -200,8 +200,6 @@ def bulk_change_edit_view(request, template_name, pk):
     if request.method == 'POST':
         formset = BulkChangeEditFormSet(request.POST, queryset=changeset.recipechange_set.all())
         if formset.is_valid():
-            for form in formset:
-                form.clear_same_values()
             formset.save()
             return HttpResponseRedirect(reverse('bulk_change_review', args=(changeset.id,)))
     else:
@@ -524,6 +522,7 @@ class BulkChangeSearchView(AdvancedRecipeSearchView):
                     change = RecipeChange()
                     change.changeset = changeset
                     change.recipe = recipe
+                    change.reset_fields()
                     change.save()
 
         if 'add_selected' in request.POST:
-- 
2.5.5


