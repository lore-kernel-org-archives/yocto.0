Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45279E01284
	for <yocto@yoctoproject.org>; Mon,  5 Sep 2011 09:05:17 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Sep 2011 09:05:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,333,1312182000"; d="scan'208";a="45725005"
Received: from unknown (HELO [10.255.14.5]) ([10.255.14.5])
	by azsmga001.ch.intel.com with ESMTP; 05 Sep 2011 09:05:16 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 05 Sep 2011 11:04:50 -0500
Message-ID: <1315238690.31478.198.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH 0/1][KERNEL] linux-yocto-3.0/meta: re-enable utrace
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
X-List-Received-Date: Mon, 05 Sep 2011 16:05:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

This patchset re-enables utrace.  Tested on qemuppc, qemux86, qemux86-64,
qemuarm (where it doesn't work, as expected - utrace doesn't currently
support arm), and sugarbay.

Please pull into linux-yocto-3.0/meta.

The following changes are available in the git repository at:

  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git utrace-meta
  http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=utrace-meta

Tom Zanussi (1):
  meta: re-enable utrace feature for linux-yocto

 meta/cfg/kernel-cache/ktypes/standard/standard.scc |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)




