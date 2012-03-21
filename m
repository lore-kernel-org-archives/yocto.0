Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 166C5E00747
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2012 20:41:48 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Mar 2012 20:41:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="123227599"
Received: from unknown (HELO localhost) ([10.255.15.208])
	by orsmga002.jf.intel.com with ESMTP; 20 Mar 2012 20:41:47 -0700
From: tom.zanussi@intel.com
To: scott.m.rifenbark@intel.com,
	yocto@yoctoproject.org
Date: Tue, 20 Mar 2012 22:41:47 -0500
Message-Id: <cover.1332300688.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] yocto-docs updates
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
X-List-Received-Date: Wed, 21 Mar 2012 03:41:48 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset updates the Yocto Reference Manual and BSP Developer's Guide
with some recent changes related to licensing.

I had some trouble getting the section numbers in the Yocto Reference Manual
right, Scott - I'm hoping you can quickly fix that or tell me what I need to
do with the markup.  What's there now is:

3.3.2. Enabling Commercially Licensed Recipes

Followed by two subsections:

1. Explanation of how LICENSE_FLAGS matching works
1. Other Variables Related to Commercial Licenses

Which should remain the same textually, but should be numbered as:

3.3.2.1. Explanation of how LICENSE_FLAGS matching works                                                   3.3.2.2. Other Variables Related to Commercial Licenses                                                    

Thanks,

Tom       

The following changes since commit 3bc8b3a4fc0adcfcda3026e7c209e4f57e750737:
  Scott Rifenbark (1):
        documentation/dev-manual/dev-manual-common-tasks.xml: Spell check.

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-docs-updates
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/yocto-docs-updates

Tom Zanussi (2):
  documentation/poky-ref-manual/technical-details.xml: update 'Enabling
    Commercially Licensed Recipes' section
  documentation/bsp-guide/bsp.xml: update 'BSP Licensing' section

 documentation/bsp-guide/bsp.xml                    |  192 +++++++++----------
 .../poky-ref-manual/technical-details.xml          |  189 ++++++++++++++++----
 2 files changed, 246 insertions(+), 135 deletions(-)


