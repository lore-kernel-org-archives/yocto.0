Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 10C074C80815
	for <yocto@yoctoproject.org>; Tue,  9 Nov 2010 14:32:22 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Nov 2010 12:32:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,175,1288594800"; d="scan'208";a="571818466"
Received: from unknown (HELO [10.255.13.55]) ([10.255.13.55])
	by orsmga002.jf.intel.com with ESMTP; 09 Nov 2010 12:32:22 -0800
Message-ID: <4CD9AFD5.3020307@linux.intel.com>
Date: Tue, 09 Nov 2010 12:32:21 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: [PULL] Distro Updates: Kernel, scripts and gplv2 cleanup
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
X-List-Received-Date: Tue, 09 Nov 2010 20:32:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Richard,

More Distro reviewed, build and basic testing.  This is the new script 
output from Darren's pull request.

Sau!


Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/master
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

   For RP: contrib/distro/master

Thanks,
     Saul Wold <Saul.Wold@intel.com>


Beth Flanagan (1):
   quilt: Fixed configure test for patch --version.

Bruce Ashfield (4):
   qemumips: re-enable wacom and standard USB UI options
   wrs_meta: add USB options for wacom tablet support
   linux-wrs: rename force_revisions and allow override
   kernel: prefer the kernel produced uImage

Darren Hart (3):
   git pull: remove the existing create_pull_request script
   git-pull: add the new create-pull-request script
   git-pull: add send-pull-request script

J. Aaron Gamble (2):
   Added qemumips /etc/pointercal file for touchscreen calibration
   tslib: 32bit big endian support

Jingdong Lu (1):
   tcltk: Fix moving libtcl8.5.so into tcl-lib.

Saul Wold (1):
   base.bbclass/poky.conf: Fix INCOMPATIBLE_LICENSE Whitelist checking

  meta/classes/base.bbclass                          |   13 +-
  meta/classes/kernel.bbclass                        |    4 +-
  .../conf/distro/include/poky-default-revisions.inc |    2 +-
  meta/conf/distro/poky.conf                         |    6 +-
  .../formfactor/files/qemumips/machconfig           |    4 +-
  .../pointercal/files/qemumips/pointercal           |    1 +
  meta/recipes-devtools/quilt/quilt.inc              |    3 +-
  .../quilt/quilt/gnu_patch_test_fix.patch           |   19 +++
  meta/recipes-devtools/tcltk/tcl_8.5.8.bb           |    4 +-
  .../tslib/tslib/32bitBE-support.patch              |   52 ++++++
  meta/recipes-graphics/tslib/tslib_1.0.bb           |    4 +-
  meta/recipes-kernel/linux/linux-wrs_git.bb         |    6 +-
  scripts/create-pull-request                        |  165 
++++++++++++-------
  scripts/poky-qemu-internal                         |    2 +-
  scripts/send-pull-request                          |  133 ++++++++++++++++
  15 files changed, 338 insertions(+), 80 deletions(-)
  create mode 100644 meta/recipes-bsp/pointercal/files/qemumips/pointercal
  create mode 100644 
meta/recipes-devtools/quilt/quilt/gnu_patch_test_fix.patch
  create mode 100644 meta/recipes-graphics/tslib/tslib/32bitBE-support.patch
  create mode 100755 scripts/send-pull-request



