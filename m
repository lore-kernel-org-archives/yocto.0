Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD5ABE00CDE; Fri, 18 Aug 2017 02:29:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13C85E00B67
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 02:29:46 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v7I9TjuC020284
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 18 Aug 2017 02:29:45 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 18 Aug 2017 02:29:44 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <richard.purdie@linuxfoundation.org>
Date: Fri, 18 Aug 2017 05:29:40 -0400
Message-ID: <cover.1503048463.git.hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [meta-gplv2][PATCH V2 0/3] fix mc compile failure while ncurses upgraded
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
X-List-Received-Date: Fri, 18 Aug 2017 09:29:48 -0000
Content-Type: text/plain

Changed in V2:

We could not backport fix from the latest master which introduce
gplv3 contamination, but we could revert to disable Ctrl-g key 
and Ctrl-\ key

//Hongxu

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
  mc: disable Ctrl-g key and Ctrl-\ key

 conf/layer.conf                                    |  2 -
 .../mc/0001-disable-Ctrl-g-key-and-Ctrl-key.patch  | 86 ++++++++++++++++++++++
 recipes-extended/mc/mc/mc-CTRL.patch               | 31 ++++++++
 recipes-extended/mc/mc_4.7.5.2.bb                  | 48 ++++++++++++
 4 files changed, 165 insertions(+), 2 deletions(-)
 create mode 100644 recipes-extended/mc/mc/0001-disable-Ctrl-g-key-and-Ctrl-key.patch
 create mode 100644 recipes-extended/mc/mc/mc-CTRL.patch
 create mode 100644 recipes-extended/mc/mc_4.7.5.2.bb

-- 
2.8.1


