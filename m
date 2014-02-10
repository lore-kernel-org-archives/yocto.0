Return-Path: <Rongqing.Li@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E575E0076F
	for <yocto@yoctoproject.org>; Sun,  9 Feb 2014 23:11:21 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s1A7BKDa026390
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 9 Feb 2014 23:11:21 -0800 (PST)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.168) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Sun, 9 Feb 2014 23:11:20 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 10 Feb 2014 15:12:07 +0800
Message-ID: <cover.1392002007.git.rongqing.li@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 0/1] refpolicy: backport two patches
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
X-List-Received-Date: Mon, 10 Feb 2014 07:11:24 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

The following changes since commit 13266999932edaa334b24c18c79815eb19559b86:

  refpolicy: Allow ping to get/set capabilities (2014-01-28 16:41:59 +0800)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib roy/refpolicy-backport-dhclient-hostname
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=roy/refpolicy-backport-dhclient-hostname

Roy Li (1):
  refpolicy: backport two patches to fix dhclient, hostname and
    ifconfig

 ...-not-audit-attempts-by-hostname-to-read-a.patch |   59 ++++++++++++++++++++
 ...dhcpc-binds-socket-to-random-high-udp-por.patch |   41 ++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    2 +
 3 files changed, 102 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/hostname-do-not-audit-attempts-by-hostname-to-read-a.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/sysnetwork-dhcpc-binds-socket-to-random-high-udp-por.patch

-- 
1.7.10.4


