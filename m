Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74A93E00C29; Tue, 15 Jan 2019 21:37:31 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57816E00C1E
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 21:37:30 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x0G5bTWv011368
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 21:37:29 -0800 (PST)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.408.0; Tue, 15 Jan 2019 21:37:17 -0800
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 16 Jan 2019 13:37:15 +0800
Message-ID: <1547617036-442612-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1546062265-388514-1-git-send-email-changqing.li@windriver.com>
References: <1546062265-388514-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
Subject: [PATCH V2] patchwork: Add a dockerfile for deploy patchwork and patchtest
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
X-List-Received-Date: Wed, 16 Jan 2019 05:37:31 -0000
Content-Type: text/plain

change in v2:
run getmail in crontab


Changqing Li (1):
  patchwork: Add a dockerfile for deploy patchwork and patchtest

 Dockerfile.pw                 | 52 +++++++++++++++++++++++++++++++++++++++++++
 README.pw                     | 32 ++++++++++++++++++++++++++
 requirements.txt              | 12 ++++++++++
 scripts/pw_createsuperuser.sh |  5 +++++
 scripts/pw_getmail.sh         | 11 +++++++++
 scripts/pw_migrate.sh         |  5 +++++
 scripts/pw_runwebserver.sh    | 12 ++++++++++
 7 files changed, 129 insertions(+)
 create mode 100644 Dockerfile.pw
 create mode 100644 README.pw
 create mode 100644 requirements.txt
 create mode 100755 scripts/pw_createsuperuser.sh
 create mode 100755 scripts/pw_getmail.sh
 create mode 100755 scripts/pw_migrate.sh
 create mode 100755 scripts/pw_runwebserver.sh

-- 
2.7.4


