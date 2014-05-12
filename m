Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C7B2E00B71; Mon, 12 May 2014 00:32:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=RCVD_IN_DNSWL_MED,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail.windriver.com (unknown [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 657B7E00AEE
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 00:31:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s4C7VpDr022053
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 00:31:51 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Mon, 12 May 2014 00:31:51 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Mon, 12 May 2014 03:31:47 -0400
Message-ID: <cover.1399879397.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 0/2] initscripts/devpts.sh: fix context for /dev/pts
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
X-List-Received-Date: Mon, 12 May 2014 07:32:03 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

devpts use file_use_trans to allocate security contexts. As there are no
range_trans rules for initrc_t mounting devpts, the security level of
mountpoint will be derived from the initrc process, to be systemhigh
(s15:c0.c1023), instead of expected systemlow(s0).
    
This will block login shells to search PTYs, so use restorecon to fix
this.

The following changes since commit 368f65a475069ed384d82be09c2515fb765e22ec:

  initscripts/checkroot.sh: restore file contexts for /run (2014-05-09 08:59:54 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/fix-pts
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/fix-pts

Wenzong Fan (2):
  initscripts: add a local copy of devpts.sh
  initscripts/devpts.sh: fix context for /dev/pts

 recipes-core/initscripts/initscripts/devpts.sh    |   29 +++++++++++++++++++++
 recipes-core/initscripts/initscripts_1.0.bbappend |    2 ++
 2 files changed, 31 insertions(+)
 create mode 100755 recipes-core/initscripts/initscripts/devpts.sh

-- 
1.7.9.5


