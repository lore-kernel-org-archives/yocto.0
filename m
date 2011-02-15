Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 67DA14C80093
	for <yocto@yoctoproject.org>; Mon, 14 Feb 2011 20:11:46 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Feb 2011 18:11:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,471,1291622400"; d="scan'208";a="707832821"
Received: from eflanaga-mobl.jf.intel.com (HELO [10.7.198.62]) ([10.7.198.62])
	by orsmga001.jf.intel.com with ESMTP; 14 Feb 2011 18:11:46 -0800
Message-ID: <4D59E0E0.7020704@intel.com>
Date: Mon, 14 Feb 2011 18:11:44 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [PATCH 0/1] Build statistics base
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
X-List-Received-Date: Tue, 15 Feb 2011 02:11:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


This is an initial commit of buildstats.bbclass. This generates a
directory structure in build/tmp/buildstats which contains basic build
statistics on a build run.

What we capture:
CPU usage on a build and task level
Time run overall and for each tast
Size of the uncompressed rootfs
If the build has failures, what package failed and during what task

Overall build stats are kept in
build/tmp/buildstats/<buildname-MACHINE>/<timestamp>/build_stats
with package statistics kept in <pkg_name>/<task>.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: eflanagan/buildstats
  Browse:
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=eflanagan/buildstats

Thanks,
    Beth Flanagan <elizabeth.flanagan@intel.com>
---


Beth Flanagan (1):
  Buildstats commit: buildstats.bbclass

 meta/classes/base.bbclass       |    1 +
 meta/classes/buildstats.bbclass |  194
+++++++++++++++++++++++++++++++++++++++
 2 files changed, 195 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/buildstats.bbclass


