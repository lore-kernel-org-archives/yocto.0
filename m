Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B9C4E0083F
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 01:27:13 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0K9RBQp026188
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 01:27:11 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Mon, 20 Jan 2014 01:27:12 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Mon, 20 Jan 2014 04:27:07 -0500
Message-ID: <cover.1390206438.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Cc: wenzong.fan@windriver.com
Subject: [PATCH 0/2] remove PREFERRED_VERSION and update libselinux to 2.2.2
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
X-List-Received-Date: Mon, 20 Jan 2014 09:27:19 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

* Remove PREFERRED_VERSION configs for selinux, they should be maintained
in distro config files.

* Update libselinux to latest version 2.2.2 which released on on 2013-12-30.

The following changes since commit 3fee4a09cc26816862dacfb2081dc7e0fa7ca47e:

  psmisc: inherit enable-selinux and backport to fix build issue (2014-01-13 17:50:00 +0800)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/selinux-update
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/selinux-update

Wenzong Fan (2):
  selinux: remove PREFERRED_VERSION configs
  libselinux: migrate SRC_URI to 2.2.2

 .../{libselinux_2.2.bb => libselinux_2.2.2.bb}     |    4 ++--
 recipes-security/selinux/selinux_20131030.inc      |    7 -------
 2 files changed, 2 insertions(+), 9 deletions(-)
 rename recipes-security/selinux/{libselinux_2.2.bb => libselinux_2.2.2.bb} (74%)

-- 
1.7.9.5


