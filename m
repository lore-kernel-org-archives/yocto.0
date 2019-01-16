Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17037E00C28; Tue, 15 Jan 2019 22:00:20 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3493E00BFB
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 22:00:19 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x0G60JEq000599
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 22:00:19 -0800 (PST)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.408.0; Tue, 15 Jan 2019 22:00:18 -0800
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 16 Jan 2019 14:00:16 +0800
Message-ID: <1547618417-286469-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1546062336-388891-1-git-send-email-changqing.li@windriver.com>
References: <1546062336-388891-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
Subject: [PATCH V2] patchtest: several enhancement for docker
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
X-List-Received-Date: Wed, 16 Jan 2019 06:00:20 -0000
Content-Type: text/plain

change in V2:
fix bug in pw-host-test

change in V1:
based on previous script guest, which run qemu, and run testcase
in qemu, change to pw-host-test, change to run directly on host.
and will be used by dockerfile in patchwork, detail deploy can 
refer change in patchwork for docker deployment.

Changqing Li (1):
  patchtest: several enhancement

 requirements.txt                |   2 +
 scripts/create-host-crontab     |  88 +++++++++++++++++++
 scripts/create-host-test-folder | 151 ++++++++++++++++++++++++++++++++
 scripts/fetch-mboxes            |   9 +-
 scripts/pw-host-test            | 185 ++++++++++++++++++++++++++++++++++++++++
 scripts/test-mboxes             |   2 +-
 usage.adoc                      |   8 ++
 7 files changed, 442 insertions(+), 3 deletions(-)
 create mode 100755 scripts/create-host-crontab
 create mode 100755 scripts/create-host-test-folder
 create mode 100755 scripts/pw-host-test

-- 
2.7.4


