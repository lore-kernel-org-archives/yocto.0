Return-Path: <stefanx.stanacar@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 830C8E01476
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2013 10:52:56 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 Jul 2013 10:52:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1037,1363158000"; d="scan'208";a="329444986"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 10 Jul 2013 10:52:41 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.73])
	by linux.intel.com (Postfix) with ESMTP id 144B06A4093;
	Wed, 10 Jul 2013 10:52:38 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Wed, 10 Jul 2013 20:32:34 +0300
Message-Id: <cover.1373474163.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [yocto-autobuilder][PATCH 0/3] Enabling of the new testimage class for sanity tests
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
X-List-Received-Date: Wed, 10 Jul 2013 17:52:56 -0000

Hi Beth,

The first two patches enable the new testimage class that has just been merged in master,
and it needs a real AB shakedown ;). 

On my local AB one of the problems I've had were timeouts
for qemu booting (when the machine was really loaded), and I've sent a patch to increase the timeout, but
this might need a little more tweaking for the Yocto AB. Also, one more setup issue could be DISPLAY / vnc server. 
I've had some trouble with DISPLAY=localhost:1 that's why you'll notice
I've used DISPLAY=:1, that fixed the problem out on my machine. It has something to do with how the new class starts the runqemu script
and the enviroment.


The last patch has nothing to do with enabling, I just thought that we should run the sanity tests
for the sdk images too given that the new class has a gcc test. It adds a few minutes to the builds, 
keep this one out if that's problem.

Cheers,
Stefan

The following changes since commit b26b257e16fddb7730d3b2a0c55c4b43a48ae54c:

  Revert "buildset-config: build core-image-sato SDK" (2013-07-02 17:10:05 -0700)

are available in the git repository at:

  git://mirror.rb.intel.com/git.yoctoproject.org/poky-contrib stefans/yab-newsanity3

for you to fetch changes up to e15d6185251e4c6f163577c7263239936d76e5b3:

  buildsets: run sanity tests for core-image-sato-sdk images (2013-07-10 19:07:27 +0300)

----------------------------------------------------------------
Stefan Stanacar (3):
      RunSanityTests: add support for the new testimage class
      nightly-multilib,qa-systemd.conf: enable specific tests with the new class
      buildsets: run sanity tests for core-image-sato-sdk images

 buildset-config/nightly-arm.conf                   |  2 +-
 buildset-config/nightly-mips.conf                  |  2 +-
 buildset-config/nightly-multilib.conf              |  8 +++----
 buildset-config/nightly-ppc.conf                   |  2 +-
 buildset-config/nightly-qa-systemd.conf            |  4 ++--
 buildset-config/nightly-x86-64.conf                |  2 +-
 buildset-config/nightly-x86.conf                   |  2 +-
 .../autobuilder/buildsteps/RunSanityTests.py       | 27 ++++++++++++++++------
 8 files changed, 31 insertions(+), 18 deletions(-)

Stefan Stanacar (3):
  RunSanityTests: add support for the new testimage class
  nightly-multilib,qa-systemd.conf: enable specific tests with the new
    class
  buildsets: run sanity tests for core-image-sato-sdk images

 buildset-config/nightly-arm.conf                   |  2 +-
 buildset-config/nightly-mips.conf                  |  2 +-
 buildset-config/nightly-multilib.conf              |  8 +++----
 buildset-config/nightly-ppc.conf                   |  2 +-
 buildset-config/nightly-qa-systemd.conf            |  4 ++--
 buildset-config/nightly-x86-64.conf                |  2 +-
 buildset-config/nightly-x86.conf                   |  2 +-
 .../autobuilder/buildsteps/RunSanityTests.py       | 27 ++++++++++++++++------
 8 files changed, 31 insertions(+), 18 deletions(-)

-- 
1.8.1.4


