Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7AEEE00B87; Fri,  2 Jun 2017 10:13:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2C9AE00BDF
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 10:13:32 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jun 2017 10:13:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,286,1493708400"; d="scan'208";a="110223988"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.128.117])
	by fmsmga006.fm.intel.com with ESMTP; 02 Jun 2017 10:13:30 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  2 Jun 2017 12:13:03 -0500
Message-Id: <1496423585-26534-3-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1496423585-26534-1-git-send-email-anibal.limon@linux.intel.com>
References: <1496423585-26534-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: monserratx.sedeno.bustos@intel.com
Subject: [yocto-autobuilder][PATCH 3/5] autobuilder/buildsteps: Add DaftGetDevices step
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
X-List-Received-Date: Fri, 02 Jun 2017 17:13:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This buildstep will copy the devices configuration from the
worker and read it, in order to get daft ip an ssh port, to
use later in RunSanityTests

[YOCTO #10604]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos.intel.com>
Signed-off-by: Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>
---
 config/autobuilder.conf.example                    |   3 +
 .../autobuilder/buildsteps/DaftGetDevices.py       |  44 ++++++++
 lib/python2.7/site-packages/autobuilder/config.py  |   1 +
 .../site-packages/autobuilder/lib/daft.py          | 115 +++++++++++++++++++++
 4 files changed, 163 insertions(+)
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/DaftGetDevices.py
 create mode 100644 lib/python2.7/site-packages/autobuilder/lib/daft.py

diff --git a/config/autobuilder.conf.example b/config/autobuilder.conf.example
index 2ee11e6..e5ec16b 100644
--- a/config/autobuilder.conf.example
+++ b/config/autobuilder.conf.example
@@ -95,3 +95,6 @@ PERFORMANCE_MAIL_TO = "root@localhost otherperson@localhost"
 PERFORMANCE_MAIL_CC = "buildcc@localhost"
 PERFORMANCE_MAIL_BCC = "buildbcc@localhost"
 PERFORMANCE_MAIL_SIG = "Multiline\nSig\nLine"
+
+[Daft]
+DAFT_WORKER_DEVICES_CFG = "/etc/daft/devices.cfg"
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/DaftGetDevices.py b/lib/python2.7/site-packages/autobuilder/buildsteps/DaftGetDevices.py
new file mode 100644
index 0000000..133a4d6
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/DaftGetDevices.py
@@ -0,0 +1,44 @@
+import os
+from buildbot.steps.transfer import FileUpload
+from buildbot.process.buildstep import BuildStep
+
+from lib.daft import DeployScanner
+from autobuilder.config import DAFT_WORKER_DEVICES_CFG
+
+class DaftGetDevices(FileUpload):
+    haltOnFailure = True
+
+    name = "DaftGetDevices"
+
+    def __init__(self, factory, argdict=None, **kwargs):
+        self.tests = None
+        self.factory = factory
+        for k, v in argdict.iteritems():
+            setattr(self, k, v)
+        self.description = "Getting devices configuration"
+        self.timeout = 100000
+        kwargs['timeout']=self.timeout
+
+        super(DaftGetDevices, self).__init__(DAFT_WORKER_DEVICES_CFG,
+                os.path.join('/tmp', 'devices.cfg'))
+
+    def finished(self, result):
+        if self.cmd:
+            ds = DeployScanner(devsconf_file = self.masterdest)
+            devices = ds()
+
+            found = False
+            dut_label = self.getProperty('custom_dut')
+            for d in devices:
+                if d['dut_label'] == dut_label:
+                    self.setProperty('dut_name', d['dut_label'], 'DaftGetDevices')
+                    self.setProperty('server_ip', d['server_address'], 'DaftGetDevices')
+                    target_ip = "%s:%s" % (d['ctrl_address'], d['dut_sshport'])
+                    self.setProperty('target_ip', target_ip, 'DaftGetDevices')
+
+                    found = True
+
+            if not found:
+                 return BuildStep.finished(self, FAILURE)
+
+        return super(DaftGetDevices, self).finished(result)
diff --git a/lib/python2.7/site-packages/autobuilder/config.py b/lib/python2.7/site-packages/autobuilder/config.py
index 9d945b1..5bcf6c6 100644
--- a/lib/python2.7/site-packages/autobuilder/config.py
+++ b/lib/python2.7/site-packages/autobuilder/config.py
@@ -23,3 +23,4 @@ RPM_PUBLISH_DIR = os.environ.get("RPM_PUBLISH_DIR")
 IPK_PUBLISH_DIR = os.environ.get("IPK_PUBLISH_DIR")
 DEB_PUBLISH_DIR = os.environ.get("DEB_PUBLISH_DIR")
 PERFORMANCE_PUBLISH_DIR = os.environ.get("PERFORMANCE_PUBLISH_DIR")
+DAFT_WORKER_DEVICES_CFG = os.environ.get("DAFT_WORKER_DEVICES_CFG")
diff --git a/lib/python2.7/site-packages/autobuilder/lib/daft.py b/lib/python2.7/site-packages/autobuilder/lib/daft.py
new file mode 100644
index 0000000..eef4bab
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/lib/daft.py
@@ -0,0 +1,115 @@
+import os
+import ConfigParser as configparser
+
+class DeployScanner(object):
+    '''
+    In charge of scanning deployed daft bbb devices
+    '''
+
+    __MAGIC_SERVER_ADDRESS = '192.168.30.1' # DAFT uses this address for this internal network
+    __MAGIC_SSH_PORT = 2233 # it is hardcoded as per DAFT implementation manual
+
+    def  __init__(self, *args, **kwargs):
+        self.devsconf_fp = kwargs.get('devsconf_file', None)
+        if not self.devsconf_fp:
+            raise Exception('not fed devsconf file')
+        self.ign_leases = kwargs.get('ign_leases', True)
+        if not self.ign_leases:
+            self.leases_file_path =  kwargs.get('leases_file', None)
+            if not self.leases_file_path:
+                raise Exception('not fed leases file')
+
+    def __call__(self):
+        '''
+        Creates relation of deployed devices
+        Returns:
+            List of dictionaries containing info about devices deployed.
+        '''
+        def create_relation(i,j):
+            r = []
+            for conf in i:
+                for active in j:
+                    if conf['bb_ip'] == active['ip']:
+                        r.append({
+                            'dut_label': conf['device'].lower(),
+                            'dut_family': conf['device_type'].lower(),
+                            'dut_sshport': str(self.__MAGIC_SSH_PORT),
+                            'ctrl_address': conf['bb_ip'],
+                            'server_address': self.__MAGIC_SERVER_ADDRESS
+                        })
+            return r
+
+        def slack_relation(i):
+            r = []
+            for conf in i:
+                r.append({
+                    'dut_label': conf['device'],
+                    'dut_family': conf['device_type'],
+                    'dut_sshport': str(self.__MAGIC_SSH_PORT),
+                    'ctrl_address': conf['bb_ip'],
+                    'server_address': self.__MAGIC_SERVER_ADDRESS
+                })
+            return r
+
+        fc = self.__fetch_confs()
+        if not fc:
+            raise Exception('There are no configurations as per BBB devices')
+
+        if self.ign_leases:
+            # Devices that nobody knows if were deployed
+            return slack_relation(fc)
+
+        als = self.__active_leases()
+        if not als:
+            raise Exception('DHCP server has not registered any host yet')
+
+        return create_relation(fc, als)
+
+    def __fetch_confs(self):
+        '''
+        Read and parse BBB configuration file and return result as dictionary
+        '''
+        config = configparser.SafeConfigParser()
+        config.read(self.devsconf_fp)
+        configurations = []
+        for device in config.sections():
+            device_config = dict(config.items(device))
+            device_config["device"] = device
+            device_config["device_type"] = device.rstrip('1234567890_')
+            configurations.append(device_config)
+        return configurations
+
+    def __active_leases(self):
+        """
+        Read the active leases from dnsmasq leases file and return a list of
+        active leases as dictionaries.
+        Args:
+            file_name (str): Path to leases file, e.g. /path/to/file/dnsmasq.leases
+        Returns:
+            List of dictionaries containing the active leases.
+            The dictionaries have the following format:
+            {
+                "mac": "device_mac_address",
+                "ip": "device_ip_address",
+                "hostname": "device_host_name",
+                "client_id": "client_id_or_*_if_unset"
+            }
+        """
+        with open(self.leases_file_path) as lease_file:
+            leases = lease_file.readlines()
+
+        leases_list = []
+
+        # dnsmasq.leases contains rows with the following format:
+        # <lease_expiry_time_as_epoch_format> <mac> <ip> <hostname> <domain>
+        # See:
+        #http://lists.thekelleys.org.uk/pipermail/dnsmasq-discuss/2005q1/000143.html
+        for lease in leases:
+            lease = lease.split()
+            leases_list.append({
+                "mac": lease[1],
+                "ip": lease[2],
+                "hostname": lease[3],
+                "client_id": lease[4],
+            })
+        return leases_list
-- 
2.1.4


