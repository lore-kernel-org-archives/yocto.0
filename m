Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 909F14C81001
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 03:02:05 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 Nov 2010 01:02:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,177,1288594800"; d="scan'208";a="572016165"
Received: from qhe2-db.sh.intel.com ([10.239.13.109])
	by orsmga002.jf.intel.com with ESMTP; 10 Nov 2010 01:01:55 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1PG6Uf-0008FO-NY
	for yocto@yoctoproject.org; Wed, 10 Nov 2010 16:57:25 +0800
Date: Wed, 10 Nov 2010 16:57:25 +0800
From: Qing He <qing.he@intel.com>
To: yocto@yoctoproject.org
Message-ID: <20101110085725.GB31687@qhe2-db>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-06-14)
Subject: [PULL] recipe upgrades in base section, Nov. 10
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
X-List-Received-Date: Wed, 10 Nov 2010 09:02:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

most of them are simple upgrades that changes minor version,
also adds license info in procps

Thanks,
Qing

---
 meta/recipes-bsp/pciutils/pciutils-3.1.5/configure.patch                 |  102 ---
 meta/recipes-bsp/pciutils/pciutils-3.1.5/guess-fix.patch                 |   35 -
 meta/recipes-bsp/pciutils/pciutils-3.1.5/lib-build-fix.patch             |   92 --
 meta/recipes-bsp/pciutils/pciutils-3.1.5/pcimodules-pciutils.diff        |  338 ----------
 meta/recipes-bsp/pciutils/pciutils-3.1.7/configure.patch                 |  102 +++
 meta/recipes-bsp/pciutils/pciutils-3.1.7/guess-fix.patch                 |   35 +
 meta/recipes-bsp/pciutils/pciutils-3.1.7/lib-build-fix.patch             |   92 ++
 meta/recipes-bsp/pciutils/pciutils-3.1.7/pcimodules-pciutils.diff        |  338 ++++++++++
 meta/recipes-bsp/pciutils/pciutils_3.1.5.bb                              |   57 -
 meta/recipes-bsp/pciutils/pciutils_3.1.7.bb                              |   57 +
 meta/recipes-connectivity/iproute2/iproute2-2.6.34/configure-cross.patch |   61 -
 meta/recipes-connectivity/iproute2/iproute2-2.6.35/configure-cross.patch |   61 +
 meta/recipes-connectivity/iproute2/iproute2_2.6.34.bb                    |    6 
 meta/recipes-connectivity/iproute2/iproute2_2.6.35.bb                    |    6 
 meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.2.bb                   |   53 -
 meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb                   |   53 +
 meta/recipes-extended/bzip2/bzip2-1.0.5/Makefile.am                      |   41 -
 meta/recipes-extended/bzip2/bzip2-1.0.5/configure.ac                     |   14 
 meta/recipes-extended/bzip2/bzip2-1.0.6/Makefile.am                      |   41 +
 meta/recipes-extended/bzip2/bzip2-1.0.6/configure.ac                     |   14 
 meta/recipes-extended/bzip2/bzip2_1.0.5.bb                               |   26 
 meta/recipes-extended/bzip2/bzip2_1.0.6.bb                               |   26 
 meta/recipes-extended/iptables/iptables_1.4.8.bb                         |   31 
 meta/recipes-extended/iptables/iptables_1.4.9.bb                         |   31 
 meta/recipes-extended/procps/procps-3.2.7/install.patch                  |   27 
 meta/recipes-extended/procps/procps-3.2.7/linux-limits.patch             |   13 
 meta/recipes-extended/procps/procps-3.2.7/pagesz-not-constant.patch      |   22 
 meta/recipes-extended/procps/procps-3.2.7/procmodule.patch               |   36 -
 meta/recipes-extended/procps/procps-3.2.7/procps.init                    |    6 
 meta/recipes-extended/procps/procps-3.2.7/psmodule.patch                 |   21 
 meta/recipes-extended/procps/procps-3.2.7/sysctl.conf                    |   64 -
 meta/recipes-extended/procps/procps-3.2.8/install.patch                  |   27 
 meta/recipes-extended/procps/procps-3.2.8/linux-limits.patch             |   13 
 meta/recipes-extended/procps/procps-3.2.8/pagesz-not-constant.patch      |   22 
 meta/recipes-extended/procps/procps-3.2.8/procmodule.patch               |   36 +
 meta/recipes-extended/procps/procps-3.2.8/procps.init                    |    6 
 meta/recipes-extended/procps/procps-3.2.8/psmodule.patch                 |   21 
 meta/recipes-extended/procps/procps-3.2.8/sysctl.conf                    |   64 +
 meta/recipes-extended/procps/procps.inc                                  |    8 
 meta/recipes-extended/procps/procps_3.2.7.bb                             |   40 -
 meta/recipes-extended/procps/procps_3.2.8.bb                             |   40 +
 meta/recipes-extended/tzdata/tzdata_2010j.bb                             |  166 ----
 meta/recipes-extended/tzdata/tzdata_2010o.bb                             |  166 ++++
 meta/recipes-support/curl/curl_7.21.0.bb                                 |   54 -
 meta/recipes-support/curl/curl_7.21.2.bb                                 |   54 +
 meta/recipes-support/shared-mime-info/shared-mime-info.inc               |    1 
 meta/recipes-support/shared-mime-info/shared-mime-info_0.71.bb           |    1 
 meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb           |    2 
 48 files changed, 1313 insertions(+), 1309 deletions(-)

Qing He (9):
      bzip2: upgrade to version 1.0.6
      shared-mime-info: upgrade to version 0.80
      tzdata: upgrade to version 2010o
      curl: upgrade to version 7.21.2
      nfs-utils: upgrade to version 1.2.3
      pciutils: upgrade to version 3.1.7
      iproute2: upgrade to version 2.6.35
      iptables: upgrade to version 1.4.9
      procps: upgrade to version 3.2.8

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/distro

