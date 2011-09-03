Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 339A1E0126A
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2011 21:45:21 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Sep 2011 21:45:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="44911262"
Received: from unknown (HELO [10.255.14.13]) ([10.255.14.13])
	by orsmga001.jf.intel.com with ESMTP; 02 Sep 2011 21:45:20 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 02 Sep 2011 23:45:06 -0500
Message-ID: <1315025106.31478.138.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH 0/1][KERNEL] Re-enable systemtap after the 1.6 upgrade
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
X-List-Received-Date: Sat, 03 Sep 2011 04:45:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

To match the accompanying 1.6 systemtap upgrade.

Please pull into linux-yocto-3.0/meta.

The following changes are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git
tzanussi/reenable-systemtap

http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/reenable-systemtap

Tom Zanussi (1):
  meta: re-enable systemtap feature for linux-yocto

 meta/cfg/kernel-cache/ktypes/standard/standard.scc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)




