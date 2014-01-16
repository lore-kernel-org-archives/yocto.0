Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56C68E00872
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2014 21:35:29 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0G5ZTrg029697
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2014 21:35:29 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Wed, 15 Jan 2014 21:35:28 -0800
From: <wenzong.fan@windriver.com>
To: <Xin.Ouyang@windriver.com>, <mark.hatle@windriver.com>,
	<yocto@yoctoproject.org>
Date: Thu, 16 Jan 2014 00:35:25 -0500
Message-ID: <cover.1389850086.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 0/1] libselinux: migrate SRC_URI to 2.2.2
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
X-List-Received-Date: Thu, 16 Jan 2014 05:35:34 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Update libselinux to lastest version 2.2.2 which released on 2013-12-30.

The following changes since commit 3fee4a09cc26816862dacfb2081dc7e0fa7ca47e:

  psmisc: inherit enable-selinux and backport to fix build issue (2014-01-13 17:50:00 +0800)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/libselinux-2.2.2
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/libselinux-2.2.2

Wenzong Fan (1):
  libselinux: migrate SRC_URI to 2.2.2

 .../{libselinux_2.2.bb => libselinux_2.2.2.bb}     |    4 ++--
 recipes-security/selinux/selinux_20131030.inc      |    2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename recipes-security/selinux/{libselinux_2.2.bb => libselinux_2.2.2.bb} (74%)

-- 
1.7.9.5


