Return-Path: <Rongqing.Li@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 409BFE007B1
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2014 21:30:54 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s1B5Usds022490
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2014 21:30:54 -0800 (PST)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.168) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Mon, 10 Feb 2014 21:30:53 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 11 Feb 2014 13:31:42 +0800
Message-ID: <cover.1392096379.git.rongqing.li@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Subject: [PATCH 0/1] refpolicy: make proftpd be able to work
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
X-List-Received-Date: Tue, 11 Feb 2014 05:30:57 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

The following changes since commit 8089f0d19f757ecf65f957d6a196e66c90bd7911:

  refpolicy: allow portmap to create portmap_t type socket (2014-02-10 15:54:14 +0800)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib roy/refpolicy-proftpd
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=roy/refpolicy-proftpd

Roy Li (1):
  refpolicy: make proftpd be able to work

 ...y-policy-ftp-make-proftpd-be-able-to-work.patch |   85 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    1 +
 2 files changed, 86 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-ftp-make-proftpd-be-able-to-work.patch

-- 
1.7.10.4


