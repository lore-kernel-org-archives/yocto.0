Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF8F3E006BF
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2011 20:12:07 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Nov 2011 20:12:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,541,1315206000"; d="scan'208";a="93221707"
Received: from unknown (HELO localhost) ([10.255.15.232])
	by fmsmga002.fm.intel.com with ESMTP; 19 Nov 2011 20:12:06 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sat, 19 Nov 2011 22:16:01 -0600
Message-Id: <cover.1321762384.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 00/14] meta-intel: machine config cleanup, v1
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
X-List-Received-Date: Sun, 20 Nov 2011 04:12:07 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset cleans up the BSPs in meta-intel by having them use the
new ia32-base.inc file containing common BSP settings.

The following BSPs were build- and boot-tested: sugarbay, crownbay,
crownbay-noemgd, emenlow, and n450.  These represent all the main
variations and all were verified to work the same before as after.
This includes the n450, which wasn't able to start X either before
or after.

The other BSPs are the same or similar to those tested, so shouldn't
see any changes either, but will have to be tested later.

v1: the original patchset had ia32-base.inc in oe-core.  This version
moves it back to meta-intel and adds a new meta-intel layer that keeps
everything else the same.

The following changes since commit 2a41ae377613b1f14829179f437aa76bbb1bc39e:
  Tom Zanussi (1):
        meta-intel: update kernel SRCREVs

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/conf-cleanup-v1
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/conf-cleanup-v1

Tom Zanussi (14):
  meta-intel: remove virtual/xserver-xf86 references
  meta-intel: make meta-intel itself a layer
  ia32-base.inc: new include file
  Have sugarbay.conf use the common ia32-base .inc file and remove the 
       open-coded machine settings.
  Have fishriver.conf use the common ia32-base .inc file and remove the
        open-coded machine settings.
  Have crownbay.conf use the common ia32-base .inc file and remove the 
       open-coded machine settings.
  Have crownbay-noemgd.conf use the common ia32-base .inc file and    
    remove the open-coded machine settings.
  Have fri2.conf use the common ia32-base .inc file and remove the    
    open-coded machine settings.
  Have fri2-noemgd.conf use the common ia32-base .inc file and    
    remove the open-coded machine settings.
  Have jasperforest.conf use the common ia32-base .inc file and    
    remove the open-coded machine settings.
  Have n450.conf use the common ia32-base .inc file and remove the    
    open-coded machine settings.
  Have romley.conf use the common ia32-base .inc file and remove the   
     open-coded machine settings.
  Have emenlow.conf use the common ia32-base .inc file and remove the  
      open-coded machine settings.
  meta-intel: update READMEs with new layer info

 conf/layer.conf                                  |    2 +
 conf/machine/include/ia32-base.inc               |   58 ++++++++++++++++++++++
 meta-crownbay/README                             |    4 +-
 meta-crownbay/conf/machine/crownbay-noemgd.conf  |   43 ++--------------
 meta-crownbay/conf/machine/crownbay.conf         |   43 ++--------------
 meta-emenlow/README                              |    4 +-
 meta-emenlow/conf/machine/emenlow.conf           |   22 +--------
 meta-fishriver/README                            |    4 +-
 meta-fishriver/conf/machine/fishriver.conf       |   42 ++--------------
 meta-fri2/README                                 |    5 ++-
 meta-fri2/conf/machine/fri2-noemgd.conf          |   43 ++--------------
 meta-fri2/conf/machine/fri2.conf                 |   43 +++-------------
 meta-jasperforest/README                         |    8 ++-
 meta-jasperforest/conf/machine/jasperforest.conf |   42 ++--------------
 meta-n450/conf/machine/n450.conf                 |   40 ++-------------
 meta-romley/README                               |    4 +-
 meta-romley/conf/machine/romley.conf             |   40 ++-------------
 meta-sugarbay/README                             |    4 +-
 meta-sugarbay/conf/machine/sugarbay.conf         |   43 ++--------------
 19 files changed, 134 insertions(+), 360 deletions(-)
 create mode 100644 conf/layer.conf
 create mode 100644 conf/machine/include/ia32-base.inc


