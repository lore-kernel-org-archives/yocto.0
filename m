Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0718CE0030A
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 08:38:58 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Nov 2011 08:38:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,597,1315206000"; d="scan'208";a="97048962"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by fmsmga002.fm.intel.com with ESMTP; 30 Nov 2011 08:38:54 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 30 Nov 2011 10:38:55 -0600
Message-Id: <cover.1322670614.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/6] meta-intel: enable video acceleration for crownbay
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
X-List-Received-Date: Wed, 30 Nov 2011 16:38:58 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset enables video acceleration for crownbay by adding the
video components from EMGD along with a libva recipe and an additional
bbappend to install plugins for demuxing mp4 videos.

So far tested with the 'Big Buck Bunny' H.264 1920x1080 video.

The following changes since commit 68c6b19d623b34a504090ad2c706859ecc946256:
  Tom Zanussi (1):
        meta-intel: update READMEs with layer dependency list

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/va-v0
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/va-v0

Tom Zanussi (6):
  libva: new recipe for video acceleration
  libva: upgrade to 1.0.12 and factor out common settings
  emgd-driver-bin: add video components
  meta-crownbay: update README with EMGD video plugin instructions
  meta-intel: add libva to xserver-xorg
  meta-intel: add gst-meta-base .bbappend

 .../xorg-xserver/emgd-driver-bin_1.8.bb            |   22 ++++++-----
 .../xorg-xserver/xserver-xorg-1.9.3.inc            |    2 +
 .../gstreamer/gst-meta-base_0.10.bbappend          |    2 +
 common/recipes-multimedia/libva/libva.inc          |   41 ++++++++++++++++++++
 common/recipes-multimedia/libva/libva_1.0.12.bb    |    8 ++++
 meta-crownbay/README                               |   27 ++++++++++---
 6 files changed, 86 insertions(+), 16 deletions(-)
 create mode 100644 common/recipes-multimedia/gstreamer/gst-meta-base_0.10.bbappend
 create mode 100644 common/recipes-multimedia/libva/libva.inc
 create mode 100644 common/recipes-multimedia/libva/libva_1.0.12.bb


