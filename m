Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5456E00A80; Sun, 19 Mar 2017 10:54:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0363]
X-Greylist: delayed 316 seconds by postgrey-1.32 at yocto-www;
	Sun, 19 Mar 2017 10:54:36 PDT
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6099AE00A0C
	for <yocto@yoctoproject.org>; Sun, 19 Mar 2017 10:54:36 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:3fe5:5e2:ef97:4abb])
	by kozue.soulik.info (Postfix) with ESMTPA id 318A8102262;
	Mon, 20 Mar 2017 02:55:20 +0900 (JST)
From: ayaka <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Mon, 20 Mar 2017 01:54:22 +0800
Message-Id: <1489946065-28272-1-git-send-email-ayaka@soulik.info>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Mon, 20 Mar 2017 10:57:32 -0700
Cc: ayaka <ayaka@soulik.info>
Subject: [meta-rockchip] [PATCH 0/3] Add video codec recipes
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
X-List-Received-Date: Sun, 19 Mar 2017 17:54:38 -0000

Those packages are the userspace libraries for the Rockchip
Android video codec driver.

ayaka (3):
  recipes-multimedia: add Rockchip MPP library
  recipes-multimedia: gstreamer: update to 1.10.4
  recipes-multimedia: add gstreamer rockchip support

 .../gstreamer/gstreamer1.0-plugins-bad_%.bbappend  |  4 +++
 .../gstreamer/gstreamer1.0-plugins-base_%.bbappend |  4 +++
 .../gstreamer/gstreamer1.0-plugins-good_%.bbappend |  4 +++
 .../gstreamer/gstreamer1.0-rockchip.inc            | 33 ++++++++++++++++++++++
 .../gstreamer/gstreamer1.0-rockchip_20170319.bb    | 11 ++++++++
 .../gstreamer/gstreamer1.0-rockchip_git.bb         | 15 ++++++++++
 .../gstreamer/gstreamer1.0_%.bbappend              |  4 +++
 recipes-multimedia/rockchip-mpp/rockchip-mpp.inc   | 20 +++++++++++++
 .../rockchip-mpp/rockchip-mpp_20170319.bb          | 13 +++++++++
 .../rockchip-mpp/rockchip-mpp_git.bb               | 14 +++++++++
 10 files changed, 122 insertions(+)
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_%.bbappend
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_%.bbappend
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip.inc
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip_20170319.bb
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip_git.bb
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0_%.bbappend
 create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp.inc
 create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp_20170319.bb
 create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb

-- 
2.7.4


