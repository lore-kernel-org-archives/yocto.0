Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59DA4E00A88
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:26:51 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 05 Mar 2014 10:26:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="486606549"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2014 10:26:49 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 338045F825EE; Wed,  5 Mar 2014 10:23:27 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:22:51 -0800
Message-Id: <cover.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [AB PATCH 00/27] Autobuilder patches
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
X-List-Received-Date: Wed, 05 Mar 2014 18:26:51 -0000

This is a fairly large patchset and I'd like at least a second set of eyes on it.

There are a few things this does:

1. Updates the Autobuilder parser. 

The autobuilder parser was fairly junky. It didn't dive too far into what it was
parsing. This made it so people couldn't do triggers of triggers because the 
props wouldn't filter all the way up to the master trigger. This should be 
possible now.

2. Simplify the commit/repo/branch combos/remove mix and match.

A long time ago we needed the ability to mix and match repos/branches when we 
were building out nightly. This made it so that we could build everything but
nightly-foo on master. That use case is no longer really needed.

It was also a major complaint that the UI was complicated. This trims the UI 
down and makes it much sparser

3. Git fetcher mirror.

The git fetcher with buildbot doesn't do a lot of what we need it to. This set
of patches creates a mirror on each slave of the major repos. This allows us to 
clone from those repos. The git fetcher also has a movecopy method that allows 
us to instead of clobbering a build dir, move it off to a trash directory. This
works well when your trash and slaves are on the same partition but is slowed 
when you move it across disk.

When the ab starts a service runs in the background that 1. Updates all of the 
repos every XX minutes 2. takes out the trash every XX minutes. 

The following changes since commit ba57054aea5627b557327632ad3d6c2a1faa14f2:

4. Simplifies wait/no_wait triggers.

This needs to be revisited, as I know of a better way to do this now, but this
allows us to more optimally utilize the ab resources by triggering all builds,
but putting a few second sleep in for the no_wait builds to queue.

Bugs fixed:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=5454
https://bugzilla.yoctoproject.org/show_bug.cgi?id=5433
https://bugzilla.yoctoproject.org/show_bug.cgi?id=5027

  PublishLayerTarballs: Don't hang is PUBLISH_BUILDS isn't set (2014-02-18 10:37:36 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/yocto-autobuilder eflanagan/yocto-autobuilder-dev-rebase
  http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/log/?h=eflanagan/yocto-autobuilder-dev-rebase

Beth Flanagan (8):
  PrepPkgIndex.py: ln instead of cp
  Autobuilder.py/Buildset.py: More sane parser/UI
  nightly.conf: Add additional parameters
  CheckOutLayers.py/ResolveLayerHead.py: support simplified git
  Autobuilder.py: remove DEBUG code
  BuildSet.py: Remove more debug code.
  yocto-start/stop-autobuilder: start buildslave-janitor
  forms.html/layout.html: support simplified UI

Elizabeth Flanagan (12):
  nightly-world-uclibc: uclibc target
  SyncPersistDB.py: First run failure correction
  BuildSet.py: Set workdir based on layer not order
  BuildSet.py: remove trailing spaces
  yoctogit.py: fix callbacks and instance attrs
  PublishArtifacts.py: Fix poky-tiny publish
  PublishArtifacts.py: genericx86-64 publish
  BuildEclipsePlugin.py: Change location of build.
  PublishArtifacts.py: Change where we find eclipse artifacts
  yocto-autobuilder-setup: set the correct bb version
  fs.py: Bump default timeout
  autobuilder: whitespace removal

Richard Purdie (5):
  Add mirror functionality to git fetcher
  trigger.py: Allow wait and nowait triggers
  yoctogit: Don't use branch args for referenced clone
  bin/buildslave-janitor: For fast-git checkouts
  yoctogit: Remove use of oe.path.exists()

Stefan Stanacar (2):
  buildsets: add a new buildset to run builds on target
  Add buildstep and buildset for oe-selftest script

 bin/buildslave-janitor                             | 125 ++++++
 buildset-config.master/nightly-oe-selftest.conf    |  15 +
 .../nightly-qa-targetbuilds.conf                   |  26 ++
 buildset-config.master/nightly-world-uclibc.conf   |  18 +
 buildset-config.master/nightly.conf                |  40 +-
 config/autobuilder.conf.example                    |   1 +
 .../site-packages/autobuilder/Autobuilder.py       | 422 ++++++++++-----------
 .../site-packages/autobuilder/BuildSet.py          |  67 ++--
 .../autobuilder/buildsteps/BuildEclipsePlugin.py   |   8 +-
 .../autobuilder/buildsteps/BuildToolchainImages.py |   6 +-
 .../autobuilder/buildsteps/CheckOutLayers.py       |  32 +-
 .../autobuilder/buildsteps/CreateAutoConf.py       |  17 +-
 .../autobuilder/buildsteps/CreateBBLayersConf.py   |  10 +-
 .../autobuilder/buildsteps/CreateCurrentLink.py    |   6 +-
 .../buildsteps/CreateIntelBSPPackage.py            |   8 +-
 .../autobuilder/buildsteps/GetDistroVersion.py     |   4 +-
 .../autobuilder/buildsteps/GetLayerVersion.py      |  10 +-
 .../autobuilder/buildsteps/HelloWorld.py           |   6 +-
 .../autobuilder/buildsteps/MaintainPersistDB.py    |  12 +-
 .../autobuilder/buildsteps/PrepPkgIndex.py         |  12 +-
 .../autobuilder/buildsteps/PublishArtifacts.py     |  28 +-
 .../autobuilder/buildsteps/PublishLayerTarballs.py |  33 +-
 .../autobuilder/buildsteps/ResolveLayerHead.py     |  32 +-
 .../autobuilder/buildsteps/RunOeSelftest.py        |  26 ++
 .../autobuilder/buildsteps/RunSanityTests.py       |   6 +-
 .../autobuilder/buildsteps/SetDest.py              |  12 +-
 .../site-packages/autobuilder/buildsteps/Sleep.py  |  20 +-
 .../autobuilder/buildsteps/SyncPersistDB.py        |  11 +-
 .../autobuilder/buildsteps/TestFailStep.py         |   4 +-
 .../autobuilder/buildsteps/YoctoBlocker.py         |   2 +-
 .../buildbot/status/web/templates/forms.html       |   1 -
 .../buildbot/status/web/templates/layout.html      | 185 +--------
 .../buildbot/steps/source/yoctogit.py              |  99 +++--
 .../buildbot/steps/trigger.py                      |  15 +-
 .../buildslave/commands/fs.py                      |   4 +-
 yocto-autobuilder-setup                            |   4 +-
 yocto-start-autobuilder                            |  24 +-
 yocto-stop-autobuilder                             |  41 +-
 38 files changed, 756 insertions(+), 636 deletions(-)
 create mode 100755 bin/buildslave-janitor
 create mode 100644 buildset-config.master/nightly-oe-selftest.conf
 create mode 100644 buildset-config.master/nightly-qa-targetbuilds.conf
 create mode 100644 buildset-config.master/nightly-world-uclibc.conf
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py

-- 
1.8.1.2


