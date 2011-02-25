Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1878E4C8090C
	for <yocto@yoctoproject.org>; Fri, 25 Feb 2011 17:44:41 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Feb 2011 15:44:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,229,1297065600"; d="scan'208";a="891406233"
Received: from unknown (HELO [10.255.12.115]) ([10.255.12.115])
	by fmsmga001.fm.intel.com with ESMTP; 25 Feb 2011 15:44:36 -0800
Message-ID: <4D683EE2.80007@intel.com>
Date: Fri, 25 Feb 2011 15:44:34 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [PATCH 0/1] Fix for parsing LICENSE
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
X-List-Received-Date: Fri, 25 Feb 2011 23:44:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


Fix for LICENSE parsing

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: eflanagan/license
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=eflanagan/license

Thanks,
    Beth Flanagan <elizabeth.flanagan@intel.com>
---


Beth Flanagan (1):
  [BUG:650] Fix LICENSE parsing: license.bblcass

 meta/classes/license.bbclass |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

