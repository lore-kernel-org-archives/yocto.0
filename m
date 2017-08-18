Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58828E00CA5; Thu, 17 Aug 2017 23:44:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E080AE00349
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 23:44:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v7I6ifU2010116
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 17 Aug 2017 23:44:42 -0700
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Thu, 17 Aug 2017 23:44:41 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <richard.purdie@linuxfoundation.org>
Date: Fri, 18 Aug 2017 02:44:36 -0400
Message-ID: <cover.1503038547.git.hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [meta-gplv2][PATCH 0/3] fix mc compile failure while ncurses upgraded
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
X-List-Received-Date: Fri, 18 Aug 2017 06:44:44 -0000
Content-Type: text/plain

The following changes since commit 73a8f9df9f4b5e0d87605962c3bd8dcbaef28aea:

  layer.conf: Remove mc from packagegroup-core-full-cmdline-utils (2017-08-17 17:37:57 +0100)

are available in the git repository at:

  git://git.openembedded.org/openembedded-core-contrib hongxu/fix-gplv2-mc
  http://cgit.openembedded.org/openembedded-core-contrib/log/?h=hongxu/fix-gplv2-mc

Hongxu Jia (3):
  Revert "layer.conf: Remove mc from
    packagegroup-core-full-cmdline-utils"
  Revert "mc: Drop from meta-gplv2 as incompatible with newer ncurses
    versions"
  mc: unify curses initialization

 conf/layer.conf                                    |  2 -
 ...3697-tty_init-unify-curses-initialization.patch | 51 ++++++++++++++++++++++
 recipes-extended/mc/mc/mc-CTRL.patch               | 31 +++++++++++++
 recipes-extended/mc/mc_4.7.5.2.bb                  | 48 ++++++++++++++++++++
 4 files changed, 130 insertions(+), 2 deletions(-)
 create mode 100644 recipes-extended/mc/mc/0001-Ticket-3697-tty_init-unify-curses-initialization.patch
 create mode 100644 recipes-extended/mc/mc/mc-CTRL.patch
 create mode 100644 recipes-extended/mc/mc_4.7.5.2.bb

-- 
2.8.1


