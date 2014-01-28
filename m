Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6344EE006BE
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 17:52:34 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0S1qWd5017796
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 17:52:32 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Mon, 27 Jan 2014 17:52:32 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Mon, 27 Jan 2014 20:52:28 -0500
Message-ID: <cover.1390815368.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 0/2] refpolicy: fix real path for cpio/swapoff
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
X-List-Received-Date: Tue, 28 Jan 2014 01:52:34 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

The following changes since commit 8ce3b9d0d20c79e0d6bba325f6eedbd11febc101:

  refpolicy: fix new symlink for policy.kern (2014-01-26 17:44:56 +0800)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/ref-fix
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/ref-fix

Wenzong Fan (2):
  refpolicy: fix real path for cpio
  refpolicy: fix real path for swapoff

 .../refpolicy-2.20130424/poky-fc-fstools.patch     |   19 ++++++++-------
 .../refpolicy-2.20130424/poky-fc-rpm.patch         |   25 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    1 +
 3 files changed, 36 insertions(+), 9 deletions(-)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-rpm.patch

-- 
1.7.9.5


