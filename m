Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82537E014AD
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 00:49:41 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Apr 2013 00:49:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,413,1363158000"; d="scan'208";a="289781390"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 05 Apr 2013 00:49:33 -0700
Received: from localhost.localdomain (unknown [10.237.112.141])
	by linux.intel.com (Postfix) with ESMTP id E34642C8001
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 00:49:25 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  5 Apr 2013 10:49:20 +0300
Message-Id: <cover.1365147946.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [yocto-autobuilder][PATCH v2 0/2] Add a new buildset
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
X-List-Received-Date: Fri, 05 Apr 2013 07:49:41 -0000

The following changes since commit a9434f623752818e10e703a613ef65586c435bbd:

  PublishArtifacts.py: poky-tiny deploy (2013-04-04 11:20:56 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib stefans/yab4
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=stefans/yab4

Stefan Stanacar (2):
  nightly-qa-extras.conf: add new buildset config
  nightly.conf, yoctoAB.conf: enable the new nightly-qa-extras buildset

 buildset-config/nightly-qa-extras.conf | 18 ++++++++++++++++++
 buildset-config/nightly.conf           |  2 +-
 buildset-config/yoctoAB.conf           |  3 ++-
 3 files changed, 21 insertions(+), 2 deletions(-)
 create mode 100644 buildset-config/nightly-qa-extras.conf

-- 
1.8.1.4


