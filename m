Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04BC1E00723
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 13:28:30 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 14 Jun 2012 13:28:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="112227385"
Received: from unknown (HELO localhost) ([10.255.12.51])
	by AZSMGA002.ch.intel.com with ESMTP; 14 Jun 2012 13:28:29 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	dvhart@linux.intel.com,
	kishore.k.bodke
Date: Thu, 14 Jun 2012 15:28:25 -0500
Message-Id: <cover.1339705524.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] meta-intel: fix new layer warning
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
X-List-Received-Date: Thu, 14 Jun 2012 20:28:31 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset gets rid of the new layer warning for meta-intel
and all contained BSP layers.

The following changes since commit bd00e28dd54b06a1f01f186be168d3af872f96d4:
  Richard Purdie (1):
        meta-emenlow: Update qt4 bbappend to 4.8.1

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/layer-conf-updates
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/layer-conf-updates

Tom Zanussi (2):
  meta-intel: update conf/layer.conf BBPATH/BBFILES for meta-intel
    layer
  meta-intel: update conf/layer.conf BBPATH/BBFILES for BSP layers

 conf/layer.conf                   |    4 ++--
 meta-cedartrail/conf/layer.conf   |    4 ++--
 meta-chiefriver/conf/layer.conf   |    4 ++--
 meta-crownbay/conf/layer.conf     |    4 ++--
 meta-emenlow/conf/layer.conf      |    4 ++--
 meta-fishriver/conf/layer.conf    |    4 ++--
 meta-fri2/conf/layer.conf         |    4 ++--
 meta-jasperforest/conf/layer.conf |    4 ++--
 meta-n450/conf/layer.conf         |    4 ++--
 meta-romley/conf/layer.conf       |    4 ++--
 meta-sugarbay/conf/layer.conf     |    4 ++--
 meta-sys940x/conf/layer.conf      |    4 ++--
 meta-tlk/conf/layer.conf          |    4 ++--
 13 files changed, 26 insertions(+), 26 deletions(-)


