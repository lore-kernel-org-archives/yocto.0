Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E380E00ED7; Wed, 18 Jul 2018 22:15:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3568FE009B2
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 22:15:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w6J5F0vx014502
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 18 Jul 2018 22:15:00 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Wed, 18 Jul 2018 22:14:59 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe_macdonald@mentor.com>, <flihp@twobit.us>,
	<mark.hatle@windriver.com>
Date: Thu, 19 Jul 2018 13:14:53 +0800
Message-ID: <1531977296-32221-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][resend][PATCH 0/3] refresh patches to fix QA warnings
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
X-List-Received-Date: Thu, 19 Jul 2018 05:15:06 -0000
Content-Type: text/plain



Yi Zhao (3):
  libselinux: refresh patches to fix QA warning
  libsemanage: refresh patches to fix QA warning
  selinux-python: refresh patches to fix QA warning

 ...c-Makefile-fix-includedir-in-libselinux.pc.patch | 14 ++++++--------
 .../libselinux-define-FD_CLOEXEC-as-necessary.patch | 14 ++++++--------
 ...ibselinux-drop-Wno-unused-but-set-variable.patch | 21 +++++++++++++++------
 .../libselinux-make-O_CLOEXEC-optional.patch        | 12 +++++-------
 .../libselinux-make-SOCK_CLOEXEC-optional.patch     | 14 ++++++--------
 ...c-Makefile-fix-includedir-in-libselinux.pc.patch | 16 +++++++---------
 ...libsemanage-Fix-execve-segfaults-on-Ubuntu.patch | 20 +++++++++-----------
 ...libsemanage-allow-to-disable-audit-support.patch |  8 +++-----
 ...libsemanage-define-FD_CLOEXEC-as-necessary.patch | 20 +++++++++-----------
 ...manage-disable-expand-check-on-policy-load.patch | 13 +++++++------
 ...bsemanage-drop-Wno-unused-but-set-variable.patch | 19 ++++++++++++++-----
 .../libsemanage/libsemanage-fix-path-nologin.patch  | 15 ++++++++-------
 recipes-security/selinux/libsemanage_2.7.bb         |  2 +-
 recipes-security/selinux/libsemanage_git.bb         |  2 +-
 .../fix-TypeError-for-seobject.py.patch             | 17 +++++++++--------
 .../selinux-python/fix-sepolicy-install-path.patch  | 21 ++++++++++++---------
 .../process-ValueError-for-sepolicy-seobject.patch  | 12 +++++-------
 17 files changed, 123 insertions(+), 117 deletions(-)

-- 
2.7.4


