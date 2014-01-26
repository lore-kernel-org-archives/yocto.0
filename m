Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FF12E003FA
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2014 00:54:22 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0Q8sL10017837
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2014 00:54:21 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Sun, 26 Jan 2014 00:54:21 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Sun, 26 Jan 2014 03:54:14 -0500
Message-ID: <cover.1390725931.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 0/3] Some fix to udev/refpolicy
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
X-List-Received-Date: Sun, 26 Jan 2014 08:54:26 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

* sync udev/init to latest poky version
* fix real path of udevadm
* fix symlink policy.kern

The following changes since commit 7c182186f54b88e5eb38ad7540e0498da476ab87:

  libsemanage: fix DEPENDS override issue (2014-01-23 18:00:50 +0800)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/ref-updates
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/ref-updates

Wenzong Fan (3):
  udev/init: sync to latest poky version ae819671
  refpolicy: fix real path for udevadm
  refpolicy: fix symlink policy.kern

 recipes-core/udev/udev/init                        |    4 +++-
 .../refpolicy-2.20130424/poky-fc-udevd.patch       |   20 ++++++++++++++------
 recipes-security/refpolicy/refpolicy_common.inc    |    4 ++++
 3 files changed, 21 insertions(+), 7 deletions(-)

-- 
1.7.9.5


