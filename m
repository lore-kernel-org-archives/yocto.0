Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0097E00A81; Wed,  5 Apr 2017 08:05:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FC21E00970
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 08:05:39 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id 868562656B5
From: Romain Perier <romain.perier@collabora.com>
To: liezhi.yang@windriver.com
Date: Wed,  5 Apr 2017 17:05:19 +0200
Message-Id: <20170405150521.19160-1-romain.perier@collabora.com>
X-Mailer: git-send-email 2.9.3
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: [PATCH 0/2] logrotate: systemd support
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
X-List-Received-Date: Wed, 05 Apr 2017 15:05:48 -0000

SystemD is now supported by upstream logrotate. This set of patches first
bumps the recipe to the last upstream version, that is 3.11.0. Then it adds
support for systemd.

This series is the continuety of the following patch:

1. https://lists.yoctoproject.org/pipermail/yocto/2017-March/035277.html

Note:
The default SRC_URI to be used for tarball is still under discussion on the ML.
Do we use github or downloads.yoctoproject.org ? How do we upload the tarball ?

Romain Perier (2):
  logrotate: Bump to 3.11.0
  logrotate: Add systemd support

 .../recipes-extended/logrotate/logrotate_3.11.0.bb | 78 ++++++++++++++++++++++
 meta/recipes-extended/logrotate/logrotate_3.9.1.bb | 60 -----------------
 2 files changed, 78 insertions(+), 60 deletions(-)
 create mode 100644 meta/recipes-extended/logrotate/logrotate_3.11.0.bb
 delete mode 100644 meta/recipes-extended/logrotate/logrotate_3.9.1.bb

-- 
2.9.3


