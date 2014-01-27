Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F378CE00450
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2014 22:52:05 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0R6q3d9006868
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2014 22:52:04 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Sun, 26 Jan 2014 22:52:03 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Mon, 27 Jan 2014 01:52:00 -0500
Message-ID: <cover.1390805261.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 0/1] selinux: set policy-version to 28
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
X-List-Received-Date: Mon, 27 Jan 2014 06:52:06 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

The default policy version of new selinux toolchains is 29, to
fit kernel 3.10.x, set it to 28.

The following changes since commit 8ce3b9d0d20c79e0d6bba325f6eedbd11febc101:

  refpolicy: fix new symlink for policy.kern (2014-01-26 17:44:56 +0800)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/policy-version
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/policy-version

Wenzong Fan (1):
  selinux: set policy-version to 28

 recipes-security/refpolicy/refpolicy_common.inc |    2 ++
 recipes-security/selinux/libsemanage.inc        |    3 +++
 2 files changed, 5 insertions(+)

-- 
1.7.9.5


