Return-Path: <Rongqing.Li@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D67CDE00747
	for <yocto@yoctoproject.org>; Sun,  9 Feb 2014 23:57:47 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s1A7vkaA000366
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 9 Feb 2014 23:57:47 -0800 (PST)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.168) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Sun, 9 Feb 2014 23:57:46 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 10 Feb 2014 15:58:34 +0800
Message-ID: <cover.1392019016.git.rongqing.li@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Subject: [PATCH 0/1] refpolicy: allow portmap to create portmap_t type socket
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
X-List-Received-Date: Mon, 10 Feb 2014 07:57:51 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

The following changes since commit e8092ae5cbe4e19cc086fed51216d45dafae900e:

  refpolicy: backport two patches to fix dhclient, hostname and ifconfig (2014-02-10 11:07:23 +0800)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib roy/portmap
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=roy/portmap

Roy Li (1):
  refpolicy: allow portmap to create portmap_t type socket

 .../portmap-allow-portmap-to-create-socket.patch   |   28 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    1 +
 2 files changed, 29 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/portmap-allow-portmap-to-create-socket.patch

-- 
1.7.10.4


