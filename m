Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71C04E00344
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 02:37:09 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Jul 2012 02:37:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="164795605"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga001.jf.intel.com with ESMTP; 12 Jul 2012 02:37:09 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Thu, 12 Jul 2012 02:35:47 -0700
Message-Id: <cover.1342085510.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
Subject: [PATCH 0/1] fix emgd driver issue
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
X-List-Received-Date: Thu, 12 Jul 2012 09:37:09 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

with the v3.2 kernel on crownbay x-server is failing with error
of "missing emgd driver". I root caused it to some of the files missing form the emgd 
driver. this commits makes bring these missing files in the rootfs.

Thanks,
Nitin

The following changes since commit ae18053df8d2b176b4f714bc5a826276f3fcbfad:

  linux-firmware: update md5sum for LICENCE.iwlwifi_firmware (2012-07-11 19:06:58 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/meta-intel-contrib nitin/work
  http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/work

Nitin A Kamble (1):
  ia32-base.inc: also take -dev package of emgd

 conf/machine/include/ia32-base.inc |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

-- 
1.7.3.4


