Return-Path: <kai.kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42564E00D0B; Sun,  1 Apr 2018 23:11:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8B32E008E4
	for <yocto@yoctoproject.org>; Sun,  1 Apr 2018 23:11:12 -0700 (PDT)
Received: from ala-blade48.wrs.com (ala-blade48.wrs.com [147.11.105.68])
	by mail.windriver.com (8.15.2/8.15.1) with SMTP id w326B9f3023921;
	Sun, 1 Apr 2018 23:11:09 -0700 (PDT)
Received: by ala-blade48.wrs.com (sSMTP sendmail emulation);
	Sun, 01 Apr 2018 23:11:09 -0700
From: Kai Kang <kai.kang@windriver.com>
To: yocto@yoctoproject.org
Date: Sun,  1 Apr 2018 23:11:04 -0700
Message-Id: <20180402061106.17749-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.11.0
Subject: [meta-selinux][PATCH V2 0/2] Fix systemd configure error if audit enabled
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
X-List-Received-Date: Mon, 02 Apr 2018 06:11:13 -0000

V2:
* remove setting of FILES_${PN}-dev from recipe of audit which has been done in
  bitbake.conf in oe-core.


Kai Kang (2):
  enable-audit.bbclass: remove implement of packageconfig audit
  audit: fix pkgconfigdir

 classes/enable-audit.bbclass          | 1 -
 recipes-security/audit/audit_2.7.6.bb | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

-- 
2.11.0


