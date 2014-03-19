Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D48AFE00B45
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:55:27 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Mar 2014 13:55:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="502282982"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2014 13:55:02 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id DF4985F825B8; Wed, 19 Mar 2014 13:51:30 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:50:58 -0700
Message-Id: <cover.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [AB PATCH 00/22] Consolidated patch set.
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
X-List-Received-Date: Wed, 19 Mar 2014 20:55:29 -0000

This patch set is currently running on dev-ab-master.pdx.yoctodev.org:8010 for
testing purposes. 

The main bits of functionality here:
- fixes up some of the last issues with yoctogit.py that have cropped up.
- fixes how we use patchExists within yoctogit.py
- reimpliments some old release functionality that we lost with the UI changes.
- Cleans up some yoctogit.py code
- supports the name change of core-image-basic
- gives us some logging with the buildslave-janitor
- adds a new buildset to run builds on target

The following changes since commit ff48d4619a6910aa37473fd323d1865d8a32eb0c:

  BuildSet.py: Indent error causes triggers with no nowait to fail (2014-03-19 08:47:16 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/yocto-autobuilder eflanagan/yocto-autobuilder-dev
  http://git.yoctoproject.org/cgit.cgi//log/?h=eflanagan/yocto-autobuilder-dev

Beth Flanagan (10):
  yoctogit.py: Use self.srcdir, not local srcdir construct.
  yoctogit.py: movecopy should only move 'build'
  yoctogit.py: DRYing up some code
  yoctogit.py: Fix timeouts.
  yoctogit.py: Set workdir for the class
  yoctogit.py: Set workdir within dovccmd
  yoctogit.py: change _srccopy fromdir to it's own construction
  PublishArtifacts.py: Exclude genericx86-64 pre-1.5
  SetDest.py: Use new UI variables.
  yoctogit.py: sync on mv

Elizabeth Flanagan (9):
  yoctogit.py: Fix cp construction from source to build
  BuildImages.py: core-image-basic name change support
  yoctogit.py: movecopy doesn't care if it's updateable
  yoctogit.py: movecopy needs an incremental callback
  CheckOutLayers.py: Remove unset Props
  yoctogit.py: pathExists returns a defered value.
  CheckOutLayers.py: Remove srcdir
  yoctogit.py: Stop passing in srcdir.
  yoctogit.py: Check for mirror on incremental builds

Richard Purdie (2):
  yocto-start-autobuilder: Make sure janitor logging goes to a log file
  buildslave-janitor: Add in try/except handling to make calls robust
    against failure

Stefan Stanacar (1):
  buildsets: add a new buildset to run builds on target

 bin/buildslave-janitor                             |  15 +-
 .../nightly-qa-targetbuilds.conf                   |  26 +++
 .../site-packages/autobuilder/BuildSet.py          |   2 -
 .../autobuilder/buildsteps/BuildImages.py          |   9 ++
 .../autobuilder/buildsteps/CheckOutLayers.py       |   9 +-
 .../autobuilder/buildsteps/PublishArtifacts.py     |  15 +-
 .../autobuilder/buildsteps/SetDest.py              |   7 +-
 .../buildbot/steps/source/yoctogit.py              | 177 ++++++++++-----------
 yocto-start-autobuilder                            |   2 +-
 9 files changed, 145 insertions(+), 117 deletions(-)
 create mode 100644 buildset-config.master/nightly-qa-targetbuilds.conf

-- 
1.8.1.2


