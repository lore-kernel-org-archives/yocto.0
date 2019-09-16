Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7100E00D54; Sun, 15 Sep 2019 22:19:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9E4CE00D51
	for <yocto@yoctoproject.org>; Sun, 15 Sep 2019 22:19:53 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Sep 2019 22:19:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,510,1559545200"; d="scan'208";a="337545129"
Received: from bletchu-mobl1.gar.corp.intel.com (HELO linux.fritz.box)
	([10.255.184.21])
	by orsmga004.jf.intel.com with ESMTP; 15 Sep 2019 22:19:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 16 Sep 2019 17:19:38 +1200
Message-Id: <cb4bd5e45b5855d3a0307d75db038563a75a9ee7.1568611075.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1568611075.git.paul.eggleton@linux.intel.com>
References: <cover.1568611075.git.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 2/3] import_layers: use recipesExtended viewset
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
X-List-Received-Date: Mon, 16 Sep 2019 05:19:54 -0000
Content-Transfer-Encoding: 8bit

The new viewset has a different URL and uses pagination, so we need to
take that into account.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/tools/import_layers.py | 92 ++++++++++++++++++-------------
 1 file changed, 55 insertions(+), 37 deletions(-)

diff --git a/layerindex/tools/import_layers.py b/layerindex/tools/import_layers.py
index d40c391a..0ce31968 100755
--- a/layerindex/tools/import_layers.py
+++ b/layerindex/tools/import_layers.py
@@ -89,7 +89,7 @@ def main():
     layerbranches_url = jsdata['layerBranches']
     layermaintainers_url = jsdata.get('layerMaintainers', None)
     layernotes_url = jsdata.get('layerNotes', None)
-    recipes_url = jsdata.get('recipes', None)
+    recipes_url = jsdata.get('recipesExtended', None)
     machines_url = jsdata.get('machines', None)
     distros_url = jsdata.get('distros', None)
     classes_url = jsdata.get('classes', None)
@@ -186,55 +186,73 @@ def main():
                     # The parent field always needs to be part of the keys
                     keys = key_fields + [parentfield]
 
+                def fetch_api_url(api_url):
+                    rq = urllib.request.Request(api_url)
+                    data = urllib.request.urlopen(rq).read()
+                    return json.loads(data.decode('utf-8'))
+
                 if url:
                     if parent_orig_id is None:
                         raise Exception('import_child_items: if url is specified then parent_orig_id must also be specified')
-                    rq = urllib.request.Request(url + '?filter=%s:%s' % (parentfield, parent_orig_id))
-                    data = urllib.request.urlopen(rq).read()
-                    childjslist = json.loads(data.decode('utf-8'))
+                    childjsdata = fetch_api_url(url + '?filter=%s:%s' % (parentfield, parent_orig_id))
                 elif childlist is not None:
-                    childjslist = childlist
+                    childjsdata = childlist
                 else:
                     raise Exception('import_child_items: either url or childlist must be specified')
 
                 manager = getattr(parentobj, objclass.__name__.lower() + '_set')
                 existing_ids = list(manager.values_list('id', flat=True))
                 updated_ids = []
-                for childjs in childjslist:
-                    vals = {}
-                    for key, value in childjs.items():
-                        if key in exclude:
-                            continue
-                        vals[key] = value
-                    vals[parentfield] = parentobj
 
-                    if keys:
-                        keyvals = {k: vals[k] for k in keys}
-                    else:
-                        keyvals = vals
-
-                    # In the case of multiple records with the same keys (e.g. multiple recipes with same pn),
-                    # we need to skip ones we've already touched
-                    obj = None
-                    created = False
-                    for entry in manager.filter(**keyvals):
-                        if entry.id not in updated_ids:
-                            obj = entry
+                def import_list(childjslist):
+                    for childjs in childjslist:
+                        vals = {}
+                        for key, value in childjs.items():
+                            if key in exclude:
+                                continue
+                            vals[key] = value
+                        vals[parentfield] = parentobj
+
+                        if keys:
+                            keyvals = {k: vals[k] for k in keys}
+                        else:
+                            keyvals = vals
+
+                        # In the case of multiple records with the same keys (e.g. multiple recipes with same pn),
+                        # we need to skip ones we've already touched
+                        obj = None
+                        created = False
+                        for entry in manager.filter(**keyvals):
+                            if entry.id not in updated_ids:
+                                obj = entry
+                                break
+                        else:
+                            created = True
+                            obj = objclass(**keyvals)
+
+                        for key, value in vals.items():
+                            setattr(obj, key, value)
+                        # Need to have saved before calling custom_field_cb since the function might be adding child objects
+                        obj.save()
+                        updated_ids.append(obj.id)
+                        if custom_field_cb is not None:
+                            custom_field_cb(obj, childjs)
+                        if not created:
+                            if obj.id in existing_ids:
+                                existing_ids.remove(obj.id)
+
+                if 'results' in childjsdata:
+                    while True:
+                        import_list(childjsdata['results'])
+                        if childjsdata.get('next', None):
+                            childjsdata = fetch_api_url(childjsdata['next'])
+                            if not 'results' in childjsdata:
+                                break
+                        else:
                             break
-                    else:
-                        created = True
-                        obj = objclass(**keyvals)
+                else:
+                    import_list(childjsdata)
 
-                    for key, value in vals.items():
-                        setattr(obj, key, value)
-                    # Need to have saved before calling custom_field_cb since the function might be adding child objects
-                    obj.save()
-                    updated_ids.append(obj.id)
-                    if custom_field_cb is not None:
-                        custom_field_cb(obj, childjs)
-                    if not created:
-                        if obj.id in existing_ids:
-                            existing_ids.remove(obj.id)
                 for idv in existing_ids:
                     objclass.objects.filter(id=idv).delete()
 
-- 
2.20.1


