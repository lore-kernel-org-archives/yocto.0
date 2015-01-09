Return-Path: <javier.b.perez.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C0FBE00945; Fri,  9 Jan 2015 09:07:31 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94698E008DE
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 09:07:28 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 09 Jan 2015 09:07:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="438588873"
Received: from unknown (HELO jbperezh-mobl4.amr.corp.intel.com)
	([10.255.34.120])
	by FMSMGA003.fm.intel.com with ESMTP; 09 Jan 2015 08:54:52 -0800
From: "Javier B. Perez" <javier.b.perez.hernandez@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  9 Jan 2015 11:07:09 -0600
Message-Id: <1420823230-6148-4-git-send-email-javier.b.perez.hernandez@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1420823230-6148-1-git-send-email-javier.b.perez.hernandez@linux.intel.com>
References: <1420823230-6148-1-git-send-email-javier.b.perez.hernandez@linux.intel.com>
X-Mailman-Approved-At: Sun, 11 Jan 2015 22:02:59 -0800
Cc: Javier B Perez Hernandez <javier.b.perez.hernandez@linux.intel.com>
Subject: [PATCH 3/4] Added support in CreateAutoConf.py for GUI properties 'packages' and 'machine'
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
X-List-Received-Date: Fri, 09 Jan 2015 17:07:31 -0000

From: Javier B Perez Hernandez <javier.b.perez.hernandez@linux.intel.com>

CreateAutoConf.py: 'start' modified to support the values custom_packages and
custom_machine of force build GUI. Set the PACKAGE_CLASSES and MACHINE
auto.conf properties accordingly.

Signed-off-by: Javier B Perez Hernandez <javier.b.perez.hernandez@linux.intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
index 25ada04..bd1d057 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
@@ -75,6 +75,8 @@ class CreateAutoConf(ShellCommand):
             if self.packages:
                 self.classes = [ "package_%s" % p for p in self.packages.split() ]
                 fout = fout + 'PACKAGE_CLASSES = "' + " ".join(self.classes) + '"\n'
+            elif self.getProperty("custom_packages") is not None:
+                fout = fout + 'PACKAGE_CLASSES = "' + " ".join([ "package_%s" % p for p in self.getProperty("custom_packages") ]) + '"\n'
             else:
                 fout = fout + 'PACKAGE_CLASSES = "package_rpm package_deb package_ipk"\n'
             repo=self.getProperty("repository")
@@ -135,6 +137,8 @@ class CreateAutoConf(ShellCommand):
             if self.distro == "poky-rt":
                 fout = fout + 'PREFERRED_PROVIDER_virtual/kernel="linux-yocto-rt" \n'
             machine=self.machine
+            if not machine and self.getProperty("custom_machine") is not None:
+                machine = self.getProperty("custom_machine")
             if layerversion is not None and int(layerversion) > 1:
                 if self.machine == "atom-pc":
                     machine = self.machine.replace("atom-pc", "genericx86")
-- 
1.9.3


