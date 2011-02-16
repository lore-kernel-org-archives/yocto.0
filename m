Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E14FA4C8006D
	for <yocto@yoctoproject.org>; Tue, 15 Feb 2011 20:44:10 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Feb 2011 18:44:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,477,1291622400"; d="scan'208";a="708297446"
Received: from eflanaga-mobl.jf.intel.com (HELO [10.7.198.71]) ([10.7.198.71])
	by orsmga001.jf.intel.com with ESMTP; 15 Feb 2011 18:44:10 -0800
Message-ID: <4D5B39FA.7060901@intel.com>
Date: Tue, 15 Feb 2011 18:44:10 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [PATCH 0/1] uname -a equivalent via platform.uname()
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
X-List-Received-Date: Wed, 16 Feb 2011 02:44:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Fixing buildstats to get the equivalent of uname -a. Avoiding subprocess due to issues.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: eflanagan/buildstats
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=eflanagan/buildstats

Thanks,
    Beth Flanagan <elizabeth.flanagan@intel.com>
---


Beth Flanagan (1):
  Doing uname without subprocess: buildstats.bbclass

 meta/classes/buildstats.bbclass |   11 +++++++----
 1 files changed, 7 insertions(+), 4 deletions(-)


