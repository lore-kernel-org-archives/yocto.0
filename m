Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBFC5E0059F
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 13:34:59 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Dec 2011 13:34:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,280,1320652800"; d="scan'208";a="91244256"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by fmsmga001.fm.intel.com with ESMTP; 01 Dec 2011 13:34:59 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu,  1 Dec 2011 15:35:03 -0600
Message-Id: <cover.1322775053.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/6] meta-intel: enable video acceleration for crownbay, v1
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
X-List-Received-Date: Thu, 01 Dec 2011 21:35:00 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset enables video acceleration for crownbay by adding the
video components from EMGD along with a libva recipe and an additional
bbappend to install plugins for demuxing mp4 videos.

So far tested with the 'Big Buck Bunny' H.264 1920x1080 and 'Big Buck Bunny'
MP4 1920x1080 videos.

v1 changes:

- moved libva dependency to emgd
- added gst-ffmpeg to gst-meta-base
- additional testing

The following changes since commit 9b71d9c11579023a4428328ff6734a5f5fc7870d:
  Tom Zanussi (1):
        meta-romley: Remove xserver-xorg .bbappend.

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/va-v1
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/va-v1

Tom Zanussi (6):
  libva: new recipe for video acceleration
  libva: upgrade to 1.0.12 and factor out common settings
  emgd-driver-bin: add video components
  meta-crownbay: update README with EMGD video plugin instructions
  meta-intel: add gst-meta-base .bbappend
  meta-intel: add libva to EGMD xserver

 .../xorg-xserver/emgd-driver-bin_1.8.bb            |   22 ++++++-----
 .../gstreamer/gst-meta-base_0.10.bbappend          |    9 ++++
 common/recipes-multimedia/libva/libva.inc          |   41 ++++++++++++++++++++
 common/recipes-multimedia/libva/libva_1.0.12.bb    |    8 ++++
 conf/machine/include/ia32-base.inc                 |    4 +-
 meta-crownbay/README                               |   27 ++++++++++---
 6 files changed, 94 insertions(+), 17 deletions(-)
 create mode 100644 common/recipes-multimedia/gstreamer/gst-meta-base_0.10.bbappend
 create mode 100644 common/recipes-multimedia/libva/libva.inc
 create mode 100644 common/recipes-multimedia/libva/libva_1.0.12.bb


