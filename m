Return-Path: <californialsullivan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C21A2E0086F; Tue, 23 Sep 2014 10:26:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (californialsullivan[at]gmail.com)
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 350FEE00874
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 10:26:26 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Sep 2014 10:05:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,581,1406617200"; d="scan'208";a="577676729"
Received: from sullical-studio-xps-9100.jf.intel.com (HELO
	sullical-Studio-XPS-9100) ([10.7.198.88])
	by orsmga001.jf.intel.com with SMTP; 23 Sep 2014 10:11:30 -0700
Received: by sullical-Studio-XPS-9100 (sSMTP sendmail emulation);
	Tue, 23 Sep 2014 10:14:02 -0700
From: californialsullivan@gmail.com
To: yocto@yoctoproject.org
Date: Tue, 23 Sep 2014 10:13:48 -0700
Message-Id: <1411492434-340-7-git-send-email-californialsullivan@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1411492434-340-1-git-send-email-californialsullivan@gmail.com>
References: <1411492434-340-1-git-send-email-californialsullivan@gmail.com>
Cc: California Sullivan <california.l.sullivan@intel.com>
Subject: [PATCH 07/13] README-GOOGLE-CLOUD: initial commit
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
X-List-Received-Date: Tue, 23 Sep 2014 17:26:31 -0000

From: California Sullivan <california.l.sullivan@intel.com>

Goes over some limitations and gives an example of how to use it.

Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
---
 README-GOOGLE-CLOUD | 54 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 README-GOOGLE-CLOUD

diff --git a/README-GOOGLE-CLOUD b/README-GOOGLE-CLOUD
new file mode 100644
index 0000000..30bf5b6
--- /dev/null
+++ b/README-GOOGLE-CLOUD
@@ -0,0 +1,54 @@
+Limitations
+------------
+The current implementation of the Google Cloud building has a couple of
+limitations.
+
+First of all, Google's gcloud command line tool is required for
+all functions (see https://developers.google.com/cloud/sdk/gcloud/).
+
+Next, the controller system is required to be authenticated with Google's cloud
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
+ProvisionGoogleVM buildstep for use.
+
+Fourth, additional workers must be added to yocto-controller/controller.cfg
+with the format:
+     BuildWorker("worker<N>", "<WORKER-PASSWORD>", max_builds=3)
+where N is 0...however many workers you want and WORKER-PASSWORD is the default
+password.
+
+Finally, the worker-init script is only an example and has a couple
+limitations. It has only been tested for debian VMs and will likely not work
+on others. Also, the <HOST_ADDR> and <PASS> fields will need to be manually
+edited in it if your autobuilder was created before the addition of the
+GoogleVM buildsteps or if the controller machine is behind a firewall.
+
+HowTo
+----------
+
+Assuming that the limitations above have been dealt with, this will provision
+one new VM and completely set it up, including connections
+
+{'ProvisionGoogleVM':{
+    'vmname':'autobuilder-worker-startup-test',
+    'vmcount':1,
+    'zone':'us-central1-a',
+    'machine':'n1-standard-4',
+    'disksize':'230GB',
+    'startupscript':'/home/autobuilder/yocto-autobuilder/bin/worker-init',
+    'network':'autobuilder-network'}}
+
+
+{'DeleteGoogleVM': {}}
-- 
1.9.1


