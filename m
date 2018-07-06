Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00485E010C2; Fri,  6 Jul 2018 02:15:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72857E01092
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 02:15:12 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Jul 2018 02:15:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,315,1526367600"; d="scan'208";a="64866617"
Received: from aaronchu-mobl1.png.intel.com ([10.221.22.199])
	by orsmga003.jf.intel.com with ESMTP; 06 Jul 2018 02:15:08 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: richard.purdie@linuxfoundation.org,
	yocto@yoctoproject.org
Date: Fri,  6 Jul 2018 17:15:05 +0800
Message-Id: <1530868505-31937-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-ab-helper] scripts/run-jinja-parser: Add Jinja2 parser extension in autobuilder
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
X-List-Received-Date: Fri, 06 Jul 2018 09:15:14 -0000

This patch is introduced as a feature in 2.6 M2 to support the
extension of autobuilder to LAVA (Linaro Automated Validation Architecture).
run-jinja2-parser loads lava config module and generates LAVA job config
in a YAML format before its triggers LAVA server to execute a task.

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 lava/device/bsp-packages.jinja2 | 43 ++++++++++++++++++
 scripts/lava.py                 | 76 ++++++++++++++++++++++++++++++++
 scripts/run-jinja-parser        | 97 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 216 insertions(+)
 create mode 100644 lava/device/bsp-packages.jinja2
 create mode 100644 scripts/lava.py
 create mode 100755 scripts/run-jinja-parser

diff --git a/lava/device/bsp-packages.jinja2 b/lava/device/bsp-packages.jinja2
new file mode 100644
index 0000000..61fbcad
--- /dev/null
+++ b/lava/device/bsp-packages.jinja2
@@ -0,0 +1,43 @@
+device_type: {{ device_type }}
+job_name: {{ job_name }}
+timeouts: 
+  job:
+    minutes: {{ timeout.job.minutes }}
+  action:
+    minutes: {{ timeout.action.minutes }}
+  connection:
+    minutes: {{ timeout.connection.minutes }}
+priority: {{ priority }}
+visibility: {{ visibility }}
+actions:
+- deploy:
+    timeout:
+      minutes: {{ deploy.timeout }}
+    to: {{ deploy.to }}
+    kernel:
+      url: {{ deploy.kernel.url }}
+      type: {{ deploy.kernel.type }}
+    modules:
+      url: {{ deploy.modules.url }}
+      compression: {{ deploy.modules.compression }}
+    nfsrootfs:
+      url: {{ deploy.nfsrootfs.url }}
+      compression: {{ deploy.nfsrootfs.compression }}
+    os: {{ deploy.os }}
+- boot:
+    timeout:
+      minutes: {{ boot.timeout }}
+    method: {{ boot.method }}
+    commands: {{ boot.commands }}
+    auto_login: { login_prompt: {{ boot.auto_login.login_prompt }}, username: {{ boot.auto_login.username }} }
+    prompts:
+      - {{ boot.prompts }}
+- test:
+    timeout:
+      minutes: {{ test.timeout }}
+    name: {{ test.name }}
+    definitions:
+    - repository: {{ test.definitions.repository }}
+      from: {{ test.definitions.from }}
+      path: {{ test.definitions.path }}
+      name: {{ test.definitions.name }}
diff --git a/scripts/lava.py b/scripts/lava.py
new file mode 100644
index 0000000..be18529
--- /dev/null
+++ b/scripts/lava.py
@@ -0,0 +1,76 @@
+# A Yocto Project Embedded Linux Systems Automated Embedded Systems 
+# support in Open Source Linaro (www.linaro.org), LAVA an automated 
+# validation architecture for BSP test deployments of systems covering 
+# IA (x86), ARM, MIPS, PPC architectures.
+
+# Standard LAVA-Server Connection Configurations
+
+lavaConn = {
+    'username' : "<register user account in LAVA-server>",
+    'token'    : "<register generated user token in LAVA-profile>",
+    'server'   : "<server URL>:<server port>"
+}
+
+# Standard LAVA Job-configuration for each Architectures.
+#
+# Minnowboard Turbot: boot method execute thru NFS network PXIE boot.
+# 
+lavaConf = {
+    "minnowboard" : {
+        "job_name" : "Minnowboard Turbot with Yocto core-image-sato-sdk (intel-corei7-64)",
+        "priority" : "medium",
+        "visibility" : "public",
+        "timeout" : {
+            "job"        : { "minutes" : 180 },
+            "action"     : { "minutes" : 60 },
+            "connection" : { "minutes" : 60 }
+        },
+        "deploy" : {
+            "timeout" : 60,
+            "to" : "tftp",
+            "kernel" : {
+                "url" : "${DEPLOYDIR}/bzImage",
+                "type" : "BzImage"
+            },
+            "modules" : {
+                "url" : "${DEPLOYDIR}/modules-intel-corei7-64.tgz",
+                "compression" : "gz"
+            },
+            "nfsrootfs" : {
+                "url" : "${DEPLOYDIR}/core-image-sato-sdk-intel-corei7-64.tar.gz",
+                "compression" : "gz"
+            },
+            "os" : "oe"
+        },
+        "boot" : {
+            "timeout"    : 60,
+            "method"     : "grub",
+            "commands"   : "nfs",
+            "auto_login" : {
+                "login_prompt" : "'intel-corei7-64 login:'",
+                "username" : "root"
+            },
+            "prompts" : "'root@intel-corei7-64:~#'"
+        },
+        "test" : {
+            "timeout" : 3600,
+            "name" : "yocto-bsp-test",
+            "definitions" : {
+                "repository" : "git://git.yoctoproject.org/yocto-atuobuilder-helper.git",
+                "from" : "git",
+                "path" : "lava/auto-bsp-test.yaml",
+                "name" : "yocto-bsp-test"
+            }
+        }
+    },
+    "beaglebone" : {
+        "job_name" : "Beaglebone with Yocto core-image-sato-sdk (ARM Cortex)",
+        "priority" : "medium",
+        "visibility" : "public",
+        "timeout" : {
+            "job"        : { "minutes" : 180 },
+            "action"     : { "minutes" : 60 },
+            "connection" : { "minutes" : 60 }
+        }
+    }
+}
diff --git a/scripts/run-jinja-parser b/scripts/run-jinja-parser
new file mode 100755
index 0000000..62b4b07
--- /dev/null
+++ b/scripts/run-jinja-parser
@@ -0,0 +1,97 @@
+#!/usr/bin/env python3
+#
+# Parser loads lava.py module and convert template in Jinja2 format into Job configuration in YAML.
+#
+# Options:
+# $1 - Path loads lava module
+# $2 - Absolute path Jinja2 Template
+# $3 - Absolute path DEPLOYDIR Yocto images
+# $3 - YAML filename (default: autobuilder job name)
+# $4 - BSP (Minnowboard, Beaglebone, Edgerouter, x86)
+
+import os
+import sys
+import re
+import json
+import jinja2
+import time
+from jinja2 import Template, Environment, FileSystemLoader
+
+def jinja_helper():
+    print("USAGE: python3 run-jinja-parser <Module Path> <Jinja Template> <Deploy Dir> <Build Name> <Target Machine")
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
+try:
+    loadModule=os.path.expanduser(sys.argv[1])
+    jinjaTempl=sys.argv[2]
+    deploydir=sys.argv[3]
+    buildNames=sys.argv[4]
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
+
+from lava import *
+
+lavaconfig = lavaConf[device]
+images = ['kernel', 'modules', 'nfsrootfs']
+for img in images:
+    if img in lavaconfig['deploy'].keys():
+        try:
+            url=lavaconfig['deploy'][img]['url']
+            expansion=re.compile("\${(.+)}")
+            expansion=expansion.match(url).group(1)
+            if expansion:
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


