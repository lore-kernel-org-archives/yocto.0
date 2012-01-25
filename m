Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51DFFE00592
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 16:00:43 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 24 Jan 2012 16:00:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="59678668"
Received: from unknown (HELO localhost) ([10.255.13.231])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Jan 2012 16:00:41 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com
Date: Tue, 24 Jan 2012 18:00:04 -0600
Message-Id: <cover.1327449325.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/6] emgd-1.10: new recipe
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
X-List-Received-Date: Wed, 25 Jan 2012 00:00:43 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset adds support for emgd-1.10.  This version relies on a new
licensing mechanism called LICENSE_FLAGS.

The LICENSE_FLAGS implementation provides the mechanism needed for this new
emgd recipe to be automatically downloaded from the emgd site and used by
the recipe rather than using the manual-copy method required by the emgd-1.8
and previous recipes.

In order to allow emgd-1.10 to be built, however, the emgd license string,
"license_emgd-driver-bin_1.10" must be added to the LICENSE_FLAGS_WHITELIST
variable in local.conf e.g.:

LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.10"

This patchset also removes the 1.8 recipe in the process.

The following changes since commit 4f1ca13b5a39f27bd41c0c7d9f2b163c3f9e8718:
  Joshua Lock (1):
        n450-audio: drop this machine specific recipe in favour of alsa-state

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/emgd-1.10v1
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/emgd-1.10v1

Tom Zanussi (6):
  meta-intel: new recipe for emgd 1.10 driver
  meta-intel: remove emgd-1.8
  meta-fri2: remove PREFERRED_VERSION for emgd-driver-bin
  meta-crownbay: remove PREFERRED_VERSION for emgd-driver-bin
  meta-crownbay: update README
  meta-fri2: update README

 .../xorg-xserver/emgd-driver-bin_1.10.bb           |   89 ++++++++++++++++++
 .../xorg-xserver/emgd-driver-bin_1.8.bb            |   39 --------
 meta-crownbay/README                               |   97 +++-----------------
 meta-crownbay/conf/machine/crownbay.conf           |    1 -
 meta-fri2/README                                   |   86 +++---------------
 meta-fri2/conf/machine/fri2.conf                   |    1 -
 6 files changed, 113 insertions(+), 200 deletions(-)
 delete mode 100644 common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/.gitignore
 create mode 100644 common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.10.bb
 delete mode 100644 common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb


