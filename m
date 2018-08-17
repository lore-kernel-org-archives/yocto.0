Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70A42E00BBD; Fri, 17 Aug 2018 00:32:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50187E00B92
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2018 00:32:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w7H7WHwB019966
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 17 Aug 2018 00:32:17 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Fri, 17 Aug 2018 00:32:16 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <Joe_MacDonald@mentor.com>, <flihp@twobit.us>,
	<mark.hatle@windriver.com>
Date: Fri, 17 Aug 2018 15:32:12 +0800
Message-ID: <1534491134-23500-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][resend][PATCH 0/2] meta-selinux fixes
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
X-List-Received-Date: Fri, 17 Aug 2018 07:32:21 -0000
Content-Type: text/plain

Rebase and resend Wenzong's meta-selinux patches

Wenzong Fan (2):
  selinux-python: fix installed-vs-shipped QA errors
  policycoreutils: add PACKAGECONFIG for libpam, audit

 recipes-security/selinux/policycoreutils.inc | 21 ++++++++++++++-------
 recipes-security/selinux/selinux-python.inc  |  1 +
 2 files changed, 15 insertions(+), 7 deletions(-)

-- 
2.7.4


