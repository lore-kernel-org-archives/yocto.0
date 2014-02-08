Return-Path: <Rongqing.Li@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5608DE006EE
	for <yocto@yoctoproject.org>; Fri,  7 Feb 2014 18:33:30 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s182XTnU013926
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 7 Feb 2014 18:33:29 -0800 (PST)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.168) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Fri, 7 Feb 2014 18:33:28 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sat, 8 Feb 2014 10:34:14 +0800
Message-ID: <cover.1391825983.git.rongqing.li@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 0/1] refpolicy: fix ftpwho install dir
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
X-List-Received-Date: Sat, 08 Feb 2014 02:33:31 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

The following changes since commit 13266999932edaa334b24c18c79815eb19559b86:

  refpolicy: Allow ping to get/set capabilities (2014-01-28 16:41:59 +0800)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib roy/meta-selinux_ftpwho
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=roy/meta-selinux_ftpwho

Roy Li (1):
  refpolicy: fix ftpwho install dir

 .../refpolicy-2.20130424/poky-fc-ftpwho-dir.patch  |   27 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    1 +
 2 files changed, 28 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-ftpwho-dir.patch

-- 
1.7.10.4


