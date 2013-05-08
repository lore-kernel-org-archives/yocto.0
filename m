Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF8B9E0147D
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 06:14:54 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 08 May 2013 06:14:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,634,1363158000"; d="scan'208";a="238515887"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 08 May 2013 06:14:53 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  8 May 2013 15:55:01 +0300
Message-Id: <1368017704-14781-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/3] Add utilities to RSEHelper
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
X-List-Received-Date: Wed, 08 May 2013 13:14:55 -0000

- add small utilities functions to RSEHelper in order to  isolate functionalities that are strictly related to GUI and those that are remote utilities

Ioana Grigoropol (3):
  Move remote system type checkings from GUI Dialogs and to RSEHelper
  Move logic for waiting for RSE initialization to RSEHelper
  Move filtering of suitable connections to RSEHelper

 .../src/org/yocto/sdk/remotetools/RSEHelper.java   |   21 +++++++++++++++
 .../sdk/remotetools/actions/BaseSettingDialog.java |   27 +++++---------------
 2 files changed, 27 insertions(+), 21 deletions(-)

-- 
1.7.9.5


