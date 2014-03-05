Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 192BFE00AEF
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:27:55 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Mar 2014 10:23:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="494628094"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga002.jf.intel.com with ESMTP; 05 Mar 2014 10:26:50 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id BDB4F5F82A96; Wed,  5 Mar 2014 10:23:31 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:22:58 -0800
Message-Id: <86dac375b249247daf39ae9c8051650906be59bd.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 07/27] nightly.conf: Add additional parameters
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
X-List-Received-Date: Wed, 05 Mar 2014 18:27:56 -0000

From: Beth Flanagan <elizabeth.flanagan@intel.com>

This allows us to set the prefered kernel via the UI as well
as supports additional release related parameters that are not
currently supported by PublishArtifacts/SetDest.

This also supports TriggerBuilds schedulerNames_nowait. This
allows us to delay the schedulers of certain buildsets a few seconds
before pushing them out to be built.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 buildset-config.master/nightly.conf                | 40 +++++++++++++---------
 .../autobuilder/buildsteps/CreateAutoConf.py       |  2 ++
 .../autobuilder/buildsteps/PublishLayerTarballs.py | 25 ++++++++------
 3 files changed, 41 insertions(+), 26 deletions(-)

diff --git a/buildset-config.master/nightly.conf b/buildset-config.master/nightly.conf
index 1ecd982..085c25f 100644
--- a/buildset-config.master/nightly.conf
+++ b/buildset-config.master/nightly.conf
@@ -2,7 +2,7 @@
 builders: 'builder1'
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
-	         'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},
              'branch':'master'}},
         {'meta-intel':
             {'repourl':'git://git.yoctoproject.org/meta-intel',
@@ -55,7 +55,12 @@ props: [{'release_me':{'prop_type':'ChoiceStringParameter',
         {'send_email':{'prop_type':'ChoiceStringParameter',
                        'choices': ['False', 'True'],
                        'name': 'send_email',
-                       'label':'<h3> Send QA alert emails?:</h3>'}}]
+                       'label':'<h3> Send QA alert emails?:</h3>'}},
+        {'prefered_kernel':{'prop_type':'StringParameter',
+                       'size': 15,
+                       'name': 'prefered_kernel',
+                       'default': 'linux-yocto',
+                       'label':'<hr><h3> PREFERRED_PROVIDER_virtual/kernel (default is "linux-yocto"):</h3>'}}]
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
@@ -63,22 +68,25 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'x86_64',
                             'distro': 'poky'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
-        {'RunBitbakeSelftest': {}},
         {'BuildImages': {'images': 'universe -c fetch'}},
         {'TriggerBuilds': {'schedulerName': 'main-build', 'waitForFinish': 'True', 
-                             'schedulerNames': {'minnow': {}, 'minnow-lsb': {},
-                              'nightly-arm': {}, 'nightly-arm-lsb': {},
-                              'nightly-fsl-arm': {}, 'nightly-fsl-arm-lsb': {},
-                              'nightly-fsl-ppc': {}, 'nightly-fsl-ppc-lsb': {},
-                              'nightly-intel-gpl': {}, 'nightly-mips': {},
-                              'nightly-mips-lsb': {}, 'nightly-multilib': {},
-                              'nightly-ppc': {}, 'nightly-ppc-lsb': {},
-                              'nightly-x86-64': {}, 'nightly-x86-64-lsb': {},
-                              'nightly-x86': {}, 'nightly-x86-lsb': {},
-                              'nightly-x32': {}, 'poky-tiny': {}, 'buildtools': {},
-                              'nightly-qa-systemd': {}, 'nightly-qa-extras': {},
-                              'nightly-qa-logrotate': {}, 'nightly-qa-pam': {},
-                              'nightly-qa-skeleton': {}, 'nightly-extras': {}}}},
+                           'schedulerNames': {'minnow': {}, 'minnow-lsb': {},
+                           'nightly-arm': {}, 'nightly-arm-lsb': {},
+                           'nightly-fsl-arm': {}, 'nightly-fsl-arm-lsb': {},
+                           'nightly-fsl-ppc': {}, 'nightly-fsl-ppc-lsb': {},
+                           'nightly-mips': {}, 'nightly-mips-lsb': {}, 
+                           'nightly-multilib': {}, 'nightly-x32': {}, 
+                           'nightly-ppc': {}, 'nightly-ppc-lsb': {},
+                           'nightly-x86-64': {}, 'nightly-x86-64-lsb': {},
+                           'nightly-x86': {}, 'nightly-x86-lsb': {}},
+                           'schedulerNames_nowait' : {'build-appliance': {},
+                           'eclipse-plugin-kepler': {}, 'eclipse-plugin-juno': {},
+                           'nightly-non-gpl3': {}, 'nightly-oecore': {},
+                           'nightly-world':{}, 'nightly-intel-gpl': {},
+                           'poky-tiny': {}, 'buildtools': {},
+                           'nightly-qa-systemd': {}, 'nightly-qa-extras': {},
+                           'nightly-qa-logrotate': {}, 'nightly-qa-pam': {},
+                           'nightly-qa-skeleton': {}}}},
         {'PrepPkgIndex' : {}},
         {'BuildImages': {'images': 'package-index'}},
         {'CreateAutoConf': {'machine': 'atom-pc', 'SDKMACHINE' : 'x86_64',
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
index bec221a..73cf4a6 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
@@ -67,6 +67,8 @@ class CreateAutoConf(ShellCommand):
                 fout = fout + 'PACKAGE_CLASSES = "' + " ".join(self.classes) + '"\n'
             else:
                 fout = fout + 'PACKAGE_CLASSES = "package_rpm package_deb package_ipk"\n'
+            if self.getProperty("custom_prefered_kernel") is not None:
+                fout = fout + 'PREFERRED_PROVIDER_virtual/kernel = "' + self.getProperty("custom_prefered_kernel") +'"\n'
             fout = fout + 'BB_NUMBER_THREADS = "' + os.environ.get('BB_NUMBER_THREADS') + '"\n'
             fout = fout + 'PARALLEL_MAKE = "-j ' + os.environ.get('PARALLEL_MAKE') + '"\n'
             fout = fout + 'SDKMACHINE ?= "' + self.SDKMACHINE + '"\n'
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py
index 14b7deb..c73fd29 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py
@@ -35,26 +35,31 @@ class PublishLayerTarballs(ShellCommand):
         DEST=self.getProperty("DEST")
         buildername=self.getProperty("buildername")
         revision = ""
+        self.basedir=os.path.join(os.path.join(os.path.join(
+                                    self.slavedir, buildername), self.workdir))
         if str(os.environ.get('PUBLISH_BUILDS')) == "True":
             if self.getProperty("custom_release_me_"+buildername):
-                revision=self.getProperty("custom_release_name_"+buildername)
+                poky_name = self.getProperty("poky_name")
+                poky_number = self.getProperty("poky_number")
+                yocto_number = self.getProperty("yocto_number")
+                archive_name = self.layername + "-" + poky_name + "-" + poky_number
+                command = " git archive --format=tar HEAD "
+                command = command + "--prefix=" + archive_name + "/"
+                command = command + " | bzip2 -c > " + archive_name + ".tar.bz2; "
+                command = command + "md5sum " + archive_name + ".tar.bz2 >> "
+                command = command + self.layername + "-" + revision + ".tar.bz2.md5sum; "
+                command = command + "mkdir -p " + DEST + "; rsync -av "
+                command = command + archive_name +".tar.bz2* " + DEST
             elif self.getProperty("got_revision_"+self.layername):
                 revision=self.getProperty("got_revision_"+self.layername)
-            if revision is not "":
-                self.basedir=os.path.join(os.path.join(os.path.join(
-                                            self.slavedir, buildername), self.workdir))
+                archive_name = self.layername + "-" + revision
                 command = " git archive --format=tar HEAD "
                 command = command + "--prefix=" + self.layername + "-" + revision + "/"
-                command = command + " | gzip > " + self.layername + "-" + revision + ".tar.gz; "
-                command = command + " git archive --format=tar HEAD "
-                command = command + "--prefix=" + self.layername + "-" + revision + "/"
                 command = command + " | bzip2 -c > " + self.layername + "-" + revision + ".tar.bz2; "
                 command = command + "md5sum " + self.layername + "-" + revision + ".tar.bz2 >> "
                 command = command + self.layername + "-" + revision + ".tar.bz2.md5sum; "
-                command = command + "md5sum " + self.layername + "-" + revision + ".tar.gz >> "
-                command = command + self.layername + "-" + revision + ".tar.gz.md5sum; "
                 command = command + "mkdir -p " + DEST + "; rsync -av "
-                command = command + self.layername + "-" + revision +".tar.* " + DEST
+                command = command + archive_name +".tar.bz2* " + DEST
                 self.command=command
             else:
                 self.command="echo 'No revision found. Skipping tarball'"
-- 
1.8.1.2


