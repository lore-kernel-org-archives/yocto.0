Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDC37E00502
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 14:44:24 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Nov 2011 14:44:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,549,1315206000"; d="scan'208";a="87883753"
Received: from unknown (HELO localhost) ([10.255.15.246])
	by fmsmga001.fm.intel.com with ESMTP; 21 Nov 2011 14:44:23 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, dvhart@linux.intel.com, kishore.k.bodke@intel.com
Date: Mon, 21 Nov 2011 16:44:29 -0600
Message-Id: <cover.1321915192.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 00/17] meta-intel: machine config cleanup, v2
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
X-List-Received-Date: Mon, 21 Nov 2011 22:44:25 -0000

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

v2: Add common metadata to intel layer and add a layer dependency
section to BSP READMEs.

The following changes since commit 2a41ae377613b1f14829179f437aa76bbb1bc39e:
  Tom Zanussi (1):
        meta-intel: update kernel SRCREVs

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/conf-cleanup-v2
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/conf-cleanup-v2

Tom Zanussi (17):
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
  meta-crownbay: remove common from BBFILES
  meta-fri2: remove common from BBFILES
  meta-intel: update READMEs with layer dependency list

 conf/layer.conf                                  |   10 ++++
 conf/machine/include/ia32-base.inc               |   58 ++++++++++++++++++++++
 meta-crownbay/README                             |   22 ++++++++-
 meta-crownbay/conf/layer.conf                    |    4 +-
 meta-crownbay/conf/machine/crownbay-noemgd.conf  |   43 ++--------------
 meta-crownbay/conf/machine/crownbay.conf         |   43 ++--------------
 meta-emenlow/README                              |   21 ++++++++-
 meta-emenlow/conf/machine/emenlow.conf           |   22 +--------
 meta-fishriver/README                            |   21 ++++++++-
 meta-fishriver/conf/machine/fishriver.conf       |   42 ++--------------
 meta-fri2/README                                 |   22 ++++++++-
 meta-fri2/conf/layer.conf                        |    4 +-
 meta-fri2/conf/machine/fri2-noemgd.conf          |   43 ++--------------
 meta-fri2/conf/machine/fri2.conf                 |   43 +++-------------
 meta-jasperforest/README                         |   25 ++++++++-
 meta-jasperforest/conf/machine/jasperforest.conf |   42 ++--------------
 meta-n450/ReleaseNotes                           |    4 ++
 meta-n450/conf/machine/n450.conf                 |   40 ++-------------
 meta-romley/README                               |   22 ++++++++-
 meta-romley/conf/machine/romley.conf             |   40 ++-------------
 meta-sugarbay/README                             |   22 ++++++++-
 meta-sugarbay/conf/machine/sugarbay.conf         |   43 ++--------------
 22 files changed, 270 insertions(+), 366 deletions(-)
 create mode 100644 conf/layer.conf
 create mode 100644 conf/machine/include/ia32-base.inc


