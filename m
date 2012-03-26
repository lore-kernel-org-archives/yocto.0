Return-Path: <rahul.saxena@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 924DDE0132F
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 14:58:55 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 26 Mar 2012 14:58:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="81842975"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Mar 2012 14:58:54 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Mon, 26 Mar 2012 07:49:30 -0700
Message-Id: <cover.1332797429.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
MIME-Version: 1.0
Subject: [PATCH 00/14][meta-intel] Cover letter for updating meta-cedartrail BSP with PVR Graphics driver
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
X-List-Received-Date: Mon, 26 Mar 2012 21:58:55 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rahul Saxena <rahul.saxena@intel.com>

Cover letter for updating the Cedar Trail BSP (meta-cedartrail) with
PVR Graphics driver.  This patch set updates meta-cedartrail (edison branch)
to include Power VR driver for Graphics and Video hardware acceleration.
The patches enable BSP build with PVR driver or VESA driver depending
upon MACHINE setting in local.conf.

In addition the patches add web-webkit, audio and video samples to sato image.

The Cedar Trail platform is based on the Cedarview processor (Intel® Atom™
N2600, N2800 and D2700 processor)and Tiger Point Chipset (Intel® NM10 Expres

    Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>

--
The following changes since commit 31eaee8e24d570207338ada64f2df36cdbd5353d:

  meta-intel: update SRCREVs (2012-02-22 11:58:38 -0600)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib rsaxena-cedartrailpvrrelease26March
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena-cedartrailpvrrelease26March

Rahul Saxena (14):
  meta-cedartrail: Separate conf files for the Cedar Trail BSP boot
    cases of with and without pvr driver
  meta-cedartrail: update BBFILES to include meta-intel/common path
  meta-cedartrail: update README with instructions for PVR Graphics
    driver build
  meta-cedatrail: add recipe for setting audio mixer settings during
    boot
  meta-cedartrail: seperate xorg.conf files for pvr and no-pvr cases
  meta-cedartrail: add Cedar Trail PVR driver
  meta-cedartrail: update Kernel recipes to add support for pvr driver
  meta-cedartrail: add libva recipe
  meta-cedartrail: add recipes to instal audio and video samples
  meta-cedartrail: update formfactor recipe for pvr and no-pvr case
  meta-cedartrail: Add web-webkit, audio and video samples to sato
    image
  meta-cedartrail: Update SRC_URI in kernel recipe append files to
    point to linux-yocto_3.0
  meta-cedartrail: update SRC_REV_meta for no-pvr case
  meta-cedartrail: change libva license to MIT

 meta-cedartrail/README                             |   50 +++++++++++-
 meta-cedartrail/conf/layer.conf                    |    4 +-
 meta-cedartrail/conf/machine/cedartrail-nopvr.conf |   41 +++++++++
 meta-cedartrail/conf/machine/cedartrail.conf       |   15 +++-
 .../cedartrail-audio/cedartrail-audio.bb           |   30 +++++++
 .../cedartrail-audio/cedartrail-audio              |   42 +++++++++
 .../formfactor/cedartrail-nopvr/machconfig         |    3 +
 .../xorg-driver/cdv-graphics-drivers_1.0.bb        |   89 ++++++++++++++++++++
 .../xserver-xf86-config/cedartrail-nopvr/xorg.conf |   26 ++++++
 .../xserver-xf86-config/cedartrail/xorg.conf       |   24 ++----
 .../linux/linux-yocto-rt_3.0.bbappend              |   16 ++++-
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   17 +++-
 .../ogg-CC-BY-3.0-music-samples_0.1.bb             |   20 +++++
 .../video-samples/bigbuckbunny-ogg.bb              |   20 +++++
 meta-cedartrail/recipes-multimedia/libva/libva.inc |   59 +++++++++++++
 .../recipes-multimedia/libva/libva_1.0.15.bb       |   31 +++++++
 .../images/core-image-sato-dev.bbappend            |    3 +
 .../images/core-image-sato-sdk.bbappend            |    3 +
 .../recipes-sato/images/core-image-sato.bbappend   |    3 +
 19 files changed, 468 insertions(+), 28 deletions(-)
 create mode 100644 meta-cedartrail/conf/machine/cedartrail-nopvr.conf
 create mode 100644 meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio.bb
 create mode 100644 meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio/cedartrail-audio
 create mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
 mode change 100755 => 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail/machconfig
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-graphics-drivers_1.0.bb
 create mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf
 mode change 100755 => 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail/xorg.conf
 create mode 100644 meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
 create mode 100644 meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb
 create mode 100644 meta-cedartrail/recipes-multimedia/libva/libva.inc
 create mode 100644 meta-cedartrail/recipes-multimedia/libva/libva_1.0.15.bb
 create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend
 create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend
 create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato.bbappend

-- 
1.7.4.1


