Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A35D9E00950; Wed, 29 Aug 2018 06:30:42 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 218B8E00718
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2018 06:30:41 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Aug 2018 06:30:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,303,1531810800"; d="scan'208";a="87312115"
Received: from centaurus01.png.intel.com ([10.221.183.13])
	by orsmga002.jf.intel.com with ESMTP; 29 Aug 2018 06:30:32 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: yocto@yoctoproject.org, richard.purdie@linuxfoundation.org,
	paul.eggleton@intel.com, aaron.chun.yew.chan@intel.com
Date: Wed, 29 Aug 2018 21:25:50 +0800
Message-Id: <20180829132555.23054-1-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [yocto-autobuilder-helper][PATCH 1/6] lava-templates: Add Jinja2 LAVA job-template on BSP x86_64
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
X-List-Received-Date: Wed, 29 Aug 2018 13:30:42 -0000

Include a reference LAVA job template on x86_64 in jinja2 format.
This template will parsed and converted into YAML configuration
before job is trigger on LAVA server end thru Yocto autobuilder.

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 lava-templates/generate-jobconfig.jinja2 | 43 ++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100644 lava-templates/generate-jobconfig.jinja2

diff --git a/lava-templates/generate-jobconfig.jinja2 b/lava-templates/generate-jobconfig.jinja2
new file mode 100644
index 0000000..61fbcad
--- /dev/null
+++ b/lava-templates/generate-jobconfig.jinja2
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
-- 
2.11.0


