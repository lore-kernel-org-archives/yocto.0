Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78D10E00AE4; Tue, 16 May 2017 07:18:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10EC8E00970
	for <yocto@yoctoproject.org>; Tue, 16 May 2017 07:18:16 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:3fe5:5e2:ef97:4abb])
	by kozue.soulik.info (Postfix) with ESMTPA id EAA82100813;
	Tue, 16 May 2017 23:19:01 +0900 (JST)
From: ayaka <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Tue, 16 May 2017 22:18:05 +0800
Message-Id: <20170516141808.26629-1-ayaka@soulik.info>
X-Mailer: git-send-email 2.9.4
Cc: ayaka <ayaka@soulik.info>
Subject: [meta-rockchip] [PATCH v3 0/3] Add video codec recipes
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
X-List-Received-Date: Tue, 16 May 2017 14:18:18 -0000

Those packages are the userspace libraries for the Rockchip
Android video codec driver.

Also a minimal image used for verified the media framework is included.

ayaka (3):
  recipes-multimedia: add Rockchip MPP library
  recipes-multimedia: add gstreamer rockchip support
  recipes-multimedia: images: rockchip media image

 .../gstreamer/gstreamer1.0-rockchip.inc            | 32 ++++++++++++++++++++++
 .../gstreamer/gstreamer1.0-rockchip_20170516.bb    |  9 ++++++
 .../gstreamer/gstreamer1.0-rockchip_git.bb         | 13 +++++++++
 recipes-multimedia/images/rockchip-media-image.bb  | 21 ++++++++++++++
 recipes-multimedia/rockchip-mpp/rockchip-mpp.inc   | 21 ++++++++++++++
 .../rockchip-mpp/rockchip-mpp_20170412.bb          |  9 ++++++
 .../rockchip-mpp/rockchip-mpp_git.bb               | 16 +++++++++++
 7 files changed, 121 insertions(+)
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip.inc
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip_20170516.bb
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip_git.bb
 create mode 100644 recipes-multimedia/images/rockchip-media-image.bb
 create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp.inc
 create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp_20170412.bb
 create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb

-- 
2.9.4


