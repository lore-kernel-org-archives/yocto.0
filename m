Return-Path: <joe.slater@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E08C8E00AE4
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 14:08:21 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2DL8K1C015382
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 14:08:20 -0700 (PDT)
Received: from ala-jslater-lx3.wrs.com (147.11.152.42) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Thu, 13 Mar 2014 14:08:19 -0700
From: Joe Slater <jslater@windriver.com>
To: <yocto@yoctoproject.org>, <rongqing.li@windriver.com>
Date: Thu, 13 Mar 2014 14:08:18 -0700
Message-ID: <1394744899-23794-1-git-send-email-jslater@windriver.com>
X-Mailer: git-send-email 1.7.3.4
MIME-Version: 1.0
Cc: joe.slater@windriver.com
Subject: [meta-selinux PATCH 0/1] policycoreutils (semanage)
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
X-List-Received-Date: Thu, 13 Mar 2014 21:08:26 -0000
Content-Type: text/plain

Fix a failure to modify records if we want to change the seuser
for a login user.  Just a log issue.

I incremented PR.  I think we should either do that are get rid of it.

Joe Slater (1):
  policycoreutils: semanage

 .../policycoreutils-semanage-edit-user.patch       |   21 ++++++++++++++++++++
 recipes-security/selinux/policycoreutils_2.2.5.bb  |    3 +-
 2 files changed, 23 insertions(+), 1 deletions(-)
 create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-semanage-edit-user.patch

-- 
1.7.3.4


