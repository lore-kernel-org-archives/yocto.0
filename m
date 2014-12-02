Return-Path: <californialsullivan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC0B3E008C1; Tue,  2 Dec 2014 10:34:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (californialsullivan[at]gmail.com)
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DE57E00895
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 10:34:31 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 02 Dec 2014 10:31:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,502,1413270000"; d="scan'208";a="647050302"
Received: from unknown (HELO localhost.jf.intel.com) ([10.7.198.57])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2014 10:34:31 -0800
From: californialsullivan@gmail.com
To: yocto@yoctoproject.org
Date: Tue,  2 Dec 2014 10:31:41 -0500
Message-Id: <1417534303-20323-5-git-send-email-californialsullivan@gmail.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1417534303-20323-1-git-send-email-californialsullivan@gmail.com>
References: <1417534303-20323-1-git-send-email-californialsullivan@gmail.com>
Cc: California Sullivan <california.l.sullivan@intel.com>
Subject: [PATCH 5/7] README-GOOGLE-CLOUD: initial commit
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
X-List-Received-Date: Tue, 02 Dec 2014 18:34:34 -0000

From: California Sullivan <california.l.sullivan@intel.com>

Goes over some limitations and gives an example of how to use it.

Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
---
 README-GOOGLE-CLOUD | 68 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 README-GOOGLE-CLOUD

diff --git a/README-GOOGLE-CLOUD b/README-GOOGLE-CLOUD
new file mode 100644
index 0000000..34c80a9
--- /dev/null
+++ b/README-GOOGLE-CLOUD
@@ -0,0 +1,68 @@
+Limitations
+------------
+The current implementation of the Google Cloud building has a couple of
+limitations.
+
+First of all, Google's gcloud command line tool is required for
+all functions (see https://developers.google.com/cloud/sdk/gcloud/).
+
+Next, the controller machine is required to be authenticated with Google's cloud
+system (see https://developers.google.com/cloud/sdk/gcloud/reference/auth/).
+
+Third, the workers must be on a network which has the worker port
+(port 9989 by default) open. This can be done by setting up a network and
+using that network in the ProvisionGoogleVM builstep. Example commands to
+set up a network:
+
+gcloud compute networks create autobuilder-network
+gcloud compute firewall-rules autobuilder-allow --network autobuilder-network \
+    --allow tcp:8010 tcp:9989 tcp:80 tcp:22
+
+This sets up a network that is suitable for both controllers and workers, as
+it allows all default autobuilder connections, as well as ssh and http. The
+key:value pair 'network':'autobuilder-network' can then be added to your
+ProvisionGoogleVMs buildstep, allowing provisioned machines to connect to
+controllers.
+
+Fourth, additional workers must be added to yocto-controller/controller.cfg
+with the format:
+     BuildWorker("worker<N>", "<WORKER-PASSWORD>", max_builds=3)
+where N is 0...however many workers you want and WORKER-PASSWORD is the default
+password. For example, if I wanted to add three workers for the cloud builder:
+
+    c['workers'] = [BuildWorker("example-worker", "eeieHim8V", max_builds=3),]
+
+would be changed to this:
+
+    c['workers'] = [BuildWorker("example-worker", "eeieHim8V", max_builds=3),
+                    BuildWorker("worker0", "eeieHim8V", max_builds=3),
+                    BuildWorker("worker1", "eeieHim8V", max_builds=3),
+                    BuildWorker("worker2", "eeieHim8V", max_builds=3),]
+
+Finally, the worker-init script is only an example and has a couple
+limitations itself. It has only been tested for debian VMs and will likely not
+work on others. Also, the <HOST_ADDR> and <PASS> fields will need to be
+manually edited in it if your autobuilder was created before the addition of
+the GoogleVM buildsteps or if the controller machine is behind a firewall.
+
+HowTo
+----------
+
+Assuming that the limitations above have been dealt with, this will provision
+one new VM and completely set it up, including connections
+
+    {'ProvisionGoogleVMs':{
+        'vmname':'autobuilder-worker-startup-test',
+        'vmcount':1,
+        'zone':'us-central1-a',
+        'machine':'n1-standard-4',
+        'disksize':'230GB',
+        'startupscript':'/path/to/yocto-autobuilder/bin/worker-init',
+        'network':'autobuilder-network'}}
+
+And this will delete the entire VM when you are finished with it:
+
+    {'DeleteGoogleVMs': {}}
+
+Note that the current implementation of DeleteGoogleVM requires that its in the
+same buildset as CreateGoogleVM.
-- 
1.9.3


