Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1762FE01227
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 09:51:13 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 17 Aug 2011 09:51:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,240,1312182000"; 
   d="scan'208";a="8190823"
Received: from unknown (HELO localhost) ([10.255.14.5])
	by AZSMGA002.ch.intel.com with ESMTP; 17 Aug 2011 09:51:05 -0700
From: tom.zanussi@intel.com
To: dvhart@linux.intel.com,
	yocto@yoctoproject.org
Date: Wed, 17 Aug 2011 11:51:07 -0500
Message-Id: <cover.1313598804.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 00/12] meta-intel: EMGD 1.8 and 3.0 kernel upgrade, v2
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
X-List-Received-Date: Wed, 17 Aug 2011 16:51:13 -0000

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
unless the user overrides COMMERCIAL_LICENSE as mentioned in the READMEs.

Changes since v1:

  - added another README option for users to override COMMERCIAL_LICENSE
  - added support for EMGD to fri2
  - moved the emgd-driver-bin to common

The following changes since commit fa92a44396b16be74f0de10256b0d42e52cf0bb6:
  Tom Zanussi (1):
        meta-intel: update linux-yocto 3.0 kernel SRCREVs

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/emgd-1.8v2
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/emgd-1.8v2

Tom Zanussi (12):
  meta-crownbay: switch to linux-yocto 3.0 kernel
  meta-crownbay: new recipe for emgd 1.8 driver binaries
  meta-crownbay: select emgd 1.8
  meta-crownbay: make the use of emgd-driver-bin COMMERCIAL
  meta-crownbay: xorg.conf changes
  meta-crownbay: update README
  meta-fri2: add EMGD 1.8 capabilities to fri2
  meta-intel: move emgd-driver-bin_1.8 to common
  meta-fri2: add common/recipes-graphics to BBFILES
  meta-fri2: make the use of emgd-driver-bin COMMERCIAL
  meta-fri2: update README
  meta-intel: crownbay/fri2 README update for COMMERCIAL_LICENSE

 .../xorg-xserver/emgd-driver-bin_1.8.bb            |   36 ++++
 meta-crownbay/README                               |  213 +++++---------------
 meta-crownbay/conf/layer.conf                      |    2 +
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    2 +
 meta-crownbay/conf/machine/crownbay.conf           |    4 +-
 .../xserver-xf86-config/crownbay/xorg.conf         |    3 +-
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    1 +
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   15 ++
 meta-fri2/README                                   |  102 +++++++++-
 meta-fri2/conf/layer.conf                          |    6 +-
 meta-fri2/conf/machine/fri2-noemgd.conf            |   36 ++++
 meta-fri2/conf/machine/fri2.conf                   |    5 +-
 .../formfactor/formfactor/fri2-noemgd/machconfig   |    3 +
 .../recipes-core/tasks/task-core-tools.bbappend    |    1 +
 .../xserver-xf86-config/fri2-noemgd/xorg.conf      |   26 +++
 .../xserver-xf86-config/fri2/xorg.conf             |   48 ++++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    9 +
 17 files changed, 320 insertions(+), 192 deletions(-)
 create mode 100644 common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
 create mode 100644 meta-fri2/conf/machine/fri2-noemgd.conf
 create mode 100644 meta-fri2/recipes-bsp/formfactor/formfactor/fri2-noemgd/machconfig
 create mode 100644 meta-fri2/recipes-graphics/xorg-xserver/xserver-xf86-config/fri2-noemgd/xorg.conf


