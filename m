Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A86BBE01371;
	Sun, 11 Nov 2012 15:18:14 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Nov 2012 15:18:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,759,1344236400"; d="scan'208";a="245343375"
Received: from unknown (HELO localhost) ([10.255.12.144])
	by fmsmga001.fm.intel.com with ESMTP; 11 Nov 2012 15:18:10 -0800
From: tom.zanussi@intel.com
To: meta-intel@yoctoproject.org, yocto@yoctoproject.org,
	rahul.saxena@intel.com, kishore.k.bodke@intel.com, dvhart@linux.intel.com,
	nitin.a.kamble@intel.com, ross.burton@intel.com
Date: Sun, 11 Nov 2012 17:18:08 -0600
Message-Id: <cover.1352667964.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/1] meta-intel: new meta-intel mailing list information
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
X-List-Received-Date: Sun, 11 Nov 2012 23:18:16 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

There's a new mailing list for meta-intel traffic:

 https://lists.yoctoproject.org/listinfo/meta-intel

meta-intel patches and other meta-intel-specific e-mail should now
go there instead of to the Yocto mailing list.

This patchset updates the MAINTAINERS file with that info.

The following changes since commit 52a9a5aec7cc61d115e72015fd2451facec739cb:

  romley: Update README Instructions (2012-11-08 09:29:04 -0600)

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel-contrib.git tzanussi/meta-intel-mailing-list-update
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-contrib/log/?h=tzanussi/meta-intel-mailing-list-update

Tom Zanussi (1):
  meta-intel: update MAINTAINERS with meta-intel mailing list info

 MAINTAINERS | 32 ++++++++++++++++++--------------
 1 file changed, 18 insertions(+), 14 deletions(-)

-- 
1.7.11.4


