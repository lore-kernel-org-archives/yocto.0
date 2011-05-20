Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CA2DA4C8026D
	for <yocto@yoctoproject.org>; Fri, 20 May 2011 12:31:06 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 May 2011 10:31:06 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost) ([10.255.12.58])
	by orsmga002.jf.intel.com with ESMTP; 20 May 2011 10:31:05 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 20 May 2011 12:30:46 -0500
Message-Id: <cover.1305910788.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] meta-sugarbay: master update
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
X-List-Received-Date: Fri, 20 May 2011 17:31:07 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

A couple update to reflect changes in master.

The following changes since commit 54a572b1d4d4bfd018fc969cc2a4e1c3ba66bb39:
  Marc Ferland (1):
        Add SMP support to crownbay.

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/sugarbay-cleanup
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/sugarbay-cleanup

Tom Zanussi (2):
  meta-sugarbay: remove PREFERRED_VERSION settings
  meta-sugarbay: remove xserver-xf86-dri-lite bbappend

 meta-sugarbay/conf/machine/sugarbay.conf           |    6 ------
 .../xserver-xf86-dri-lite_1.9.3.bbappend           |    1 -
 2 files changed, 0 insertions(+), 7 deletions(-)
 delete mode 100644 meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend


