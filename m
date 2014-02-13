Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A5D6E007CE
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 00:21:29 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s1D8LS9G023789
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 00:21:28 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Thu, 13 Feb 2014 00:09:23 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Thu, 13 Feb 2014 03:09:20 -0500
Message-ID: <cover.1392278548.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 0/1] refpolicy: fix real path for su.shadow
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
X-List-Received-Date: Thu, 13 Feb 2014 08:21:30 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

In yocto the su was linked to /bin/su.shadow, fix the path for it.

The following changes since commit 33e54aa891626c10f7cb865cc263b708c060fc85:

  refpolicy: backport two patches to fix dhclient, hostname and ifconfig (2014-02-12 19:45:35 -0500)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/fix-su
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/fix-su

Wenzong Fan (1):
  refpolicy: fix real path for su.shadow

 .../poky-fc-fix-real-path_su.patch                 |   25 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    1 +
 2 files changed, 26 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-fix-real-path_su.patch

-- 
1.7.9.5


