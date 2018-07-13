Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCAACE00D4A; Fri, 13 Jul 2018 04:48:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5EF3E006F1
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2018 04:48:39 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Jul 2018 04:48:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,347,1526367600"; d="scan'208";a="54768612"
Received: from aaronchu-mobl1.png.intel.com ([10.221.23.53])
	by fmsmga008.fm.intel.com with ESMTP; 13 Jul 2018 04:48:37 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: richard.purdie@linuxfoundation.org, yocto@yoctoproject.org,
	ross.burton@intel.com, paul.eggleton@intel.com
Date: Fri, 13 Jul 2018 19:48:34 +0800
Message-Id: <1531482514-13729-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-ab-helper] scripts/run-jinja-parser: Add parser to generate LAVA job-config
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
X-List-Received-Date: Fri, 13 Jul 2018 11:48:40 -0000

This patch is added to generate the LAVA job-config based on
config-intelqa-x86_64-lava.json,lava.py, jinja2 template to construct
the job definition in YAML using autobuilder.

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 scripts/run-jinja-parser | 121 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 121 insertions(+)
 create mode 100755 scripts/run-jinja-parser

diff --git a/scripts/run-jinja-parser b/scripts/run-jinja-parser
new file mode 100755
index 0000000..2e9d9f4
--- /dev/null
+++ b/scripts/run-jinja-parser
@@ -0,0 +1,121 @@
+#!/usr/bin/env python3
+#
+# Parser loads lava.py module and convert template in Jinja2 format into Job configuration in YAML.
+#
+# Options:
+# $1 - Path loads lava module
+# $2 - Absolute path Jinja2 Template
+# $3 - Define Job name
+# $4 - Define Build num
+# $5 - BSP (Minnowboard, Beaglebone, Edgerouter, x86)
+
+import os
+import sys
+import re
+import json
+import jinja2
+import time
+import utils
+from jinja2 import Template, Environment, FileSystemLoader
+
+def jinja_helper():
+    print("USAGE: python3 run-jinja-parser <Module Path> <Jinja Template> <Build Name> <Device>")
+    sys.exit(0)
+
+def jinja_writer(name, data):
+    yamlFile=name + ".yaml"
+    yamlNewFile= "-".join([name, time.strftime("%d%m%Y-%H%M%S")]) + ".yaml"
+    if os.path.isfile(yamlFile):
+        os.rename(yamlFile, yamlNewFile)
+        print("INFO: Found previous job config [%s] & rename to [%s]" % (yamlFile, yamlNewFile))
+    with open(yamlFile, "w+") as fh:
+        fh.write(data)
+    fh.close()
+
+def getconfig_expand(config, ourconfig, pattern, match, buildname, buildnum):
+    newconfig={}
+    expansion=re.compile(pattern)
+    for items in ourconfig.items():
+        if items[0] in match:
+            if items[0] in "DEPLOY_DIR":
+                if buildnum is None:
+                    newconfig[items[0]] = "file://" + os.path.join(items[1], buildname)
+                else:
+                    newconfig[items[0]] = "file://" + os.path.join(items[1], buildname, buildnum)
+            else:
+                newconfig[items[0]] = items[1]
+            config=config.replace('${' + items[0] + '}', newconfig[items[0]])
+    newconfig['DEPLOY_DIR_IMAGE']=config
+    return newconfig['DEPLOY_DIR_IMAGE']
+
+try:
+    loadModule=os.path.expanduser(sys.argv[1])
+    jinjaTempl=sys.argv[2]
+    buildNames=sys.argv[3]
+    buildNum=sys.argv[4]
+    device=sys.argv[5]
+except:
+    jinja_helper()
+
+if not os.path.exists(loadModule):
+    print("ERROR: Unable to load LAVA module at [%s]" % loadModule)
+    sys.exit(1)
+
+try:
+   sys.path.insert(loadModule)
+except:
+   sys.path.insert(0, loadModule)
+
+#
+# Starts here
+#
+from lava import *
+ourconfig = utils.loadconfig()
+ourconfig = ourconfig['overrides'][buildNames]
+deploydir = getconfig_expand(ourconfig['DEPLOY_DIR_IMAGE'], ourconfig, "\${(.+)}/images/\${(.+)}", ['DEPLOY_DIR', 'MACHINE'], buildNames, None)
+lavaconfig = lavaConf[device]
+
+lavaconfig["device_type"] = device
+
+images = ['kernel', 'modules', 'nfsrootfs']
+for img in images:
+    if img in lavaconfig['deploy'].keys():
+        try:
+            #data = getconfig_expand(lavaconfig['deploy'][img]['url'], ourconfig, "\${(.+)}", ['url'], None)
+            #print(data)
+            url=lavaconfig['deploy'][img]['url']
+            expansion=re.compile("\${(.+)}")
+            expansion=expansion.match(url).group(1)
+            if expansion:
+            #if data:
+                url=url.replace('${' + expansion + '}', deploydir)
+                lavaconfig['deploy'][img]['url']=url
+            else:
+                pass
+        except:
+            print("ERROR: URL is not defined in [%s] images %s" % (img, json.dumps(lavaconfig['deploy'][img])))
+            sys.exit(1)
+    else: pass
+
+if not os.path.isfile(jinjaTempl):
+    print("ERROR: Unable to find Jinja2 Template: [%s]" % jinjaTempl)
+    sys.exit(1)
+
+#
+# JSON Dumps
+#
+debug=True
+if debug:
+    print(json.dumps(lavaconfig, indent=4, sort_keys=True))
+
+jinjaPath = "/".join(jinjaTempl.split("/")[0:-1])
+jinjaFile = jinjaTempl.split("/")[-1]
+
+templateLoader = jinja2.FileSystemLoader(searchpath=jinjaPath)
+templateEnv    = jinja2.Environment(loader=templateLoader)
+templateJinja  = templateEnv.get_template(jinjaFile)
+outText        = templateJinja.render(lavaconfig)
+
+jinja_writer(buildNames, outText)
+
+print("INFO: Job configuration [%s] is ready to be triggered in next step" % buildNames)
-- 
2.7.4


