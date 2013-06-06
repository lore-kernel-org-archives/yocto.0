Return-Path: <Sen.Zhang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48897E01560
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2013 00:22:29 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r567MSCX020030
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 6 Jun 2013 00:22:29 -0700 (PDT)
Received: from jesse-wrs-desktop.corp.ad.wrs.com (128.224.162.230) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.342.3; Thu, 6 Jun 2013 00:22:28 -0700
From: Jesse Zhang <sen.zhang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 6 Jun 2013 15:24:50 +0800
Message-ID: <cover.1370503045.git.sen.zhang@windriver.com>
X-Mailer: git-send-email 1.7.11.7
MIME-Version: 1.0
Subject: [PATCH 0/1] fix assignments of BB_ENV_EXTRAWHITE variables
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
X-List-Received-Date: Thu, 06 Jun 2013 07:22:29 -0000
Content-Type: text/plain

This is applicable to oe-core as well. But oe-core misses a commit:

    commit 54728735d67b567cdb067f793490ad15c448c828
    Author: Darren Hart <dvhart@linux.intel.com>
    Date:   Fri Feb 8 14:27:23 2013 -0800

        meta-yocto: Document new oe-git-proxy in site.conf.sample

It should be applied before this one.

jesse

The following changes since commit a62aed41f2d8f874f7ae24d0e5be5dbc66ea2199:

  lrzsz: check locale.h in configure (2013-06-04 15:55:46 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib szhang/white
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=szhang/white

Jesse Zhang (1):
  local.conf.sample: use ?= to assign BB_ENV_EXTRAWHITE variables

 meta-yocto/conf/local.conf.sample          | 4 ++--
 meta-yocto/conf/local.conf.sample.extended | 2 +-
 meta-yocto/conf/site.conf.sample           | 6 +++---
 3 files changed, 6 insertions(+), 6 deletions(-)

-- 
1.7.11.7


