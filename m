Return-Path: <jinliang.li@linux.alibaba.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA7CBE015B1; Wed,  6 Jun 2018 07:12:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [115.124.30.130 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 301 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Jun 2018 07:12:48 PDT
Received: from out30-130.freemail.mail.aliyun.com
	(out30-130.freemail.mail.aliyun.com [115.124.30.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A290E015AA
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2018 07:12:48 -0700 (PDT)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R911e4; CH=green;
	FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01429;
	MF=jinliang.li@linux.alibaba.com; NM=1; PH=DS; RN=2; SR=0;
	TI=SMTPD_---0T2ILaYY_1528294054; 
Received: from localhost(mailfrom:jinliang.li@linux.alibaba.com
	fp:SMTPD_---0T2ILaYY_1528294054) by smtp.aliyun-inc.com(127.0.0.1);
	Wed, 06 Jun 2018 22:07:46 +0800
From: Jinliang Li <jinliang.li@linux.alibaba.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Jun 2018 22:06:51 +0800
Message-Id: <1528294013-17960-1-git-send-email-jinliang.li@linux.alibaba.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Thu, 07 Jun 2018 08:19:20 -0700
Cc: Jinliang Li <jinliang.li@linux.alibaba.com>
Subject: [meta-security][PATCH 0/2] Fix build issue for apparmor
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
X-List-Received-Date: Wed, 06 Jun 2018 14:12:50 -0000

This patch series fix 2 build issues for apparmor.

Jinliang Li (2):
  Fix build issue for apparmor kernel configuration
  Fix build issue for apparmor when systemd is used

 recipes-kernel/linux/linux-yocto_4.%.bbappend | 2 +-
 recipes-security/AppArmor/apparmor_2.11.0.bb  | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

-- 
2.7.4


