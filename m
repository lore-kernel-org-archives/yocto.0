Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12AE6E008B8
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 18:54:40 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s092sdIE010603
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 8 Jan 2014 18:54:39 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Wed, 8 Jan 2014 18:54:38 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Wed, 8 Jan 2014 21:54:35 -0500
Message-ID: <cover.1389235842.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 0/1] refpolicy: fix real path for udevd
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
X-List-Received-Date: Thu, 09 Jan 2014 02:54:43 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

In Yocto the real path for udevd is /lib/udev/udevd, this patch fixes
the init issues like:
    
    udevd[87]: setfilecon /dev/vcsa2 failed: Operation not permitted
    udevd[89]: setfilecon /dev/fb0 failed: Operation not permitted

The following changes since commit 2209cb5fc21c1ad5a7471897528ed64170f70219:

  policy: Create compressed_policy distro feature (2013-12-05 09:03:41 -0500)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/fix-udevd-path
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/fix-udevd-path

Wenzong Fan (1):
  refpolicy: fix real path for udevd

 .../refpolicy-2.20130424/poky-fc-udevd.patch       |   27 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    1 +
 2 files changed, 28 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-udevd.patch

-- 
1.7.9.5


