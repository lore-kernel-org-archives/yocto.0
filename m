Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2740BE003D7
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 23:54:32 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0S7sWVc021266
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 23:54:32 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Mon, 27 Jan 2014 23:54:31 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Tue, 28 Jan 2014 02:54:28 -0500
Message-ID: <cover.1390895404.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 0/1] refpolicy: Allow ping to get/set capabilities
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
X-List-Received-Date: Tue, 28 Jan 2014 07:54:35 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

When ping is installed with capabilities instead of being marked setuid,
then the ping_t domain needs to be allowed to getcap/setcap.

This patch was backported from upstream.

The following changes since commit 271955d346f305b196f069d9dc46db16c43678de:

  refpolicy: fix real path for swapoff (2014-01-28 15:20:19 +0800)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/fix-ping
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/fix-ping

Wenzong Fan (1):
  refpolicy: Allow ping to get/set capabilities

 .../Allow-ping-to-get-set-capabilities.patch       |   32 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    4 +++
 2 files changed, 36 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/Allow-ping-to-get-set-capabilities.patch

-- 
1.7.9.5


