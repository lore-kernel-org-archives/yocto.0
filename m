Return-Path: <Rongqing.Li@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC6D8E0094F
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 21:51:21 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s245pK6x028213
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 3 Mar 2014 21:51:20 -0800 (PST)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.168) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Mon, 3 Mar 2014 21:51:20 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 4 Mar 2014 13:52:28 +0800
Message-ID: <cover.1393912246.git.rongqing.li@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Subject: [PATCH 0/2] fix audit configuration file permission and enable systemd support
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
X-List-Received-Date: Tue, 04 Mar 2014 05:51:22 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

The following changes since commit a6079a43719e79e12a57e609923a0cccdba06916:

  refpolicy: fix real path for su.shadow (2014-02-13 10:52:07 -0500)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib roy/audit-two-fix
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=roy/audit-two-fix

Roy Li (2):
  audit: Add systemd support
  audit: fix the permission of configuration file

 recipes-security/audit/audit/audit-volatile.conf |    1 +
 recipes-security/audit/audit/auditd.service      |   21 +++++++++++++++++++++
 recipes-security/audit/audit_2.3.2.bb            |   21 +++++++++++++++++++--
 3 files changed, 41 insertions(+), 2 deletions(-)
 create mode 100644 recipes-security/audit/audit/audit-volatile.conf
 create mode 100644 recipes-security/audit/audit/auditd.service

-- 
1.7.10.4


