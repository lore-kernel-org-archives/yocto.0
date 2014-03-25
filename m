Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2959E0098F
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 18:07:53 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2P17qvp006786
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 18:07:53 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Mon, 24 Mar 2014 18:07:52 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>, <Joe.MacDonald@windriver.com>
Date: Mon, 24 Mar 2014 21:07:46 -0400
Message-ID: <cover.1395709062.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 0/4] add targeted/minimum policy and some updates
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
X-List-Received-Date: Tue, 25 Mar 2014 01:07:54 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Changes:
* backport tmpfs_t patch from upstream;
* add rules for /var/log symlink on poky;
* add targeted policy type
* add minimum targeted policy

The following changes since commit a6079a43719e79e12a57e609923a0cccdba06916:

  refpolicy: fix real path for su.shadow (2014-02-13 10:52:07 -0500)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib wenzong/ref-minimum
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/ref-minimum

Wenzong Fan (4):
  refpolicy: associate tmpfs_t (shm) to device_t (devtmpfs) file
    systems
  refpolicy: add rules for /var/log symlink on poky
  refpolicy: add targeted policy type
  refpolicy: add minimum targeted policy

 ...associate-tmpfs_t-shm-to-device_t-devtmpf.patch |   30 +++
 ...ky-policy-add-rules-for-syslogd_t-symlink.patch |   30 +++
 ...rules-for-var-log-symlink-audisp_remote_t.patch |   29 +++
 .../refpolicy/refpolicy-minimum_2.20130424.bb      |   46 +++++
 ...olicy-fix-optional-issue-on-sysadm-module.patch |   60 ++++++
 .../refpolicy-unconfined_u-default-user.patch      |  198 ++++++++++++++++++++
 .../refpolicy/refpolicy-targeted_2.20130424.bb     |   18 ++
 .../refpolicy/refpolicy_2.20130424.inc             |    3 +
 8 files changed, 414 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/filesystem-associate-tmpfs_t-shm-to-device_t-devtmpf.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-add-rules-for-syslogd_t-symlink.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb
 create mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-targeted_2.20130424.bb

-- 
1.7.9.5


