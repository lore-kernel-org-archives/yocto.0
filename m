Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 194A7E00826; Tue, 28 Feb 2017 15:07:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [134.134.136.24 listed in dnsbl.sorbs.net]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3903EE004D2
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2017 15:07:42 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Feb 2017 15:07:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,222,1484035200"; d="scan'208";a="1116798690"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.117])
	by fmsmga001.fm.intel.com with ESMTP; 28 Feb 2017 15:07:41 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 28 Feb 2017 17:07:31 -0600
Message-Id: <1488323254-21800-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [patchwork][PATCH 0/3] Support range select in patch-list
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
X-List-Received-Date: Tue, 28 Feb 2017 23:07:45 -0000

Selecting multiple items in a patch list must be done manually,
one item at a time, providing a poor user experience.

These changes add the jquery.tablecheckbox plugin and call it from
the patch-list tables to allow users to select single / multiple / all
table row(s) by clicking.

A function specific to the series view is used to provide the mentioned
feature too.

[YOCTO #10819]

Jose Lamego (3):
  series.js: support shift-select range
  jquery.tablecheckbox: add plugin for multiselect functionality
  patch-list: call tablecheckbox plugin from patch-list

 htdocs/js/jquery.tablecheckbox.js             | 165 ++++++++++++++++++++++++++
 htdocs/js/series.js                           |  31 +++++
 patchwork/templates/patchwork/patch-list.html |   2 +
 3 files changed, 198 insertions(+)
 create mode 100644 htdocs/js/jquery.tablecheckbox.js

-- 
1.9.1


