Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA0A1E00C69; Wed, 20 Jul 2016 11:11:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 757D9E00C43
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 11:11:13 -0700 (PDT)
Received: from localhost.localdomain (unknown [8.36.234.10])
	by msfrf2616.sfr.fr (SMTP Server) with ESMTP id 622921C000838;
	Wed, 20 Jul 2016 20:11:13 +0200 (CEST)
Received: from localhost.localdomain (unknown [8.36.234.10])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2616.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 20 Jul 2016 20:11:12 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Thu, 21 Jul 2016 02:10:17 +0800
Message-Id: <1469038218-52221-1-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/1] Patch for implementing GstGlMemoryEGL for gstreamer 1.8.2
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
X-List-Received-Date: Wed, 20 Jul 2016 18:11:14 -0000

Commit 2745399f75d7564fcc586d0365ff73be47849d0e breaks compilation of gstreamer1.0-omx on raspberrypi.
This is because it relies on a patch to gstreamer 1.8.2, that seems was not added/sent.
This patch adds the missing patch, but in meta-raspberrypi instead of oe, to fix the issue where it happens - currently in meta-raspberrypi.
But it should probably be moved to meta/recipes-multimedia/gstreamer once it's properly tested.

Herve Jourdain (1):
  Patch for implementing GstGlMemoryEGL for gstreamer 1.8.2

 .../0001-gl-implement-GstGlMemoryEGL.patch         | 494 +++++++++++++++++++++
 .../gstreamer1.0-plugins-bad_1.8.2.bbappend        |   6 +
 2 files changed, 500 insertions(+)
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad-1.8.2/0001-gl-implement-GstGlMemoryEGL.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.8.2.bbappend

-- 
2.7.4


