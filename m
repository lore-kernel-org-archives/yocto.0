Return-Path: <Rongqing.Li@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7842E0044C
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 18:37:20 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s1F2bJsa003395
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 18:37:19 -0800 (PST)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.168) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Fri, 14 Feb 2014 18:37:18 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sat, 15 Feb 2014 10:38:11 +0800
Message-ID: <cover.1392431823.git.rongqing.li@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 0/1] refpolicy: allow sysadm to run rpcbind
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
X-List-Received-Date: Sat, 15 Feb 2014 02:37:21 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

The following changes since commit b032f0898f3e61f34c9f7fde9445ad3ee0d976c8:

  refpolicy: make proftpd be able to work (2014-02-14 14:04:46 +0800)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib roy/rpcbind
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=roy/rpcbind

Roy Li (1):
  refpolicy: allow sysadm to run rpcbind

 .../poky-policy-allow-sysadm-to-run-rpcinfo.patch  |   33 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    1 +
 2 files changed, 34 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-allow-sysadm-to-run-rpcinfo.patch

-- 
1.7.10.4


