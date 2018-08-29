Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 928B5E0090C; Wed, 29 Aug 2018 06:30:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 433FEE0090C
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2018 06:30:42 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Aug 2018 06:30:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,303,1531810800"; d="scan'208";a="87312148"
Received: from centaurus01.png.intel.com ([10.221.183.13])
	by orsmga002.jf.intel.com with ESMTP; 29 Aug 2018 06:30:36 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: yocto@yoctoproject.org, richard.purdie@linuxfoundation.org,
	paul.eggleton@intel.com, aaron.chun.yew.chan@intel.com
Date: Wed, 29 Aug 2018 21:25:51 +0800
Message-Id: <20180829132555.23054-2-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20180829132555.23054-1-aaron.chun.yew.chan@intel.com>
References: <20180829132555.23054-1-aaron.chun.yew.chan@intel.com>
Subject: [yocto-autobuilder-helper][PATCH 2/6] run-jinja-parser: Add converter Jinja2 template to YAML parser
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
X-List-Received-Date: Wed, 29 Aug 2018 13:30:43 -0000

run-jinja-parser converts the Jinja2 template from lava-templates
folder into YAML pipeline job configuration used in LAVA.
Jinja2 provides a standard template to be modify/update to meet
other architecture supports.
The lava-template/generate-jobconfig.jinja2 are to be couple with
the JSON config-intelqa-x86_64-lava.json when defining your
architecture and hardware configuration at LAVA end.

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 lava/run-jinja-parser | 96 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 96 insertions(+)
 create mode 100755 lava/run-jinja-parser

diff --git a/lava/run-jinja-parser b/lava/run-jinja-parser
new file mode 100755
index 0000000..65f47af
--- /dev/null
+++ b/lava/run-jinja-parser
@@ -0,0 +1,96 @@
+#!/usr/bin/env python3
+#
+# Parser loads JSON file (e.g. config-intelqa-x86_64-lava) and converts Jinja2 template 
+# format into a LAVA Job configuration in YAML format.
+#
+# Parameters:
+# $1 - Define the absolute path of Jinja2 template stored
+# $2 - Inherits the Job name in autobuilder (e.g. nightly-x86)
+# $3 - Inherits the Build number in autobuilder (Defaults to None)
+# $4 - Device type definition on LAVA Dispatcher
+#
+import os
+import sys
+import re
+import json
+import jinja2
+import time
+from jinja2 import Template, Environment, FileSystemLoader
+
+sys.path.append(os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))),"scripts"))
+import utils
+
+# Enable this section on manual run
+# os.environ["ABHELPER_JSON"]="config.json /home/ab/yocto-autobuilder-helper/config-intelqa-x86_64-lava.json"
+
+def jinja_helper():
+    print("USAGE: python3 run-jinja-parser <Jinja Template> <Build Name> <Build num> <LAVA Device Type>")
+    print("       python3 scripts/run-jinja-parser lava/device/bsp-packages.jinja2 nightly-x86-64-bsp None minnowboard")
+    sys.exit(0)
+
+# Create Job definition in YAML based on autobuilder job name
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
+# Handles data expansion based on pattern matching
+def getconfig_expand(config, ourconfig, pattern, match, buildname, buildnum):
+    newconfig={}
+    expansion=re.compile(pattern)
+    for items in ourconfig.items():
+        if items[0] in match:
+            if items[0] in "DEPLOY_DIR":
+                imagedeploy= "file://" + os.path.join(items[1], buildname)
+                newconfig[items[0]] = imagedeploy
+                if buildnum is not None and buildnum != "None":
+                    newconfig[items[0]] = os.path.join(imagedeploy, str(buildnum))
+            else:
+                newconfig[items[0]] = items[1]
+            config=config.replace('${' + items[0] + '}', newconfig[items[0]])
+    newconfig['DEPLOY_DIR_IMAGE']=config
+    return newconfig['DEPLOY_DIR_IMAGE']
+
+try:
+    jinjaTempl=sys.argv[1]
+    target=sys.argv[2]
+    buildnum=sys.argv[3]
+    device=sys.argv[4]
+    debug=True
+except:
+    jinja_helper()
+
+ourconfig  = utils.loadconfig()
+jobconfig  = ourconfig['overrides'][target]
+lavaconfig = ourconfig['lava-devices'][device]
+deploydir  = getconfig_expand(jobconfig['DEPLOY_DIR_IMAGE'], jobconfig, "\${(.+)}/images/\${(.+)}/", ['DEPLOY_DIR', 'MACHINE'], target, buildnum)
+newconfig  = { 'DEPLOY_DIR_IMAGE' : deploydir }
+jinjaTempl = os.path.abspath(jinjaTempl)
+
+for img in ['kernel', 'modules', 'nfsrootfs']:
+    lavaconfig['deploy'][img]['url'] = getconfig_expand(lavaconfig['deploy'][img]['url'], newconfig, "\${(.+)}.+", ['DEPLOY_DIR_IMAGE'], target, buildnum)
+lavaconfig['device_type'] = device
+
+if not os.path.isfile(jinjaTempl):
+    print("ERROR: Unable to find Jinja2 Template: [%s]" % jinjaTempl)
+    sys.exit(1)
+
+# JSON Dumps
+if debug:
+    print(json.dumps(lavaconfig, indent=4))
+
+jinjaPath = "/".join(jinjaTempl.split("/")[0:-1])
+jinjaFile = jinjaTempl.split("/")[-1]
+
+templateLoader = jinja2.FileSystemLoader(searchpath=jinjaPath)
+templateEnv    = jinja2.Environment(loader=templateLoader)
+templateJinja  = templateEnv.get_template(jinjaFile)
+outText        = templateJinja.render(lavaconfig)
+
+jinja_writer(target, outText)
+print("INFO: Job configuration [%s] is ready to be triggered in next step" % target)
-- 
2.11.0


