Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1FE1E0083F
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 02:15:46 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0KAFihK026894
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 02:15:45 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Mon, 20 Jan 2014 02:15:45 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Mon, 20 Jan 2014 05:15:41 -0500
Message-ID: <cover.1390212504.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Cc: wenzong.fan@windriver.com
Subject: [meta-selinux][PATCH 0/2] libsemanage-native: remove audit-native dependency
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
X-List-Received-Date: Mon, 20 Jan 2014 10:15:46 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

* native tools don't need audit support;
* audit 2.3.2 or laters require kernel headers >= 2.6.30, this causes
  audit-native can't be built on some older distributions. 

The following changes since commit 3fee4a09cc26816862dacfb2081dc7e0fa7ca47e:

  psmisc: inherit enable-selinux and backport to fix build issue (2014-01-13 17:50:00 +0800)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/disable-audit
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/disable-audit

Wenzong Fan (2):
  Revert "libsemanage: add audit dependency"
  libsemanage-native: remove audit-native dependency

 recipes-security/audit/audit_2.3.2.bb              |    8 +-
 recipes-security/selinux/libsemanage.inc           |    5 +-
 ...ibsemanage-allow-to-disable-audit-support.patch |  126 ++++++++++++++++++++
 recipes-security/selinux/libsemanage_2.2.bb        |    1 +
 recipes-security/selinux/libsemanage_git.bb        |    1 +
 5 files changed, 133 insertions(+), 8 deletions(-)
 create mode 100644 recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch

-- 
1.7.9.5


