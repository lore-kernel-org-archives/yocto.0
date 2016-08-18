Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0516E00C75; Wed, 17 Aug 2016 18:49:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CBC4E00C6E
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2016 18:49:53 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 17 Aug 2016 18:49:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,536,1464678000"; d="scan'208";a="867298942"
Received: from wcrandle-mobl1.jf.intel.com ([10.7.199.151])
	by orsmga003.jf.intel.com with ESMTP; 17 Aug 2016 18:49:53 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Aug 2016 18:49:45 -0700
Message-Id: <1471484985-21028-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH v2] enable use of kvm with qemux86*
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
X-List-Received-Date: Thu, 18 Aug 2016 01:49:55 -0000

When used with corresponding oe-core patch, this will enable the use
of kvm when running qemux86* images on a x86* host that supports kvm.
On the same build machine, for an x86_64 testimage run, the with and
without times are:
  without kvm:
    core-image-sato-1.0-r0 do_testimage: Ran 43 tests in 728.726s
    core-image-sato-sdk-1.0-r0 do_testimage: Ran 52 tests in 1090.838s
  with kvm:
    core-image-sato-1.0-r0 do_testimage: Ran 43 tests in 60.255s
    core-image-sato-sdk-1.0-r0 do_testimage: Ran 52 tests in 71.719s

[YOCTO #9298]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---

Change for v2: propagate the new variable to the workers.

 config/autobuilder.conf.example | 3 +++
 lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/config/autobuilder.conf.example b/config/autobuilder.conf.example
index 9179d14..96bc4c6 100644
--- a/config/autobuilder.conf.example
+++ b/config/autobuilder.conf.example
@@ -60,6 +60,9 @@ RESOLVE_TRIGGERED_HEAD = True
 DEVKERNEL_MUT_REPO = "{'git://git.yoctoproject.org/poky-contrib':['stage/master_under_test', 'sgw/mut']}"
 DEVKERNEL = "linux-yocto-dev"
 
+[TestSettings]
+QEMU_USE_KVM = "True"
+
 [ADTREPO Settings]
 ADTREPO_POPULATE = False
 ADTREPO_DEV_POPULATE = True

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
index 8817d69..2b086e1 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateAutoConf.py
@@ -264,6 +264,8 @@ class CreateAutoConf(ShellCommand):
                 if self.initmgr == "sysvinit systemd":
                     fout = fout + 'DISTRO_FEATURES_append = " systemd"\n'
                     fout = fout + 'VIRTUAL-RUNTIME_init_manager = "sysvinit"\n'
+            if os.environ.get("QEMU_USE_KVM") == "True":
+                fout = fout + 'QEMU_USE_KVM = "True"\n'
         if self.atextappend:
             fout = fout + self.atextappend
 
-- 
2.5.5


