Return-Path: <Rongqing.Li@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33FCAE00571
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 22:10:02 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s1E6A0rV006111
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 22:10:01 -0800 (PST)
Received: from lirq-OptiPlex-780.corp.ad.wrs.com (128.224.162.168) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Thu, 13 Feb 2014 22:10:00 -0800
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 14 Feb 2014 14:10:51 +0800
Message-ID: <cover.1392358150.git.rongqing.li@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Subject: [PATCH 0/1][meta-selinux][V2] refpolicy: make proftpd be able to work
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
X-List-Received-Date: Fri, 14 Feb 2014 06:10:03 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

The following changes since commit a6079a43719e79e12a57e609923a0cccdba06916:

  refpolicy: fix real path for su.shadow (2014-02-13 10:52:07 -0500)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib roy/proftpd-1
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=roy/proftpd-1

Roy Li (1):
  refpolicy: make proftpd be able to work

 .../ftp-add-ftpd_t-to-mlsfilewrite.patch           |   39 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    1 +
 2 files changed, 40 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/ftp-add-ftpd_t-to-mlsfilewrite.patch

-- 
1.7.10.4


