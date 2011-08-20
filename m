Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EFB9E011F2
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2011 08:26:30 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Aug 2011 08:26:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="39754920"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by orsmga002.jf.intel.com with ESMTP; 20 Aug 2011 08:26:29 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	saul.wold@intel.com,
	yocto@yoctoproject.org
Date: Sat, 20 Aug 2011 10:26:56 -0500
Message-Id: <cover.1313853536.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/9] meta-intel: EMGD 1.8 and 3.0 kernel upgrade, v3
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 20 Aug 2011 15:26:30 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset switches crownbay to the 3.0 kernel and upgrades emgd
to 1.8.  Both crownbay and crownbay-noemgd were successfully built and
boot tested into sato.

It also does the same for fri2, after adding a new fri2 machine config
and renaming the current one to fri2-noemgd.  Both fri2 and fri2-noemgd
were successfully built and boot tested into sato.

One major change coming out of this patchset is that the emgd binary
bits no longer have to be downloaded and extracted manually - the new
emgd-driver-bin recipe takes care of that now.

However, after these changes the crownbay and fri2 (but not the
crownbay-noemgd and fri2-noemgd) recipes will not build successfully
unless the user specifies EMGD_LICENSE = "yes" as mentioned in the READMEs.

Changes since v2:

  - removed COMMERCIAL_LICENSE from crownbay and fri2 layers
  - added EMGD_LICENSE to emgd-driver-bin recipe
  - updated READMEs to reflect EMGD_LICENSE

The following changes since commit fa92a44396b16be74f0de10256b0d42e52cf0bb6:
  Tom Zanussi (1):
        meta-intel: update linux-yocto 3.0 kernel SRCREVs

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/emgd-1.8v3
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/emgd-1.8v3

Tom Zanussi (9):
  meta-crownbay: switch to linux-yocto 3.0 kernel
  meta-crownbay: new recipe for emgd 1.8 driver binaries
  meta-crownbay: select emgd 1.8
  meta-crownbay: xorg.conf changes
  meta-crownbay: update README
  meta-fri2: add EMGD 1.8 capabilities to fri2
  meta-intel: move emgd-driver-bin_1.8 to common
  meta-fri2: add common/recipes-graphics to BBFILES
  meta-fri2: update README

 .../xorg-xserver/emgd-driver-bin_1.8.bb            |   46 +++++
 meta-crownbay/README                               |  206 ++++----------------
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    2 +
 meta-crownbay/conf/machine/crownbay.conf           |    4 +-
 .../xserver-xf86-config/crownbay/xorg.conf         |    3 +-
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    1 +
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   15 ++
 meta-fri2/README                                   |   95 ++++++++-
 meta-fri2/conf/layer.conf                          |    4 +-
 meta-fri2/conf/machine/fri2-noemgd.conf            |   36 ++++
 meta-fri2/conf/machine/fri2.conf                   |    5 +-
 .../formfactor/formfactor/fri2-noemgd/machconfig   |    3 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    1 +
 .../xserver-xf86-config/fri2-noemgd/xorg.conf      |   26 +++
 .../xserver-xf86-config/fri2/xorg.conf             |   48 ++++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    9 +
 16 files changed, 312 insertions(+), 192 deletions(-)
 create mode 100644 common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
 create mode 100644 meta-fri2/conf/machine/fri2-noemgd.conf
 create mode 100644 meta-fri2/recipes-bsp/formfactor/formfactor/fri2-noemgd/machconfig
 create mode 100644 meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2-noemgd/xorg.conf


